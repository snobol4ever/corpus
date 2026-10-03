                        .intel_syntax    noprefix
                        .text
                        .file            1 "concord.icn"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__tabulate:
                        sub              rsp, 1984
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 1976
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_tabulate]
                        mov              qword ptr [rsp + 1832], rax
                        mov              dword ptr [rsp + 1824], 160
                        mov              dword ptr [rsp + 1828], 1984
                        mov              eax, 0
                        mov              qword ptr [rsp + 1976], rbp
                        mov              rbp, rsp
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
                        mov              rdi, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rdi, qword ptr [rdi + 0]
                        mov              ecx, dword ptr [rdi + 0]
                        cmp              ecx, 65536;                          jae   .Ltabulate_α_0_245
                        mov              rsi, 40
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm0:          .string          "tabulate"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm0]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 2
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
.Ltabulate_α_0_245:
tabulate_α_body:
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 59
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_91_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n2_line_mark_α
.Lline_mark_α_91_0:     .quad            .Lline_mark_α_91_0_s
.Lline_mark_α_91_0_s:   .string          "concord.icn"
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 60;             jmp   n3_var_ref_α
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_var_ref_bx, @function
n3_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx;         jmp   n4_deref_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_deref_bx, @function
n4_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_deref_α:             mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n8_line_mark_α
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n5_line_mark_α
                        .size            n4_deref_bx, .-n4_deref_bx
                        .type            n5_line_mark_bx, @function
n5_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 60;             jmp   n6_call_icon_α
                        .size            n5_line_mark_bx, .-n5_line_mark_bx
                        .type            n6_call_icon_bx, @function
n6_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_call_icon_α:         mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1688], rax
                        .section         .rodata
.Lcall_icon_α_rkfn100:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn100]
                        lea              rsi, [rbp + 1680]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              al, 104;                             je    n8_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n7_assign_α
n6_call_icon_β:                                                               jmp   n8_line_mark_α
                        .size            n6_call_icon_bx, .-n6_call_icon_bx
                        .type            n7_assign_bx, @function
n7_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              rax, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx;           jmp   n8_line_mark_α
                        .size            n7_assign_bx, .-n7_assign_bx
                        .type            n8_line_mark_bx, @function
n8_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 61;             jmp   n9_lit_string_α
                        .size            n8_line_mark_bx, .-n8_line_mark_bx
                        .type            n9_lit_string_bx, @function
n9_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              qword ptr [rbp + 1616], 2            # result
                        mov              dword ptr [rbp + 1620], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_104_0]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n10_assign_α
.Llit_string_α_104_0:   .quad            .Llit_string_α_104_0_s
.Llit_string_α_104_0_s: .string          ""
                        .size            n9_lit_string_bx, .-n9_lit_string_bx
                        .type            n10_assign_bx, @function
n10_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              rax, qword ptr [rbp + 1616]
                        mov              rdx, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n11_line_mark_α
                        .size            n10_assign_bx, .-n10_assign_bx
                        .type            n11_line_mark_bx, @function
n11_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 62;             jmp   n12_var_ref_α
                        .size            n11_line_mark_bx, .-n11_line_mark_bx
                        .type            n12_var_ref_bx, @function
n12_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx;         jmp   n13_var_α
                        .size            n12_var_ref_bx, .-n12_var_ref_bx
                        .type            n13_var_bx, @function
n13_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1560], rax;         jmp   n14_subscript_α
                        .size            n13_var_bx, .-n13_var_bx
                        .type            n14_subscript_bx, @function
n14_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_subscript_α:        mov              rdi, qword ptr [rbp + 1536]
                        mov              rsi, qword ptr [rbp + 1544]
                        mov              rdx, qword ptr [rbp + 1552]
                        mov              rcx, qword ptr [rbp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    tabulate_ω
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n15_deref_α
                        .size            n14_subscript_bx, .-n14_subscript_bx
                        .type            n15_deref_bx, @function
n15_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_deref_α:            mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    tabulate_ω
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n16_scan_enter_α
                        .size            n15_deref_bx, .-n15_deref_bx
                        .type            n16_scan_enter_bx, @function
n16_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_scan_enter_α:       mov              qword ptr [rbp + 96], r13
                        mov              qword ptr [rbp + 104], r14
                        mov              qword ptr [rbp + 112], r15
                        mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], edx
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            je    tabulate_ω
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n17_line_mark_α
                        .size            n16_scan_enter_bx, .-n16_scan_enter_bx
                        .type            n17_line_mark_bx, @function
n17_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n18_bound_α
                        .size            n17_line_mark_bx, .-n17_line_mark_bx
                        .type            n18_bound_bx, @function
n18_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_bound_α:            mov              qword ptr [rbp + 1296], rsp;         jmp   n19_var_α
                        .size            n18_bound_bx, .-n18_bound_bx
                        .type            n19_var_bx, @function
n19_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:              mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n20_lit_charset_α
                        .size            n19_var_bx, .-n19_var_bx
                        .type            n20_lit_charset_bx, @function
n20_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_charset_α:      mov              qword ptr [rbp + 1248], 2            # result
                        mov              dword ptr [rbp + 1252], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_122_0]
                        mov              qword ptr [rbp + 1256], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_122_0]
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
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n21_line_mark_α
.Llit_charset_α_122_0:  .quad            .Llit_charset_α_122_0_s
.Llit_charset_α_122_0_s:
                        .string          "0123456789"
                        .size            n20_lit_charset_bx, .-n20_lit_charset_bx
                        .type            n21_line_mark_bx, @function
n21_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n22_scan_upto_α
                        .size            n21_line_mark_bx, .-n21_line_mark_bx
                        .type            n22_scan_upto_bx, @function
n22_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_scan_upto_α:        mov              qword ptr [rbp + 1216], r14
.Lscan_upto_α_126_0:    mov              rax, qword ptr [rbp + 1216]
                        cmp              rax, r15;                            jge   n41_line_mark_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .Lscan_upto_α_126_3]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_upto_α_126_1
                        mov              qword ptr [rbp + 1200], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 1208], rax;         jmp   n23_line_mark_α
.Lscan_upto_α_126_1:    inc              qword ptr [rbp + 1216];              jmp   .Lscan_upto_α_126_0
n22_scan_upto_β:        inc              qword ptr [rbp + 1216];              jmp   .Lscan_upto_α_126_0
.Lscan_upto_β_126_2:    .quad            .Lscan_upto_β_126_2_s
.Lscan_upto_β_126_2_s:  .string          "0123456789"
.Lscan_upto_α_126_3:    .quad            287948901175001088
.Lscan_upto_β_126_4:    .quad            0
.Lscan_upto_β_126_5:    .quad            0
.Lscan_upto_β_126_6:    .quad            0
                        .size            n22_scan_upto_bx, .-n22_scan_upto_bx
                        .type            n23_line_mark_bx, @function
n23_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n24_scan_tab_α
                        .size            n23_line_mark_bx, .-n23_line_mark_bx
                        .type            n24_scan_tab_bx, @function
n24_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_scan_tab_α:         mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    n22_scan_upto_β
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_130_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_130_0:     cmp              rax, 1;                              jl    n22_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n22_scan_upto_β
                        mov              qword ptr [rbp + 1168], r14
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx;         jmp   n25_binop_α
n24_scan_tab_β:         mov              r14, qword ptr [rbp + 1168];         jmp   n22_scan_upto_β
                        .size            n24_scan_tab_bx, .-n24_scan_tab_bx
                        .type            n25_binop_bx, @function
n25_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_binop_α:            mov              rdi, qword ptr [rbp + 1792]
                        mov              rsi, qword ptr [rbp + 1800]
                        mov              rdx, qword ptr [rbp + 1152]
                        mov              rcx, qword ptr [rbp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:81
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n26_assign_α
                        .size            n25_binop_bx, .-n25_binop_bx
                        .type            n26_assign_bx, @function
n26_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:           mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n27_line_mark_α
                        .size            n26_assign_bx, .-n26_assign_bx
                        .type            n27_line_mark_bx, @function
n27_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 64;             jmp   n28_lit_charset_α
                        .size            n27_line_mark_bx, .-n27_line_mark_bx
                        .type            n28_lit_charset_bx, @function
n28_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_charset_α:      mov              qword ptr [rbp + 1472], 2            # result
                        mov              dword ptr [rbp + 1476], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_135_0]
                        mov              qword ptr [rbp + 1480], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_135_0]
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
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n29_line_mark_α
.Llit_charset_α_135_0:  .quad            .Llit_charset_α_135_0_s
.Llit_charset_α_135_0_s:
                        .string          "0123456789"
                        .size            n28_lit_charset_bx, .-n28_lit_charset_bx
                        .type            n29_line_mark_bx, @function
n29_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 64;             jmp   n30_scan_many_α
                        .size            n29_line_mark_bx, .-n29_line_mark_bx
                        .type            n30_scan_many_bx, @function
n30_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_scan_many_α:        lea              rdi, [rip + .Lscan_many_α_139_3]
                        mov              eax, r14d
.Lscan_many_α_139_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_139_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_many_α_139_1
                        add              eax, 1;                              jmp   .Lscan_many_α_139_0
.Lscan_many_α_139_1:    cmp              eax, r14d;                           je    n34_line_mark_α
                        mov              qword ptr [rbp + 1440], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 1448], rcx;         jmp   n31_line_mark_α
n30_scan_many_β:                                                              jmp   n34_line_mark_α
.Lscan_many_β_139_2:    .quad            .Lscan_many_β_139_2_s
.Lscan_many_β_139_2_s:  .string          "0123456789"
.Lscan_many_α_139_3:    .quad            287948901175001088
.Lscan_many_β_139_4:    .quad            0
.Lscan_many_β_139_5:    .quad            0
.Lscan_many_β_139_6:    .quad            0
                        .size            n30_scan_many_bx, .-n30_scan_many_bx
                        .type            n31_line_mark_bx, @function
n31_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 64;             jmp   n32_scan_tab_α
                        .size            n31_line_mark_bx, .-n31_line_mark_bx
                        .type            n32_scan_tab_bx, @function
n32_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_scan_tab_α:         mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    n34_line_mark_α
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_143_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_143_0:     cmp              rax, 1;                              jl    n34_line_mark_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n34_line_mark_α
                        mov              qword ptr [rbp + 1408], r14
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx;         jmp   n33_assign_α
n32_scan_tab_β:         mov              r14, qword ptr [rbp + 1408];         jmp   n34_line_mark_α
                        .size            n32_scan_tab_bx, .-n32_scan_tab_bx
                        .type            n33_assign_bx, @function
n33_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:           mov              rax, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx;         jmp   n34_line_mark_α
                        .size            n33_assign_bx, .-n33_assign_bx
                        .type            n34_line_mark_bx, @function
n34_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 65;             jmp   n35_var_α
                        .size            n34_line_mark_bx, .-n34_line_mark_bx
                        .type            n35_var_bx, @function
n35_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:              mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 56], rax;           jmp   n36_var_α
                        .size            n35_var_bx, .-n35_var_bx
                        .type            n36_var_bx, @function
n36_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 72], rax;           jmp   n37_binop_α
                        .size            n36_var_bx, .-n36_var_bx
                        .type            n37_binop_bx, @function
n37_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_α:            mov              rdi, qword ptr [rbp + 1792]
                        mov              rsi, qword ptr [rbp + 1800]
                        mov              rdx, qword ptr [rbp + 1776]
                        mov              rcx, qword ptr [rbp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:81
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n38_assign_α
                        .size            n37_binop_bx, .-n37_binop_bx
                        .type            n38_assign_bx, @function
n38_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:           mov              rax, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx;         jmp   n39_conjunction_α
                        .size            n38_assign_bx, .-n38_assign_bx
                        .type            n39_conjunction_bx, @function
n39_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_conjunction_α:      mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1336], rax;         jmp   n40_unmark_α
n39_conjunction_β:                                                            jmp   n40_unmark_α
                        .size            n39_conjunction_bx, .-n39_conjunction_bx
                        .type            n40_unmark_bx, @function
n40_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_unmark_α:           mov              rsp, qword ptr [rbp + 1296];         jmp   n18_bound_α
                        .size            n40_unmark_bx, .-n40_unmark_bx
                        .type            n41_line_mark_bx, @function
n41_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 67;             jmp   n42_disjunction_α
                        .size            n41_line_mark_bx, .-n41_line_mark_bx
                        .type            n42_disjunction_bx, @function
n42_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_disjunction_α:      mov              qword ptr [rbp + 176], 0
                        mov              qword ptr [rbp + 184], 0
                        mov              dword ptr [rbp + 192], 0;            jmp   n74_disjunction_α
.Ldisjunction_γ_42_as:  mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_159_0
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 184], rax;          jmp   n43_conjunction_α
.Ldisjunction_α_159_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_159_1
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 184], rax;          jmp   n43_conjunction_α
.Ldisjunction_α_159_1:                                                        jmp   n43_conjunction_α
n42_disjunction_β:      mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 0;                              je    n84_scan_α
                                                                              jmp   n84_scan_α
.Ldisjunction_γ_42_af:
.Ldisjunction_ω_42_af:  add              dword ptr [rbp + 192], 1
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 1;                              je    n45_line_mark_α
                                                                              jmp   n84_scan_α
                        .size            n42_disjunction_bx, .-n42_disjunction_bx
                        .type            n43_conjunction_bx, @function
n43_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_conjunction_α:      mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax;          jmp   n44_scan_α
n43_conjunction_β:                                                            jmp   n84_scan_α
                        .size            n43_conjunction_bx, .-n43_conjunction_bx
                        .type            n44_scan_bx, @function
n44_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_scan_α:             mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 96]
                        mov              r14, qword ptr [rbp + 104]
                        mov              r15, qword ptr [rbp + 112];          jmp   tabulate_ω
n44_scan_β:             mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r14, rax;                            jmp   n42_disjunction_β
                                                                              jmp   tabulate_ω
                        .size            n44_scan_bx, .-n44_scan_bx
                        .type            n45_line_mark_bx, @function
n45_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70;             jmp   n46_disjunction_α
n45_line_mark_β:                                                              jmp   n46_disjunction_α
                        .size            n45_line_mark_bx, .-n45_line_mark_bx
                        .type            n46_disjunction_bx, @function
n46_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_disjunction_α:      mov              qword ptr [rbp + 768], 0
                        mov              qword ptr [rbp + 776], 0
                        mov              dword ptr [rbp + 784], 0;            jmp   n65_lit_string_α
.Ldisjunction_γ_46_as:  mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_166_0
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax;          jmp   n47_line_mark_α
.Ldisjunction_α_166_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_166_1
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 776], rax;          jmp   n47_line_mark_α
.Ldisjunction_α_166_1:                                                        jmp   n47_line_mark_α
n46_disjunction_β:      mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0;                              je    n72_scan_tab_β
                                                                              jmp   n47_line_mark_α
.Ldisjunction_γ_46_af:
.Ldisjunction_ω_46_af:  add              dword ptr [rbp + 784], 1
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 1;                              je    n63_lit_integer_α
                                                                              jmp   n47_line_mark_α
                        .size            n46_disjunction_bx, .-n46_disjunction_bx
                        .type            n47_line_mark_bx, @function
n47_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 71;             jmp   n48_var_ref_α
                        .size            n47_line_mark_bx, .-n47_line_mark_bx
                        .type            n48_var_ref_bx, @function
n48_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n49_var_α
                        .size            n48_var_ref_bx, .-n48_var_ref_bx
                        .type            n49_var_bx, @function
n49_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:              mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 520], rax;          jmp   n50_subscript_α
                        .size            n49_var_bx, .-n49_var_bx
                        .type            n50_subscript_bx, @function
n50_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_subscript_α:        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n84_scan_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n51_var_α
                        .size            n50_subscript_bx, .-n50_subscript_bx
                        .type            n51_var_bx, @function
n51_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 616], rax;          jmp   n52_lit_string_α
                        .size            n51_var_bx, .-n51_var_bx
                        .type            n52_lit_string_bx, @function
n52_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       mov              qword ptr [rbp + 624], 2             # result
                        mov              dword ptr [rbp + 628], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_176_0]
                        mov              qword ptr [rbp + 632], rax;          jmp   n53_binop_α
.Llit_string_α_176_0:   .quad            .Llit_string_α_176_0_s
.Llit_string_α_176_0_s: .string          "("
                        .size            n52_lit_string_bx, .-n52_lit_string_bx
                        .type            n53_binop_bx, @function
n53_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_binop_α:            mov              rdi, qword ptr [rbp + 1792]
                        mov              rsi, qword ptr [rbp + 1800]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:81
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n54_var_α
                        .size            n53_binop_bx, .-n53_binop_bx
                        .type            n54_var_bx, @function
n54_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 696], rax;          jmp   n55_lit_integer_α
                        .size            n54_var_bx, .-n54_var_bx
                        .type            n55_lit_integer_bx, @function
n55_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      mov              qword ptr [rbp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_180_0]
                        mov              qword ptr [rbp + 712], rax;          jmp   n56_coerce_numeric_α
.Llit_integer_α_180_0:  .quad            1
                        .size            n55_lit_integer_bx, .-n55_lit_integer_bx
                        .type            n56_coerce_numeric_bx, @function
n56_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_numeric_α:   mov              eax, dword ptr [rbp + 1808]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_182_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_182_0
                        mov              eax, dword ptr [rbp + 704]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_182_0
.Lcoerce_numeric_α_182_1:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 680], rax;          jmp   n57_binop_α
.Lcoerce_numeric_α_182_0:
                        lea              rdi, [rbp + 1808]
                        lea              rsi, [rbp + 704]
                        lea              rdx, [rbp + 672]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 672]
                        cmp              al, 104;                             je    n84_scan_α
                                                                              jmp   n57_binop_α
                        .size            n56_coerce_numeric_bx, .-n56_coerce_numeric_bx
                        .type            n57_binop_bx, @function
n57_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_binop_α:            mov              eax, dword ptr [rbp + 672]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_183_2
                        mov              rax, qword ptr [rbp + 680]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_183_0
                        mov              qword ptr [rbp + 656], 3
                        mov              qword ptr [rbp + 664], rax;          jmp   .Lbinop_α_183_7
.Lbinop_α_183_2:        and              edx, 1;                              jz    .Lbinop_α_183_0
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_183_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_183_4
.Lbinop_α_183_3:        movq             xmm0, rsi
.Lbinop_α_183_4:        cmp              cl, 5;                               je    .Lbinop_α_183_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_183_6
.Lbinop_α_183_5:        movq             xmm1, rdi
.Lbinop_α_183_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_183_0
                        mov              qword ptr [rbp + 656], 5
                        mov              qword ptr [rbp + 664], rax
.Lbinop_α_183_7:                                                              jmp   n58_binop_α
.Lbinop_α_183_0:        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n84_scan_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n58_binop_α
                        .size            n57_binop_bx, .-n57_binop_bx
                        .type            n58_binop_bx, @function
n58_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:            mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:81
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n59_lit_string_α
                        .size            n58_binop_bx, .-n58_binop_bx
                        .type            n59_lit_string_bx, @function
n59_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              qword ptr [rbp + 720], 2             # result
                        mov              dword ptr [rbp + 724], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_185_0]
                        mov              qword ptr [rbp + 728], rax;          jmp   n60_binop_α
.Llit_string_α_185_0:   .quad            .Llit_string_α_185_0_s
.Llit_string_α_185_0_s: .string          "), "
                        .size            n59_lit_string_bx, .-n59_lit_string_bx
                        .type            n60_binop_bx, @function
n60_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:            mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:81
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n61_assign_var_α
                        .size            n60_binop_bx, .-n60_binop_bx
                        .type            n61_assign_var_bx, @function
n61_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_var_α:       mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 560]
                        mov              rcx, qword ptr [rbp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n84_scan_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:47
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n62_conjunction_α
                        .size            n61_assign_var_bx, .-n61_assign_var_bx
                        .type            n62_conjunction_bx, @function
n62_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_conjunction_α:      mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax;          jmp   .Ldisjunction_γ_42_as
n62_conjunction_β:                                                            jmp   n84_scan_α
                        .size            n62_conjunction_bx, .-n62_conjunction_bx
                        .type            n63_lit_integer_bx, @function
n63_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      mov              qword ptr [rbp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_189_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n64_assign_α
n63_lit_integer_β:                                                            jmp   n47_line_mark_α
.Llit_integer_α_189_0:  .quad            1
                        .size            n63_lit_integer_bx, .-n63_lit_integer_bx
                        .type            n64_assign_bx, @function
n64_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:           mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   .Ldisjunction_γ_46_as
n64_assign_β:                                                                 jmp   n47_line_mark_α
                        .size            n64_assign_bx, .-n64_assign_bx
                        .type            n65_lit_string_bx, @function
n65_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       mov              qword ptr [rbp + 1008], 2            # result
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_191_0]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n66_scan_match_α
n65_lit_string_β:                                                             jmp   .Ldisjunction_ω_46_af
.Llit_string_α_191_0:   .quad            .Llit_string_α_191_0_s
.Llit_string_α_191_0_s: .string          "("
                        .size            n65_lit_string_bx, .-n65_lit_string_bx
                        .type            n66_scan_match_bx, @function
n66_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_scan_match_α:       mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_46_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_193_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_46_af
                        mov              qword ptr [rbp + 976], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 984], rax;          jmp   n67_scan_tab_α
.Lscan_match_α_193_0:   .quad            .Lscan_match_α_193_0_s
.Lscan_match_α_193_0_s: .string          "("
                        .size            n66_scan_match_bx, .-n66_scan_match_bx
                        .type            n67_scan_tab_bx, @function
n67_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_scan_tab_α:         mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    .Ldisjunction_ω_46_af
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_195_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_195_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_46_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_46_af
                        mov              qword ptr [rbp + 960], r14
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n68_lit_charset_α
n67_scan_tab_β:         mov              r14, qword ptr [rbp + 960];          jmp   .Ldisjunction_ω_46_af
                        .size            n67_scan_tab_bx, .-n67_scan_tab_bx
                        .type            n68_lit_charset_bx, @function
n68_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_charset_α:      mov              qword ptr [rbp + 912], 2             # result
                        mov              dword ptr [rbp + 916], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_196_0]
                        mov              qword ptr [rbp + 920], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_196_0]
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
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n69_line_mark_α
.Llit_charset_α_196_0:  .quad            .Llit_charset_α_196_0_s
.Llit_charset_α_196_0_s:
                        .string          ")"
                        .size            n68_lit_charset_bx, .-n68_lit_charset_bx
                        .type            n69_line_mark_bx, @function
n69_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70;             jmp   n70_scan_upto_α
                        .size            n69_line_mark_bx, .-n69_line_mark_bx
                        .type            n70_scan_upto_bx, @function
n70_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_scan_upto_α:        mov              qword ptr [rbp + 880], r14
.Lscan_upto_α_200_0:    mov              rax, qword ptr [rbp + 880]
                        cmp              rax, r15;                            jge   n47_line_mark_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .Lscan_upto_α_200_3]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_upto_α_200_1
                        mov              qword ptr [rbp + 864], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 872], rax;          jmp   n71_line_mark_α
.Lscan_upto_α_200_1:    inc              qword ptr [rbp + 880];               jmp   .Lscan_upto_α_200_0
n70_scan_upto_β:        inc              qword ptr [rbp + 880];               jmp   .Lscan_upto_α_200_0
.Lscan_upto_β_200_2:    .quad            .Lscan_upto_β_200_2_s
.Lscan_upto_β_200_2_s:  .string          ")"
.Lscan_upto_α_200_3:    .quad            2199023255552
.Lscan_upto_β_200_4:    .quad            0
.Lscan_upto_β_200_5:    .quad            0
.Lscan_upto_β_200_6:    .quad            0
                        .size            n70_scan_upto_bx, .-n70_scan_upto_bx
                        .type            n71_line_mark_bx, @function
n71_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70;             jmp   n72_scan_tab_α
                        .size            n71_line_mark_bx, .-n71_line_mark_bx
                        .type            n72_scan_tab_bx, @function
n72_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_scan_tab_α:         mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    n70_scan_upto_β
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_204_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_204_0:     cmp              rax, 1;                              jl    n70_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n70_scan_upto_β
                        mov              qword ptr [rbp + 832], r14
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n73_assign_α
n72_scan_tab_β:         mov              r14, qword ptr [rbp + 832];          jmp   n70_scan_upto_β
                        .size            n72_scan_tab_bx, .-n72_scan_tab_bx
                        .type            n73_assign_bx, @function
n73_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:           mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   .Ldisjunction_γ_46_as
n73_assign_β:                                                                 jmp   n47_line_mark_α
                        .size            n73_assign_bx, .-n73_assign_bx
                        .type            n74_disjunction_bx, @function
n74_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_disjunction_α:      mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0;            jmp   n88_var_α
.Ldisjunction_γ_74_as:  mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_207_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax;          jmp   n75_var_ref_α
.Ldisjunction_α_207_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_207_1
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 376], rax;          jmp   n75_var_ref_α
.Ldisjunction_α_207_1:                                                        jmp   n75_var_ref_α
n74_disjunction_β:      mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_74_af
                                                                              jmp   .Ldisjunction_ω_74_af
.Ldisjunction_γ_74_af:
.Ldisjunction_ω_74_af:  add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1;                              je    n85_var_α
                                                                              jmp   .Ldisjunction_ω_42_af
                        .size            n74_disjunction_bx, .-n74_disjunction_bx
                        .type            n75_var_ref_bx, @function
n75_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n76_var_α
                        .size            n75_var_ref_bx, .-n75_var_ref_bx
                        .type            n76_var_bx, @function
n76_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 232], rax;          jmp   n77_subscript_α
                        .size            n76_var_bx, .-n76_var_bx
                        .type            n77_subscript_bx, @function
n77_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_subscript_α:        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n84_scan_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n78_var_α
                        .size            n77_subscript_bx, .-n77_subscript_bx
                        .type            n78_var_bx, @function
n78_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:              mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 328], rax;          jmp   n79_lit_string_α
                        .size            n78_var_bx, .-n78_var_bx
                        .type            n79_lit_string_bx, @function
n79_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_215_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n80_binop_α
.Llit_string_α_215_0:   .quad            .Llit_string_α_215_0_s
.Llit_string_α_215_0_s: .string          ", "
                        .size            n79_lit_string_bx, .-n79_lit_string_bx
                        .type            n80_binop_bx, @function
n80_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_binop_α:            mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:81
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n81_deref_α
                        .size            n80_binop_bx, .-n80_binop_bx
                        .type            n81_deref_bx, @function
n81_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_deref_α:            mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n84_scan_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n82_binop_α
                        .size            n81_deref_bx, .-n81_deref_bx
                        .type            n82_binop_bx, @function
n82_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_binop_α:            mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
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
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:81
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n83_assign_var_α
                        .size            n82_binop_bx, .-n82_binop_bx
                        .type            n83_assign_var_bx, @function
n83_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_var_α:       mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n84_scan_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:47
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_42_as
n83_assign_var_β:                                                             jmp   n84_scan_α
                        .size            n83_assign_var_bx, .-n83_assign_var_bx
                        .type            n84_scan_bx, @function
n84_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_scan_α:             mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 96]
                        mov              r14, qword ptr [rbp + 104]
                        mov              r15, qword ptr [rbp + 112];          jmp   tabulate_ω
n84_scan_β:                                                                   jmp   tabulate_ω
                        .size            n84_scan_bx, .-n84_scan_bx
                        .type            n85_var_bx, @function
n85_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:              mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 456], rax;          jmp   n86_var_α
n85_var_β:                                                                    jmp   .Ldisjunction_ω_74_af
                        .size            n85_var_bx, .-n85_var_bx
                        .type            n86_var_bx, @function
n86_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:              mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 472], rax;          jmp   n87_binop_test_α
                        .size            n86_var_bx, .-n86_var_bx
                        .type            n87_binop_test_bx, @function
n87_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_binop_test_α:       mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 17
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    .Ldisjunction_ω_74_af
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        push             rax                                  # gc_poll bb_binop_relop.cpp:110
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_74_as
n87_binop_test_β:                                                             jmp   .Ldisjunction_ω_74_af
                        .size            n87_binop_test_bx, .-n87_binop_test_bx
                        .type            n88_var_bx, @function
n88_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 424], rax;          jmp   n89_unop_test_α
n88_var_β:                                                                    jmp   .Ldisjunction_ω_74_af
                        .size            n88_var_bx, .-n88_var_bx
                        .type            n89_unop_test_bx, @function
n89_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_unop_test_α:        mov              eax, dword ptr [rbp + 1776]
                        cmp              al, 104;                             je    .Ldisjunction_ω_74_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_74_af
                        mov              qword ptr [rbp + 400], 0
                        mov              qword ptr [rbp + 408], 0;            jmp   .Ldisjunction_γ_74_as
n89_unop_test_β:                                                              jmp   .Ldisjunction_ω_74_af
                        .size            n89_unop_test_bx, .-n89_unop_test_bx
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
                        lea              rsp, [rbp + 1984]
                        mov              rbp, qword ptr [rbp + 1976];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
tabulate_ω:
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
                        lea              rsp, [rbp + 1984]
                        mov              rbp, qword ptr [rbp + 1976];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
tabulate_dcα:
                        pop              rax
                        push             rax
                        push             rax
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
                        push             rax                                  # gc_poll xa_flat.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rax, qword ptr [rsp + 8]
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
                        push             rax                                  # gc_poll xa_flat.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      add              rsp, 16
                        lea              rcx, [rip + .Ltabulate_α_230_3]
                        push             rcx
                        lea              rcx, [rip + .Ltabulate_α_230_2]
                        push             rcx;                                 jmp   FN__tabulate
.Ltabulate_α_230_2:     add              rsp, 24
                        ret
.Ltabulate_α_230_3:     add              rsp, 24
                        mov              eax, 104
                        xor              edx, edx
                        ret
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_tabulate:
                        .quad            8522561572186
                        .quad            34359738512
                        .quad            .Lgcmap_tabulate_s
                        .quad            1824
                        .quad            26
                        .quad            105553116266496
                        .quad            8804682956896
                        .quad            26392574034024
                        .quad            70368744177792
                        .quad            17596481011904
                        .quad            193514046488784
                        .quad            17596481012096
                        .quad            422212465066384
                        .quad            17596481012496
                        .quad            35184372089632
                        .quad            17596481012544
                        .quad            35184372089680
                        .quad            17596481012592
                        .quad            70368744178560
                        .quad            17596481012672
                        .quad            17592186045392
                        .quad            17596481012704
                        .quad            175921860445168
                        .quad            17596481012880
                        .quad            35184372090016
                        .quad            17596481012928
                        .quad            70368744178896
                        .quad            17596481013008
                        .quad            105553116267808
                        .quad            17596481013120
                        .quad            439804651111824
.Lgcmap_tabulate_s:     .string          "tabulate"
#-----------------------------------------------------------------------------------------------------------------------
FN__format:
                        sub              rsp, 1264
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 1256
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_format]
                        mov              qword ptr [rsp + 1176], rax
                        mov              dword ptr [rsp + 1168], 160
                        mov              dword ptr [rsp + 1172], 1264
                        mov              eax, 0
                        mov              qword ptr [rsp + 1256], rbp
                        mov              rbp, rsp
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
                        mov              rdi, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rdi, qword ptr [rdi + 0]
                        mov              ecx, dword ptr [rdi + 0]
                        cmp              ecx, 65536;                          jae   .Lformat_α_230_245
                        mov              rsi, 40
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm231:        .string          "format"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm231]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 1
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
.Lformat_α_230_245:
format_α_body:
                        .type            n00001_line_mark_bx, @function
n00001_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 79
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_295_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00002_line_mark_α
.Lline_mark_α_295_0:    .quad            .Lline_mark_α_295_0_s
.Lline_mark_α_295_0_s:  .string          "concord.icn"
                        .size            n00001_line_mark_bx, .-n00001_line_mark_bx
                        .type            n00002_line_mark_bx, @function
n00002_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 80;             jmp   n00003_bound_α
                        .size            n00002_line_mark_bx, .-n00002_line_mark_bx
                        .type            n00003_bound_bx, @function
n00003_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_bound_α:           mov              qword ptr [rbp + 304], rsp;          jmp   n00004_var_α
                        .size            n00003_bound_bx, .-n00003_bound_bx
                        .type            n00004_var_bx, @function
n00004_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_var_α:             mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax;          jmp   n00005_unop_α
                        .size            n00004_var_bx, .-n00004_var_bx
                        .type            n00005_unop_bx, @function
n00005_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_unop_α:            mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             qword ptr [rip + rt_size_d@GOTPCREL]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:115
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00006_lit_integer_α
                        .size            n00005_unop_bx, .-n00005_unop_bx
                        .type            n00006_lit_integer_bx, @function
n00006_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_lit_integer_α:     mov              qword ptr [rbp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_303_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n00007_var_α
.Llit_integer_α_303_0:  .quad            2
                        .size            n00006_lit_integer_bx, .-n00006_lit_integer_bx
                        .type            n00007_var_bx, @function
n00007_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_var_α:             mov              rax, qword ptr [r9 + 16]             # colmax
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rbp + 272], rax           # result
                        mov              qword ptr [rbp + 280], rdx;          jmp   n00008_coerce_numeric_α
                        .size            n00007_var_bx, .-n00007_var_bx
                        .type            n00008_coerce_numeric_bx, @function
n00008_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_coerce_numeric_α:  mov              eax, dword ptr [rbp + 272]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_306_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_306_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_306_0
.Lcoerce_numeric_α_306_1:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00009_binop_α
.Lcoerce_numeric_α_306_0:
                        lea              rdi, [rbp + 272]
                        lea              rsi, [rbp + 256]
                        lea              rdx, [rbp + 240]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 240]
                        cmp              al, 104;                             je    n00010_line_mark_α
                                                                              jmp   n00009_binop_α
                        .size            n00008_coerce_numeric_bx, .-n00008_coerce_numeric_bx
                        .type            n00009_binop_bx, @function
n00009_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_binop_α:           mov              eax, dword ptr [rbp + 240]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_307_2
                        mov              rax, qword ptr [rbp + 248]
                        mov              rdx, 2
                        add              rax, rdx;                            jo    .Lbinop_α_307_0
                        mov              qword ptr [rbp + 224], 3
                        mov              qword ptr [rbp + 232], rax;          jmp   .Lbinop_α_307_7
.Lbinop_α_307_2:        and              edx, 1;                              jz    .Lbinop_α_307_0
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_307_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_307_4
.Lbinop_α_307_3:        movq             xmm0, rsi
.Lbinop_α_307_4:        cmp              cl, 5;                               je    .Lbinop_α_307_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_307_6
.Lbinop_α_307_5:        movq             xmm1, rdi
.Lbinop_α_307_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_307_0
                        mov              qword ptr [rbp + 224], 5
                        mov              qword ptr [rbp + 232], rax
.Lbinop_α_307_7:                                                              jmp   n00011_binop_test_α
.Lbinop_α_307_0:        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00010_line_mark_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00011_binop_test_α
                        .size            n00009_binop_bx, .-n00009_binop_bx
                        .type            n00011_binop_test_bx, @function
n00011_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_binop_test_α:      mov              eax, dword ptr [rbp + 192]
                        cmp              al, 112;                             je    .Lbinop_test_α_308_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              al, 112;                             je    .Lbinop_test_α_308_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              al, 3;                               jne   .Lbinop_test_α_308_2
                        mov              eax, dword ptr [rbp + 224]
                        cmp              al, 3;                               jne   .Lbinop_test_α_308_2
.Lbinop_test_α_308_1:   mov              rax, qword ptr [rbp + 200]
                        mov              rcx, qword ptr [rbp + 232]
                        cmp              rax, rcx;                            jle   n00010_line_mark_α
                        mov              rcx, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rcx
                        mov              rcx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rcx;          jmp   n00012_line_mark_α
.Lbinop_test_α_308_0:   mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        mov              r8d, 7
                        lea              r9, [rbp + 176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_308_2
                        cmp              eax, 1;                              je    n00010_line_mark_α
                        push             rax                                  # gc_poll bb_binop_relop.cpp:56
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00012_line_mark_α
.Lbinop_test_α_308_2:   mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        mov              r8d, 7
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    n00010_line_mark_α
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        lea              r8, [rbp + 176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_relop.cpp:79
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00012_line_mark_α
                        .size            n00011_binop_test_bx, .-n00011_binop_test_bx
                        .type            n00012_line_mark_bx, @function
n00012_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 81;             jmp   n00013_lit_integer_α
                        .size            n00012_line_mark_bx, .-n00012_line_mark_bx
                        .type            n00013_lit_integer_bx, @function
n00013_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_lit_integer_α:     mov              qword ptr [rbp + 1072], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_311_0]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n00014_var_α
.Llit_integer_α_311_0:  .quad            2
                        .size            n00013_lit_integer_bx, .-n00013_lit_integer_bx
                        .type            n00014_var_bx, @function
n00014_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_var_α:             mov              rax, qword ptr [r9 + 16]             # colmax
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rbp + 1088], rax          # result
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n00015_coerce_numeric_α
                        .size            n00014_var_bx, .-n00014_var_bx
                        .type            n00015_coerce_numeric_bx, @function
n00015_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_coerce_numeric_α:  mov              eax, dword ptr [rbp + 1088]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_314_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_314_0
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_314_0
.Lcoerce_numeric_α_314_1:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n00016_binop_α
.Lcoerce_numeric_α_314_0:
                        lea              rdi, [rbp + 1088]
                        lea              rsi, [rbp + 1072]
                        lea              rdx, [rbp + 1056]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 1056]
                        cmp              al, 104;                             je    n00017_line_mark_α
                                                                              jmp   n00016_binop_α
                        .size            n00015_coerce_numeric_bx, .-n00015_coerce_numeric_bx
                        .type            n00016_binop_bx, @function
n00016_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_binop_α:           mov              eax, dword ptr [rbp + 1056]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_315_2
                        mov              rax, qword ptr [rbp + 1064]
                        mov              rdx, 2
                        add              rax, rdx;                            jo    .Lbinop_α_315_0
                        mov              qword ptr [rbp + 1040], 3
                        mov              qword ptr [rbp + 1048], rax;         jmp   .Lbinop_α_315_7
.Lbinop_α_315_2:        and              edx, 1;                              jz    .Lbinop_α_315_0
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_315_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_315_4
.Lbinop_α_315_3:        movq             xmm0, rsi
.Lbinop_α_315_4:        cmp              cl, 5;                               je    .Lbinop_α_315_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_315_6
.Lbinop_α_315_5:        movq             xmm1, rdi
.Lbinop_α_315_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_315_0
                        mov              qword ptr [rbp + 1040], 5
                        mov              qword ptr [rbp + 1048], rax
.Lbinop_α_315_7:                                                              jmp   n00018_assign_α
.Lbinop_α_315_0:        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00017_line_mark_α
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00018_assign_α
                        .size            n00016_binop_bx, .-n00016_binop_bx
                        .type            n00018_assign_bx, @function
n00018_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_assign_α:          mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx;         jmp   n00017_line_mark_α
                        .size            n00018_assign_bx, .-n00018_assign_bx
                        .type            n00017_line_mark_bx, @function
n00017_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 82;             jmp   n00019_bound_α
                        .size            n00017_line_mark_bx, .-n00017_line_mark_bx
                        .type            n00019_bound_bx, @function
n00019_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_bound_α:           mov              qword ptr [rbp + 976], rsp;          jmp   n00020_var_ref_α
                        .size            n00019_bound_bx, .-n00019_bound_bx
                        .type            n00020_var_ref_bx, @function
n00020_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n00021_var_α
                        .size            n00020_var_ref_bx, .-n00020_var_ref_bx
                        .type            n00021_var_bx, @function
n00021_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_var_α:             mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 872], rax;          jmp   n00022_lit_integer_α
                        .size            n00021_var_bx, .-n00021_var_bx
                        .type            n00022_lit_integer_bx, @function
n00022_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_lit_integer_α:     mov              qword ptr [rbp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_325_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00023_coerce_numeric_α
.Llit_integer_α_325_0:  .quad            1
                        .size            n00022_lit_integer_bx, .-n00022_lit_integer_bx
                        .type            n00023_coerce_numeric_bx, @function
n00023_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_coerce_numeric_α:  mov              eax, dword ptr [rbp + 1152]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_327_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_327_0
                        mov              eax, dword ptr [rbp + 880]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_327_0
.Lcoerce_numeric_α_327_1:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 856], rax;          jmp   n00024_binop_α
.Lcoerce_numeric_α_327_0:
                        lea              rdi, [rbp + 1152]
                        lea              rsi, [rbp + 880]
                        lea              rdx, [rbp + 848]
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 848]
                        cmp              al, 104;                             je    n00025_unmark_α
                                                                              jmp   n00024_binop_α
                        .size            n00023_coerce_numeric_bx, .-n00023_coerce_numeric_bx
                        .type            n00024_binop_bx, @function
n00024_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_binop_α:           mov              eax, dword ptr [rbp + 848]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_328_2
                        mov              rax, qword ptr [rbp + 856]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_328_0
                        mov              qword ptr [rbp + 832], 3
                        mov              qword ptr [rbp + 840], rax;          jmp   .Lbinop_α_328_7
.Lbinop_α_328_2:        and              edx, 1;                              jz    .Lbinop_α_328_0
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_328_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_328_4
.Lbinop_α_328_3:        movq             xmm0, rsi
.Lbinop_α_328_4:        cmp              cl, 5;                               je    .Lbinop_α_328_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_328_6
.Lbinop_α_328_5:        movq             xmm1, rdi
.Lbinop_α_328_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_328_0
                        mov              qword ptr [rbp + 832], 5
                        mov              qword ptr [rbp + 840], rax
.Lbinop_α_328_7:                                                              jmp   n00026_assign_α
.Lbinop_α_328_0:        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 880]
                        mov              rcx, qword ptr [rbp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00025_unmark_α
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00026_assign_α
                        .size            n00024_binop_bx, .-n00024_binop_bx
                        .type            n00026_assign_bx, @function
n00026_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_assign_α:          mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n00027_subscript_α
                        .size            n00026_assign_bx, .-n00026_assign_bx
                        .type            n00027_subscript_bx, @function
n00027_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_subscript_α:       mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00025_unmark_α
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00028_deref_α
                        .size            n00027_subscript_bx, .-n00027_subscript_bx
                        .type            n00028_deref_bx, @function
n00028_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_deref_α:           mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00025_unmark_α
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00029_lit_string_α
                        .size            n00028_deref_bx, .-n00028_deref_bx
                        .type            n00029_lit_string_bx, @function
n00029_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_lit_string_α:      mov              qword ptr [rbp + 928], 2             # result
                        mov              dword ptr [rbp + 932], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_332_0]
                        mov              qword ptr [rbp + 936], rax;          jmp   n00030_binop_test_α
.Llit_string_α_332_0:   .quad            .Llit_string_α_332_0_s
.Llit_string_α_332_0_s: .string          " "
                        .size            n00029_lit_string_bx, .-n00029_lit_string_bx
                        .type            n00030_binop_test_bx, @function
n00030_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_binop_test_α:      mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        mov              rdx, qword ptr [rbp + 928]
                        mov              rcx, qword ptr [rbp + 936]
                        mov              r8d, 16
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    n00025_unmark_α
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        push             rax                                  # gc_poll bb_binop_relop.cpp:110
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00031_line_mark_α
                        .size            n00030_binop_test_bx, .-n00030_binop_test_bx
                        .type            n00031_line_mark_bx, @function
n00031_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 83;             jmp   n00032_var_ref_α
                        .size            n00031_line_mark_bx, .-n00031_line_mark_bx
                        .type            n00032_var_ref_bx, @function
n00032_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n00033_lit_integer_α
                        .size            n00032_var_ref_bx, .-n00032_var_ref_bx
                        .type            n00033_lit_integer_bx, @function
n00033_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_lit_integer_α:     mov              qword ptr [rbp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_338_0]
                        mov              qword ptr [rbp + 728], rax;          jmp   n00034_var_α
.Llit_integer_α_338_0:  .quad            1
                        .size            n00033_lit_integer_bx, .-n00033_lit_integer_bx
                        .type            n00034_var_bx, @function
n00034_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_var_α:             mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00035_subscript_α
                        .size            n00034_var_bx, .-n00034_var_bx
                        .type            n00035_subscript_bx, @function
n00035_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_subscript_α:       mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        mov              r8, qword ptr [rbp + 736]
                        mov              r9, qword ptr [rbp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_section_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00036_line_mark_α
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        push             rax                                  # gc_poll bb_section.cpp:33
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00037_deref_α
                        .size            n00035_subscript_bx, .-n00035_subscript_bx
                        .type            n00037_deref_bx, @function
n00037_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_deref_α:           mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00036_line_mark_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00038_line_mark_α
                        .size            n00037_deref_bx, .-n00037_deref_bx
                        .type            n00038_line_mark_bx, @function
n00038_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 83;             jmp   n00039_call_icon_α
                        .size            n00038_line_mark_bx, .-n00038_line_mark_bx
                        .type            n00039_call_icon_bx, @function
n00039_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_call_icon_α:       mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lcall_icon_α_rkfn346:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn346]
                        lea              rsi, [rbp + 656]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    n00036_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00036_line_mark_α
n00039_call_icon_β:                                                             jmp   n00036_line_mark_α
                        .size            n00039_call_icon_bx, .-n00039_call_icon_bx
                        .type            n00036_line_mark_bx, @function
n00036_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 84;             jmp   n00040_lit_string_α
                        .size            n00036_line_mark_bx, .-n00036_line_mark_bx
                        .type            n00040_lit_string_bx, @function
n00040_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_lit_string_α:      mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_349_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n00041_var_ref_α
.Llit_string_α_349_0:   .quad            .Llit_string_α_349_0_s
.Llit_string_α_349_0_s: .string          " "
                        .size            n00040_lit_string_bx, .-n00040_lit_string_bx
                        .type            n00041_var_ref_bx, @function
n00041_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052320                      # namewidth
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n00042_deref_α
                        .size            n00041_var_ref_bx, .-n00041_var_ref_bx
                        .type            n00042_deref_bx, @function
n00042_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_deref_α:           mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00043_unmark_α
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00044_line_mark_α
                        .size            n00042_deref_bx, .-n00042_deref_bx
                        .type            n00044_line_mark_bx, @function
n00044_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 84;             jmp   n00045_call_icon_α
                        .size            n00044_line_mark_bx, .-n00044_line_mark_bx
                        .type            n00045_call_icon_bx, @function
n00045_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_call_icon_α:       mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lcall_icon_α_rkfn356:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn356]
                        lea              rsi, [rbp + 400]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    n00043_unmark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00046_var_α
n00045_call_icon_β:                                                             jmp   n00043_unmark_α
                        .size            n00045_call_icon_bx, .-n00045_call_icon_bx
                        .type            n00046_var_bx, @function
n00046_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_var_α:             mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 536], rax;          jmp   n00047_var_α
                        .size            n00046_var_bx, .-n00046_var_bx
                        .type            n00047_var_bx, @function
n00047_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_var_α:             mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 584], rax;          jmp   n00048_lit_integer_α
                        .size            n00047_var_bx, .-n00047_var_bx
                        .type            n00048_lit_integer_bx, @function
n00048_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_lit_integer_α:     mov              qword ptr [rbp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_361_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00049_coerce_numeric_α
.Llit_integer_α_361_0:  .quad            1
                        .size            n00048_lit_integer_bx, .-n00048_lit_integer_bx
                        .type            n00049_coerce_numeric_bx, @function
n00049_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_coerce_numeric_α:  mov              eax, dword ptr [rbp + 1152]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_363_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_363_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_363_0
.Lcoerce_numeric_α_363_1:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 568], rax;          jmp   n00050_binop_α
.Lcoerce_numeric_α_363_0:
                        lea              rdi, [rbp + 1152]
                        lea              rsi, [rbp + 592]
                        lea              rdx, [rbp + 560]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 560]
                        cmp              al, 104;                             je    n00043_unmark_α
                                                                              jmp   n00050_binop_α
                        .size            n00049_coerce_numeric_bx, .-n00049_coerce_numeric_bx
                        .type            n00050_binop_bx, @function
n00050_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_binop_α:           mov              eax, dword ptr [rbp + 560]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_364_2
                        mov              rax, qword ptr [rbp + 568]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_364_0
                        mov              qword ptr [rbp + 544], 3
                        mov              qword ptr [rbp + 552], rax;          jmp   .Lbinop_α_364_7
.Lbinop_α_364_2:        and              edx, 1;                              jz    .Lbinop_α_364_0
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_364_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_364_4
.Lbinop_α_364_3:        movq             xmm0, rsi
.Lbinop_α_364_4:        cmp              cl, 5;                               je    .Lbinop_α_364_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_364_6
.Lbinop_α_364_5:        movq             xmm1, rdi
.Lbinop_α_364_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_364_0
                        mov              qword ptr [rbp + 544], 5
                        mov              qword ptr [rbp + 552], rax
.Lbinop_α_364_7:                                                              jmp   n00051_lit_integer_α
.Lbinop_α_364_0:        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00043_unmark_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00051_lit_integer_α
                        .size            n00050_binop_bx, .-n00050_binop_bx
                        .type            n00051_lit_integer_bx, @function
n00051_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_lit_integer_α:     mov              qword ptr [rbp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_365_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00052_subscript_α
.Llit_integer_α_365_0:  .quad            0
                        .size            n00051_lit_integer_bx, .-n00051_lit_integer_bx
                        .type            n00052_subscript_bx, @function
n00052_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_subscript_α:       mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 544]
                        mov              rcx, qword ptr [rbp + 552]
                        mov              r8, qword ptr [rbp + 608]
                        mov              r9, qword ptr [rbp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00043_unmark_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        push             rax                                  # gc_poll bb_section.cpp:66
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00053_binop_α
                        .size            n00052_subscript_bx, .-n00052_subscript_bx
                        .type            n00053_binop_bx, @function
n00053_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_binop_α:           mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:81
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00054_assign_α
                        .size            n00053_binop_bx, .-n00053_binop_bx
                        .type            n00054_assign_bx, @function
n00054_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_assign_α:          mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00055_conjunction_α
                        .size            n00054_assign_bx, .-n00054_assign_bx
                        .type            n00055_conjunction_bx, @function
n00055_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_conjunction_α:     mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax;          jmp   n00043_unmark_α
n00055_conjunction_β:                                                           jmp   n00043_unmark_α
                        .size            n00055_conjunction_bx, .-n00055_conjunction_bx
                        .type            n00043_unmark_bx, @function
n00043_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_unmark_α:          mov              rsp, qword ptr [rbp + 304];          jmp   n00003_bound_α
                        .size            n00043_unmark_bx, .-n00043_unmark_bx
                        .type            n00025_unmark_bx, @function
n00025_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_unmark_α:          mov              rsp, qword ptr [rbp + 976];          jmp   n00019_bound_α
                        .size            n00025_unmark_bx, .-n00025_unmark_bx
                        .type            n00010_line_mark_bx, @function
n00010_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 86;             jmp   n00056_var_ref_α
                        .size            n00010_line_mark_bx, .-n00010_line_mark_bx
                        .type            n00056_var_ref_bx, @function
n00056_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00057_lit_integer_α
                        .size            n00056_var_ref_bx, .-n00056_var_ref_bx
                        .type            n00057_lit_integer_bx, @function
n00057_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_lit_integer_α:     mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_378_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n00058_lit_integer_α
.Llit_integer_α_378_0:  .quad            1
                        .size            n00057_lit_integer_bx, .-n00057_lit_integer_bx
                        .type            n00058_lit_integer_bx, @function
n00058_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_lit_integer_α:     mov              qword ptr [rbp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_379_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n00059_subscript_α
.Llit_integer_α_379_0:  .quad            18446744073709551614
                        .size            n00058_lit_integer_bx, .-n00058_lit_integer_bx
                        .type            n00059_subscript_bx, @function
n00059_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_subscript_α:       mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        mov              r8, qword ptr [rbp + 128]
                        mov              r9, qword ptr [rbp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_section_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    format_ω
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        push             rax                                  # gc_poll bb_section.cpp:33
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00060_deref_α
                        .size            n00059_subscript_bx, .-n00059_subscript_bx
                        .type            n00060_deref_bx, @function
n00060_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_deref_α:           mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    format_ω
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00061_line_mark_α
                        .size            n00060_deref_bx, .-n00060_deref_bx
                        .type            n00061_line_mark_bx, @function
n00061_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 86;             jmp   n00062_call_icon_α
                        .size            n00061_line_mark_bx, .-n00061_line_mark_bx
                        .type            n00062_call_icon_bx, @function
n00062_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_call_icon_α:       mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lcall_icon_α_rkfn385:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn385]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    format_ω
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   format_ω
n00062_call_icon_β:                                                             jmp   format_ω
                        .size            n00062_call_icon_bx, .-n00062_call_icon_bx
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
                        lea              rsp, [rbp + 1264]
                        mov              rbp, qword ptr [rbp + 1256];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
format_ω:
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
                        lea              rsp, [rbp + 1264]
                        mov              rbp, qword ptr [rbp + 1256];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
format_dcα:
                        pop              rax
                        push             rax
                        push             rax
                        push             rax
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
                        push             rax                                  # gc_poll xa_flat.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      add              rsp, 16
                        lea              rcx, [rip + .Lformat_α_386_3]
                        push             rcx
                        lea              rcx, [rip + .Lformat_α_386_2]
                        push             rcx;                                 jmp   FN__format
.Lformat_α_386_2:       add              rsp, 24
                        ret
.Lformat_α_386_3:       add              rsp, 24
                        mov              eax, 104
                        xor              edx, edx
                        ret
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_format:
                        .quad            5430185119066
                        .quad            34359738448
                        .quad            .Lgcmap_format_s
                        .quad            1168
                        .quad            5
                        .quad            334251534843904
                        .quad            17596481012016
                        .quad            721279627821376
                        .quad            17596481012688
                        .quad            193514046489568
.Lgcmap_format_s:       .string          "format"
#-----------------------------------------------------------------------------------------------------------------------
FN__item:
                        lea              rax, [rsp + -1448]
                        mov              qword ptr [rax + 1392], rbp
                        mov              rcx, qword ptr [rsp + 0]
                        mov              qword ptr [rax + 1400], rcx
                        mov              rcx, qword ptr [rsp + 8]
                        mov              qword ptr [rax + 1408], rcx
                        lea              rcx, [rsp + 40]
                        mov              qword ptr [rax + 1416], rcx
                        lea              rbp, [rax + 1392]
                        mov              rsp, rax
                        lea              rax, [rip + .Lgcmap_item]
                        mov              qword ptr [rsp + 1272], rax
                        mov              dword ptr [rsp + 1264], 160
                        mov              dword ptr [rsp + 1268], 1392
                        mov              eax, 0
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 1264
                        rep              stosb
                        mov              rdi, rsp
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
                        mov              rdi, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rdi, qword ptr [rdi + 0]
                        mov              ecx, dword ptr [rdi + 0]
                        cmp              ecx, 65536;                          jae   .Litem_α_386_245
                        mov              rsi, 40
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm387:        .string          "item"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm387]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 0
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
.Litem_α_386_245:
item_α_body:
                        lea              rax, [rip + n00063_suspend_β]
                        mov              qword ptr [rbp + -192], rax
                        .type            n00064_line_mark_bx, @function
n00064_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 93
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_450_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00065_line_mark_α
.Lline_mark_α_450_0:    .quad            .Lline_mark_α_450_0_s
.Lline_mark_α_450_0_s:  .string          "concord.icn"
                        .size            n00064_line_mark_bx, .-n00064_line_mark_bx
                        .type            n00065_line_mark_bx, @function
n00065_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 94;             jmp   n00066_bound_α
                        .size            n00065_line_mark_bx, .-n00065_line_mark_bx
                        .type            n00066_bound_bx, @function
n00066_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_bound_α:           mov              qword ptr [rbp + -1312], rsp;        jmp   n00067_line_mark_α
                        .size            n00066_bound_bx, .-n00066_bound_bx
                        .type            n00067_line_mark_bx, @function
n00067_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 94;             jmp   n00068_call_icon_α
                        .size            n00067_line_mark_bx, .-n00067_line_mark_bx
                        .type            n00068_call_icon_bx, @function
n00068_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_call_icon_α:       .section         .rodata
.Lcall_icon_α_rkfn458:  .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn458]
                        lea              rsi, [rbp + -1344]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262295
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -1360], rax
                        mov              qword ptr [rbp + -1352], rdx
                        cmp              al, 104;                             je    item_ω
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00069_assign_α
n00068_call_icon_β:                                                             jmp   item_ω
                        .size            n00068_call_icon_bx, .-n00068_call_icon_bx
                        .type            n00069_assign_bx, @function
n00069_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_assign_α:          mov              rax, qword ptr [rbp + -1360]
                        mov              rdx, qword ptr [rbp + -1352]
                        mov              qword ptr [rbp + -176], rax
                        mov              qword ptr [rbp + -168], rdx;         jmp   n00070_line_mark_α
                        .size            n00069_assign_bx, .-n00069_assign_bx
                        .type            n00070_line_mark_bx, @function
n00070_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 95;             jmp   n00071_lit_integer_α
                        .size            n00070_line_mark_bx, .-n00070_line_mark_bx
                        .type            n00071_lit_integer_bx, @function
n00071_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_lit_integer_α:     mov              qword ptr [rbp + -272], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_462_0]
                        mov              qword ptr [rbp + -264], rax;         jmp   n00072_var_α
.Llit_integer_α_462_0:  .quad            1
                        .size            n00071_lit_integer_bx, .-n00071_lit_integer_bx
                        .type            n00072_var_bx, @function
n00072_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_var_α:             mov              rax, qword ptr [r9 + 48]             # lineno
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rbp + -256], rax          # result
                        mov              qword ptr [rbp + -248], rdx;         jmp   n00073_coerce_numeric_α
                        .size            n00072_var_bx, .-n00072_var_bx
                        .type            n00073_coerce_numeric_bx, @function
n00073_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_coerce_numeric_α:  mov              eax, dword ptr [rbp + -256]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_465_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_465_0
                        mov              eax, dword ptr [rbp + -272]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_465_0
.Lcoerce_numeric_α_465_1:
                        mov              rax, qword ptr [rbp + -256]
                        mov              qword ptr [rbp + -288], rax
                        mov              rax, qword ptr [rbp + -248]
                        mov              qword ptr [rbp + -280], rax;         jmp   n00074_binop_α
.Lcoerce_numeric_α_465_0:
                        lea              rdi, [rbp + -256]
                        lea              rsi, [rbp + -272]
                        lea              rdx, [rbp + -288]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + -288]
                        cmp              al, 104;                             je    n00075_line_mark_α
                                                                              jmp   n00074_binop_α
                        .size            n00073_coerce_numeric_bx, .-n00073_coerce_numeric_bx
                        .type            n00074_binop_bx, @function
n00074_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_binop_α:           mov              eax, dword ptr [rbp + -288]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_466_2
                        mov              rax, qword ptr [rbp + -280]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_466_0
                        mov              qword ptr [rbp + -304], 3
                        mov              qword ptr [rbp + -296], rax;         jmp   .Lbinop_α_466_7
.Lbinop_α_466_2:        and              edx, 1;                              jz    .Lbinop_α_466_0
                        mov              rsi, qword ptr [rbp + -280]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_466_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_466_4
.Lbinop_α_466_3:        movq             xmm0, rsi
.Lbinop_α_466_4:        cmp              cl, 5;                               je    .Lbinop_α_466_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_466_6
.Lbinop_α_466_5:        movq             xmm1, rdi
.Lbinop_α_466_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_466_0
                        mov              qword ptr [rbp + -304], 5
                        mov              qword ptr [rbp + -296], rax
.Lbinop_α_466_7:                                                              jmp   n00076_assign_α
.Lbinop_α_466_0:        mov              rdi, qword ptr [rbp + -288]
                        mov              rsi, qword ptr [rbp + -280]
                        mov              rdx, qword ptr [rbp + -272]
                        mov              rcx, qword ptr [rbp + -264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00075_line_mark_α
                        mov              qword ptr [rbp + -304], rax
                        mov              qword ptr [rbp + -296], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00076_assign_α
                        .size            n00074_binop_bx, .-n00074_binop_bx
                        .type            n00076_assign_bx, @function
n00076_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_assign_α:          mov              rax, qword ptr [rbp + -304]
                        mov              rdx, qword ptr [rbp + -296]
                        mov              qword ptr [r9 + 48], rax             # lineno
                        mov              qword ptr [r9 + 56], rdx;            jmp   n00075_line_mark_α
                        .size            n00076_assign_bx, .-n00076_assign_bx
                        .type            n00075_line_mark_bx, @function
n00075_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 96;             jmp   n00077_var_ref_α
                        .size            n00075_line_mark_bx, .-n00075_line_mark_bx
                        .type            n00077_var_ref_bx, @function
n00077_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052336                      # lineno
                        mov              qword ptr [rbp + -432], rax
                        mov              qword ptr [rbp + -424], rdx;         jmp   n00078_lit_integer_α
                        .size            n00077_var_ref_bx, .-n00077_var_ref_bx
                        .type            n00078_lit_integer_bx, @function
n00078_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_lit_integer_α:     mov              qword ptr [rbp + -416], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_472_0]
                        mov              qword ptr [rbp + -408], rax;         jmp   n00079_deref_α
.Llit_integer_α_472_0:  .quad            6
                        .size            n00078_lit_integer_bx, .-n00078_lit_integer_bx
                        .type            n00079_deref_bx, @function
n00079_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_deref_α:           mov              rdi, qword ptr [rbp + -432]
                        mov              rsi, qword ptr [rbp + -424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00080_line_mark_α
                        mov              qword ptr [rbp + -400], rax
                        mov              qword ptr [rbp + -392], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00081_line_mark_α
                        .size            n00079_deref_bx, .-n00079_deref_bx
                        .type            n00081_line_mark_bx, @function
n00081_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 96;             jmp   n00082_call_icon_α
                        .size            n00081_line_mark_bx, .-n00081_line_mark_bx
                        .type            n00082_call_icon_bx, @function
n00082_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_call_icon_α:       mov              rax, qword ptr [rbp + -416]
                        mov              qword ptr [rbp + -464], rax
                        mov              rax, qword ptr [rbp + -408]
                        mov              qword ptr [rbp + -456], rax
                        mov              rax, qword ptr [rbp + -400]
                        mov              qword ptr [rbp + -480], rax
                        mov              rax, qword ptr [rbp + -392]
                        mov              qword ptr [rbp + -472], rax
                        .section         .rodata
.Lcall_icon_α_rkfn477:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn477]
                        lea              rsi, [rbp + -480]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -496], rax
                        mov              qword ptr [rbp + -488], rdx
                        cmp              al, 104;                             je    n00080_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00083_lit_string_α
n00082_call_icon_β:                                                             jmp   n00080_line_mark_α
                        .size            n00082_call_icon_bx, .-n00082_call_icon_bx
                        .type            n00083_lit_string_bx, @function
n00083_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00083_lit_string_α:      mov              qword ptr [rbp + -384], 2            # result
                        mov              dword ptr [rbp + -380], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_478_0]
                        mov              qword ptr [rbp + -376], rax;         jmp   n00084_var_ref_α
.Llit_string_α_478_0:   .quad            .Llit_string_α_478_0_s
.Llit_string_α_478_0_s: .string          "  "
                        .size            n00083_lit_string_bx, .-n00083_lit_string_bx
                        .type            n00084_var_ref_bx, @function
n00084_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00084_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + -176]
                        mov              qword ptr [rbp + -352], rax
                        mov              qword ptr [rbp + -344], rdx;         jmp   n00085_deref_α
                        .size            n00084_var_ref_bx, .-n00084_var_ref_bx
                        .type            n00085_deref_bx, @function
n00085_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_deref_α:           mov              rdi, qword ptr [rbp + -352]
                        mov              rsi, qword ptr [rbp + -344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00080_line_mark_α
                        mov              qword ptr [rbp + -336], rax
                        mov              qword ptr [rbp + -328], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00086_line_mark_α
                        .size            n00085_deref_bx, .-n00085_deref_bx
                        .type            n00086_line_mark_bx, @function
n00086_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 96;             jmp   n00087_call_icon_α
                        .size            n00086_line_mark_bx, .-n00086_line_mark_bx
                        .type            n00087_call_icon_bx, @function
n00087_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_call_icon_α:       mov              rax, qword ptr [rbp + -336]
                        mov              qword ptr [rbp + -528], rax
                        mov              rax, qword ptr [rbp + -328]
                        mov              qword ptr [rbp + -520], rax
                        mov              rax, qword ptr [rbp + -384]
                        mov              qword ptr [rbp + -544], rax
                        mov              rax, qword ptr [rbp + -376]
                        mov              qword ptr [rbp + -536], rax
                        mov              rax, qword ptr [rbp + -496]
                        mov              qword ptr [rbp + -560], rax
                        mov              rax, qword ptr [rbp + -488]
                        mov              qword ptr [rbp + -552], rax
                        .section         .rodata
.Lcall_icon_α_rkfn485:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn485]
                        lea              rsi, [rbp + -560]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -576], rax
                        mov              qword ptr [rbp + -568], rdx
                        cmp              al, 104;                             je    n00080_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00080_line_mark_α
n00087_call_icon_β:                                                             jmp   n00080_line_mark_α
                        .size            n00087_call_icon_bx, .-n00087_call_icon_bx
                        .type            n00080_line_mark_bx, @function
n00080_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97;             jmp   n00088_var_ref_α
                        .size            n00080_line_mark_bx, .-n00080_line_mark_bx
                        .type            n00088_var_ref_bx, @function
n00088_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + -176]
                        mov              qword ptr [rbp + -624], rax
                        mov              qword ptr [rbp + -616], rdx;         jmp   n00089_deref_α
                        .size            n00088_var_ref_bx, .-n00088_var_ref_bx
                        .type            n00089_deref_bx, @function
n00089_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_deref_α:           mov              rdi, qword ptr [rbp + -624]
                        mov              rsi, qword ptr [rbp + -616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00090_line_mark_α
                        mov              qword ptr [rbp + -608], rax
                        mov              qword ptr [rbp + -600], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00091_line_mark_α
                        .size            n00089_deref_bx, .-n00089_deref_bx
                        .type            n00091_line_mark_bx, @function
n00091_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97;             jmp   n00092_call_icon_α
                        .size            n00091_line_mark_bx, .-n00091_line_mark_bx
                        .type            n00092_call_icon_bx, @function
n00092_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_call_icon_α:       mov              rax, qword ptr [rbp + -608]
                        mov              qword ptr [rbp + -656], rax
                        mov              rax, qword ptr [rbp + -600]
                        mov              qword ptr [rbp + -648], rax
                        .section         .rodata
.Lcall_icon_α_rkfn494:  .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn494]
                        lea              rsi, [rbp + -656]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196743
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -672], rax
                        mov              qword ptr [rbp + -664], rdx
                        cmp              al, 104;                             je    n00090_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00093_assign_α
n00092_call_icon_β:                                                             jmp   n00090_line_mark_α
                        .size            n00092_call_icon_bx, .-n00092_call_icon_bx
                        .type            n00093_assign_bx, @function
n00093_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_assign_α:          mov              rax, qword ptr [rbp + -672]
                        mov              rdx, qword ptr [rbp + -664]
                        mov              qword ptr [rbp + -176], rax
                        mov              qword ptr [rbp + -168], rdx;         jmp   n00090_line_mark_α
                        .size            n00093_assign_bx, .-n00093_assign_bx
                        .type            n00090_line_mark_bx, @function
n00090_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 98;             jmp   n00094_lit_integer_α
                        .size            n00090_line_mark_bx, .-n00090_line_mark_bx
                        .type            n00094_lit_integer_bx, @function
n00094_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_lit_integer_α:     mov              qword ptr [rbp + -704], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_498_0]
                        mov              qword ptr [rbp + -696], rax;         jmp   n00095_assign_α
.Llit_integer_α_498_0:  .quad            1
                        .size            n00094_lit_integer_bx, .-n00094_lit_integer_bx
                        .type            n00095_assign_bx, @function
n00095_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_assign_α:          mov              rax, qword ptr [rbp + -704]
                        mov              rdx, qword ptr [rbp + -696]
                        mov              qword ptr [rbp + -144], rax
                        mov              qword ptr [rbp + -136], rdx;         jmp   n00096_line_mark_α
                        .size            n00095_assign_bx, .-n00095_assign_bx
                        .type            n00096_line_mark_bx, @function
n00096_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 99;             jmp   n00097_var_α
                        .size            n00096_line_mark_bx, .-n00096_line_mark_bx
                        .type            n00097_var_bx, @function
n00097_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00097_var_α:             mov              rax, qword ptr [rbp + -176]
                        mov              qword ptr [rbp + -736], rax
                        mov              rax, qword ptr [rbp + -168]
                        mov              qword ptr [rbp + -728], rax;         jmp   n00098_scan_enter_α
                        .size            n00097_var_bx, .-n00097_var_bx
                        .type            n00098_scan_enter_bx, @function
n00098_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_scan_enter_α:      mov              qword ptr [rbp + -1264], r13
                        mov              qword ptr [rbp + -1256], r14
                        mov              qword ptr [rbp + -1248], r15
                        mov              rdi, qword ptr [rbp + -736]
                        mov              rsi, qword ptr [rbp + -728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], edx
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            je    n00099_unmark_α
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n00100_bound_α
                        .size            n00098_scan_enter_bx, .-n00098_scan_enter_bx
                        .type            n00100_bound_bx, @function
n00100_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00100_bound_α:           mov              qword ptr [rbp + -1072], rsp;        jmp   n00101_lit_charset_α
                        .size            n00100_bound_bx, .-n00100_bound_bx
                        .type            n00101_lit_charset_bx, @function
n00101_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_lit_charset_α:     mov              qword ptr [rbp + -1120], 2           # result
                        mov              dword ptr [rbp + -1116], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_508_0]
                        mov              qword ptr [rbp + -1112], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_508_0]
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
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00102_line_mark_α
.Llit_charset_α_508_0:  .quad            .Llit_charset_α_508_0_s
.Llit_charset_α_508_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00101_lit_charset_bx, .-n00101_lit_charset_bx
                        .type            n00102_line_mark_bx, @function
n00102_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00103_scan_upto_α
                        .size            n00102_line_mark_bx, .-n00102_line_mark_bx
                        .type            n00103_scan_upto_bx, @function
n00103_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_scan_upto_α:       mov              qword ptr [rbp + -1152], r14
.Lscan_upto_α_512_0:    mov              rax, qword ptr [rbp + -1152]
                        cmp              rax, r15;                            jge   n00104_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .Lscan_upto_α_512_3]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_upto_α_512_1
                        mov              qword ptr [rbp + -1168], 3
                        add              rax, 1
                        mov              qword ptr [rbp + -1160], rax;        jmp   n00105_line_mark_α
.Lscan_upto_α_512_1:    inc              qword ptr [rbp + -1152];             jmp   .Lscan_upto_α_512_0
n00103_scan_upto_β:       inc              qword ptr [rbp + -1152];             jmp   .Lscan_upto_α_512_0
.Lscan_upto_β_512_2:    .quad            .Lscan_upto_β_512_2_s
.Lscan_upto_β_512_2_s:  .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.Lscan_upto_α_512_3:    .quad            0
.Lscan_upto_β_512_4:    .quad            576460743847706622
.Lscan_upto_β_512_5:    .quad            0
.Lscan_upto_β_512_6:    .quad            0
                        .size            n00103_scan_upto_bx, .-n00103_scan_upto_bx
                        .type            n00105_line_mark_bx, @function
n00105_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00105_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00106_scan_tab_α
                        .size            n00105_line_mark_bx, .-n00105_line_mark_bx
                        .type            n00106_scan_tab_bx, @function
n00106_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_scan_tab_α:        mov              rdi, qword ptr [rbp + -1168]
                        mov              rsi, qword ptr [rbp + -1160]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    n00103_scan_upto_β
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + -1168]
                        mov              rsi, qword ptr [rbp + -1160]
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_516_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_516_0:     cmp              rax, 1;                              jl    n00103_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00103_scan_upto_β
                        mov              qword ptr [rbp + -1200], r14
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + -1216], rax
                        mov              qword ptr [rbp + -1208], rdx;        jmp   n00107_line_mark_α
n00106_scan_tab_β:        mov              r14, qword ptr [rbp + -1200];        jmp   n00103_scan_upto_β
                        .size            n00106_scan_tab_bx, .-n00106_scan_tab_bx
                        .type            n00107_line_mark_bx, @function
n00107_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 101;            jmp   n00108_lit_charset_α
                        .size            n00107_line_mark_bx, .-n00107_line_mark_bx
                        .type            n00108_lit_charset_bx, @function
n00108_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00108_lit_charset_α:     mov              qword ptr [rbp + -784], 2            # result
                        mov              dword ptr [rbp + -780], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_519_0]
                        mov              qword ptr [rbp + -776], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_519_0]
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
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00109_line_mark_α
.Llit_charset_α_519_0:  .quad            .Llit_charset_α_519_0_s
.Llit_charset_α_519_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00108_lit_charset_bx, .-n00108_lit_charset_bx
                        .type            n00109_line_mark_bx, @function
n00109_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 101;            jmp   n00110_scan_many_α
                        .size            n00109_line_mark_bx, .-n00109_line_mark_bx
                        .type            n00110_scan_many_bx, @function
n00110_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00110_scan_many_α:       lea              rdi, [rip + .Lscan_many_α_523_3]
                        mov              eax, r14d
.Lscan_many_α_523_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_523_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_many_α_523_1
                        add              eax, 1;                              jmp   .Lscan_many_α_523_0
.Lscan_many_α_523_1:    cmp              eax, r14d;                           je    n00111_line_mark_α
                        mov              qword ptr [rbp + -816], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + -808], rcx;         jmp   n00112_line_mark_α
n00110_scan_many_β:                                                             jmp   n00111_line_mark_α
.Lscan_many_β_523_2:    .quad            .Lscan_many_β_523_2_s
.Lscan_many_β_523_2_s:  .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.Lscan_many_α_523_3:    .quad            0
.Lscan_many_β_523_4:    .quad            576460743847706622
.Lscan_many_β_523_5:    .quad            0
.Lscan_many_β_523_6:    .quad            0
                        .size            n00110_scan_many_bx, .-n00110_scan_many_bx
                        .type            n00112_line_mark_bx, @function
n00112_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 101;            jmp   n00113_scan_tab_α
                        .size            n00112_line_mark_bx, .-n00112_line_mark_bx
                        .type            n00113_scan_tab_bx, @function
n00113_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00113_scan_tab_α:        mov              rdi, qword ptr [rbp + -816]
                        mov              rsi, qword ptr [rbp + -808]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    n00111_line_mark_α
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + -816]
                        mov              rsi, qword ptr [rbp + -808]
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_527_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_527_0:     cmp              rax, 1;                              jl    n00111_line_mark_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00111_line_mark_α
                        mov              qword ptr [rbp + -848], r14
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + -864], rax
                        mov              qword ptr [rbp + -856], rdx;         jmp   n00114_assign_α
n00113_scan_tab_β:        mov              r14, qword ptr [rbp + -848];         jmp   n00111_line_mark_α
                        .size            n00113_scan_tab_bx, .-n00113_scan_tab_bx
                        .type            n00114_assign_bx, @function
n00114_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00114_assign_α:          mov              rax, qword ptr [rbp + -864]
                        mov              rdx, qword ptr [rbp + -856]
                        mov              qword ptr [rbp + -160], rax
                        mov              qword ptr [rbp + -152], rdx;         jmp   n00111_line_mark_α
                        .size            n00114_assign_bx, .-n00114_assign_bx
                        .type            n00111_line_mark_bx, @function
n00111_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00111_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 102;            jmp   n00115_disjunction_α
                        .size            n00111_line_mark_bx, .-n00111_line_mark_bx
                        .type            n00115_disjunction_bx, @function
n00115_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00115_disjunction_α:     mov              qword ptr [rbp + -1024], 0
                        mov              qword ptr [rbp + -1016], 0
                        mov              dword ptr [rbp + -1008], 0;          jmp   n00116_var_α
.Ldisjunction_γ_437_as: mov              eax, dword ptr [rbp + -1008]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_532_0
                                                                              jmp   n00117_conjunction_α
.Ldisjunction_α_532_0:                                                        jmp   n00117_conjunction_α
n00115_disjunction_β:     mov              eax, dword ptr [rbp + -1008];        jmp   n00118_unmark_α
.Ldisjunction_γ_437_af:
.Ldisjunction_ω_437_af: add              dword ptr [rbp + -1008], 1
                        mov              eax, dword ptr [rbp + -1008];        jmp   n00118_unmark_α
                        .size            n00115_disjunction_bx, .-n00115_disjunction_bx
                        .type            n00117_conjunction_bx, @function
n00117_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_conjunction_α:     mov              rax, qword ptr [rbp + -1024]
                        mov              qword ptr [rbp + -1040], rax
                        mov              rax, qword ptr [rbp + -1016]
                        mov              qword ptr [rbp + -1032], rax;        jmp   n00118_unmark_α
n00117_conjunction_β:                                                           jmp   n00118_unmark_α
                        .size            n00117_conjunction_bx, .-n00117_conjunction_bx
                        .type            n00116_var_bx, @function
n00116_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00116_var_α:             mov              rax, qword ptr [rbp + -160]
                        mov              qword ptr [rbp + -912], rax
                        mov              rax, qword ptr [rbp + -152]
                        mov              qword ptr [rbp + -904], rax;         jmp   n00119_unop_α
n00116_var_β:                                                                   jmp   .Ldisjunction_ω_437_af
                        .size            n00116_var_bx, .-n00116_var_bx
                        .type            n00119_unop_bx, @function
n00119_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00119_unop_α:            mov              rdi, qword ptr [rbp + -160]
                        mov              rsi, qword ptr [rbp + -152]
                        call             qword ptr [rip + rt_size_d@GOTPCREL]
                        mov              qword ptr [rbp + -928], rax
                        mov              qword ptr [rbp + -920], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:115
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00120_lit_integer_α
                        .size            n00119_unop_bx, .-n00119_unop_bx
                        .type            n00120_lit_integer_bx, @function
n00120_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_lit_integer_α:     mov              qword ptr [rbp + -896], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_537_0]
                        mov              qword ptr [rbp + -888], rax;         jmp   n00121_binop_test_α
.Llit_integer_α_537_0:  .quad            3
                        .size            n00120_lit_integer_bx, .-n00120_lit_integer_bx
                        .type            n00121_binop_test_bx, @function
n00121_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_binop_test_α:      mov              eax, dword ptr [rbp + -928]
                        cmp              al, 112;                             je    .Lbinop_test_α_538_0
                        mov              eax, dword ptr [rbp + -896]
                        cmp              al, 112;                             je    .Lbinop_test_α_538_0
                        mov              eax, dword ptr [rbp + -928]
                        cmp              al, 3;                               jne   .Lbinop_test_α_538_2
                        mov              eax, dword ptr [rbp + -896]
                        cmp              al, 3;                               jne   .Lbinop_test_α_538_2
.Lbinop_test_α_538_1:   mov              rax, qword ptr [rbp + -920]
                        mov              rcx, qword ptr [rbp + -888]
                        cmp              rax, rcx;                            jl    .Ldisjunction_ω_437_af
                        mov              rcx, qword ptr [rbp + -896]
                        mov              qword ptr [rbp + -944], rcx
                        mov              rcx, qword ptr [rbp + -888]
                        mov              qword ptr [rbp + -936], rcx;         jmp   n00122_var_α
.Lbinop_test_α_538_0:   mov              rdi, qword ptr [rbp + -928]
                        mov              rsi, qword ptr [rbp + -920]
                        mov              rdx, qword ptr [rbp + -896]
                        mov              rcx, qword ptr [rbp + -888]
                        mov              r8d, 8
                        lea              r9, [rbp + -944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_538_2
                        cmp              eax, 1;                              je    .Ldisjunction_ω_437_af
                        push             rax                                  # gc_poll bb_binop_relop.cpp:56
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00122_var_α
.Lbinop_test_α_538_2:   mov              rdi, qword ptr [rbp + -928]
                        mov              rsi, qword ptr [rbp + -920]
                        mov              rdx, qword ptr [rbp + -896]
                        mov              rcx, qword ptr [rbp + -888]
                        mov              r8d, 8
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    .Ldisjunction_ω_437_af
                        mov              rdi, qword ptr [rbp + -928]
                        mov              rsi, qword ptr [rbp + -920]
                        mov              rdx, qword ptr [rbp + -896]
                        mov              rcx, qword ptr [rbp + -888]
                        lea              r8, [rbp + -944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_relop.cpp:79
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00122_var_α
                        .size            n00121_binop_test_bx, .-n00121_binop_test_bx
                        .type            n00122_var_bx, @function
n00122_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_var_α:             mov              rax, qword ptr [rbp + -160]
                        mov              qword ptr [rbp + -992], rax
                        mov              rax, qword ptr [rbp + -152]
                        mov              qword ptr [rbp + -984], rax;         jmp   n00063_suspend_α
                        .size            n00122_var_bx, .-n00122_var_bx
                        .type            n00063_suspend_bx, @function
n00063_suspend_bx:
#=======================================================================================================================
# suspend
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 102 0
n00063_suspend_α:         lea              rax, [rip + n00063_suspend_β]
                        mov              qword ptr [rbp + -192], rax
                        mov              rax, qword ptr [rbp + -992]
                        mov              qword ptr [rbp + -1392], rax
                        mov              rax, qword ptr [rbp + -984]
                        mov              qword ptr [rbp + -1384], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00123_scan_α
n00063_suspend_β:         push             rax
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_live_subj@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        pop              rdx
                        pop              rax;                                 jmp   n00123_scan_β
                        .size            n00063_suspend_bx, .-n00063_suspend_bx
                        .type            n00123_scan_bx, @function
n00123_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00123_scan_α:            mov              dword ptr [rbp + -960], r14d
                        mov              dword ptr [rbp + -956], r15d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_live_subj@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -952], rax
                        mov              rdi, qword ptr [rbp + -1264]
                        mov              rsi, qword ptr [rbp + -1256]
                        mov              rdx, qword ptr [rbp + -1248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + -1264]
                        mov              r14, qword ptr [rbp + -1256]
                        mov              r15, qword ptr [rbp + -1248];        jmp   item_γ
n00123_scan_β:            mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -1256], rax
                        mov              rdi, qword ptr [rbp + -952]
                        mov              esi, dword ptr [rbp + -956]
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
                        mov              r14d, dword ptr [rbp + -960]
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00118_unmark_α
                                                                              jmp   n00118_unmark_α
                        .size            n00123_scan_bx, .-n00123_scan_bx
                        .type            n00118_unmark_bx, @function
n00118_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_unmark_α:          mov              rsp, qword ptr [rbp + -1072];        jmp   n00100_bound_α
n00118_unmark_β:                                                                jmp   n00100_bound_α
                        .size            n00118_unmark_bx, .-n00118_unmark_bx
                        .type            n00099_unmark_bx, @function
n00099_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_unmark_α:          mov              rsp, qword ptr [rbp + -1312];        jmp   n00066_bound_α
                        .size            n00099_unmark_bx, .-n00099_unmark_bx
                        .type            n00104_scan_bx, @function
n00104_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_scan_α:            mov              rdi, qword ptr [rbp + -1264]
                        mov              rsi, qword ptr [rbp + -1256]
                        mov              rdx, qword ptr [rbp + -1248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + -1264]
                        mov              r14, qword ptr [rbp + -1256]
                        mov              r15, qword ptr [rbp + -1248];        jmp   n00099_unmark_α
n00104_scan_β:                                                                  jmp   n00099_unmark_α
                        .size            n00104_scan_bx, .-n00104_scan_bx
#-----------------------------------------------------------------------------------------------------------------------
item_res:
                        mov              rbp, rax
#-----------------------------------------------------------------------------------------------------------------------
item_β:
                        mov              rax, qword ptr [rbp + -192];         jmp   rax
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
                        mov              rcx, qword ptr [rbp + 8]
                        mov              rsp, qword ptr [rbp + 24]
                        mov              rbp, qword ptr [rbp + 0]
                        mov              eax, 104;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_item:
                        .quad            5979940932954
                        .quad            42949673104
                        .quad            .Lgcmap_item_s
                        .quad            1264
                        .quad            22
                        .quad            87960930222080
                        .quad            17596481011792
                        .quad            35184372088928
                        .quad            8804682956928
                        .quad            26392574034056
                        .quad            35184372088992
                        .quad            17596481011904
                        .quad            35184372089040
                        .quad            17596481011952
                        .quad            70368744177920
                        .quad            17596481012032
                        .quad            52776558133584
                        .quad            17596481012096
                        .quad            35184372089232
                        .quad            8800387989936
                        .quad            8804682957240
                        .quad            105553116266944
                        .quad            17596481012256
                        .quad            703687441777200
                        .quad            8808977925296
                        .quad            8800387990712
                        .quad            52776558134464
.Lgcmap_item_s:         .string          "item"
#-----------------------------------------------------------------------------------------------------------------------
FN__options:
                        sub              rsp, 3856
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 3848
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_options]
                        mov              qword ptr [rsp + 3640], rax
                        mov              dword ptr [rsp + 3632], 160
                        mov              dword ptr [rsp + 3636], 3856
                        mov              eax, 0
                        mov              qword ptr [rsp + 3848], rbp
                        mov              rbp, rsp
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
                        mov              rdi, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rdi, qword ptr [rdi + 0]
                        mov              ecx, dword ptr [rdi + 0]
                        cmp              ecx, 65536;                          jae   .Loptions_α_550_245
                        mov              rsi, 40
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm551:        .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm551]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 2
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
.Loptions_α_550_245:
options_α_body:
                        .type            n00124_line_mark_bx, @function
n00124_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 111
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_712_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00125_line_mark_α
.Lline_mark_α_712_0:    .quad            .Lline_mark_α_712_0_s
.Lline_mark_α_712_0_s:  .string          "concord.icn"
                        .size            n00124_line_mark_bx, .-n00124_line_mark_bx
                        .type            n00125_line_mark_bx, @function
n00125_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 112;            jmp   n00126_var_ref_α
                        .size            n00125_line_mark_bx, .-n00125_line_mark_bx
                        .type            n00126_var_ref_bx, @function
n00126_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx;         jmp   n00127_nulltest_var_α
                        .size            n00126_var_ref_bx, .-n00126_var_ref_bx
                        .type            n00127_nulltest_var_bx, @function
n00127_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_nulltest_var_α:    mov              eax, dword ptr [rbp + 3344]
                        cmp              al, 104;                             je    n00128_line_mark_α
                        mov              rdi, qword ptr [rbp + 3344]
                        mov              rsi, qword ptr [rbp + 3352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00128_line_mark_α
                        cmp              eax, 0;                              jne   n00128_line_mark_α
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3368], rax
                        push             rax                                  # gc_poll bb_unop.cpp:63
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00129_lit_charset_α
                        .size            n00127_nulltest_var_bx, .-n00127_nulltest_var_bx
                        .type            n00129_lit_charset_bx, @function
n00129_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00129_lit_charset_α:     mov              qword ptr [rbp + 3440], 2            # result
                        mov              dword ptr [rbp + 3444], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_718_0]
                        mov              qword ptr [rbp + 3448], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_718_0]
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
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00130_line_mark_α
.Llit_charset_α_718_0:  .quad            .Llit_charset_α_718_0_s
.Llit_charset_α_718_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00129_lit_charset_bx, .-n00129_lit_charset_bx
                        .type            n00130_line_mark_bx, @function
n00130_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00130_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 112;            jmp   n00131_call_icon_α
                        .size            n00130_line_mark_bx, .-n00130_line_mark_bx
                        .type            n00131_call_icon_bx, @function
n00131_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00131_call_icon_α:       mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3416], rax
                        .section         .rodata
.Lcall_icon_α_rkfn722:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn722]
                        lea              rsi, [rbp + 3408]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              al, 104;                             je    n00128_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00132_assign_var_α
n00131_call_icon_β:                                                             jmp   n00128_line_mark_α
                        .size            n00131_call_icon_bx, .-n00131_call_icon_bx
                        .type            n00132_assign_var_bx, @function
n00132_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00132_assign_var_α:      mov              rdi, qword ptr [rbp + 3360]
                        mov              rsi, qword ptr [rbp + 3368]
                        mov              rdx, qword ptr [rbp + 3392]
                        mov              rcx, qword ptr [rbp + 3400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00128_line_mark_α
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:47
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00128_line_mark_α
                        .size            n00132_assign_var_bx, .-n00132_assign_var_bx
                        .type            n00128_line_mark_bx, @function
n00128_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00128_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 113;            jmp   n00133_line_mark_α
                        .size            n00128_line_mark_bx, .-n00128_line_mark_bx
                        .type            n00133_line_mark_bx, @function
n00133_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 113;            jmp   n00134_call_icon_α
                        .size            n00133_line_mark_bx, .-n00133_line_mark_bx
                        .type            n00134_call_icon_bx, @function
n00134_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00134_call_icon_α:       .section         .rodata
.Lcall_icon_α_rkfn729:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn729]
                        lea              rsi, [rbp + 3312]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              al, 104;                             je    n00135_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00136_assign_α
n00134_call_icon_β:                                                             jmp   n00135_line_mark_α
                        .size            n00134_call_icon_bx, .-n00134_call_icon_bx
                        .type            n00136_assign_bx, @function
n00136_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00136_assign_α:          mov              rax, qword ptr [rbp + 3296]
                        mov              rdx, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx;         jmp   n00135_line_mark_α
                        .size            n00136_assign_bx, .-n00136_assign_bx
                        .type            n00135_line_mark_bx, @function
n00135_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 114;            jmp   n00137_make_list_α
                        .size            n00135_line_mark_bx, .-n00135_line_mark_bx
                        .type            n00137_make_list_bx, @function
n00137_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_make_list_α:       lea              rdi, [rbp + 3280]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        push             rax                                  # gc_poll bb_make_list.cpp:53
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00138_assign_α
                        .size            n00137_make_list_bx, .-n00137_make_list_bx
                        .type            n00138_assign_bx, @function
n00138_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_assign_α:          mov              rax, qword ptr [rbp + 3264]
                        mov              rdx, qword ptr [rbp + 3272]
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx;         jmp   n00139_line_mark_α
                        .size            n00138_assign_bx, .-n00138_assign_bx
                        .type            n00139_line_mark_bx, @function
n00139_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00139_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00140_bound_α
                        .size            n00139_line_mark_bx, .-n00139_line_mark_bx
                        .type            n00140_bound_bx, @function
n00140_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_bound_α:           mov              qword ptr [rbp + 448], rsp;          jmp   n00141_var_ref_α
                        .size            n00140_bound_bx, .-n00140_bound_bx
                        .type            n00141_var_ref_bx, @function
n00141_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00141_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00142_deref_α
                        .size            n00141_var_ref_bx, .-n00141_var_ref_bx
                        .type            n00142_deref_bx, @function
n00142_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_deref_α:           mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00143_line_mark_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00144_line_mark_α
                        .size            n00142_deref_bx, .-n00142_deref_bx
                        .type            n00144_line_mark_bx, @function
n00144_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00145_call_icon_α
                        .size            n00144_line_mark_bx, .-n00144_line_mark_bx
                        .type            n00145_call_icon_bx, @function
n00145_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00145_call_icon_α:       mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lcall_icon_α_rkfn746:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn746]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n00143_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00146_assign_α
n00145_call_icon_β:                                                             jmp   n00143_line_mark_α
                        .size            n00145_call_icon_bx, .-n00145_call_icon_bx
                        .type            n00146_assign_bx, @function
n00146_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_assign_α:          mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx;         jmp   n00147_var_α
                        .size            n00146_assign_bx, .-n00146_assign_bx
                        .type            n00147_var_bx, @function
n00147_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_var_α:             mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3240], rax;         jmp   n00148_scan_enter_α
                        .size            n00147_var_bx, .-n00147_var_bx
                        .type            n00148_scan_enter_bx, @function
n00148_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_scan_enter_α:      mov              qword ptr [rbp + 496], r13
                        mov              qword ptr [rbp + 504], r14
                        mov              qword ptr [rbp + 512], r15
                        mov              rdi, qword ptr [rbp + 3232]
                        mov              rsi, qword ptr [rbp + 3240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], edx
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            je    n00149_unmark_α
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n00150_disjunction_α
                        .size            n00148_scan_enter_bx, .-n00148_scan_enter_bx
                        .type            n00150_disjunction_bx, @function
n00150_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00150_disjunction_α:     mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0;            jmp   n00151_lit_string_α
.Ldisjunction_γ_576_as: mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_753_0
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 568], rax;          jmp   n00152_scan_α
.Ldisjunction_α_753_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_753_1
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 568], rax;          jmp   n00152_scan_α
.Ldisjunction_α_753_1:                                                        jmp   n00152_scan_α
n00150_disjunction_β:     mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0;                              je    n00153_disjunction_β
                                                                              jmp   n00154_scan_α
.Ldisjunction_γ_576_af:
.Ldisjunction_ω_576_af: add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1;                              je    n00155_var_ref_α
                                                                              jmp   n00154_scan_α
                        .size            n00150_disjunction_bx, .-n00150_disjunction_bx
                        .type            n00152_scan_bx, @function
n00152_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_scan_α:            mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 496]
                        mov              r14, qword ptr [rbp + 504]
                        mov              r15, qword ptr [rbp + 512];          jmp   n00149_unmark_α
n00152_scan_β:            mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r14, rax;                            jmp   n00150_disjunction_β
                                                                              jmp   n00149_unmark_α
                        .size            n00152_scan_bx, .-n00152_scan_bx
                        .type            n00156_conjunction_bx, @function
n00156_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_conjunction_α:                                                           jmp   .Ldisjunction_γ_576_as
n00156_conjunction_β:                                                           jmp   n00154_scan_α
                        .size            n00156_conjunction_bx, .-n00156_conjunction_bx
                        .type            n00155_var_ref_bx, @function
n00155_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3520]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx;         jmp   n00157_var_ref_α
n00155_var_ref_β:                                                               jmp   n00154_scan_α
                        .size            n00155_var_ref_bx, .-n00155_var_ref_bx
                        .type            n00157_var_ref_bx, @function
n00157_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00157_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3552]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n00158_deref_α
                        .size            n00157_var_ref_bx, .-n00157_var_ref_bx
                        .type            n00158_deref_bx, @function
n00158_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_deref_α:           mov              rdi, qword ptr [rbp + 3168]
                        mov              rsi, qword ptr [rbp + 3176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00154_scan_α
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00159_deref_α
                        .size            n00158_deref_bx, .-n00158_deref_bx
                        .type            n00159_deref_bx, @function
n00159_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_deref_α:           mov              rdi, qword ptr [rbp + 3184]
                        mov              rsi, qword ptr [rbp + 3192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00154_scan_α
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00160_line_mark_α
                        .size            n00159_deref_bx, .-n00159_deref_bx
                        .type            n00160_line_mark_bx, @function
n00160_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00160_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 136;            jmp   n00161_call_icon_α
                        .size            n00160_line_mark_bx, .-n00160_line_mark_bx
                        .type            n00161_call_icon_bx, @function
n00161_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_call_icon_α:       mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3144], rax
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3128], rax
                        .section         .rodata
.Lcall_icon_α_rkfn766:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn766]
                        lea              rsi, [rbp + 3120]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              al, 104;                             je    n00154_scan_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_576_as
n00161_call_icon_β:                                                             jmp   n00154_scan_α
                        .size            n00161_call_icon_bx, .-n00161_call_icon_bx
                        .type            n00151_lit_string_bx, @function
n00151_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00151_lit_string_α:      mov              qword ptr [rbp + 3072], 2            # result
                        mov              dword ptr [rbp + 3076], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_767_0]
                        mov              qword ptr [rbp + 3080], rax;         jmp   n00162_scan_match_α
n00151_lit_string_β:                                                            jmp   .Ldisjunction_ω_576_af
.Llit_string_α_767_0:   .quad            .Llit_string_α_767_0_s
.Llit_string_α_767_0_s: .string          "-"
                        .size            n00151_lit_string_bx, .-n00151_lit_string_bx
                        .type            n00162_scan_match_bx, @function
n00162_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00162_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_576_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_769_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_576_af
                        mov              qword ptr [rbp + 3040], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 3048], rax;         jmp   n00163_scan_tab_α
.Lscan_match_α_769_0:   .quad            .Lscan_match_α_769_0_s
.Lscan_match_α_769_0_s: .string          "-"
                        .size            n00162_scan_match_bx, .-n00162_scan_match_bx
                        .type            n00163_scan_tab_bx, @function
n00163_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_scan_tab_α:        mov              rdi, qword ptr [rbp + 3040]
                        mov              rsi, qword ptr [rbp + 3048]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    .Ldisjunction_ω_576_af
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 3040]
                        mov              rsi, qword ptr [rbp + 3048]
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_771_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_771_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_576_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_576_af
                        mov              qword ptr [rbp + 3024], r14
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx;         jmp   n00164_lit_integer_α
n00163_scan_tab_β:        mov              r14, qword ptr [rbp + 3024];         jmp   .Ldisjunction_ω_576_af
                        .size            n00163_scan_tab_bx, .-n00163_scan_tab_bx
                        .type            n00164_lit_integer_bx, @function
n00164_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00164_lit_integer_α:     mov              qword ptr [rbp + 2992], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_772_0]
                        mov              qword ptr [rbp + 3000], rax;         jmp   n00165_line_mark_α
.Llit_integer_α_772_0:  .quad            0
                        .size            n00164_lit_integer_bx, .-n00164_lit_integer_bx
                        .type            n00165_line_mark_bx, @function
n00165_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 117;            jmp   n00166_scan_pos_α
                        .size            n00165_line_mark_bx, .-n00165_line_mark_bx
                        .type            n00166_scan_pos_bx, @function
n00166_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00166_scan_pos_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_776_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_776_0:     cmp              rax, 1;                              jl    n00167_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00167_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00167_var_α
                        mov              qword ptr [rbp + 2960], 3
                        mov              qword ptr [rbp + 2968], rax;         jmp   n00163_scan_tab_β
                        .size            n00166_scan_pos_bx, .-n00166_scan_pos_bx
                        .type            n00167_var_bx, @function
n00167_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00167_var_α:             mov              qword ptr [rbp + 2944], 0
                        mov              qword ptr [rbp + 2952], 0;           jmp   n00168_conjunction_α
n00167_var_β:                                                                   jmp   n00163_scan_tab_β
                        .size            n00167_var_bx, .-n00167_var_bx
                        .type            n00168_conjunction_bx, @function
n00168_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00168_conjunction_α:     mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2936], rax;         jmp   n00169_line_mark_α
n00168_conjunction_β:                                                           jmp   .Ldisjunction_ω_576_af
                        .size            n00168_conjunction_bx, .-n00168_conjunction_bx
                        .type            n00169_line_mark_bx, @function
n00169_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00170_disjunction_α
                        .size            n00169_line_mark_bx, .-n00169_line_mark_bx
                        .type            n00170_disjunction_bx, @function
n00170_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00170_disjunction_α:     mov              qword ptr [rbp + 2688], 0
                        mov              qword ptr [rbp + 2696], 0
                        mov              dword ptr [rbp + 2704], 0;           jmp   n00171_lit_string_α
.Ldisjunction_γ_594_as: mov              eax, dword ptr [rbp + 2704]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_782_0
                                                                              jmp   n00172_line_mark_α
.Ldisjunction_α_782_0:                                                        jmp   n00172_line_mark_α
n00170_disjunction_β:     mov              eax, dword ptr [rbp + 2704];         jmp   n00172_line_mark_α
.Ldisjunction_γ_594_af:
.Ldisjunction_ω_594_af: add              dword ptr [rbp + 2704], 1
                        mov              eax, dword ptr [rbp + 2704];         jmp   n00172_line_mark_α
                        .size            n00170_disjunction_bx, .-n00170_disjunction_bx
                        .type            n00172_line_mark_bx, @function
n00172_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 119;            jmp   n00173_bound_α
                        .size            n00172_line_mark_bx, .-n00172_line_mark_bx
                        .type            n00173_bound_bx, @function
n00173_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00173_bound_α:           mov              qword ptr [rbp + 704], rsp;          jmp   n00174_lit_integer_α
                        .size            n00173_bound_bx, .-n00173_bound_bx
                        .type            n00174_lit_integer_bx, @function
n00174_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00174_lit_integer_α:     mov              qword ptr [rbp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_787_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n00175_line_mark_α
.Llit_integer_α_787_0:  .quad            1
                        .size            n00174_lit_integer_bx, .-n00174_lit_integer_bx
                        .type            n00175_line_mark_bx, @function
n00175_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 119;            jmp   n00176_scan_move_α
                        .size            n00175_line_mark_bx, .-n00175_line_mark_bx
                        .type            n00176_scan_move_bx, @function
n00176_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_scan_move_α:       mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n00154_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00154_scan_α
                        mov              qword ptr [rbp + 640], r14
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00177_assign_α
n00176_scan_move_β:       mov              r14, qword ptr [rbp + 640];          jmp   n00154_scan_α
                        .size            n00176_scan_move_bx, .-n00176_scan_move_bx
                        .type            n00177_assign_bx, @function
n00177_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00177_assign_α:          mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx;         jmp   n00153_disjunction_α
                        .size            n00177_assign_bx, .-n00177_assign_bx
                        .type            n00153_disjunction_bx, @function
n00153_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00153_disjunction_α:     mov              qword ptr [rbp + 736], 0
                        mov              qword ptr [rbp + 744], 0
                        mov              dword ptr [rbp + 752], 0;            jmp   n00178_var_ref_α
.Ldisjunction_γ_601_as: mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_794_0
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00179_unmark_α
.Ldisjunction_α_794_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_794_1
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00179_unmark_α
.Ldisjunction_α_794_1:                                                        jmp   n00179_unmark_α
n00153_disjunction_β:     mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 0;                              je    n00180_disjunction_β
                                                                              jmp   n00179_unmark_α
.Ldisjunction_γ_601_af:
.Ldisjunction_ω_601_af: add              dword ptr [rbp + 752], 1
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 1;                              je    n00181_lit_string_α
                                                                              jmp   n00179_unmark_α
                        .size            n00153_disjunction_bx, .-n00153_disjunction_bx
                        .type            n00181_lit_string_bx, @function
n00181_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00181_lit_string_α:      mov              qword ptr [rbp + 2608], 2            # result
                        mov              dword ptr [rbp + 2612], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_795_0]
                        mov              qword ptr [rbp + 2616], rax;         jmp   n00182_var_ref_α
n00181_lit_string_β:                                                            jmp   n00179_unmark_α
.Llit_string_α_795_0:   .quad            .Llit_string_α_795_0_s
.Llit_string_α_795_0_s: .string          "Unrecognized option: -"
                        .size            n00181_lit_string_bx, .-n00181_lit_string_bx
                        .type            n00182_var_ref_bx, @function
n00182_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3568]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx;         jmp   n00183_deref_α
                        .size            n00182_var_ref_bx, .-n00182_var_ref_bx
                        .type            n00183_deref_bx, @function
n00183_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_deref_α:           mov              rdi, qword ptr [rbp + 2640]
                        mov              rsi, qword ptr [rbp + 2648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00179_unmark_α
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00184_line_mark_α
                        .size            n00183_deref_bx, .-n00183_deref_bx
                        .type            n00184_line_mark_bx, @function
n00184_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00184_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 134;            jmp   n00185_call_icon_α
                        .size            n00184_line_mark_bx, .-n00184_line_mark_bx
                        .type            n00185_call_icon_bx, @function
n00185_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_call_icon_α:       mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2584], rax
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2568], rax
                        .section         .rodata
.Lcall_icon_α_rkfn802:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn802]
                        lea              rsi, [rbp + 2560]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              al, 104;                             je    n00179_unmark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_601_as
n00185_call_icon_β:                                                             jmp   n00179_unmark_α
                        .size            n00185_call_icon_bx, .-n00185_call_icon_bx
                        .type            n00178_var_ref_bx, @function
n00178_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00178_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3568]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx;         jmp   n00186_var_ref_α
n00178_var_ref_β:                                                               jmp   .Ldisjunction_ω_601_af
                        .size            n00178_var_ref_bx, .-n00178_var_ref_bx
                        .type            n00186_var_ref_bx, @function
n00186_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx;         jmp   n00187_deref_α
                        .size            n00186_var_ref_bx, .-n00186_var_ref_bx
                        .type            n00187_deref_bx, @function
n00187_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00187_deref_α:           mov              rdi, qword ptr [rbp + 2464]
                        mov              rsi, qword ptr [rbp + 2472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_601_af
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00188_deref_α
                        .size            n00187_deref_bx, .-n00187_deref_bx
                        .type            n00188_deref_bx, @function
n00188_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_deref_α:           mov              rdi, qword ptr [rbp + 2480]
                        mov              rsi, qword ptr [rbp + 2488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_601_af
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00189_line_mark_α
                        .size            n00188_deref_bx, .-n00188_deref_bx
                        .type            n00189_line_mark_bx, @function
n00189_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00189_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 120;            jmp   n00190_call_builtin_gen_α
                        .size            n00189_line_mark_bx, .-n00189_line_mark_bx
                        .type            n00190_call_builtin_gen_bx, @function
n00190_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2408], rax
                        mov              qword ptr [rbp + 2432], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_builtin_gen_α_811_60:
                        .section         .rodata
.Lcall_builtin_gen_α_bynamegenfn273: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_gen_α_bynamegenfn273]
                        lea              rsi, [rbp + 2400]
                        mov              edx, 2
                        lea              rcx, [rbp + 2432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen_strict@PLT
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_601_af
                                                                              jmp   n00191_lit_integer_α
n00190_call_builtin_gen_β:
                                                                              jmp   .Lcall_builtin_gen_α_811_60
                        .size            n00190_call_builtin_gen_bx, .-n00190_call_builtin_gen_bx
                        .type            n00191_lit_integer_bx, @function
n00191_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00191_lit_integer_α:     mov              qword ptr [rbp + 2528], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_812_0]
                        mov              qword ptr [rbp + 2536], rax;         jmp   n00192_coerce_numeric_α
.Llit_integer_α_812_0:  .quad            1
                        .size            n00191_lit_integer_bx, .-n00191_lit_integer_bx
                        .type            n00192_coerce_numeric_bx, @function
n00192_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_coerce_numeric_α:  mov              eax, dword ptr [rbp + 2384]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_814_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_814_0
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_814_0
.Lcoerce_numeric_α_814_1:
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2376], rax;         jmp   n00193_binop_α
.Lcoerce_numeric_α_814_0:
                        lea              rdi, [rbp + 2384]
                        lea              rsi, [rbp + 2528]
                        lea              rdx, [rbp + 2368]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 2368]
                        cmp              al, 104;                             je    .Ldisjunction_ω_601_af
                                                                              jmp   n00193_binop_α
                        .size            n00192_coerce_numeric_bx, .-n00192_coerce_numeric_bx
                        .type            n00193_binop_bx, @function
n00193_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_binop_α:           mov              eax, dword ptr [rbp + 2368]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_815_2
                        mov              rax, qword ptr [rbp + 2376]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_815_0
                        mov              qword ptr [rbp + 2352], 3
                        mov              qword ptr [rbp + 2360], rax;         jmp   .Lbinop_α_815_7
.Lbinop_α_815_2:        and              edx, 1;                              jz    .Lbinop_α_815_0
                        mov              rsi, qword ptr [rbp + 2376]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_815_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_815_4
.Lbinop_α_815_3:        movq             xmm0, rsi
.Lbinop_α_815_4:        cmp              cl, 5;                               je    .Lbinop_α_815_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_815_6
.Lbinop_α_815_5:        movq             xmm1, rdi
.Lbinop_α_815_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_815_0
                        mov              qword ptr [rbp + 2352], 5
                        mov              qword ptr [rbp + 2360], rax
.Lbinop_α_815_7:                                                              jmp   n00194_assign_α
.Lbinop_α_815_0:        mov              rdi, qword ptr [rbp + 2368]
                        mov              rsi, qword ptr [rbp + 2376]
                        mov              rdx, qword ptr [rbp + 2528]
                        mov              rcx, qword ptr [rbp + 2536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_601_af
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00194_assign_α
                        .size            n00193_binop_bx, .-n00193_binop_bx
                        .type            n00194_assign_bx, @function
n00194_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_assign_α:          mov              rax, qword ptr [rbp + 2352]
                        mov              rdx, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx;         jmp   n00195_var_ref_α
                        .size            n00194_assign_bx, .-n00194_assign_bx
                        .type            n00195_var_ref_bx, @function
n00195_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00195_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n00196_var_α
                        .size            n00195_var_ref_bx, .-n00195_var_ref_bx
                        .type            n00196_var_bx, @function
n00196_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_var_α:             mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00197_subscript_α
                        .size            n00196_var_bx, .-n00196_var_bx
                        .type            n00197_subscript_bx, @function
n00197_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_subscript_α:       mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 784]
                        mov              rcx, qword ptr [rbp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00179_unmark_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00180_disjunction_α
                        .size            n00197_subscript_bx, .-n00197_subscript_bx
                        .type            n00180_disjunction_bx, @function
n00180_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_disjunction_α:     mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 840], 0
                        mov              dword ptr [rbp + 848], 0;            jmp   n00198_lit_charset_α
.Ldisjunction_γ_620_as: mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_823_0
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00199_assign_var_α
.Ldisjunction_α_823_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_823_1
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00199_assign_var_α
.Ldisjunction_α_823_1:                                                        jmp   n00199_assign_var_α
n00180_disjunction_β:     mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0;                              je    n00200_disjunction_β
                                                                              jmp   n00179_unmark_α
.Ldisjunction_γ_620_af:
.Ldisjunction_ω_620_af: add              dword ptr [rbp + 848], 1
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 1;                              je    n00201_lit_integer_α
                                                                              jmp   n00179_unmark_α
                        .size            n00180_disjunction_bx, .-n00180_disjunction_bx
                        .type            n00199_assign_var_bx, @function
n00199_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_assign_var_α:      mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00179_unmark_α
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:47
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_601_as
n00199_assign_var_β:                                                            jmp   n00179_unmark_α
                        .size            n00199_assign_var_bx, .-n00199_assign_var_bx
                        .type            n00201_lit_integer_bx, @function
n00201_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_lit_integer_α:     mov              qword ptr [rbp + 2336], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_825_0]
                        mov              qword ptr [rbp + 2344], rax;         jmp   .Ldisjunction_γ_620_as
n00201_lit_integer_β:                                                           jmp   n00179_unmark_α
.Llit_integer_α_825_0:  .quad            1
                        .size            n00201_lit_integer_bx, .-n00201_lit_integer_bx
                        .type            n00198_lit_charset_bx, @function
n00198_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_lit_charset_α:     mov              qword ptr [rbp + 2208], 2            # result
                        mov              dword ptr [rbp + 2212], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_826_0]
                        mov              qword ptr [rbp + 2216], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_826_0]
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
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00202_var_ref_α
n00198_lit_charset_β:                                                           jmp   .Ldisjunction_ω_620_af
.Llit_charset_α_826_0:  .quad            .Llit_charset_α_826_0_s
.Llit_charset_α_826_0_s:
                        .string          "+.:"
                        .size            n00198_lit_charset_bx, .-n00198_lit_charset_bx
                        .type            n00202_var_ref_bx, @function
n00202_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n00203_var_α
                        .size            n00202_var_ref_bx, .-n00202_var_ref_bx
                        .type            n00203_var_bx, @function
n00203_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_var_α:             mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 2264], rax;         jmp   n00204_subscript_α
                        .size            n00203_var_bx, .-n00203_var_bx
                        .type            n00204_subscript_bx, @function
n00204_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_subscript_α:       mov              rdi, qword ptr [rbp + 2240]
                        mov              rsi, qword ptr [rbp + 2248]
                        mov              rdx, qword ptr [rbp + 2256]
                        mov              rcx, qword ptr [rbp + 2264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_620_af
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00205_deref_α
                        .size            n00204_subscript_bx, .-n00204_subscript_bx
                        .type            n00205_deref_bx, @function
n00205_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_deref_α:           mov              rdi, qword ptr [rbp + 2272]
                        mov              rsi, qword ptr [rbp + 2280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_620_af
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00206_assign_α
                        .size            n00205_deref_bx, .-n00205_deref_bx
                        .type            n00206_assign_bx, @function
n00206_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00206_assign_α:          mov              rax, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx;         jmp   n00207_var_ref_α
                        .size            n00206_assign_bx, .-n00206_assign_bx
                        .type            n00207_var_ref_bx, @function
n00207_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3584]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n00208_deref_α
                        .size            n00207_var_ref_bx, .-n00207_var_ref_bx
                        .type            n00208_deref_bx, @function
n00208_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_deref_α:           mov              rdi, qword ptr [rbp + 2304]
                        mov              rsi, qword ptr [rbp + 2312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_620_af
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00209_line_mark_α
                        .size            n00208_deref_bx, .-n00208_deref_bx
                        .type            n00209_line_mark_bx, @function
n00209_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 122;            jmp   n00210_call_icon_α
                        .size            n00209_line_mark_bx, .-n00209_line_mark_bx
                        .type            n00210_call_icon_bx, @function
n00210_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_call_icon_α:       mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2168], rax
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
.Lcall_icon_α_bynamefn293: .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_bynamefn293]
                        lea              rsi, [rbp + 2160]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196712
                        call             rt_call_arr_bl_strict@PLT
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_live_subj@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        pop              rdx
                        pop              rax
                        cmp              al, 104;                             je    .Ldisjunction_ω_620_af
                                                                              jmp   n00211_line_mark_α
n00210_call_icon_β:                                                             jmp   .Ldisjunction_ω_620_af
                        .size            n00210_call_icon_bx, .-n00210_call_icon_bx
                        .type            n00211_line_mark_bx, @function
n00211_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00212_disjunction_α
                        .size            n00211_line_mark_bx, .-n00211_line_mark_bx
                        .type            n00212_disjunction_bx, @function
n00212_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_disjunction_α:     mov              qword ptr [rbp + 1776], 0
                        mov              qword ptr [rbp + 1784], 0
                        mov              dword ptr [rbp + 1792], 0;           jmp   n00213_lit_string_α
.Ldisjunction_γ_634_as: mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_843_0
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n00214_assign_α
.Ldisjunction_α_843_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_843_1
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n00214_assign_α
.Ldisjunction_α_843_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_843_2
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n00214_assign_α
.Ldisjunction_α_843_2:                                                        jmp   n00214_assign_α
n00212_disjunction_β:     mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 0;                              je    n00215_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_634_af
                                                                              jmp   .Ldisjunction_ω_634_af
.Ldisjunction_γ_634_af:
.Ldisjunction_ω_634_af: add              dword ptr [rbp + 1792], 1
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 1;                              je    n00216_var_ref_α
                        cmp              eax, 2;                              je    n00217_lit_string_α
                                                                              jmp   n00218_line_mark_α
                        .size            n00212_disjunction_bx, .-n00212_disjunction_bx
                        .type            n00214_assign_bx, @function
n00214_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_assign_α:          mov              rax, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx;         jmp   n00218_line_mark_α
                        .size            n00214_assign_bx, .-n00214_assign_bx
                        .type            n00218_line_mark_bx, @function
n00218_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 125;            jmp   n00219_var_α
                        .size            n00218_line_mark_bx, .-n00218_line_mark_bx
                        .type            n00219_var_bx, @function
n00219_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00219_var_α:             mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00200_disjunction_α
                        .size            n00219_var_bx, .-n00219_var_bx
                        .type            n00200_disjunction_bx, @function
n00200_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00200_disjunction_α:     mov              qword ptr [rbp + 896], 0
                        mov              qword ptr [rbp + 904], 0
                        mov              dword ptr [rbp + 912], 0;            jmp   n00220_lit_string_α
.Ldisjunction_γ_638_as: mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_850_0
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00221_conjunction_α
.Ldisjunction_α_850_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_850_1
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00221_conjunction_α
.Ldisjunction_α_850_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_850_2
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00221_conjunction_α
.Ldisjunction_α_850_2:                                                        jmp   n00221_conjunction_α
n00200_disjunction_β:     mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 0;                              je    n00179_unmark_α
                        cmp              eax, 1;                              je    n00222_disjunction_β
                                                                              jmp   n00223_disjunction_β
.Ldisjunction_γ_638_af:
.Ldisjunction_ω_638_af: add              dword ptr [rbp + 912], 1
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 1;                              je    n00224_lit_string_α
                        cmp              eax, 2;                              je    n00225_lit_string_α
                                                                              jmp   n00179_unmark_α
                        .size            n00200_disjunction_bx, .-n00200_disjunction_bx
                        .type            n00221_conjunction_bx, @function
n00221_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_conjunction_α:     mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax;          jmp   .Ldisjunction_γ_620_as
n00221_conjunction_β:                                                           jmp   n00179_unmark_α
                        .size            n00221_conjunction_bx, .-n00221_conjunction_bx
                        .type            n00225_lit_string_bx, @function
n00225_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_lit_string_α:      mov              qword ptr [rbp + 1680], 2            # result
                        mov              dword ptr [rbp + 1684], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_852_0]
                        mov              qword ptr [rbp + 1688], rax;         jmp   n00226_call_builtin_α
n00225_lit_string_β:                                                            jmp   .Ldisjunction_ω_638_af
.Llit_string_α_852_0:   .quad            .Llit_string_α_852_0_s
.Llit_string_α_852_0_s: .string          "."
                        .size            n00225_lit_string_bx, .-n00225_lit_string_bx
                        .type            n00226_call_builtin_bx, @function
n00226_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_call_builtin_α:    mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1736], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn854: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn854]
                        lea              rsi, [rbp + 1728]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_638_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00223_disjunction_α
n00226_call_builtin_β:                                                          jmp   .Ldisjunction_ω_638_af
                        .size            n00226_call_builtin_bx, .-n00226_call_builtin_bx
                        .type            n00223_disjunction_bx, @function
n00223_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_disjunction_α:     mov              qword ptr [rbp + 1392], 0
                        mov              qword ptr [rbp + 1400], 0
                        mov              dword ptr [rbp + 1408], 0;           jmp   n00227_var_ref_α
.Ldisjunction_γ_642_as: mov              eax, dword ptr [rbp + 1408]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_856_0
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1400], rax;         jmp   .Ldisjunction_γ_638_as
.Ldisjunction_α_856_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_856_1
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1400], rax;         jmp   .Ldisjunction_γ_638_as
.Ldisjunction_α_856_1:                                                        jmp   .Ldisjunction_γ_638_as
n00223_disjunction_β:     mov              eax, dword ptr [rbp + 1408]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_642_af
                                                                              jmp   .Ldisjunction_ω_642_af
.Ldisjunction_γ_642_af:
.Ldisjunction_ω_642_af: add              dword ptr [rbp + 1408], 1
                        mov              eax, dword ptr [rbp + 1408]
                        cmp              eax, 1;                              je    n00228_lit_string_α
                                                                              jmp   n00179_unmark_α
                        .size            n00223_disjunction_bx, .-n00223_disjunction_bx
                        .type            n00228_lit_string_bx, @function
n00228_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00228_lit_string_α:      mov              qword ptr [rbp + 1584], 2            # result
                        mov              dword ptr [rbp + 1588], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_857_0]
                        mov              qword ptr [rbp + 1592], rax;         jmp   n00229_var_ref_α
n00228_lit_string_β:                                                            jmp   .Ldisjunction_ω_642_af
.Llit_string_α_857_0:   .quad            .Llit_string_α_857_0_s
.Llit_string_α_857_0_s: .string          "-"
                        .size            n00228_lit_string_bx, .-n00228_lit_string_bx
                        .type            n00229_var_ref_bx, @function
n00229_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3568]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx;         jmp   n00230_lit_string_α
                        .size            n00229_var_ref_bx, .-n00229_var_ref_bx
                        .type            n00230_lit_string_bx, @function
n00230_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_lit_string_α:      mov              qword ptr [rbp + 1632], 2            # result
                        mov              dword ptr [rbp + 1636], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_860_0]
                        mov              qword ptr [rbp + 1640], rax;         jmp   n00231_deref_α
.Llit_string_α_860_0:   .quad            .Llit_string_α_860_0_s
.Llit_string_α_860_0_s: .string          " needs numeric parameter"
                        .size            n00230_lit_string_bx, .-n00230_lit_string_bx
                        .type            n00231_deref_bx, @function
n00231_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00231_deref_α:           mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_642_af
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00232_line_mark_α
                        .size            n00231_deref_bx, .-n00231_deref_bx
                        .type            n00232_line_mark_bx, @function
n00232_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 130;            jmp   n00233_call_icon_α
                        .size            n00232_line_mark_bx, .-n00232_line_mark_bx
                        .type            n00233_call_icon_bx, @function
n00233_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_call_icon_α:       mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1528], rax
                        .section         .rodata
.Lcall_icon_α_rkfn865:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn865]
                        lea              rsi, [rbp + 1520]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_642_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_642_as
n00233_call_icon_β:                                                             jmp   .Ldisjunction_ω_642_af
                        .size            n00233_call_icon_bx, .-n00233_call_icon_bx
                        .type            n00227_var_ref_bx, @function
n00227_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3600]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n00234_deref_α
n00227_var_ref_β:                                                               jmp   .Ldisjunction_ω_642_af
                        .size            n00227_var_ref_bx, .-n00227_var_ref_bx
                        .type            n00234_deref_bx, @function
n00234_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00234_deref_α:           mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_642_af
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00235_line_mark_α
                        .size            n00234_deref_bx, .-n00234_deref_bx
                        .type            n00235_line_mark_bx, @function
n00235_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00235_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00236_call_icon_α
                        .size            n00235_line_mark_bx, .-n00235_line_mark_bx
                        .type            n00236_call_icon_bx, @function
n00236_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_call_icon_α:       mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                        .section         .rodata
.Lcall_icon_α_rkfn872:  .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn872]
                        lea              rsi, [rbp + 1440]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262297
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_642_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_642_as
n00236_call_icon_β:                                                             jmp   .Ldisjunction_ω_642_af
                        .size            n00236_call_icon_bx, .-n00236_call_icon_bx
                        .type            n00224_lit_string_bx, @function
n00224_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_lit_string_α:      mov              qword ptr [rbp + 1312], 2            # result
                        mov              dword ptr [rbp + 1316], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_873_0]
                        mov              qword ptr [rbp + 1320], rax;         jmp   n00237_call_builtin_α
n00224_lit_string_β:                                                            jmp   .Ldisjunction_ω_638_af
.Llit_string_α_873_0:   .quad            .Llit_string_α_873_0_s
.Llit_string_α_873_0_s: .string          "+"
                        .size            n00224_lit_string_bx, .-n00224_lit_string_bx
                        .type            n00237_call_builtin_bx, @function
n00237_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00237_call_builtin_α:    mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1368], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn875: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn875]
                        lea              rsi, [rbp + 1360]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_638_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00222_disjunction_α
n00237_call_builtin_β:                                                          jmp   .Ldisjunction_ω_638_af
                        .size            n00237_call_builtin_bx, .-n00237_call_builtin_bx
                        .type            n00222_disjunction_bx, @function
n00222_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_disjunction_α:     mov              qword ptr [rbp + 1024], 0
                        mov              qword ptr [rbp + 1032], 0
                        mov              dword ptr [rbp + 1040], 0;           jmp   n00238_var_ref_α
.Ldisjunction_γ_655_as: mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_877_0
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax;         jmp   .Ldisjunction_γ_638_as
.Ldisjunction_α_877_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_877_1
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1032], rax;         jmp   .Ldisjunction_γ_638_as
.Ldisjunction_α_877_1:                                                        jmp   .Ldisjunction_γ_638_as
n00222_disjunction_β:     mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_655_af
                                                                              jmp   .Ldisjunction_ω_655_af
.Ldisjunction_γ_655_af:
.Ldisjunction_ω_655_af: add              dword ptr [rbp + 1040], 1
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 1;                              je    n00239_lit_string_α
                                                                              jmp   n00179_unmark_α
                        .size            n00222_disjunction_bx, .-n00222_disjunction_bx
                        .type            n00239_lit_string_bx, @function
n00239_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_lit_string_α:      mov              qword ptr [rbp + 1216], 2            # result
                        mov              dword ptr [rbp + 1220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_878_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n00240_var_ref_α
n00239_lit_string_β:                                                            jmp   .Ldisjunction_ω_655_af
.Llit_string_α_878_0:   .quad            .Llit_string_α_878_0_s
.Llit_string_α_878_0_s: .string          "-"
                        .size            n00239_lit_string_bx, .-n00239_lit_string_bx
                        .type            n00240_var_ref_bx, @function
n00240_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00240_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3568]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n00241_lit_string_α
                        .size            n00240_var_ref_bx, .-n00240_var_ref_bx
                        .type            n00241_lit_string_bx, @function
n00241_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_lit_string_α:      mov              qword ptr [rbp + 1264], 2            # result
                        mov              dword ptr [rbp + 1268], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_881_0]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n00242_deref_α
.Llit_string_α_881_0:   .quad            .Llit_string_α_881_0_s
.Llit_string_α_881_0_s: .string          " needs numeric parameter"
                        .size            n00241_lit_string_bx, .-n00241_lit_string_bx
                        .type            n00242_deref_bx, @function
n00242_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_deref_α:           mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_655_af
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00243_line_mark_α
                        .size            n00242_deref_bx, .-n00242_deref_bx
                        .type            n00243_line_mark_bx, @function
n00243_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 128;            jmp   n00244_call_icon_α
                        .size            n00243_line_mark_bx, .-n00243_line_mark_bx
                        .type            n00244_call_icon_bx, @function
n00244_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00244_call_icon_α:       mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1160], rax
                        .section         .rodata
.Lcall_icon_α_rkfn886:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn886]
                        lea              rsi, [rbp + 1152]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_655_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_655_as
n00244_call_icon_β:                                                             jmp   .Ldisjunction_ω_655_af
                        .size            n00244_call_icon_bx, .-n00244_call_icon_bx
                        .type            n00238_var_ref_bx, @function
n00238_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3600]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n00245_deref_α
n00238_var_ref_β:                                                               jmp   .Ldisjunction_ω_655_af
                        .size            n00238_var_ref_bx, .-n00238_var_ref_bx
                        .type            n00245_deref_bx, @function
n00245_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_deref_α:           mov              rdi, qword ptr [rbp + 1104]
                        mov              rsi, qword ptr [rbp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_655_af
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00246_line_mark_α
                        .size            n00245_deref_bx, .-n00245_deref_bx
                        .type            n00246_line_mark_bx, @function
n00246_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 127;            jmp   n00247_call_icon_α
                        .size            n00246_line_mark_bx, .-n00246_line_mark_bx
                        .type            n00247_call_icon_bx, @function
n00247_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_call_icon_α:       mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lcall_icon_α_rkfn893:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn893]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_655_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_655_as
n00247_call_icon_β:                                                             jmp   .Ldisjunction_ω_655_af
                        .size            n00247_call_icon_bx, .-n00247_call_icon_bx
                        .type            n00220_lit_string_bx, @function
n00220_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_lit_string_α:      mov              qword ptr [rbp + 944], 2             # result
                        mov              dword ptr [rbp + 948], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_894_0]
                        mov              qword ptr [rbp + 952], rax;          jmp   n00248_call_builtin_α
n00220_lit_string_β:                                                            jmp   .Ldisjunction_ω_638_af
.Llit_string_α_894_0:   .quad            .Llit_string_α_894_0_s
.Llit_string_α_894_0_s: .string          ":"
                        .size            n00220_lit_string_bx, .-n00220_lit_string_bx
                        .type            n00248_call_builtin_bx, @function
n00248_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_call_builtin_α:    mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn896: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn896]
                        lea              rsi, [rbp + 992]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_638_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00249_var_α
n00248_call_builtin_β:                                                          jmp   .Ldisjunction_ω_638_af
                        .size            n00248_call_builtin_bx, .-n00248_call_builtin_bx
                        .type            n00249_var_bx, @function
n00249_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00249_var_α:             mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 936], rax;          jmp   .Ldisjunction_γ_638_as
n00249_var_β:                                                                   jmp   n00179_unmark_α
                        .size            n00249_var_bx, .-n00249_var_bx
                        .type            n00217_lit_string_bx, @function
n00217_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_lit_string_α:      mov              qword ptr [rbp + 2064], 2            # result
                        mov              dword ptr [rbp + 2068], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_899_0]
                        mov              qword ptr [rbp + 2072], rax;         jmp   n00250_var_ref_α
n00217_lit_string_β:                                                            jmp   .Ldisjunction_ω_634_af
.Llit_string_α_899_0:   .quad            .Llit_string_α_899_0_s
.Llit_string_α_899_0_s: .string          "No parameter following -"
                        .size            n00217_lit_string_bx, .-n00217_lit_string_bx
                        .type            n00250_var_ref_bx, @function
n00250_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3568]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx;         jmp   n00251_deref_α
                        .size            n00250_var_ref_bx, .-n00250_var_ref_bx
                        .type            n00251_deref_bx, @function
n00251_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_deref_α:           mov              rdi, qword ptr [rbp + 2096]
                        mov              rsi, qword ptr [rbp + 2104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_634_af
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00252_line_mark_α
                        .size            n00251_deref_bx, .-n00251_deref_bx
                        .type            n00252_line_mark_bx, @function
n00252_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 124;            jmp   n00253_call_icon_α
                        .size            n00252_line_mark_bx, .-n00252_line_mark_bx
                        .type            n00253_call_icon_bx, @function
n00253_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_call_icon_α:       mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2024], rax
                        .section         .rodata
.Lcall_icon_α_rkfn906:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn906]
                        lea              rsi, [rbp + 2016]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_634_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_634_as
n00253_call_icon_β:                                                             jmp   .Ldisjunction_ω_634_af
                        .size            n00253_call_icon_bx, .-n00253_call_icon_bx
                        .type            n00216_var_ref_bx, @function
n00216_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx;         jmp   n00254_deref_α
n00216_var_ref_β:                                                               jmp   .Ldisjunction_ω_634_af
                        .size            n00216_var_ref_bx, .-n00216_var_ref_bx
                        .type            n00254_deref_bx, @function
n00254_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_deref_α:           mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_634_af
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00255_line_mark_α
                        .size            n00254_deref_bx, .-n00254_deref_bx
                        .type            n00255_line_mark_bx, @function
n00255_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00255_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00256_call_icon_α
                        .size            n00255_line_mark_bx, .-n00255_line_mark_bx
                        .type            n00256_call_icon_bx, @function
n00256_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_call_icon_α:       mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rax
                        .section         .rodata
.Lcall_icon_α_rkfn913:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn913]
                        lea              rsi, [rbp + 1936]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_634_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_634_as
n00256_call_icon_β:                                                             jmp   .Ldisjunction_ω_634_af
                        .size            n00256_call_icon_bx, .-n00256_call_icon_bx
                        .type            n00213_lit_string_bx, @function
n00213_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_lit_string_α:      mov              qword ptr [rbp + 1824], 2            # result
                        mov              dword ptr [rbp + 1828], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_914_0]
                        mov              qword ptr [rbp + 1832], rax;         jmp   n00257_lit_integer_α
n00213_lit_string_β:                                                            jmp   .Ldisjunction_ω_634_af
.Llit_string_α_914_0:   .quad            .Llit_string_α_914_0_s
.Llit_string_α_914_0_s: .string          ""
                        .size            n00213_lit_string_bx, .-n00213_lit_string_bx
                        .type            n00257_lit_integer_bx, @function
n00257_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00257_lit_integer_α:     mov              qword ptr [rbp + 1904], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_915_0]
                        mov              qword ptr [rbp + 1912], rax;         jmp   n00258_line_mark_α
.Llit_integer_α_915_0:  .quad            0
                        .size            n00257_lit_integer_bx, .-n00257_lit_integer_bx
                        .type            n00258_line_mark_bx, @function
n00258_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00215_scan_tab_α
                        .size            n00258_line_mark_bx, .-n00258_line_mark_bx
                        .type            n00215_scan_tab_bx, @function
n00215_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_scan_tab_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_919_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_919_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_634_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_634_af
                        mov              qword ptr [rbp + 1872], r14
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx;         jmp   n00259_binop_test_α
n00215_scan_tab_β:        mov              r14, qword ptr [rbp + 1872];         jmp   .Ldisjunction_ω_634_af
                        .size            n00215_scan_tab_bx, .-n00215_scan_tab_bx
                        .type            n00259_binop_test_bx, @function
n00259_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_binop_test_α:      mov              rdi, qword ptr [rbp + 1824]
                        mov              rsi, qword ptr [rbp + 1832]
                        mov              rdx, qword ptr [rbp + 1856]
                        mov              rcx, qword ptr [rbp + 1864]
                        mov              r8d, 17
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    n00215_scan_tab_β
                        mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        push             rax                                  # gc_poll bb_binop_relop.cpp:110
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_634_as
n00259_binop_test_β:                                                            jmp   n00215_scan_tab_β
                        .size            n00259_binop_test_bx, .-n00259_binop_test_bx
                        .type            n00179_unmark_bx, @function
n00179_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_unmark_α:          mov              rsp, qword ptr [rbp + 704];          jmp   n00173_bound_α
                        .size            n00179_unmark_bx, .-n00179_unmark_bx
                        .type            n00154_scan_bx, @function
n00154_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_scan_α:            mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 496]
                        mov              r14, qword ptr [rbp + 504]
                        mov              r15, qword ptr [rbp + 512];          jmp   n00149_unmark_α
n00154_scan_β:                                                                  jmp   n00149_unmark_α
                        .size            n00154_scan_bx, .-n00154_scan_bx
                        .type            n00171_lit_string_bx, @function
n00171_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_lit_string_α:      mov              qword ptr [rbp + 2880], 2            # result
                        mov              dword ptr [rbp + 2884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_925_0]
                        mov              qword ptr [rbp + 2888], rax;         jmp   n00260_scan_match_α
n00171_lit_string_β:                                                            jmp   .Ldisjunction_ω_594_af
.Llit_string_α_925_0:   .quad            .Llit_string_α_925_0_s
.Llit_string_α_925_0_s: .string          "-"
                        .size            n00171_lit_string_bx, .-n00171_lit_string_bx
                        .type            n00260_scan_match_bx, @function
n00260_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_594_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_927_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_594_af
                        mov              qword ptr [rbp + 2848], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2856], rax;         jmp   n00261_scan_tab_α
.Lscan_match_α_927_0:   .quad            .Lscan_match_α_927_0_s
.Lscan_match_α_927_0_s: .string          "-"
                        .size            n00260_scan_match_bx, .-n00260_scan_match_bx
                        .type            n00261_scan_tab_bx, @function
n00261_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00261_scan_tab_α:        mov              rdi, qword ptr [rbp + 2848]
                        mov              rsi, qword ptr [rbp + 2856]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    .Ldisjunction_ω_594_af
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 2848]
                        mov              rsi, qword ptr [rbp + 2856]
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_929_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_929_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_594_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_594_af
                        mov              qword ptr [rbp + 2832], r14
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx;         jmp   n00262_lit_integer_α
n00261_scan_tab_β:        mov              r14, qword ptr [rbp + 2832];         jmp   .Ldisjunction_ω_594_af
                        .size            n00261_scan_tab_bx, .-n00261_scan_tab_bx
                        .type            n00262_lit_integer_bx, @function
n00262_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_lit_integer_α:     mov              qword ptr [rbp + 2800], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_930_0]
                        mov              qword ptr [rbp + 2808], rax;         jmp   n00263_line_mark_α
.Llit_integer_α_930_0:  .quad            0
                        .size            n00262_lit_integer_bx, .-n00262_lit_integer_bx
                        .type            n00263_line_mark_bx, @function
n00263_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00264_scan_pos_α
                        .size            n00263_line_mark_bx, .-n00263_line_mark_bx
                        .type            n00264_scan_pos_bx, @function
n00264_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_scan_pos_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_934_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_934_0:     cmp              rax, 1;                              jl    n00261_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00261_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00261_scan_tab_β
                        mov              qword ptr [rbp + 2768], 3
                        mov              qword ptr [rbp + 2776], rax;         jmp   n00265_conjunction_α
                        .size            n00264_scan_pos_bx, .-n00264_scan_pos_bx
                        .type            n00265_conjunction_bx, @function
n00265_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00265_conjunction_α:     mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2760], rax;         jmp   n00266_scan_α
n00265_conjunction_β:                                                           jmp   .Ldisjunction_ω_594_af
                        .size            n00265_conjunction_bx, .-n00265_conjunction_bx
                        .type            n00266_scan_bx, @function
n00266_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_scan_α:            mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 496]
                        mov              r14, qword ptr [rbp + 504]
                        mov              r15, qword ptr [rbp + 512];          jmp   n00267_var_α
n00266_scan_β:                                                                  jmp   n00267_var_α
                        .size            n00266_scan_bx, .-n00266_scan_bx
                        .type            n00267_var_bx, @function
n00267_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_var_α:             mov              qword ptr [rbp + 2720], 0
                        mov              qword ptr [rbp + 2728], 0;           jmp   n00268_assign_α
n00267_var_β:                                                                   jmp   n00269_var_α
                        .size            n00267_var_bx, .-n00267_var_bx
                        .type            n00268_assign_bx, @function
n00268_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00268_assign_α:          mov              rax, qword ptr [rbp + 2720]
                        mov              rdx, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx;         jmp   n00269_var_α
                        .size            n00268_assign_bx, .-n00268_assign_bx
                        .type            n00269_var_bx, @function
n00269_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_var_α:             mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 328], rax;          jmp   n00143_line_mark_α
                        .size            n00269_var_bx, .-n00269_var_bx
                        .type            n00149_unmark_bx, @function
n00149_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00149_unmark_α:          mov              rsp, qword ptr [rbp + 448];          jmp   n00140_bound_α
                        .size            n00149_unmark_bx, .-n00149_unmark_bx
                        .type            n00143_line_mark_bx, @function
n00143_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 138;            jmp   n00270_bound_α
                        .size            n00143_line_mark_bx, .-n00143_line_mark_bx
                        .type            n00270_bound_bx, @function
n00270_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_bound_α:           mov              qword ptr [rbp + 272], rsp;          jmp   n00271_var_ref_α
                        .size            n00270_bound_bx, .-n00270_bound_bx
                        .type            n00271_var_ref_bx, @function
n00271_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n00272_var_ref_α
                        .size            n00271_var_ref_bx, .-n00271_var_ref_bx
                        .type            n00272_var_ref_bx, @function
n00272_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3520]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00273_deref_α
                        .size            n00272_var_ref_bx, .-n00272_var_ref_bx
                        .type            n00273_deref_bx, @function
n00273_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_deref_α:           mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00274_line_mark_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00275_line_mark_α
                        .size            n00273_deref_bx, .-n00273_deref_bx
                        .type            n00275_line_mark_bx, @function
n00275_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 138;            jmp   n00276_call_icon_α
                        .size            n00275_line_mark_bx, .-n00275_line_mark_bx
                        .type            n00276_call_icon_bx, @function
n00276_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_call_icon_α:       mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn956:  .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn956]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262292
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n00274_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00277_deref_α
n00276_call_icon_β:                                                             jmp   n00274_line_mark_α
                        .size            n00276_call_icon_bx, .-n00276_call_icon_bx
                        .type            n00277_deref_bx, @function
n00277_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_deref_α:           mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00274_line_mark_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00278_line_mark_α
                        .size            n00277_deref_bx, .-n00277_deref_bx
                        .type            n00278_line_mark_bx, @function
n00278_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 138;            jmp   n00279_call_icon_α
                        .size            n00278_line_mark_bx, .-n00278_line_mark_bx
                        .type            n00279_call_icon_bx, @function
n00279_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00279_call_icon_α:       mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lcall_icon_α_rkfn961:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn961]
                        lea              rsi, [rbp + 96]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262293
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    n00274_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00280_unmark_α
n00279_call_icon_β:                                                             jmp   n00274_line_mark_α
                        .size            n00279_call_icon_bx, .-n00279_call_icon_bx
                        .type            n00280_unmark_bx, @function
n00280_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00280_unmark_α:          mov              rsp, qword ptr [rbp + 272];          jmp   n00270_bound_α
                        .size            n00280_unmark_bx, .-n00280_unmark_bx
                        .type            n00274_line_mark_bx, @function
n00274_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00274_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 139;            jmp   n00281_var_α
                        .size            n00274_line_mark_bx, .-n00274_line_mark_bx
                        .type            n00281_var_bx, @function
n00281_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_var_α:             mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 56], rax;           jmp   n00282_return_α
                        .size            n00281_var_bx, .-n00281_var_bx
                        .type            n00282_return_bx, @function
n00282_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_return_α:          mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   options_γ
                        .size            n00282_return_bx, .-n00282_return_bx
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
                        lea              rsp, [rbp + 3856]
                        mov              rbp, qword ptr [rbp + 3848];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
options_ω:
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
                        lea              rsp, [rbp + 3856]
                        mov              rbp, qword ptr [rbp + 3848];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
options_dcα:
                        pop              rax
                        push             rax
                        push             rax
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
                        push             rax                                  # gc_poll xa_flat.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rax, qword ptr [rsp + 8]
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
                        push             rax                                  # gc_poll xa_flat.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      add              rsp, 16
                        lea              rcx, [rip + .Loptions_α_969_3]
                        push             rcx
                        lea              rcx, [rip + .Loptions_α_969_2]
                        push             rcx;                                 jmp   FN__options
.Loptions_α_969_2:      add              rsp, 24
                        ret
.Loptions_α_969_3:      add              rsp, 24
                        mov              eax, 104
                        xor              edx, edx
                        ret
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_options:
                        .quad            16562740350298
                        .quad            34359738576
                        .quad            .Lgcmap_options_s
                        .quad            3632
                        .quad            40
                        .quad            299067162755072
                        .quad            17596481011984
                        .quad            175921860444448
                        .quad            17596481012160
                        .quad            35184372089296
                        .quad            8804682957296
                        .quad            26392574034424
                        .quad            52776558133776
                        .quad            17596481012288
                        .quad            52776558133840
                        .quad            17596481012352
                        .quad            52776558133904
                        .quad            17596481012416
                        .quad            35184372089552
                        .quad            17596481012464
                        .quad            87960930222848
                        .quad            17596481012560
                        .quad            52776558134112
                        .quad            17596481012624
                        .quad            123145302311840
                        .quad            17596481012752
                        .quad            387028092978208
                        .quad            17596481013120
                        .quad            404620279022992
                        .quad            17596481013504
                        .quad            70368744179472
                        .quad            17596481013584
                        .quad            598134325512032
                        .quad            17596481014144
                        .quad            281474976713104
                        .quad            17596481014416
                        .quad            123145302313632
                        .quad            17596481014544
                        .quad            17592186047264
                        .quad            17596481014576
                        .quad            158329674402624
                        .quad            17596481014736
                        .quad            17592186047456
                        .quad            17596481014768
                        .quad            615726511557632
.Lgcmap_options_s:      .string          "options"
                        .globl           main
main:
                        push             rdi
                        push             rsi
                        sub              rsp, 8
                        call             rt_main_stack_adopt@PLT
                        mov              rsi, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rsp + 16]
                        add              rsp, 24
                        test             rax, rax;                            jz    .Lmain_stack_kept
                        mov              rsp, rax
.Lmain_stack_kept:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 4
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 4
                        call             gva_register@PLT
                        lea              rdi, [rip + __gc_frame_maps]
                        call             rt_gc_frame_maps_install_counted@PLT
                        mov              rdi, qword ptr [rsp]
                        mov              rdi, qword ptr [rdi]
                        call             rt_main_progname_stage@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage_argv@PLT
                        call             rt_main_args_bind@PLT
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
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 1552
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 1544
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 1416], rax
                        mov              dword ptr [rsp + 1408], 160
                        mov              dword ptr [rsp + 1412], 1552
                        mov              eax, 0
                        mov              qword ptr [rsp + 1544], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 4
                        call             rt_icn_zframe_args_install@PLT
                        mov              rdi, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rdi, qword ptr [rdi + 0]
                        mov              ecx, dword ptr [rdi + 0]
                        cmp              ecx, 65536;                          jae   .Lmain_α_969_245
                        mov              rsi, 40
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm970:        .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm970]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 1
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
.Lmain_α_969_245:
main_α_body:
                        .type            n00283_call_bx, @function
n00283_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00283_call_α:            lea              rdi, [rbp + 1360]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_quit_trap_300@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:247
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00284_line_mark_α
                                                                              jmp   n00284_line_mark_α
n00283_call_β:                                                                  jmp   n00284_line_mark_α
                        .size            n00283_call_bx, .-n00283_call_bx
                        .type            n00284_line_mark_bx, @function
n00284_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_1047_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00285_line_mark_α
.Lline_mark_α_1047_0:   .quad            .Lline_mark_α_1047_0_s
.Lline_mark_α_1047_0_s: .string          "concord.icn"
                        .size            n00284_line_mark_bx, .-n00284_line_mark_bx
                        .type            n00285_line_mark_bx, @function
n00285_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 43;             jmp   n00286_var_ref_α
                        .size            n00285_line_mark_bx, .-n00285_line_mark_bx
                        .type            n00286_var_ref_bx, @function
n00286_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00286_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n00287_lit_string_α
                        .size            n00286_var_ref_bx, .-n00286_var_ref_bx
                        .type            n00287_lit_string_bx, @function
n00287_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_lit_string_α:      mov              qword ptr [rbp + 1264], 2            # result
                        mov              dword ptr [rbp + 1268], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1052_0]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n00288_deref_α
.Llit_string_α_1052_0:  .quad            .Llit_string_α_1052_0_s
.Llit_string_α_1052_0_s:
                        .string          "l+w+"
                        .size            n00287_lit_string_bx, .-n00287_lit_string_bx
                        .type            n00288_deref_bx, @function
n00288_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00288_deref_α:           mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00289_line_mark_α
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00290_line_mark_α
                        .size            n00288_deref_bx, .-n00288_deref_bx
                        .type            n00290_line_mark_bx, @function
n00290_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00290_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 43;             jmp   n00291_call_proc_staged_α
                        .size            n00290_line_mark_bx, .-n00290_line_mark_bx
                        .type            n00291_call_proc_staged_bx, @function
n00291_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00291_call_proc_staged_α:
                        lea              rsi, [rbp + 1296]
                        lea              rdx, [rbp + 1264]
                        call             options_dcα;                         jmp   .Lcall_proc_staged_α_1057_2
.Lcall_proc_staged_α_1057_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1057_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
.Lcall_proc_staged_α_1057_29:
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              al, 104;                             je    n00289_line_mark_α
                                                                              jmp   n00292_deref_α
n00291_call_proc_staged_β:
                                                                              jmp   n00289_line_mark_α
.Lcall_proc_staged_β_1057_0:
                        .quad            .Lcall_proc_staged_β_1057_0_s
.Lcall_proc_staged_β_1057_0_s:
                        .string          "options"
                        .size            n00291_call_proc_staged_bx, .-n00291_call_proc_staged_bx
                        .type            n00292_deref_bx, @function
n00292_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00292_deref_α:           mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00289_line_mark_α
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00293_assign_α
                        .size            n00292_deref_bx, .-n00292_deref_bx
                        .type            n00293_assign_bx, @function
n00293_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_assign_α:          mov              rax, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx;         jmp   n00289_line_mark_α
                        .size            n00293_assign_bx, .-n00293_assign_bx
                        .type            n00289_line_mark_bx, @function
n00289_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 44;             jmp   n00294_disjunction_α
                        .size            n00289_line_mark_bx, .-n00289_line_mark_bx
                        .type            n00294_disjunction_bx, @function
n00294_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_disjunction_α:     mov              qword ptr [rbp + 1040], 0
                        mov              qword ptr [rbp + 1048], 0
                        mov              dword ptr [rbp + 1056], 0;           jmp   n00295_var_ref_α
.Ldisjunction_γ_982_as: mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1063_0
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n00296_assign_α
.Ldisjunction_α_1063_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1063_1
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n00296_assign_α
.Ldisjunction_α_1063_1:                                                       jmp   n00296_assign_α
n00294_disjunction_β:     mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_982_af
                                                                              jmp   .Ldisjunction_ω_982_af
.Ldisjunction_γ_982_af:
.Ldisjunction_ω_982_af: add              dword ptr [rbp + 1056], 1
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 1;                              je    n00297_lit_integer_α
                                                                              jmp   n00298_line_mark_α
                        .size            n00294_disjunction_bx, .-n00294_disjunction_bx
                        .type            n00296_assign_bx, @function
n00296_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_assign_α:          mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        mov              qword ptr [r9 + 16], rax             # colmax
                        mov              qword ptr [r9 + 24], rdx;            jmp   n00298_line_mark_α
                        .size            n00296_assign_bx, .-n00296_assign_bx
                        .type            n00298_line_mark_bx, @function
n00298_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 45;             jmp   n00299_disjunction_α
                        .size            n00298_line_mark_bx, .-n00298_line_mark_bx
                        .type            n00299_disjunction_bx, @function
n00299_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_disjunction_α:     mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              dword ptr [rbp + 896], 0;            jmp   n00300_var_ref_α
.Ldisjunction_γ_985_as: mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1068_0
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00301_assign_α
.Ldisjunction_α_1068_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1068_1
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00301_assign_α
.Ldisjunction_α_1068_1:                                                       jmp   n00301_assign_α
n00299_disjunction_β:     mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_985_af
                                                                              jmp   .Ldisjunction_ω_985_af
.Ldisjunction_γ_985_af:
.Ldisjunction_ω_985_af: add              dword ptr [rbp + 896], 1
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 1;                              je    n00302_lit_integer_α
                                                                              jmp   n00303_line_mark_α
                        .size            n00299_disjunction_bx, .-n00299_disjunction_bx
                        .type            n00301_assign_bx, @function
n00301_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00301_assign_α:          mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [r9 + 32], rax             # namewidth
                        mov              qword ptr [r9 + 40], rdx;            jmp   n00303_line_mark_α
                        .size            n00301_assign_bx, .-n00301_assign_bx
                        .type            n00303_line_mark_bx, @function
n00303_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 46;             jmp   n00304_lit_string_α
                        .size            n00303_line_mark_bx, .-n00303_line_mark_bx
                        .type            n00304_lit_string_bx, @function
n00304_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00304_lit_string_α:      mov              qword ptr [rbp + 832], 2             # result
                        mov              dword ptr [rbp + 836], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_1072_0]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00305_line_mark_α
.Llit_string_α_1072_0:  .quad            .Llit_string_α_1072_0_s
.Llit_string_α_1072_0_s:
                        .string          ""
                        .size            n00304_lit_string_bx, .-n00304_lit_string_bx
                        .type            n00305_line_mark_bx, @function
n00305_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00305_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 46;             jmp   n00306_call_icon_α
                        .size            n00305_line_mark_bx, .-n00305_line_mark_bx
                        .type            n00306_call_icon_bx, @function
n00306_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00306_call_icon_α:       mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1076: .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1076]
                        lea              rsi, [rbp + 800]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    n00307_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00308_assign_α
n00306_call_icon_β:                                                             jmp   n00307_line_mark_α
                        .size            n00306_call_icon_bx, .-n00306_call_icon_bx
                        .type            n00308_assign_bx, @function
n00308_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00308_assign_α:          mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [r9 + 0], rax              # uses
                        mov              qword ptr [r9 + 8], rdx;             jmp   n00307_line_mark_α
                        .size            n00308_assign_bx, .-n00308_assign_bx
                        .type            n00307_line_mark_bx, @function
n00307_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00307_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 47;             jmp   n00309_lit_integer_α
                        .size            n00307_line_mark_bx, .-n00307_line_mark_bx
                        .type            n00309_lit_integer_bx, @function
n00309_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00309_lit_integer_α:     mov              qword ptr [rbp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1080_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n00310_assign_α
.Llit_integer_α_1080_0: .quad            0
                        .size            n00309_lit_integer_bx, .-n00309_lit_integer_bx
                        .type            n00310_assign_bx, @function
n00310_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00310_assign_α:          mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              qword ptr [r9 + 48], rax             # lineno
                        mov              qword ptr [r9 + 56], rdx;            jmp   n00311_line_mark_α
                        .size            n00310_assign_bx, .-n00310_assign_bx
                        .type            n00311_line_mark_bx, @function
n00311_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 48;             jmp   n00312_line_mark_α
                        .size            n00311_line_mark_bx, .-n00311_line_mark_bx
                        .type            n00312_line_mark_bx, @function
n00312_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 48;             jmp   n00313_proc_gen_α
                        .size            n00312_line_mark_bx, .-n00312_line_mark_bx
                        .type            n00313_proc_gen_bx, @function
n00313_proc_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00313_proc_gen_α:        mov              qword ptr [rbp + 656], 152
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
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:538
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      sub              rsp, 8
                        mov              qword ptr [rsp + 0], 0
                        sub              rsp, 8                               # CEO-483 (hq_U): NO PAD IN THE GENERATOR REGIME. The pad above is caller-side transient bookkeeping that had drifted into the callee ENTRY FRAME as a sixth word, and hq_U FINDING-2026-09-09 measured that NOTHING READS IT -- an injected 0x5EEDFACE store into [entry rsp+32] left parse byte-identical while the same store into [entry rsp+0] SIGSEGVd, so the experiment had a positive control and the slot is padding. The comment that used to sit here named a `selfrec depth` reader at [entry rsp+32]; `selfrec` occurred exactly once in the whole tree -- in that sentence. The 8 bytes are NOT deleted, they MOVE ACROSS THE CALL into the callee`s own carve (emit.cpp: carve gains 8, ANCHOR lea rsp+48 -> rsp+40), so the callee body still lands 0 mod 16. Dropping the pad WITHOUT that move was measured on 2026-09-10 and SIGSEGVs patchu -- the crash is parity, never a lost datum. Entry frame in the generator regime is now FIVE words: [rsp+0]=gamma [rsp+8]=omega [rsp+16]=REGION [rsp+24]=0, the landing word nobody reads [rsp+32]=N-2 ABI word, ANCHOR=[rsp+40]. rt_genp_spine_enter_n2 (rt.c) is the hand-written twin of this block and was shrunk by the same word in the same landing.
                        mov              qword ptr [rsp + 0], 0
                        test             rax, rax;                            je    .Lproc_gen_α_1087_1
                        sub              rsp, 8
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lproc_gen_α_1087_4]
                        push             rcx
                        lea              rcx, [rip + .Lproc_gen_α_1087_3]
                        push             rcx
                        lea              rdx, [rip + .Lproc_gen_α_1087_4];    jmp   rax
.Lproc_gen_α_1087_3:    cmp              al, 104;                             je    .Lproc_gen_α_1087_8
                        mov              rdi, qword ptr [rdx + -1392]
                        mov              rsi, qword ptr [rdx + -1384]
                        mov              qword ptr [rbp + 664], rdx;          jmp   .Lproc_gen_α_1087_9
.Lproc_gen_α_1087_8:    mov              edi, 104
                        mov              esi, 0
                        mov              qword ptr [rbp + 664], rsp
.Lproc_gen_α_1087_9:    mov              rax, qword ptr [rbp + 656]
                        shr              rax, 8
                        test             rax, rax;                            jne   .Lproc_gen_α_1087_5
                        mov              qword ptr [rbp + 656], 408
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lproc_gen_α_1087_2
.Lproc_gen_α_1087_5:    call             qword ptr [rip + rt_gen_spine_pass_γ@GOTPCREL]
                                                                              jmp   .Lproc_gen_α_1087_2
.Lproc_gen_α_1087_4:    add              rsp, 16
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 656]
                        shr              rax, 8
                        test             rax, rax;                            jne   .Lproc_gen_α_1087_6
                        mov              qword ptr [rbp + 656], 408
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lproc_gen_α_1087_2
.Lproc_gen_α_1087_6:    call             qword ptr [rip + rt_gen_spine_pass_ω@GOTPCREL]
                                                                              jmp   .Lproc_gen_α_1087_2
.Lproc_gen_α_1087_1:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_fail@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:230
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00314_line_mark_α
.Lproc_gen_α_1087_2:    mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lproc_gen_α_1087_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
.Lproc_gen_α_1087_29:   mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    n00314_line_mark_α
                                                                              jmp   n00315_var_ref_α
n00313_proc_gen_β:        call             qword ptr [rip + rt_gen_spine_resume_enter@GOTPCREL]
                        mov              rax, qword ptr [rbp + 664]
                        mov              rsp, qword ptr [rax + 40];           jmp   qword ptr [rax + 32]
.Lproc_gen_β_1087_0:    .quad            .Lproc_gen_β_1087_0_s
.Lproc_gen_β_1087_0_s:  .string          "item"
                        .size            n00313_proc_gen_bx, .-n00313_proc_gen_bx
                        .type            n00315_var_ref_bx, @function
n00315_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00315_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052336                      # lineno
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n00316_deref_α
                        .size            n00315_var_ref_bx, .-n00315_var_ref_bx
                        .type            n00316_deref_bx, @function
n00316_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00316_deref_α:           mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00313_proc_gen_β
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00317_deref_α
                        .size            n00316_deref_bx, .-n00316_deref_bx
                        .type            n00317_deref_bx, @function
n00317_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00317_deref_α:          mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00313_proc_gen_β
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00318_line_mark_α
                        .size            n00317_deref_bx, .-n00317_deref_bx
                        .type            n00318_line_mark_bx, @function
n00318_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00318_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 48;             jmp   n00319_call_proc_staged_α
                        .size            n00318_line_mark_bx, .-n00318_line_mark_bx
                        .type            n00319_call_proc_staged_bx, @function
n00319_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00319_call_proc_staged_α:
                        lea              rsi, [rbp + 704]
                        lea              rdx, [rbp + 720]
                        call             tabulate_dcα;                        jmp   .Lcall_proc_staged_α_1095_2
.Lcall_proc_staged_α_1095_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1095_29
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
.Lcall_proc_staged_α_1095_29:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    n00313_proc_gen_β
                                                                              jmp   n00320_deref_α
n00319_call_proc_staged_β:
                                                                              jmp   n00313_proc_gen_β
.Lcall_proc_staged_β_1095_0:
                        .quad            .Lcall_proc_staged_β_1095_0_s
.Lcall_proc_staged_β_1095_0_s:
                        .string          "tabulate"
                        .size            n00319_call_proc_staged_bx, .-n00319_call_proc_staged_bx
                        .type            n00320_deref_bx, @function
n00320_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00320_deref_α:          mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00313_proc_gen_β
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00313_proc_gen_β
                        .size            n00320_deref_bx, .-n00320_deref_bx
                        .type            n00314_line_mark_bx, @function
n00314_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00314_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 49;             jmp   n00321_var_ref_α
                        .size            n00314_line_mark_bx, .-n00314_line_mark_bx
                        .type            n00321_var_ref_bx, @function
n00321_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00321_var_ref_α:        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n00322_lit_integer_α
                        .size            n00321_var_ref_bx, .-n00321_var_ref_bx
                        .type            n00322_lit_integer_bx, @function
n00322_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00322_lit_integer_α:    mov              qword ptr [rbp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1101_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00323_deref_α
.Llit_integer_α_1101_0: .quad            3
                        .size            n00322_lit_integer_bx, .-n00322_lit_integer_bx
                        .type            n00323_deref_bx, @function
n00323_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00323_deref_α:          mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00324_line_mark_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00325_line_mark_α
                        .size            n00323_deref_bx, .-n00323_deref_bx
                        .type            n00325_line_mark_bx, @function
n00325_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00325_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 49;             jmp   n00326_call_icon_α
                        .size            n00325_line_mark_bx, .-n00325_line_mark_bx
                        .type            n00326_call_icon_bx, @function
n00326_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00326_call_icon_α:      mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1106: .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1106]
                        lea              rsi, [rbp + 480]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    n00324_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00327_assign_α
n00326_call_icon_β:                                                            jmp   n00324_line_mark_α
                        .size            n00326_call_icon_bx, .-n00326_call_icon_bx
                        .type            n00327_assign_bx, @function
n00327_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00327_assign_α:         mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx;         jmp   n00324_line_mark_α
                        .size            n00327_assign_bx, .-n00327_assign_bx
                        .type            n00324_line_mark_bx, @function
n00324_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 50;             jmp   n00328_bound_α
                        .size            n00324_line_mark_bx, .-n00324_line_mark_bx
                        .type            n00328_bound_bx, @function
n00328_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00328_bound_α:          mov              qword ptr [rbp + 144], rsp;          jmp   n00329_var_ref_α
                        .size            n00328_bound_bx, .-n00328_bound_bx
                        .type            n00329_var_ref_bx, @function
n00329_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00329_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00330_deref_α
                        .size            n00329_var_ref_bx, .-n00329_var_ref_bx
                        .type            n00330_deref_bx, @function
n00330_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00330_deref_α:          mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00331_line_mark_α
                        .size            n00330_deref_bx, .-n00330_deref_bx
                        .type            n00331_line_mark_bx, @function
n00331_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00331_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 50;             jmp   n00332_call_icon_α
                        .size            n00331_line_mark_bx, .-n00331_line_mark_bx
                        .type            n00332_call_icon_bx, @function
n00332_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00332_call_icon_α:      mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1118: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1118]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    main_ω
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00333_assign_α
n00332_call_icon_β:                                                            jmp   main_ω
                        .size            n00332_call_icon_bx, .-n00332_call_icon_bx
                        .type            n00333_assign_bx, @function
n00333_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00333_assign_α:         mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n00334_var_ref_α
                        .size            n00333_assign_bx, .-n00333_assign_bx
                        .type            n00334_var_ref_bx, @function
n00334_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00334_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n00335_var_ref_α
                        .size            n00334_var_ref_bx, .-n00334_var_ref_bx
                        .type            n00335_var_ref_bx, @function
n00335_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00335_var_ref_α:        mov              rax, 4294967336
                        mov              rdx, 1879052320                      # namewidth
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n00336_deref_α
                        .size            n00335_var_ref_bx, .-n00335_var_ref_bx
                        .type            n00336_deref_bx, @function
n00336_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00336_deref_α:          mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00337_unmark_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00338_deref_α
                        .size            n00336_deref_bx, .-n00336_deref_bx
                        .type            n00338_deref_bx, @function
n00338_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00338_deref_α:          mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00337_unmark_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00339_line_mark_α
                        .size            n00338_deref_bx, .-n00338_deref_bx
                        .type            n00339_line_mark_bx, @function
n00339_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00339_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51;             jmp   n00340_call_icon_α
                        .size            n00339_line_mark_bx, .-n00339_line_mark_bx
                        .type            n00340_call_icon_bx, @function
n00340_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00340_call_icon_α:      mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1129: .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1129]
                        lea              rsi, [rbp + 256]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262275
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n00337_unmark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00341_var_ref_α
n00340_call_icon_β:                                                            jmp   n00337_unmark_α
                        .size            n00340_call_icon_bx, .-n00340_call_icon_bx
                        .type            n00341_var_ref_bx, @function
n00341_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00341_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n00342_deref_α
                        .size            n00341_var_ref_bx, .-n00341_var_ref_bx
                        .type            n00342_deref_bx, @function
n00342_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00342_deref_α:          mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00337_unmark_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00343_line_mark_α
                        .size            n00342_deref_bx, .-n00342_deref_bx
                        .type            n00343_line_mark_bx, @function
n00343_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00343_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51;             jmp   n00344_call_icon_α
                        .size            n00343_line_mark_bx, .-n00343_line_mark_bx
                        .type            n00344_call_icon_bx, @function
n00344_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00344_call_icon_α:      mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1136: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1136]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              al, 104;                             je    n00337_unmark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:286
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00345_binop_α
n00344_call_icon_β:                                                            jmp   n00337_unmark_α
                        .size            n00344_call_icon_bx, .-n00344_call_icon_bx
                        .type            n00345_binop_bx, @function
n00345_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00345_binop_α:          mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:81
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00346_line_mark_α
                        .size            n00345_binop_bx, .-n00345_binop_bx
                        .type            n00346_line_mark_bx, @function
n00346_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00346_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51;             jmp   n00347_call_proc_staged_α
                        .size            n00346_line_mark_bx, .-n00346_line_mark_bx
                        .type            n00347_call_proc_staged_bx, @function
n00347_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00347_call_proc_staged_α:
                        lea              rsi, [rbp + 224]
                        call             format_dcα;                          jmp   .Lcall_proc_staged_α_1141_2
.Lcall_proc_staged_α_1141_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1141_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
.Lcall_proc_staged_α_1141_29:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              al, 104;                             je    n00337_unmark_α
                                                                              jmp   n00348_deref_α
n00347_call_proc_staged_β:
                                                                              jmp   n00337_unmark_α
.Lcall_proc_staged_β_1141_0:
                        .quad            .Lcall_proc_staged_β_1141_0_s
.Lcall_proc_staged_β_1141_0_s:
                        .string          "format"
                        .size            n00347_call_proc_staged_bx, .-n00347_call_proc_staged_bx
                        .type            n00348_deref_bx, @function
n00348_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00348_deref_α:          mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00337_unmark_α
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00337_unmark_α
                        .size            n00348_deref_bx, .-n00348_deref_bx
                        .type            n00337_unmark_bx, @function
n00337_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00337_unmark_α:         mov              rsp, qword ptr [rbp + 144];          jmp   n00328_bound_α
                        .size            n00337_unmark_bx, .-n00337_unmark_bx
                        .type            n00302_lit_integer_bx, @function
n00302_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_lit_integer_α:    mov              qword ptr [rbp + 1008], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1145_0]
                        mov              qword ptr [rbp + 1016], rax;         jmp   .Ldisjunction_γ_985_as
n00302_lit_integer_β:                                                          jmp   .Ldisjunction_ω_985_af
.Llit_integer_α_1145_0: .quad            15
                        .size            n00302_lit_integer_bx, .-n00302_lit_integer_bx
                        .type            n00300_var_ref_bx, @function
n00300_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00300_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n00349_lit_string_α
n00300_var_ref_β:                                                              jmp   .Ldisjunction_ω_985_af
                        .size            n00300_var_ref_bx, .-n00300_var_ref_bx
                        .type            n00349_lit_string_bx, @function
n00349_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00349_lit_string_α:     mov              qword ptr [rbp + 944], 2             # result
                        mov              dword ptr [rbp + 948], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1148_0]
                        mov              qword ptr [rbp + 952], rax;          jmp   n00350_subscript_α
.Llit_string_α_1148_0:  .quad            .Llit_string_α_1148_0_s
.Llit_string_α_1148_0_s:
                        .string          "w"
                        .size            n00349_lit_string_bx, .-n00349_lit_string_bx
                        .type            n00350_subscript_bx, @function
n00350_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00350_subscript_α:      mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 944]
                        mov              rcx, qword ptr [rbp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_985_af
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00351_deref_α
                        .size            n00350_subscript_bx, .-n00350_subscript_bx
                        .type            n00351_deref_bx, @function
n00351_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00351_deref_α:          mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_985_af
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00352_unop_test_α
                        .size            n00351_deref_bx, .-n00351_deref_bx
                        .type            n00352_unop_test_bx, @function
n00352_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00352_unop_test_α:      mov              eax, dword ptr [rbp + 992]
                        cmp              al, 104;                             je    .Ldisjunction_ω_985_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_985_af
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 920], rax;          jmp   .Ldisjunction_γ_985_as
n00352_unop_test_β:                                                            jmp   .Ldisjunction_ω_985_af
                        .size            n00352_unop_test_bx, .-n00352_unop_test_bx
                        .type            n00297_lit_integer_bx, @function
n00297_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00297_lit_integer_α:    mov              qword ptr [rbp + 1168], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1152_0]
                        mov              qword ptr [rbp + 1176], rax;         jmp   .Ldisjunction_γ_982_as
n00297_lit_integer_β:                                                          jmp   .Ldisjunction_ω_982_af
.Llit_integer_α_1152_0: .quad            72
                        .size            n00297_lit_integer_bx, .-n00297_lit_integer_bx
                        .type            n00295_var_ref_bx, @function
n00295_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n00353_lit_string_α
n00295_var_ref_β:                                                              jmp   .Ldisjunction_ω_982_af
                        .size            n00295_var_ref_bx, .-n00295_var_ref_bx
                        .type            n00353_lit_string_bx, @function
n00353_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00353_lit_string_α:     mov              qword ptr [rbp + 1104], 2            # result
                        mov              dword ptr [rbp + 1108], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1155_0]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n00354_subscript_α
.Llit_string_α_1155_0:  .quad            .Llit_string_α_1155_0_s
.Llit_string_α_1155_0_s:
                        .string          "l"
                        .size            n00353_lit_string_bx, .-n00353_lit_string_bx
                        .type            n00354_subscript_bx, @function
n00354_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00354_subscript_α:      mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_982_af
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00355_deref_α
                        .size            n00354_subscript_bx, .-n00354_subscript_bx
                        .type            n00355_deref_bx, @function
n00355_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00355_deref_α:          mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_982_af
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00356_unop_test_α
                        .size            n00355_deref_bx, .-n00355_deref_bx
                        .type            n00356_unop_test_bx, @function
n00356_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00356_unop_test_α:      mov              eax, dword ptr [rbp + 1152]
                        cmp              al, 104;                             je    .Ldisjunction_ω_982_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_982_af
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1080], rax;         jmp   .Ldisjunction_γ_982_as
n00356_unop_test_β:                                                            jmp   .Ldisjunction_ω_982_af
                        .size            n00356_unop_test_bx, .-n00356_unop_test_bx
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
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            6667135700314
                        .quad            38654705792
                        .quad            .Lgcmap_main_s
                        .quad            1408
                        .quad            10
                        .quad            158329674399744
                        .quad            17596481011856
                        .quad            545357767377056
                        .quad            8800387990160
                        .quad            8808977924760
                        .quad            246290604622496
                        .quad            17596481012608
                        .quad            158329674400656
                        .quad            17596481012768
                        .quad            369435906933808
.Lgcmap_main_s:         .string          "main"
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_ign0:         .string          "main"
.Lstartup_ign1:         .string          "tabulate"
.Lstartup_ign2:         .string          "format"
.Lstartup_ign3:         .string          "item"
.Lstartup_ign4:         .string          "options"
.Lstartup_ign5:         .string          "get"
.Lstartup_ign6:         .string          "left"
.Lstartup_ign7:         .string          "sort"
.Lstartup_ign8:         .string          "table"
.Lstartup_ign9:         .string          "string"
.Lstartup_ign10:        .string          "write"
.Lstartup_ign11:        .string          "repl"
.Lstartup_ign12:        .string          "read"
.Lstartup_ign13:        .string          "map"
.Lstartup_ign14:        .string          "right"
.Lstartup_ign15:        .string          "push"
.Lstartup_ign16:        .string          "pull"
.Lstartup_ign17:        .string          "integer"
.Lstartup_ign18:        .string          "stop"
.Lstartup_ign19:        .string          "real"
.Lstartup_ign20:        .string          "any"
.Lstartup_ign21:        .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_ign0]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign1]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign2]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign3]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign4]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign5]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign6]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign7]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign8]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign9]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign10]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign11]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign12]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign13]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign14]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign15]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign16]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign17]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign18]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign19]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign20]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign21]
                        call             rt_icn_global_note@PLT
                        .section         .rodata
.Lstartup_rootnm:       .string          "main"
.Lstartup_ipp00357_0:    .string          "args"
                        .align           8
.Lstartup_ipnames9000:
                        .quad            .Lstartup_ipp00357_0
                        .quad            0
.Lstartup_iln00357_0:    .string          "opts"
.Lstartup_iln00357_1:    .string          "uselist"
.Lstartup_iln00357_2:    .string          "name"
.Lstartup_iln00357_3:    .string          "line"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00357_0
                        .quad            .Lstartup_iln00357_1
                        .quad            .Lstartup_iln00357_2
                        .quad            .Lstartup_iln00357_3
                        .quad            0
                        .align           4
.Lstartup_iloffs9000:
                        .long            1392
                        .long            1376
                        .long            1360
                        .long            -1
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_ipnames9000]
                        mov              edx, 1
                        call             rt_proc_set_loc_params@PLT
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_ilnames9000]
                        mov              edx, 4
                        call             rt_proc_set_locals@PLT
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_iloffs9000]
                        mov              edx, 4
                        call             rt_proc_set_local_offs@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "tabulate"
.Lstartup_ipp0_0:       .string          "name"
.Lstartup_ipp0_1:       .string          "lineno"
                        .align           8
.Lstartup_ipnames0:
                        .quad            .Lstartup_ipp0_0
                        .quad            .Lstartup_ipp0_1
                        .quad            0
.Lstartup_iln0_0:       .string          "new"
.Lstartup_iln0_1:       .string          "count"
.Lstartup_iln0_2:       .string          "number"
.Lstartup_iln0_3:       .string          "&digits"
                        .align           8
.Lstartup_ilnames0:
                        .quad            .Lstartup_iln0_0
                        .quad            .Lstartup_iln0_1
                        .quad            .Lstartup_iln0_2
                        .quad            .Lstartup_iln0_3
                        .quad            0
                        .align           4
.Lstartup_iloffs0:
                        .long            1792
                        .long            1808
                        .long            1776
                        .long            -1
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__tabulate
                        .quad            tabulate_dcα
                        .quad            0
                        .quad            .Lstartup_ipnames0
                        .long            2
                        .long            0
                        .long            1824
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + .Lstartup_ipnames0]
                        mov              edx, 2
                        call             rt_proc_set_loc_params@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + .Lstartup_ilnames0]
                        mov              edx, 4
                        call             rt_proc_set_locals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + .Lstartup_iloffs0]
                        mov              edx, 4
                        call             rt_proc_set_local_offs@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "format"
.Lstartup_ipp1_0:       .string          "line"
                        .align           8
.Lstartup_ipnames1:
                        .quad            .Lstartup_ipp1_0
                        .quad            0
.Lstartup_iln1_0:       .string          "i"
                        .align           8
.Lstartup_ilnames1:
                        .quad            .Lstartup_iln1_0
                        .quad            0
                        .align           4
.Lstartup_iloffs1:
                        .long            1152
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__format
                        .quad            format_dcα
                        .quad            0
                        .quad            .Lstartup_ipnames1
                        .long            1
                        .long            0
                        .long            1168
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + .Lstartup_ipnames1]
                        mov              edx, 1
                        call             rt_proc_set_loc_params@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + .Lstartup_ilnames1]
                        mov              edx, 1
                        call             rt_proc_set_locals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + .Lstartup_iloffs1]
                        mov              edx, 1
                        call             rt_proc_set_local_offs@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "item"
.Lstartup_iln2_0:       .string          "i"
.Lstartup_iln2_1:       .string          "word"
.Lstartup_iln2_2:       .string          "line"
.Lstartup_iln2_3:       .string          "&letters"
                        .align           8
.Lstartup_ilnames2:
                        .quad            .Lstartup_iln2_0
                        .quad            .Lstartup_iln2_1
                        .quad            .Lstartup_iln2_2
                        .quad            .Lstartup_iln2_3
                        .quad            0
                        .align           4
.Lstartup_iloffs2:
                        .long            1248
                        .long            1232
                        .long            1216
                        .long            -1
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__item
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1264
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + .Lstartup_ilnames2]
                        mov              edx, 4
                        call             rt_proc_set_locals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + .Lstartup_iloffs2]
                        mov              edx, 4
                        call             rt_proc_set_local_offs@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1392
                        call             rt_proc_set_gen_region_ft@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "options"
.Lstartup_ipp3_0:       .string          "arg"
.Lstartup_ipp3_1:       .string          "optstring"
                        .align           8
.Lstartup_ipnames3:
                        .quad            .Lstartup_ipp3_0
                        .quad            .Lstartup_ipp3_1
                        .quad            0
.Lstartup_iln3_0:       .string          "x"
.Lstartup_iln3_1:       .string          "i"
.Lstartup_iln3_2:       .string          "c"
.Lstartup_iln3_3:       .string          "otab"
.Lstartup_iln3_4:       .string          "flist"
.Lstartup_iln3_5:       .string          "o"
.Lstartup_iln3_6:       .string          "p"
.Lstartup_iln3_7:       .string          "&letters"
                        .align           8
.Lstartup_ilnames3:
                        .quad            .Lstartup_iln3_0
                        .quad            .Lstartup_iln3_1
                        .quad            .Lstartup_iln3_2
                        .quad            .Lstartup_iln3_3
                        .quad            .Lstartup_iln3_4
                        .quad            .Lstartup_iln3_5
                        .quad            .Lstartup_iln3_6
                        .quad            .Lstartup_iln3_7
                        .quad            0
                        .align           4
.Lstartup_iloffs3:
                        .long            3552
                        .long            3616
                        .long            3568
                        .long            3504
                        .long            3520
                        .long            3584
                        .long            3600
                        .long            -1
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__options
                        .quad            options_dcα
                        .quad            0
                        .quad            .Lstartup_ipnames3
                        .long            2
                        .long            0
                        .long            3632
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + .Lstartup_ipnames3]
                        mov              edx, 2
                        call             rt_proc_set_loc_params@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + .Lstartup_ilnames3]
                        mov              edx, 8
                        call             rt_proc_set_locals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + .Lstartup_iloffs3]
                        mov              edx, 8
                        call             rt_proc_set_local_offs@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            5
                        .quad            .Lgcmap_tabulate
                        .quad            .Lgcmap_format
                        .quad            .Lgcmap_item
                        .quad            .Lgcmap_options
                        .quad            .Lgcmap_main
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
