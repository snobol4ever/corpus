                        .intel_syntax    noprefix
                        .text
                        .file            1 "concord.icn"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__tabulate:
                        sub              rsp, 1936
                        lea              rax, [rip + .Lgcmap_tabulate]
                        mov              qword ptr [rsp + 1784], rax
                        mov              dword ptr [rsp + 1776], 160
                        mov              dword ptr [rsp + 1780], 1936
                        mov              eax, 0
                        mov              qword ptr [rsp + 1928], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 1776
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
n1_line_mark_α:         mov              r11, 1
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 59
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_89_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n2_line_mark_α
.Lline_mark_α_89_0:     .quad            .Lline_mark_α_89_0_s
.Lline_mark_α_89_0_s:   .string          "concord.icn"
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_line_mark_α:         mov              r11, 2
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 60;             jmp   n3_var_ref_α
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_var_ref_bx, @function
n3_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx;         jmp   n4_deref_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_deref_bx, @function
n4_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_deref_α:             mov              r11, 4
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n8_line_mark_α
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
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
n5_line_mark_α:         mov              r11, 5
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 60;             jmp   n6_call_icon_α
                        .size            n5_line_mark_bx, .-n5_line_mark_bx
                        .type            n6_call_icon_bx, @function
n6_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_call_icon_α:         mov              r11, 6
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        .section         .rodata
.Lcall_icon_α_rkfn98:   .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn98]
                        lea              rsi, [rbp + 1632]
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
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              al, 104;                             je    n8_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
n6_call_icon_β:         mov              r11, 6;                              jmp   n8_line_mark_α
                        .size            n6_call_icon_bx, .-n6_call_icon_bx
                        .type            n7_assign_bx, @function
n7_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              r11, 7
                        mov              rax, qword ptr [rbp + 1616]
                        mov              rdx, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx;           jmp   n8_line_mark_α
                        .size            n7_assign_bx, .-n7_assign_bx
                        .type            n8_line_mark_bx, @function
n8_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_line_mark_α:         mov              r11, 8
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 61;             jmp   n9_lit_string_α
                        .size            n8_line_mark_bx, .-n8_line_mark_bx
                        .type            n9_lit_string_bx, @function
n9_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rbp + 1568], 2            # result
                        mov              dword ptr [rbp + 1572], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_102_0]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n10_assign_α
.Llit_string_α_102_0:   .quad            .Llit_string_α_102_0_s
.Llit_string_α_102_0_s: .string          ""
                        .size            n9_lit_string_bx, .-n9_lit_string_bx
                        .type            n10_assign_bx, @function
n10_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              r11, 10
                        mov              rax, qword ptr [rbp + 1568]
                        mov              rdx, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx;         jmp   n11_line_mark_α
                        .size            n10_assign_bx, .-n10_assign_bx
                        .type            n11_line_mark_bx, @function
n11_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_line_mark_α:        mov              r11, 11
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 62;             jmp   n12_var_ref_α
                        .size            n11_line_mark_bx, .-n11_line_mark_bx
                        .type            n12_var_ref_bx, @function
n12_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 12
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx;         jmp   n13_var_α
                        .size            n12_var_ref_bx, .-n12_var_ref_bx
                        .type            n13_var_bx, @function
n13_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              mov              r11, 13
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1512], rax;         jmp   n14_subscript_α
                        .size            n13_var_bx, .-n13_var_bx
                        .type            n14_subscript_bx, @function
n14_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_subscript_α:        mov              r11, 14
                        mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        mov              rdx, qword ptr [rbp + 1504]
                        mov              rcx, qword ptr [rbp + 1512]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    tabulate_ω
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
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
n15_deref_α:            mov              r11, 15
                        mov              rdi, qword ptr [rbp + 1520]
                        mov              rsi, qword ptr [rbp + 1528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    tabulate_ω
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
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
n16_scan_enter_α:       mov              r11, 16
                        mov              qword ptr [rbp + 96], r13
                        mov              qword ptr [rbp + 104], r14
                        mov              qword ptr [rbp + 112], r15
                        mov              rdi, qword ptr [rbp + 1536]
                        mov              rsi, qword ptr [rbp + 1544]
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
n17_line_mark_α:        mov              r11, 17
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n18_var_α
                        .size            n17_line_mark_bx, .-n17_line_mark_bx
                        .type            n18_var_bx, @function
n18_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              r11, 18
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n19_lit_charset_α
                        .size            n18_var_bx, .-n18_var_bx
                        .type            n19_lit_charset_bx, @function
n19_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_charset_α:      mov              r11, 19
                        mov              qword ptr [rbp + 1248], 2            # result
                        mov              dword ptr [rbp + 1252], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_118_0]
                        mov              qword ptr [rbp + 1256], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_118_0]
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
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:90
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
1:                                                                            jmp   n20_line_mark_α
.Llit_charset_α_118_0:  .quad            .Llit_charset_α_118_0_s
.Llit_charset_α_118_0_s:
                        .string          "0123456789"
                        .size            n19_lit_charset_bx, .-n19_lit_charset_bx
                        .type            n20_line_mark_bx, @function
n20_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_line_mark_α:        mov              r11, 20
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n21_scan_upto_α
                        .size            n20_line_mark_bx, .-n20_line_mark_bx
                        .type            n21_scan_upto_bx, @function
n21_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_scan_upto_α:        mov              r11, 21
                        mov              qword ptr [rbp + 1216], r14
.Lscan_upto_α_122_0:    mov              rax, qword ptr [rbp + 1216]
                        cmp              rax, r15;                            jge   n39_line_mark_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .Lscan_upto_α_122_3]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_upto_α_122_1
                        mov              qword ptr [rbp + 1200], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 1208], rax;         jmp   n22_line_mark_α
.Lscan_upto_α_122_1:    inc              qword ptr [rbp + 1216];              jmp   .Lscan_upto_α_122_0
n21_scan_upto_β:        mov              r11, 21
                        inc              qword ptr [rbp + 1216];              jmp   .Lscan_upto_α_122_0
.Lscan_upto_β_122_2:    .quad            .Lscan_upto_β_122_2_s
.Lscan_upto_β_122_2_s:  .string          "0123456789"
.Lscan_upto_α_122_3:    .quad            287948901175001088
.Lscan_upto_β_122_4:    .quad            0
.Lscan_upto_β_122_5:    .quad            0
.Lscan_upto_β_122_6:    .quad            0
                        .size            n21_scan_upto_bx, .-n21_scan_upto_bx
                        .type            n22_line_mark_bx, @function
n22_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_line_mark_α:        mov              r11, 22
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n23_scan_tab_α
                        .size            n22_line_mark_bx, .-n22_line_mark_bx
                        .type            n23_scan_tab_bx, @function
n23_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_scan_tab_α:         mov              r11, 23
                        mov              rdi, qword ptr [rbp + 1200]
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
                        test             eax, eax;                            jz    n21_scan_upto_β
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
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_126_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_126_0:     cmp              rax, 1;                              jl    n21_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n21_scan_upto_β
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
                        mov              qword ptr [rbp + 1160], rdx;         jmp   n24_binop_α
n23_scan_tab_β:         mov              r11, 23
                        mov              r14, qword ptr [rbp + 1168];         jmp   n21_scan_upto_β
                        .size            n23_scan_tab_bx, .-n23_scan_tab_bx
                        .type            n24_binop_bx, @function
n24_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:            mov              r11, 24
                        mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
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
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
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
1:                                                                            jmp   n25_assign_α
                        .size            n24_binop_bx, .-n24_binop_bx
                        .type            n25_assign_bx, @function
n25_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              r11, 25
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx;         jmp   n26_line_mark_α
                        .size            n25_assign_bx, .-n25_assign_bx
                        .type            n26_line_mark_bx, @function
n26_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_line_mark_α:        mov              r11, 26
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 64;             jmp   n27_lit_charset_α
                        .size            n26_line_mark_bx, .-n26_line_mark_bx
                        .type            n27_lit_charset_bx, @function
n27_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_charset_α:      mov              r11, 27
                        mov              qword ptr [rbp + 1424], 2            # result
                        mov              dword ptr [rbp + 1428], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_131_0]
                        mov              qword ptr [rbp + 1432], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_131_0]
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
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:90
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
1:                                                                            jmp   n28_line_mark_α
.Llit_charset_α_131_0:  .quad            .Llit_charset_α_131_0_s
.Llit_charset_α_131_0_s:
                        .string          "0123456789"
                        .size            n27_lit_charset_bx, .-n27_lit_charset_bx
                        .type            n28_line_mark_bx, @function
n28_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_line_mark_α:        mov              r11, 28
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 64;             jmp   n29_scan_many_α
                        .size            n28_line_mark_bx, .-n28_line_mark_bx
                        .type            n29_scan_many_bx, @function
n29_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_scan_many_α:        mov              r11, 29
                        lea              rdi, [rip + .Lscan_many_α_135_3]
                        mov              eax, r14d
.Lscan_many_α_135_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_135_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_many_α_135_1
                        add              eax, 1;                              jmp   .Lscan_many_α_135_0
.Lscan_many_α_135_1:    cmp              eax, r14d;                           je    n33_line_mark_α
                        mov              qword ptr [rbp + 1392], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 1400], rcx;         jmp   n30_line_mark_α
n29_scan_many_β:        mov              r11, 29;                             jmp   n33_line_mark_α
.Lscan_many_β_135_2:    .quad            .Lscan_many_β_135_2_s
.Lscan_many_β_135_2_s:  .string          "0123456789"
.Lscan_many_α_135_3:    .quad            287948901175001088
.Lscan_many_β_135_4:    .quad            0
.Lscan_many_β_135_5:    .quad            0
.Lscan_many_β_135_6:    .quad            0
                        .size            n29_scan_many_bx, .-n29_scan_many_bx
                        .type            n30_line_mark_bx, @function
n30_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_line_mark_α:        mov              r11, 30
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 64;             jmp   n31_scan_tab_α
                        .size            n30_line_mark_bx, .-n30_line_mark_bx
                        .type            n31_scan_tab_bx, @function
n31_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_scan_tab_α:         mov              r11, 31
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
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
                        test             eax, eax;                            jz    n33_line_mark_α
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
1:                      mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
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
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_139_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_139_0:     cmp              rax, 1;                              jl    n33_line_mark_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n33_line_mark_α
                        mov              qword ptr [rbp + 1360], r14
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
1:                      mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx;         jmp   n32_assign_α
n31_scan_tab_β:         mov              r11, 31
                        mov              r14, qword ptr [rbp + 1360];         jmp   n33_line_mark_α
                        .size            n31_scan_tab_bx, .-n31_scan_tab_bx
                        .type            n32_assign_bx, @function
n32_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              r11, 32
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx;         jmp   n33_line_mark_α
                        .size            n32_assign_bx, .-n32_assign_bx
                        .type            n33_line_mark_bx, @function
n33_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_line_mark_α:        mov              r11, 33
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 65;             jmp   n34_var_α
                        .size            n33_line_mark_bx, .-n33_line_mark_bx
                        .type            n34_var_bx, @function
n34_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 56], rax;           jmp   n35_var_α
                        .size            n34_var_bx, .-n34_var_bx
                        .type            n35_var_bx, @function
n35_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:              mov              r11, 35
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 72], rax;           jmp   n36_binop_α
                        .size            n35_var_bx, .-n35_var_bx
                        .type            n36_binop_bx, @function
n36_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_binop_α:            mov              r11, 36
                        mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
                        mov              rdx, qword ptr [rbp + 1728]
                        mov              rcx, qword ptr [rbp + 1736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
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
1:                                                                            jmp   n37_assign_α
                        .size            n36_binop_bx, .-n36_binop_bx
                        .type            n37_assign_bx, @function
n37_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:           mov              r11, 37
                        mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx;         jmp   n38_conjunction_α
                        .size            n37_assign_bx, .-n37_assign_bx
                        .type            n38_conjunction_bx, @function
n38_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_conjunction_α:      mov              r11, 38
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1288], rax;         jmp   n18_var_α
n38_conjunction_β:      mov              r11, 38;                             jmp   n18_var_α
                        .size            n38_conjunction_bx, .-n38_conjunction_bx
                        .type            n39_line_mark_bx, @function
n39_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_line_mark_α:        mov              r11, 39
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 67;             jmp   n40_disjunction_α
                        .size            n39_line_mark_bx, .-n39_line_mark_bx
                        .type            n40_disjunction_bx, @function
n40_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_disjunction_α:      mov              r11, 40
                        mov              qword ptr [rbp + 176], 0
                        mov              qword ptr [rbp + 184], 0
                        mov              dword ptr [rbp + 192], 0;            jmp   n72_disjunction_α
.Ldisjunction_γ_40_as:  mov              r11, 40
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_153_0
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 184], rax;          jmp   n41_conjunction_α
.Ldisjunction_α_153_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_153_1
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 184], rax;          jmp   n41_conjunction_α
.Ldisjunction_α_153_1:                                                        jmp   n41_conjunction_α
n40_disjunction_β:      mov              r11, 40
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 0;                              je    n82_scan_α
                                                                              jmp   n82_scan_α
.Ldisjunction_γ_40_af:  mov              r11, 40
.Ldisjunction_ω_40_af:  mov              r11, 40
                        add              dword ptr [rbp + 192], 1
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 1;                              je    n43_line_mark_α
                                                                              jmp   n82_scan_α
                        .size            n40_disjunction_bx, .-n40_disjunction_bx
                        .type            n41_conjunction_bx, @function
n41_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_conjunction_α:      mov              r11, 41
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax;          jmp   n42_scan_α
n41_conjunction_β:      mov              r11, 41;                             jmp   n82_scan_α
                        .size            n41_conjunction_bx, .-n41_conjunction_bx
                        .type            n42_scan_bx, @function
n42_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_scan_α:             mov              r11, 42
                        mov              rax, qword ptr [rbp + 160]
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
n42_scan_β:             mov              r11, 42
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
                        mov              r14, rax;                            jmp   n40_disjunction_β
                                                                              jmp   tabulate_ω
                        .size            n42_scan_bx, .-n42_scan_bx
                        .type            n43_line_mark_bx, @function
n43_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_line_mark_α:        mov              r11, 43
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70;             jmp   n44_disjunction_α
n43_line_mark_β:        mov              r11, 43;                             jmp   n44_disjunction_α
                        .size            n43_line_mark_bx, .-n43_line_mark_bx
                        .type            n44_disjunction_bx, @function
n44_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_disjunction_α:      mov              r11, 44
                        mov              qword ptr [rbp + 768], 0
                        mov              qword ptr [rbp + 776], 0
                        mov              dword ptr [rbp + 784], 0;            jmp   n63_lit_string_α
.Ldisjunction_γ_44_as:  mov              r11, 44
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_160_0
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax;          jmp   n45_line_mark_α
.Ldisjunction_α_160_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_160_1
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 776], rax;          jmp   n45_line_mark_α
.Ldisjunction_α_160_1:                                                        jmp   n45_line_mark_α
n44_disjunction_β:      mov              r11, 44
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0;                              je    n70_scan_tab_β
                                                                              jmp   n45_line_mark_α
.Ldisjunction_γ_44_af:  mov              r11, 44
.Ldisjunction_ω_44_af:  mov              r11, 44
                        add              dword ptr [rbp + 784], 1
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 1;                              je    n61_lit_integer_α
                                                                              jmp   n45_line_mark_α
                        .size            n44_disjunction_bx, .-n44_disjunction_bx
                        .type            n45_line_mark_bx, @function
n45_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_line_mark_α:        mov              r11, 45
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 71;             jmp   n46_var_ref_α
                        .size            n45_line_mark_bx, .-n45_line_mark_bx
                        .type            n46_var_ref_bx, @function
n46_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n47_var_α
                        .size            n46_var_ref_bx, .-n46_var_ref_bx
                        .type            n47_var_bx, @function
n47_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              mov              r11, 47
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 520], rax;          jmp   n48_subscript_α
                        .size            n47_var_bx, .-n47_var_bx
                        .type            n48_subscript_bx, @function
n48_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_subscript_α:        mov              r11, 48
                        mov              rdi, qword ptr [rbp + 496]
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
                        cmp              al, 104;                             je    n82_scan_α
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
1:                                                                            jmp   n49_var_α
                        .size            n48_subscript_bx, .-n48_subscript_bx
                        .type            n49_var_bx, @function
n49_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:              mov              r11, 49
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 616], rax;          jmp   n50_lit_string_α
                        .size            n49_var_bx, .-n49_var_bx
                        .type            n50_lit_string_bx, @function
n50_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       mov              r11, 50
                        mov              qword ptr [rbp + 624], 2             # result
                        mov              dword ptr [rbp + 628], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_170_0]
                        mov              qword ptr [rbp + 632], rax;          jmp   n51_binop_α
.Llit_string_α_170_0:   .quad            .Llit_string_α_170_0_s
.Llit_string_α_170_0_s: .string          "("
                        .size            n50_lit_string_bx, .-n50_lit_string_bx
                        .type            n51_binop_bx, @function
n51_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_binop_α:            mov              r11, 51
                        mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
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
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
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
1:                                                                            jmp   n52_var_α
                        .size            n51_binop_bx, .-n51_binop_bx
                        .type            n52_var_bx, @function
n52_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              mov              r11, 52
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 696], rax;          jmp   n53_lit_integer_α
                        .size            n52_var_bx, .-n52_var_bx
                        .type            n53_lit_integer_bx, @function
n53_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:      mov              r11, 53
                        mov              qword ptr [rbp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_174_0]
                        mov              qword ptr [rbp + 712], rax;          jmp   n54_coerce_numeric_α
.Llit_integer_α_174_0:  .quad            1
                        .size            n53_lit_integer_bx, .-n53_lit_integer_bx
                        .type            n54_coerce_numeric_bx, @function
n54_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_coerce_numeric_α:   mov              r11, 54
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_176_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_176_0
                        mov              eax, dword ptr [rbp + 704]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_176_0
.Lcoerce_numeric_α_176_1:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 680], rax;          jmp   n55_binop_α
.Lcoerce_numeric_α_176_0:
                        lea              rdi, [rbp + 1760]
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
                        cmp              al, 104;                             je    n82_scan_α
                                                                              jmp   n55_binop_α
                        .size            n54_coerce_numeric_bx, .-n54_coerce_numeric_bx
                        .type            n55_binop_bx, @function
n55_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_binop_α:            mov              r11, 55
                        mov              eax, dword ptr [rbp + 672]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_177_2
                        mov              rax, qword ptr [rbp + 680]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_177_0
                        mov              qword ptr [rbp + 656], 3
                        mov              qword ptr [rbp + 664], rax;          jmp   .Lbinop_α_177_7
.Lbinop_α_177_2:        and              edx, 1;                              jz    .Lbinop_α_177_0
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_177_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_177_4
.Lbinop_α_177_3:        movq             xmm0, rsi
.Lbinop_α_177_4:        cmp              cl, 5;                               je    .Lbinop_α_177_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_177_6
.Lbinop_α_177_5:        movq             xmm1, rdi
.Lbinop_α_177_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_177_0
                        mov              qword ptr [rbp + 656], 5
                        mov              qword ptr [rbp + 664], rax
.Lbinop_α_177_7:                                                              jmp   n56_binop_α
.Lbinop_α_177_0:        mov              rdi, qword ptr [rbp + 672]
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
                        cmp              al, 104;                             je    n82_scan_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:320
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
1:                                                                            jmp   n56_binop_α
                        .size            n55_binop_bx, .-n55_binop_bx
                        .type            n56_binop_bx, @function
n56_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:            mov              r11, 56
                        mov              rdi, qword ptr [rbp + 592]
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
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
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
1:                                                                            jmp   n57_lit_string_α
                        .size            n56_binop_bx, .-n56_binop_bx
                        .type            n57_lit_string_bx, @function
n57_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              r11, 57
                        mov              qword ptr [rbp + 720], 2             # result
                        mov              dword ptr [rbp + 724], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_179_0]
                        mov              qword ptr [rbp + 728], rax;          jmp   n58_binop_α
.Llit_string_α_179_0:   .quad            .Llit_string_α_179_0_s
.Llit_string_α_179_0_s: .string          "), "
                        .size            n57_lit_string_bx, .-n57_lit_string_bx
                        .type            n58_binop_bx, @function
n58_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:            mov              r11, 58
                        mov              rdi, qword ptr [rbp + 576]
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
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
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
1:                                                                            jmp   n59_assign_var_α
                        .size            n58_binop_bx, .-n58_binop_bx
                        .type            n59_assign_var_bx, @function
n59_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_var_α:       mov              r11, 59
                        mov              rdi, qword ptr [rbp + 528]
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
                        cmp              al, 104;                             je    n82_scan_α
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
1:                                                                            jmp   n60_conjunction_α
                        .size            n59_assign_var_bx, .-n59_assign_var_bx
                        .type            n60_conjunction_bx, @function
n60_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_conjunction_α:      mov              r11, 60
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax;          jmp   .Ldisjunction_γ_40_as
n60_conjunction_β:      mov              r11, 60;                             jmp   n82_scan_α
                        .size            n60_conjunction_bx, .-n60_conjunction_bx
                        .type            n61_lit_integer_bx, @function
n61_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:      mov              r11, 61
                        mov              qword ptr [rbp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_183_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n62_assign_α
n61_lit_integer_β:      mov              r11, 61;                             jmp   n45_line_mark_α
.Llit_integer_α_183_0:  .quad            1
                        .size            n61_lit_integer_bx, .-n61_lit_integer_bx
                        .type            n62_assign_bx, @function
n62_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:           mov              r11, 62
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   .Ldisjunction_γ_44_as
n62_assign_β:           mov              r11, 62;                             jmp   n45_line_mark_α
                        .size            n62_assign_bx, .-n62_assign_bx
                        .type            n63_lit_string_bx, @function
n63_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       mov              r11, 63
                        mov              qword ptr [rbp + 1008], 2            # result
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_185_0]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n64_scan_match_α
n63_lit_string_β:       mov              r11, 63;                             jmp   .Ldisjunction_ω_44_af
.Llit_string_α_185_0:   .quad            .Llit_string_α_185_0_s
.Llit_string_α_185_0_s: .string          "("
                        .size            n63_lit_string_bx, .-n63_lit_string_bx
                        .type            n64_scan_match_bx, @function
n64_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_scan_match_α:       mov              r11, 64
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_44_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_187_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_44_af
                        mov              qword ptr [rbp + 976], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 984], rax;          jmp   n65_scan_tab_α
.Lscan_match_α_187_0:   .quad            .Lscan_match_α_187_0_s
.Lscan_match_α_187_0_s: .string          "("
                        .size            n64_scan_match_bx, .-n64_scan_match_bx
                        .type            n65_scan_tab_bx, @function
n65_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_scan_tab_α:         mov              r11, 65
                        mov              rdi, qword ptr [rbp + 976]
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
                        test             eax, eax;                            jz    .Ldisjunction_ω_44_af
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
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_189_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_189_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_44_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_44_af
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
                        mov              qword ptr [rbp + 952], rdx;          jmp   n66_lit_charset_α
n65_scan_tab_β:         mov              r11, 65
                        mov              r14, qword ptr [rbp + 960];          jmp   .Ldisjunction_ω_44_af
                        .size            n65_scan_tab_bx, .-n65_scan_tab_bx
                        .type            n66_lit_charset_bx, @function
n66_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_charset_α:      mov              r11, 66
                        mov              qword ptr [rbp + 912], 2             # result
                        mov              dword ptr [rbp + 916], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_190_0]
                        mov              qword ptr [rbp + 920], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_190_0]
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
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:90
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
1:                                                                            jmp   n67_line_mark_α
.Llit_charset_α_190_0:  .quad            .Llit_charset_α_190_0_s
.Llit_charset_α_190_0_s:
                        .string          ")"
                        .size            n66_lit_charset_bx, .-n66_lit_charset_bx
                        .type            n67_line_mark_bx, @function
n67_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_line_mark_α:        mov              r11, 67
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70;             jmp   n68_scan_upto_α
                        .size            n67_line_mark_bx, .-n67_line_mark_bx
                        .type            n68_scan_upto_bx, @function
n68_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_scan_upto_α:        mov              r11, 68
                        mov              qword ptr [rbp + 880], r14
.Lscan_upto_α_194_0:    mov              rax, qword ptr [rbp + 880]
                        cmp              rax, r15;                            jge   n45_line_mark_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .Lscan_upto_α_194_3]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_upto_α_194_1
                        mov              qword ptr [rbp + 864], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 872], rax;          jmp   n69_line_mark_α
.Lscan_upto_α_194_1:    inc              qword ptr [rbp + 880];               jmp   .Lscan_upto_α_194_0
n68_scan_upto_β:        mov              r11, 68
                        inc              qword ptr [rbp + 880];               jmp   .Lscan_upto_α_194_0
.Lscan_upto_β_194_2:    .quad            .Lscan_upto_β_194_2_s
.Lscan_upto_β_194_2_s:  .string          ")"
.Lscan_upto_α_194_3:    .quad            2199023255552
.Lscan_upto_β_194_4:    .quad            0
.Lscan_upto_β_194_5:    .quad            0
.Lscan_upto_β_194_6:    .quad            0
                        .size            n68_scan_upto_bx, .-n68_scan_upto_bx
                        .type            n69_line_mark_bx, @function
n69_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_line_mark_α:        mov              r11, 69
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70;             jmp   n70_scan_tab_α
                        .size            n69_line_mark_bx, .-n69_line_mark_bx
                        .type            n70_scan_tab_bx, @function
n70_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_scan_tab_α:         mov              r11, 70
                        mov              rdi, qword ptr [rbp + 864]
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
                        test             eax, eax;                            jz    n68_scan_upto_β
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
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_198_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_198_0:     cmp              rax, 1;                              jl    n68_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n68_scan_upto_β
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
                        mov              qword ptr [rbp + 824], rdx;          jmp   n71_assign_α
n70_scan_tab_β:         mov              r11, 70
                        mov              r14, qword ptr [rbp + 832];          jmp   n68_scan_upto_β
                        .size            n70_scan_tab_bx, .-n70_scan_tab_bx
                        .type            n71_assign_bx, @function
n71_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_assign_α:           mov              r11, 71
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   .Ldisjunction_γ_44_as
n71_assign_β:           mov              r11, 71;                             jmp   n45_line_mark_α
                        .size            n71_assign_bx, .-n71_assign_bx
                        .type            n72_disjunction_bx, @function
n72_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_disjunction_α:      mov              r11, 72
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0;            jmp   n86_var_α
.Ldisjunction_γ_72_as:  mov              r11, 72
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_201_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax;          jmp   n73_var_ref_α
.Ldisjunction_α_201_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_201_1
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 376], rax;          jmp   n73_var_ref_α
.Ldisjunction_α_201_1:                                                        jmp   n73_var_ref_α
n72_disjunction_β:      mov              r11, 72
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_72_af
                                                                              jmp   .Ldisjunction_ω_72_af
.Ldisjunction_γ_72_af:  mov              r11, 72
.Ldisjunction_ω_72_af:  mov              r11, 72
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1;                              je    n83_var_α
                                                                              jmp   .Ldisjunction_ω_40_af
                        .size            n72_disjunction_bx, .-n72_disjunction_bx
                        .type            n73_var_ref_bx, @function
n73_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:          mov              r11, 73
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n74_var_α
                        .size            n73_var_ref_bx, .-n73_var_ref_bx
                        .type            n74_var_bx, @function
n74_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:              mov              r11, 74
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 232], rax;          jmp   n75_subscript_α
                        .size            n74_var_bx, .-n74_var_bx
                        .type            n75_subscript_bx, @function
n75_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_subscript_α:        mov              r11, 75
                        mov              rdi, qword ptr [rbp + 208]
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
                        cmp              al, 104;                             je    n82_scan_α
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
1:                                                                            jmp   n76_var_α
                        .size            n75_subscript_bx, .-n75_subscript_bx
                        .type            n76_var_bx, @function
n76_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              mov              r11, 76
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 328], rax;          jmp   n77_lit_string_α
                        .size            n76_var_bx, .-n76_var_bx
                        .type            n77_lit_string_bx, @function
n77_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       mov              r11, 77
                        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_209_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n78_binop_α
.Llit_string_α_209_0:   .quad            .Llit_string_α_209_0_s
.Llit_string_α_209_0_s: .string          ", "
                        .size            n77_lit_string_bx, .-n77_lit_string_bx
                        .type            n78_binop_bx, @function
n78_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_α:            mov              r11, 78
                        mov              rdi, qword ptr [rbp + 32]
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
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
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
1:                                                                            jmp   n79_deref_α
                        .size            n78_binop_bx, .-n78_binop_bx
                        .type            n79_deref_bx, @function
n79_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_deref_α:            mov              r11, 79
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n82_scan_α
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
1:                                                                            jmp   n80_binop_α
                        .size            n79_deref_bx, .-n79_deref_bx
                        .type            n80_binop_bx, @function
n80_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_binop_α:            mov              r11, 80
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
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
1:                                                                            jmp   n81_assign_var_α
                        .size            n80_binop_bx, .-n80_binop_bx
                        .type            n81_assign_var_bx, @function
n81_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_var_α:       mov              r11, 81
                        mov              rdi, qword ptr [rbp + 240]
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
                        cmp              al, 104;                             je    n82_scan_α
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
1:                                                                            jmp   .Ldisjunction_γ_40_as
n81_assign_var_β:       mov              r11, 81;                             jmp   n82_scan_α
                        .size            n81_assign_var_bx, .-n81_assign_var_bx
                        .type            n82_scan_bx, @function
n82_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_scan_α:             mov              r11, 82
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
n82_scan_β:             mov              r11, 82;                             jmp   tabulate_ω
                        .size            n82_scan_bx, .-n82_scan_bx
                        .type            n83_var_bx, @function
n83_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              mov              r11, 83
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 456], rax;          jmp   n84_var_α
n83_var_β:              mov              r11, 83;                             jmp   .Ldisjunction_ω_72_af
                        .size            n83_var_bx, .-n83_var_bx
                        .type            n84_var_bx, @function
n84_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              mov              r11, 84
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 472], rax;          jmp   n85_binop_test_α
                        .size            n84_var_bx, .-n84_var_bx
                        .type            n85_binop_test_bx, @function
n85_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_test_α:       mov              r11, 85
                        mov              rdi, qword ptr [rbp + 1728]
                        mov              rsi, qword ptr [rbp + 1736]
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
1:                      test             eax, eax;                            jz    .Ldisjunction_ω_72_af
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
1:                                                                            jmp   .Ldisjunction_γ_72_as
n85_binop_test_β:       mov              r11, 85;                             jmp   .Ldisjunction_ω_72_af
                        .size            n85_binop_test_bx, .-n85_binop_test_bx
                        .type            n86_var_bx, @function
n86_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:              mov              r11, 86
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 424], rax;          jmp   n87_unop_test_α
n86_var_β:              mov              r11, 86;                             jmp   .Ldisjunction_ω_72_af
                        .size            n86_var_bx, .-n86_var_bx
                        .type            n87_unop_test_bx, @function
n87_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_unop_test_α:        mov              r11, 87
                        mov              eax, dword ptr [rbp + 1728]
                        cmp              al, 104;                             je    .Ldisjunction_ω_72_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_72_af
                        mov              qword ptr [rbp + 400], 0
                        mov              qword ptr [rbp + 408], 0;            jmp   .Ldisjunction_γ_72_as
n87_unop_test_β:        mov              r11, 87;                             jmp   .Ldisjunction_ω_72_af
                        .size            n87_unop_test_bx, .-n87_unop_test_bx
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
                        lea              rsp, [rbp + 1936]
                        mov              rbp, qword ptr [rbp + 1928];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 1936]
                        mov              rbp, qword ptr [rbp + 1928];         jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Ltabulate_α_224_3]
                        push             rcx
                        lea              rcx, [rip + .Ltabulate_α_224_2]
                        push             rcx;                                 jmp   FN__tabulate
.Ltabulate_α_224_2:     add              rsp, 24
                        pop              r12;                                 jmp   r12
.Ltabulate_α_224_3:     add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_tabulate:
                        .quad            8316403141978
                        .quad            34359738512
                        .quad            .Lgcmap_tabulate_s
                        .quad            1776
                        .quad            24
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
                        .quad            140737488356560
                        .quad            17596481013072
                        .quad            439804651111776
.Lgcmap_tabulate_s:     .string          "tabulate"
#-----------------------------------------------------------------------------------------------------------------------
FN__format:
                        sub              rsp, 1168
                        lea              rax, [rip + .Lgcmap_format]
                        mov              qword ptr [rsp + 1080], rax
                        mov              dword ptr [rsp + 1072], 160
                        mov              dword ptr [rsp + 1076], 1168
                        mov              eax, 0
                        mov              qword ptr [rsp + 1160], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 1072
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
                        mov              rdi, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rdi, qword ptr [rdi + 0]
                        mov              ecx, dword ptr [rdi + 0]
                        cmp              ecx, 65536;                          jae   .Lformat_α_224_245
                        mov              rsi, 40
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm225:        .string          "format"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm225]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 1
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
.Lformat_α_224_245:
format_α_body:
                        .type            n00001_line_mark_bx, @function
n00001_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_line_mark_α:       mov              r11, 88
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 79
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_285_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00002_line_mark_α
.Lline_mark_α_285_0:    .quad            .Lline_mark_α_285_0_s
.Lline_mark_α_285_0_s:  .string          "concord.icn"
                        .size            n00001_line_mark_bx, .-n00001_line_mark_bx
                        .type            n00002_line_mark_bx, @function
n00002_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_line_mark_α:       mov              r11, 89
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 80;             jmp   n00003_var_α
                        .size            n00002_line_mark_bx, .-n00002_line_mark_bx
                        .type            n00003_var_bx, @function
n00003_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_var_α:             mov              r11, 90
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax;          jmp   n00004_unop_α
                        .size            n00003_var_bx, .-n00003_var_bx
                        .type            n00004_unop_bx, @function
n00004_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_unop_α:            mov              r11, 91
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             qword ptr [rip + rt_size_d@GOTPCREL]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:107
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
1:                                                                            jmp   n00005_lit_integer_α
                        .size            n00004_unop_bx, .-n00004_unop_bx
                        .type            n00005_lit_integer_bx, @function
n00005_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_lit_integer_α:     mov              r11, 92
                        mov              qword ptr [rbp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_291_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n00006_var_α
.Llit_integer_α_291_0:  .quad            2
                        .size            n00005_lit_integer_bx, .-n00005_lit_integer_bx
                        .type            n00006_var_bx, @function
n00006_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_var_α:             mov              r11, 93
                        mov              rax, qword ptr [r9 + 16]             # colmax
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rbp + 272], rax           # result
                        mov              qword ptr [rbp + 280], rdx;          jmp   n00007_coerce_numeric_α
                        .size            n00006_var_bx, .-n00006_var_bx
                        .type            n00007_coerce_numeric_bx, @function
n00007_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_coerce_numeric_α:  mov              r11, 94
                        mov              eax, dword ptr [rbp + 272]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_294_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_294_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_294_0
.Lcoerce_numeric_α_294_1:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00008_binop_α
.Lcoerce_numeric_α_294_0:
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
                        cmp              al, 104;                             je    n00009_line_mark_α
                                                                              jmp   n00008_binop_α
                        .size            n00007_coerce_numeric_bx, .-n00007_coerce_numeric_bx
                        .type            n00008_binop_bx, @function
n00008_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_binop_α:           mov              r11, 95
                        mov              eax, dword ptr [rbp + 240]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_295_2
                        mov              rax, qword ptr [rbp + 248]
                        mov              rdx, 2
                        add              rax, rdx;                            jo    .Lbinop_α_295_0
                        mov              qword ptr [rbp + 224], 3
                        mov              qword ptr [rbp + 232], rax;          jmp   .Lbinop_α_295_7
.Lbinop_α_295_2:        and              edx, 1;                              jz    .Lbinop_α_295_0
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_295_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_295_4
.Lbinop_α_295_3:        movq             xmm0, rsi
.Lbinop_α_295_4:        cmp              cl, 5;                               je    .Lbinop_α_295_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_295_6
.Lbinop_α_295_5:        movq             xmm1, rdi
.Lbinop_α_295_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_295_0
                        mov              qword ptr [rbp + 224], 5
                        mov              qword ptr [rbp + 232], rax
.Lbinop_α_295_7:                                                              jmp   n00010_binop_test_α
.Lbinop_α_295_0:        mov              rdi, qword ptr [rbp + 240]
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
                        cmp              al, 104;                             je    n00009_line_mark_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:320
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
1:                                                                            jmp   n00010_binop_test_α
                        .size            n00008_binop_bx, .-n00008_binop_bx
                        .type            n00010_binop_test_bx, @function
n00010_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_binop_test_α:      mov              r11, 96
                        mov              eax, dword ptr [rbp + 192]
                        cmp              al, 112;                             je    .Lbinop_test_α_296_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              al, 112;                             je    .Lbinop_test_α_296_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              al, 3;                               jne   .Lbinop_test_α_296_2
                        mov              eax, dword ptr [rbp + 224]
                        cmp              al, 3;                               jne   .Lbinop_test_α_296_2
.Lbinop_test_α_296_1:   mov              rax, qword ptr [rbp + 200]
                        mov              rcx, qword ptr [rbp + 232]
                        cmp              rax, rcx;                            jle   n00009_line_mark_α
                        mov              rcx, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rcx
                        mov              rcx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rcx;          jmp   n00011_line_mark_α
.Lbinop_test_α_296_0:   mov              rdi, qword ptr [rbp + 192]
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
                        test             eax, eax;                            je    .Lbinop_test_α_296_2
                        cmp              eax, 1;                              je    n00009_line_mark_α
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
1:                                                                            jmp   n00011_line_mark_α
.Lbinop_test_α_296_2:   mov              rdi, qword ptr [rbp + 192]
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
1:                      test             eax, eax;                            jz    n00009_line_mark_α
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
1:                                                                            jmp   n00011_line_mark_α
                        .size            n00010_binop_test_bx, .-n00010_binop_test_bx
                        .type            n00011_line_mark_bx, @function
n00011_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_line_mark_α:       mov              r11, 97
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 81;             jmp   n00012_lit_integer_α
                        .size            n00011_line_mark_bx, .-n00011_line_mark_bx
                        .type            n00012_lit_integer_bx, @function
n00012_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_lit_integer_α:     mov              r11, 98
                        mov              qword ptr [rbp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_299_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n00013_var_α
.Llit_integer_α_299_0:  .quad            2
                        .size            n00012_lit_integer_bx, .-n00012_lit_integer_bx
                        .type            n00013_var_bx, @function
n00013_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_var_α:             mov              r11, 99
                        mov              rax, qword ptr [r9 + 16]             # colmax
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rbp + 992], rax           # result
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n00014_coerce_numeric_α
                        .size            n00013_var_bx, .-n00013_var_bx
                        .type            n00014_coerce_numeric_bx, @function
n00014_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_coerce_numeric_α:  mov              r11, 100
                        mov              eax, dword ptr [rbp + 992]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_302_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_302_0
                        mov              eax, dword ptr [rbp + 976]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_302_0
.Lcoerce_numeric_α_302_1:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax;          jmp   n00015_binop_α
.Lcoerce_numeric_α_302_0:
                        lea              rdi, [rbp + 992]
                        lea              rsi, [rbp + 976]
                        lea              rdx, [rbp + 960]
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
1:                      mov              eax, dword ptr [rbp + 960]
                        cmp              al, 104;                             je    n00016_line_mark_α
                                                                              jmp   n00015_binop_α
                        .size            n00014_coerce_numeric_bx, .-n00014_coerce_numeric_bx
                        .type            n00015_binop_bx, @function
n00015_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_binop_α:           mov              r11, 101
                        mov              eax, dword ptr [rbp + 960]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_303_2
                        mov              rax, qword ptr [rbp + 968]
                        mov              rdx, 2
                        add              rax, rdx;                            jo    .Lbinop_α_303_0
                        mov              qword ptr [rbp + 944], 3
                        mov              qword ptr [rbp + 952], rax;          jmp   .Lbinop_α_303_7
.Lbinop_α_303_2:        and              edx, 1;                              jz    .Lbinop_α_303_0
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_303_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_303_4
.Lbinop_α_303_3:        movq             xmm0, rsi
.Lbinop_α_303_4:        cmp              cl, 5;                               je    .Lbinop_α_303_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_303_6
.Lbinop_α_303_5:        movq             xmm1, rdi
.Lbinop_α_303_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_303_0
                        mov              qword ptr [rbp + 944], 5
                        mov              qword ptr [rbp + 952], rax
.Lbinop_α_303_7:                                                              jmp   n00017_assign_α
.Lbinop_α_303_0:        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00016_line_mark_α
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:320
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
1:                                                                            jmp   n00017_assign_α
                        .size            n00015_binop_bx, .-n00015_binop_bx
                        .type            n00017_assign_bx, @function
n00017_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_assign_α:          mov              r11, 102
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n00016_line_mark_α
                        .size            n00017_assign_bx, .-n00017_assign_bx
                        .type            n00016_line_mark_bx, @function
n00016_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_line_mark_α:       mov              r11, 103
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 82;             jmp   n00018_var_ref_α
                        .size            n00016_line_mark_bx, .-n00016_line_mark_bx
                        .type            n00018_var_ref_bx, @function
n00018_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n00019_var_α
                        .size            n00018_var_ref_bx, .-n00018_var_ref_bx
                        .type            n00019_var_bx, @function
n00019_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_var_α:             mov              r11, 105
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 824], rax;          jmp   n00020_lit_integer_α
                        .size            n00019_var_bx, .-n00019_var_bx
                        .type            n00020_lit_integer_bx, @function
n00020_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_lit_integer_α:     mov              r11, 106
                        mov              qword ptr [rbp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_311_0]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00021_coerce_numeric_α
.Llit_integer_α_311_0:  .quad            1
                        .size            n00020_lit_integer_bx, .-n00020_lit_integer_bx
                        .type            n00021_coerce_numeric_bx, @function
n00021_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_coerce_numeric_α:  mov              r11, 107
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_313_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_313_0
                        mov              eax, dword ptr [rbp + 832]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_313_0
.Lcoerce_numeric_α_313_1:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00022_binop_α
.Lcoerce_numeric_α_313_0:
                        lea              rdi, [rbp + 1056]
                        lea              rsi, [rbp + 832]
                        lea              rdx, [rbp + 800]
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
1:                      mov              eax, dword ptr [rbp + 800]
                        cmp              al, 104;                             je    n00018_var_ref_α
                                                                              jmp   n00022_binop_α
                        .size            n00021_coerce_numeric_bx, .-n00021_coerce_numeric_bx
                        .type            n00022_binop_bx, @function
n00022_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_binop_α:           mov              r11, 108
                        mov              eax, dword ptr [rbp + 800]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_314_2
                        mov              rax, qword ptr [rbp + 808]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_314_0
                        mov              qword ptr [rbp + 784], 3
                        mov              qword ptr [rbp + 792], rax;          jmp   .Lbinop_α_314_7
.Lbinop_α_314_2:        and              edx, 1;                              jz    .Lbinop_α_314_0
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_314_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_314_4
.Lbinop_α_314_3:        movq             xmm0, rsi
.Lbinop_α_314_4:        cmp              cl, 5;                               je    .Lbinop_α_314_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_314_6
.Lbinop_α_314_5:        movq             xmm1, rdi
.Lbinop_α_314_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_314_0
                        mov              qword ptr [rbp + 784], 5
                        mov              qword ptr [rbp + 792], rax
.Lbinop_α_314_7:                                                              jmp   n00023_assign_α
.Lbinop_α_314_0:        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00018_var_ref_α
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:320
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
1:                                                                            jmp   n00023_assign_α
                        .size            n00022_binop_bx, .-n00022_binop_bx
                        .type            n00023_assign_bx, @function
n00023_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_assign_α:          mov              r11, 109
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n00024_subscript_α
                        .size            n00023_assign_bx, .-n00023_assign_bx
                        .type            n00024_subscript_bx, @function
n00024_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_subscript_α:       mov              r11, 110
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00018_var_ref_α
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
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
1:                                                                            jmp   n00025_deref_α
                        .size            n00024_subscript_bx, .-n00024_subscript_bx
                        .type            n00025_deref_bx, @function
n00025_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_deref_α:           mov              r11, 111
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00018_var_ref_α
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
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
1:                                                                            jmp   n00026_lit_string_α
                        .size            n00025_deref_bx, .-n00025_deref_bx
                        .type            n00026_lit_string_bx, @function
n00026_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_lit_string_α:      mov              r11, 112
                        mov              qword ptr [rbp + 880], 2             # result
                        mov              dword ptr [rbp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_318_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00027_binop_test_α
.Llit_string_α_318_0:   .quad            .Llit_string_α_318_0_s
.Llit_string_α_318_0_s: .string          " "
                        .size            n00026_lit_string_bx, .-n00026_lit_string_bx
                        .type            n00027_binop_test_bx, @function
n00027_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_binop_test_α:      mov              r11, 113
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 880]
                        mov              rcx, qword ptr [rbp + 888]
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
1:                      test             eax, eax;                            jz    n00018_var_ref_α
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
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
1:                                                                            jmp   n00028_line_mark_α
                        .size            n00027_binop_test_bx, .-n00027_binop_test_bx
                        .type            n00028_line_mark_bx, @function
n00028_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_line_mark_α:       mov              r11, 114
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 83;             jmp   n00029_var_ref_α
                        .size            n00028_line_mark_bx, .-n00028_line_mark_bx
                        .type            n00029_var_ref_bx, @function
n00029_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n00030_lit_integer_α
                        .size            n00029_var_ref_bx, .-n00029_var_ref_bx
                        .type            n00030_lit_integer_bx, @function
n00030_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_lit_integer_α:     mov              r11, 116
                        mov              qword ptr [rbp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_324_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n00031_var_α
.Llit_integer_α_324_0:  .quad            1
                        .size            n00030_lit_integer_bx, .-n00030_lit_integer_bx
                        .type            n00031_var_bx, @function
n00031_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_var_α:             mov              r11, 117
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 696], rax;          jmp   n00032_subscript_α
                        .size            n00031_var_bx, .-n00031_var_bx
                        .type            n00032_subscript_bx, @function
n00032_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_subscript_α:       mov              r11, 118
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8, qword ptr [rbp + 688]
                        mov              r9, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_section_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00033_line_mark_α
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
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
1:                                                                            jmp   n00034_deref_α
                        .size            n00032_subscript_bx, .-n00032_subscript_bx
                        .type            n00034_deref_bx, @function
n00034_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_deref_α:           mov              r11, 119
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00033_line_mark_α
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
1:                                                                            jmp   n00035_line_mark_α
                        .size            n00034_deref_bx, .-n00034_deref_bx
                        .type            n00035_line_mark_bx, @function
n00035_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_line_mark_α:       mov              r11, 120
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 83;             jmp   n00036_call_icon_α
                        .size            n00035_line_mark_bx, .-n00035_line_mark_bx
                        .type            n00036_call_icon_bx, @function
n00036_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_call_icon_α:       mov              r11, 121
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lcall_icon_α_rkfn332:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn332]
                        lea              rsi, [rbp + 608]
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
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    n00033_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   n00033_line_mark_α
n00036_call_icon_β:       mov              r11, 121;                            jmp   n00033_line_mark_α
                        .size            n00036_call_icon_bx, .-n00036_call_icon_bx
                        .type            n00033_line_mark_bx, @function
n00033_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_line_mark_α:       mov              r11, 122
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 84;             jmp   n00037_lit_string_α
                        .size            n00033_line_mark_bx, .-n00033_line_mark_bx
                        .type            n00037_lit_string_bx, @function
n00037_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_lit_string_α:      mov              r11, 123
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_335_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n00038_var_ref_α
.Llit_string_α_335_0:   .quad            .Llit_string_α_335_0_s
.Llit_string_α_335_0_s: .string          " "
                        .size            n00037_lit_string_bx, .-n00037_lit_string_bx
                        .type            n00038_var_ref_bx, @function
n00038_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        mov              rdx, 1879052320                      # namewidth
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n00039_deref_α
                        .size            n00038_var_ref_bx, .-n00038_var_ref_bx
                        .type            n00039_deref_bx, @function
n00039_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_deref_α:           mov              r11, 125
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00003_var_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
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
1:                                                                            jmp   n00040_line_mark_α
                        .size            n00039_deref_bx, .-n00039_deref_bx
                        .type            n00040_line_mark_bx, @function
n00040_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_line_mark_α:       mov              r11, 126
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 84;             jmp   n00041_call_icon_α
                        .size            n00040_line_mark_bx, .-n00040_line_mark_bx
                        .type            n00041_call_icon_bx, @function
n00041_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_call_icon_α:       mov              r11, 127
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lcall_icon_α_rkfn342:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn342]
                        lea              rsi, [rbp + 352]
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
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    n00003_var_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   n00042_var_α
n00041_call_icon_β:       mov              r11, 127;                            jmp   n00003_var_α
                        .size            n00041_call_icon_bx, .-n00041_call_icon_bx
                        .type            n00042_var_bx, @function
n00042_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_var_α:             mov              r11, 128
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 488], rax;          jmp   n00043_var_α
                        .size            n00042_var_bx, .-n00042_var_bx
                        .type            n00043_var_bx, @function
n00043_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_var_α:             mov              r11, 129
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 536], rax;          jmp   n00044_lit_integer_α
                        .size            n00043_var_bx, .-n00043_var_bx
                        .type            n00044_lit_integer_bx, @function
n00044_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_lit_integer_α:     mov              r11, 130
                        mov              qword ptr [rbp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_347_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00045_coerce_numeric_α
.Llit_integer_α_347_0:  .quad            1
                        .size            n00044_lit_integer_bx, .-n00044_lit_integer_bx
                        .type            n00045_coerce_numeric_bx, @function
n00045_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_coerce_numeric_α:  mov              r11, 131
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_349_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_349_0
                        mov              eax, dword ptr [rbp + 544]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_349_0
.Lcoerce_numeric_α_349_1:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 520], rax;          jmp   n00046_binop_α
.Lcoerce_numeric_α_349_0:
                        lea              rdi, [rbp + 1056]
                        lea              rsi, [rbp + 544]
                        lea              rdx, [rbp + 512]
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
1:                      mov              eax, dword ptr [rbp + 512]
                        cmp              al, 104;                             je    n00003_var_α
                                                                              jmp   n00046_binop_α
                        .size            n00045_coerce_numeric_bx, .-n00045_coerce_numeric_bx
                        .type            n00046_binop_bx, @function
n00046_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_binop_α:           mov              r11, 132
                        mov              eax, dword ptr [rbp + 512]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_350_2
                        mov              rax, qword ptr [rbp + 520]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_350_0
                        mov              qword ptr [rbp + 496], 3
                        mov              qword ptr [rbp + 504], rax;          jmp   .Lbinop_α_350_7
.Lbinop_α_350_2:        and              edx, 1;                              jz    .Lbinop_α_350_0
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_350_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_350_4
.Lbinop_α_350_3:        movq             xmm0, rsi
.Lbinop_α_350_4:        cmp              cl, 5;                               je    .Lbinop_α_350_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_350_6
.Lbinop_α_350_5:        movq             xmm1, rdi
.Lbinop_α_350_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_350_0
                        mov              qword ptr [rbp + 496], 5
                        mov              qword ptr [rbp + 504], rax
.Lbinop_α_350_7:                                                              jmp   n00047_lit_integer_α
.Lbinop_α_350_0:        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 544]
                        mov              rcx, qword ptr [rbp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00003_var_α
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:320
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
1:                                                                            jmp   n00047_lit_integer_α
                        .size            n00046_binop_bx, .-n00046_binop_bx
                        .type            n00047_lit_integer_bx, @function
n00047_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_lit_integer_α:     mov              r11, 133
                        mov              qword ptr [rbp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_351_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n00048_subscript_α
.Llit_integer_α_351_0:  .quad            0
                        .size            n00047_lit_integer_bx, .-n00047_lit_integer_bx
                        .type            n00048_subscript_bx, @function
n00048_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_subscript_α:       mov              r11, 134
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        mov              r8, qword ptr [rbp + 560]
                        mov              r9, qword ptr [rbp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00003_var_α
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
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
1:                                                                            jmp   n00049_binop_α
                        .size            n00048_subscript_bx, .-n00048_subscript_bx
                        .type            n00049_binop_bx, @function
n00049_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_binop_α:           mov              r11, 135
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
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
1:                                                                            jmp   n00050_assign_α
                        .size            n00049_binop_bx, .-n00049_binop_bx
                        .type            n00050_assign_bx, @function
n00050_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_assign_α:          mov              r11, 136
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n00051_conjunction_α
                        .size            n00050_assign_bx, .-n00050_assign_bx
                        .type            n00051_conjunction_bx, @function
n00051_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_conjunction_α:     mov              r11, 137
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax;          jmp   n00003_var_α
n00051_conjunction_β:     mov              r11, 137;                            jmp   n00003_var_α
                        .size            n00051_conjunction_bx, .-n00051_conjunction_bx
                        .type            n00009_line_mark_bx, @function
n00009_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_line_mark_α:       mov              r11, 138
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 86;             jmp   n00052_var_ref_α
                        .size            n00009_line_mark_bx, .-n00009_line_mark_bx
                        .type            n00052_var_ref_bx, @function
n00052_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00053_lit_integer_α
                        .size            n00052_var_ref_bx, .-n00052_var_ref_bx
                        .type            n00053_lit_integer_bx, @function
n00053_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_lit_integer_α:     mov              r11, 140
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_360_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n00054_lit_integer_α
.Llit_integer_α_360_0:  .quad            1
                        .size            n00053_lit_integer_bx, .-n00053_lit_integer_bx
                        .type            n00054_lit_integer_bx, @function
n00054_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_lit_integer_α:     mov              r11, 141
                        mov              qword ptr [rbp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_361_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n00055_subscript_α
.Llit_integer_α_361_0:  .quad            18446744073709551614
                        .size            n00054_lit_integer_bx, .-n00054_lit_integer_bx
                        .type            n00055_subscript_bx, @function
n00055_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_subscript_α:       mov              r11, 142
                        mov              rdi, qword ptr [rbp + 96]
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
1:                                                                            jmp   n00056_deref_α
                        .size            n00055_subscript_bx, .-n00055_subscript_bx
                        .type            n00056_deref_bx, @function
n00056_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_deref_α:           mov              r11, 143
                        mov              rdi, qword ptr [rbp + 80]
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
1:                                                                            jmp   n00057_line_mark_α
                        .size            n00056_deref_bx, .-n00056_deref_bx
                        .type            n00057_line_mark_bx, @function
n00057_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_line_mark_α:       mov              r11, 144
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 86;             jmp   n00058_call_icon_α
                        .size            n00057_line_mark_bx, .-n00057_line_mark_bx
                        .type            n00058_call_icon_bx, @function
n00058_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_call_icon_α:       mov              r11, 145
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lcall_icon_α_rkfn367:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn367]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
n00058_call_icon_β:       mov              r11, 145;                            jmp   format_ω
                        .size            n00058_call_icon_bx, .-n00058_call_icon_bx
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
                        lea              rsp, [rbp + 1168]
                        mov              rbp, qword ptr [rbp + 1160];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 1168]
                        mov              rbp, qword ptr [rbp + 1160];         jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Lformat_α_368_3]
                        push             rcx
                        lea              rcx, [rip + .Lformat_α_368_2]
                        push             rcx;                                 jmp   FN__format
.Lformat_α_368_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lformat_α_368_3:       add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_format:
                        .quad            5017868258650
                        .quad            34359738448
                        .quad            .Lgcmap_format_s
                        .quad            1072
                        .quad            1
                        .quad            1178676464975872
.Lgcmap_format_s:       .string          "format"
#-----------------------------------------------------------------------------------------------------------------------
FN__item:
                        lea              rax, [rsp + -1352]
                        mov              qword ptr [rax + 1296], rbp
                        mov              rcx, qword ptr [rsp + 0]
                        mov              qword ptr [rax + 1304], rcx
                        mov              rcx, qword ptr [rsp + 8]
                        mov              qword ptr [rax + 1312], rcx
                        lea              rcx, [rsp + 40]
                        mov              qword ptr [rax + 1320], rcx
                        lea              rbp, [rax + 1296]
                        mov              rsp, rax
                        lea              rax, [rip + .Lgcmap_item]
                        mov              qword ptr [rsp + 1176], rax
                        mov              dword ptr [rsp + 1168], 160
                        mov              dword ptr [rsp + 1172], 1296
                        mov              eax, 0
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 1168
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
                        cmp              ecx, 65536;                          jae   .Litem_α_368_245
                        mov              rsi, 40
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm369:        .string          "item"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm369]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 0
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
.Litem_α_368_245:
item_α_body:
                        lea              rax, [rip + n00059_suspend_β]
                        mov              qword ptr [rbp + -192], rax
                        .type            n00060_line_mark_bx, @function
n00060_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_line_mark_α:       mov              r11, 146
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 93
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_429_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00061_line_mark_α
.Lline_mark_α_429_0:    .quad            .Lline_mark_α_429_0_s
.Lline_mark_α_429_0_s:  .string          "concord.icn"
                        .size            n00060_line_mark_bx, .-n00060_line_mark_bx
                        .type            n00061_line_mark_bx, @function
n00061_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_line_mark_α:       mov              r11, 147
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 94;             jmp   n00062_line_mark_α
                        .size            n00061_line_mark_bx, .-n00061_line_mark_bx
                        .type            n00062_line_mark_bx, @function
n00062_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_line_mark_α:       mov              r11, 148
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 94;             jmp   n00063_call_icon_α
                        .size            n00062_line_mark_bx, .-n00062_line_mark_bx
                        .type            n00063_call_icon_bx, @function
n00063_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_call_icon_α:       mov              r11, 149
                        .section         .rodata
.Lcall_icon_α_rkfn435:  .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn435]
                        lea              rsi, [rbp + -1248]
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
                        mov              qword ptr [rbp + -1264], rax
                        mov              qword ptr [rbp + -1256], rdx
                        cmp              al, 104;                             je    item_ω
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   n00064_assign_α
n00063_call_icon_β:       mov              r11, 149;                            jmp   item_ω
                        .size            n00063_call_icon_bx, .-n00063_call_icon_bx
                        .type            n00064_assign_bx, @function
n00064_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_assign_α:          mov              r11, 150
                        mov              rax, qword ptr [rbp + -1264]
                        mov              rdx, qword ptr [rbp + -1256]
                        mov              qword ptr [rbp + -176], rax
                        mov              qword ptr [rbp + -168], rdx;         jmp   n00065_line_mark_α
                        .size            n00064_assign_bx, .-n00064_assign_bx
                        .type            n00065_line_mark_bx, @function
n00065_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_line_mark_α:       mov              r11, 151
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 95;             jmp   n00066_lit_integer_α
                        .size            n00065_line_mark_bx, .-n00065_line_mark_bx
                        .type            n00066_lit_integer_bx, @function
n00066_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_lit_integer_α:     mov              r11, 152
                        mov              qword ptr [rbp + -272], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_439_0]
                        mov              qword ptr [rbp + -264], rax;         jmp   n00067_var_α
.Llit_integer_α_439_0:  .quad            1
                        .size            n00066_lit_integer_bx, .-n00066_lit_integer_bx
                        .type            n00067_var_bx, @function
n00067_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_var_α:             mov              r11, 153
                        mov              rax, qword ptr [r9 + 48]             # lineno
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rbp + -256], rax          # result
                        mov              qword ptr [rbp + -248], rdx;         jmp   n00068_coerce_numeric_α
                        .size            n00067_var_bx, .-n00067_var_bx
                        .type            n00068_coerce_numeric_bx, @function
n00068_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_coerce_numeric_α:  mov              r11, 154
                        mov              eax, dword ptr [rbp + -256]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_442_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_442_0
                        mov              eax, dword ptr [rbp + -272]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_442_0
.Lcoerce_numeric_α_442_1:
                        mov              rax, qword ptr [rbp + -256]
                        mov              qword ptr [rbp + -288], rax
                        mov              rax, qword ptr [rbp + -248]
                        mov              qword ptr [rbp + -280], rax;         jmp   n00069_binop_α
.Lcoerce_numeric_α_442_0:
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
                        cmp              al, 104;                             je    n00070_line_mark_α
                                                                              jmp   n00069_binop_α
                        .size            n00068_coerce_numeric_bx, .-n00068_coerce_numeric_bx
                        .type            n00069_binop_bx, @function
n00069_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_binop_α:           mov              r11, 155
                        mov              eax, dword ptr [rbp + -288]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_443_2
                        mov              rax, qword ptr [rbp + -280]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_443_0
                        mov              qword ptr [rbp + -304], 3
                        mov              qword ptr [rbp + -296], rax;         jmp   .Lbinop_α_443_7
.Lbinop_α_443_2:        and              edx, 1;                              jz    .Lbinop_α_443_0
                        mov              rsi, qword ptr [rbp + -280]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_443_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_443_4
.Lbinop_α_443_3:        movq             xmm0, rsi
.Lbinop_α_443_4:        cmp              cl, 5;                               je    .Lbinop_α_443_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_443_6
.Lbinop_α_443_5:        movq             xmm1, rdi
.Lbinop_α_443_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_443_0
                        mov              qword ptr [rbp + -304], 5
                        mov              qword ptr [rbp + -296], rax
.Lbinop_α_443_7:                                                              jmp   n00071_assign_α
.Lbinop_α_443_0:        mov              rdi, qword ptr [rbp + -288]
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
                        cmp              al, 104;                             je    n00070_line_mark_α
                        mov              qword ptr [rbp + -304], rax
                        mov              qword ptr [rbp + -296], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:320
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
1:                                                                            jmp   n00071_assign_α
                        .size            n00069_binop_bx, .-n00069_binop_bx
                        .type            n00071_assign_bx, @function
n00071_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_assign_α:          mov              r11, 156
                        mov              rax, qword ptr [rbp + -304]
                        mov              rdx, qword ptr [rbp + -296]
                        mov              qword ptr [r9 + 48], rax             # lineno
                        mov              qword ptr [r9 + 56], rdx;            jmp   n00070_line_mark_α
                        .size            n00071_assign_bx, .-n00071_assign_bx
                        .type            n00070_line_mark_bx, @function
n00070_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_line_mark_α:       mov              r11, 157
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 96;             jmp   n00072_var_ref_α
                        .size            n00070_line_mark_bx, .-n00070_line_mark_bx
                        .type            n00072_var_ref_bx, @function
n00072_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_var_ref_α:         mov              r11, 158
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # lineno
                        mov              qword ptr [rbp + -432], rax
                        mov              qword ptr [rbp + -424], rdx;         jmp   n00073_lit_integer_α
                        .size            n00072_var_ref_bx, .-n00072_var_ref_bx
                        .type            n00073_lit_integer_bx, @function
n00073_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_lit_integer_α:     mov              r11, 159
                        mov              qword ptr [rbp + -416], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_449_0]
                        mov              qword ptr [rbp + -408], rax;         jmp   n00074_deref_α
.Llit_integer_α_449_0:  .quad            6
                        .size            n00073_lit_integer_bx, .-n00073_lit_integer_bx
                        .type            n00074_deref_bx, @function
n00074_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_deref_α:           mov              r11, 160
                        mov              rdi, qword ptr [rbp + -432]
                        mov              rsi, qword ptr [rbp + -424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00075_line_mark_α
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
1:                                                                            jmp   n00076_line_mark_α
                        .size            n00074_deref_bx, .-n00074_deref_bx
                        .type            n00076_line_mark_bx, @function
n00076_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_line_mark_α:       mov              r11, 161
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 96;             jmp   n00077_call_icon_α
                        .size            n00076_line_mark_bx, .-n00076_line_mark_bx
                        .type            n00077_call_icon_bx, @function
n00077_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_call_icon_α:       mov              r11, 162
                        mov              rax, qword ptr [rbp + -416]
                        mov              qword ptr [rbp + -464], rax
                        mov              rax, qword ptr [rbp + -408]
                        mov              qword ptr [rbp + -456], rax
                        mov              rax, qword ptr [rbp + -400]
                        mov              qword ptr [rbp + -480], rax
                        mov              rax, qword ptr [rbp + -392]
                        mov              qword ptr [rbp + -472], rax
                        .section         .rodata
.Lcall_icon_α_rkfn454:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn454]
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
                        cmp              al, 104;                             je    n00075_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   n00078_lit_string_α
n00077_call_icon_β:       mov              r11, 162;                            jmp   n00075_line_mark_α
                        .size            n00077_call_icon_bx, .-n00077_call_icon_bx
                        .type            n00078_lit_string_bx, @function
n00078_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_lit_string_α:      mov              r11, 163
                        mov              qword ptr [rbp + -384], 2            # result
                        mov              dword ptr [rbp + -380], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_455_0]
                        mov              qword ptr [rbp + -376], rax;         jmp   n00079_var_ref_α
.Llit_string_α_455_0:   .quad            .Llit_string_α_455_0_s
.Llit_string_α_455_0_s: .string          "  "
                        .size            n00078_lit_string_bx, .-n00078_lit_string_bx
                        .type            n00079_var_ref_bx, @function
n00079_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_var_ref_α:         mov              r11, 164
                        mov              rax, 4294967336
                        lea              rdx, [rbp + -176]
                        mov              qword ptr [rbp + -352], rax
                        mov              qword ptr [rbp + -344], rdx;         jmp   n00080_deref_α
                        .size            n00079_var_ref_bx, .-n00079_var_ref_bx
                        .type            n00080_deref_bx, @function
n00080_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_deref_α:           mov              r11, 165
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
                        cmp              al, 104;                             je    n00075_line_mark_α
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
1:                                                                            jmp   n00081_line_mark_α
                        .size            n00080_deref_bx, .-n00080_deref_bx
                        .type            n00081_line_mark_bx, @function
n00081_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_line_mark_α:       mov              r11, 166
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 96;             jmp   n00082_call_icon_α
                        .size            n00081_line_mark_bx, .-n00081_line_mark_bx
                        .type            n00082_call_icon_bx, @function
n00082_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_call_icon_α:       mov              r11, 167
                        mov              rax, qword ptr [rbp + -336]
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
.Lcall_icon_α_rkfn462:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn462]
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
                        cmp              al, 104;                             je    n00075_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   n00075_line_mark_α
n00082_call_icon_β:       mov              r11, 167;                            jmp   n00075_line_mark_α
                        .size            n00082_call_icon_bx, .-n00082_call_icon_bx
                        .type            n00075_line_mark_bx, @function
n00075_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_line_mark_α:       mov              r11, 168
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97;             jmp   n00083_var_ref_α
                        .size            n00075_line_mark_bx, .-n00075_line_mark_bx
                        .type            n00083_var_ref_bx, @function
n00083_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00083_var_ref_α:         mov              r11, 169
                        mov              rax, 4294967336
                        lea              rdx, [rbp + -176]
                        mov              qword ptr [rbp + -624], rax
                        mov              qword ptr [rbp + -616], rdx;         jmp   n00084_deref_α
                        .size            n00083_var_ref_bx, .-n00083_var_ref_bx
                        .type            n00084_deref_bx, @function
n00084_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00084_deref_α:           mov              r11, 170
                        mov              rdi, qword ptr [rbp + -624]
                        mov              rsi, qword ptr [rbp + -616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00085_line_mark_α
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
1:                                                                            jmp   n00086_line_mark_α
                        .size            n00084_deref_bx, .-n00084_deref_bx
                        .type            n00086_line_mark_bx, @function
n00086_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_line_mark_α:       mov              r11, 171
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97;             jmp   n00087_call_icon_α
                        .size            n00086_line_mark_bx, .-n00086_line_mark_bx
                        .type            n00087_call_icon_bx, @function
n00087_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_call_icon_α:       mov              r11, 172
                        mov              rax, qword ptr [rbp + -608]
                        mov              qword ptr [rbp + -656], rax
                        mov              rax, qword ptr [rbp + -600]
                        mov              qword ptr [rbp + -648], rax
                        .section         .rodata
.Lcall_icon_α_rkfn471:  .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn471]
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
                        cmp              al, 104;                             je    n00085_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   n00088_assign_α
n00087_call_icon_β:       mov              r11, 172;                            jmp   n00085_line_mark_α
                        .size            n00087_call_icon_bx, .-n00087_call_icon_bx
                        .type            n00088_assign_bx, @function
n00088_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_assign_α:          mov              r11, 173
                        mov              rax, qword ptr [rbp + -672]
                        mov              rdx, qword ptr [rbp + -664]
                        mov              qword ptr [rbp + -176], rax
                        mov              qword ptr [rbp + -168], rdx;         jmp   n00085_line_mark_α
                        .size            n00088_assign_bx, .-n00088_assign_bx
                        .type            n00085_line_mark_bx, @function
n00085_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_line_mark_α:       mov              r11, 174
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 98;             jmp   n00089_lit_integer_α
                        .size            n00085_line_mark_bx, .-n00085_line_mark_bx
                        .type            n00089_lit_integer_bx, @function
n00089_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_lit_integer_α:     mov              r11, 175
                        mov              qword ptr [rbp + -704], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_475_0]
                        mov              qword ptr [rbp + -696], rax;         jmp   n00090_assign_α
.Llit_integer_α_475_0:  .quad            1
                        .size            n00089_lit_integer_bx, .-n00089_lit_integer_bx
                        .type            n00090_assign_bx, @function
n00090_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_assign_α:          mov              r11, 176
                        mov              rax, qword ptr [rbp + -704]
                        mov              rdx, qword ptr [rbp + -696]
                        mov              qword ptr [rbp + -144], rax
                        mov              qword ptr [rbp + -136], rdx;         jmp   n00091_line_mark_α
                        .size            n00090_assign_bx, .-n00090_assign_bx
                        .type            n00091_line_mark_bx, @function
n00091_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_line_mark_α:       mov              r11, 177
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 99;             jmp   n00092_var_α
                        .size            n00091_line_mark_bx, .-n00091_line_mark_bx
                        .type            n00092_var_bx, @function
n00092_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_var_α:             mov              r11, 178
                        mov              rax, qword ptr [rbp + -176]
                        mov              qword ptr [rbp + -736], rax
                        mov              rax, qword ptr [rbp + -168]
                        mov              qword ptr [rbp + -728], rax;         jmp   n00093_scan_enter_α
                        .size            n00092_var_bx, .-n00092_var_bx
                        .type            n00093_scan_enter_bx, @function
n00093_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_scan_enter_α:      mov              r11, 179
                        mov              qword ptr [rbp + -1216], r13
                        mov              qword ptr [rbp + -1208], r14
                        mov              qword ptr [rbp + -1200], r15
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
1:                      test             rax, rax;                            je    n00062_line_mark_α
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n00094_lit_charset_α
                        .size            n00093_scan_enter_bx, .-n00093_scan_enter_bx
                        .type            n00094_lit_charset_bx, @function
n00094_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_lit_charset_α:     mov              r11, 180
                        mov              qword ptr [rbp + -1072], 2           # result
                        mov              dword ptr [rbp + -1068], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_483_0]
                        mov              qword ptr [rbp + -1064], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_483_0]
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
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:90
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
1:                                                                            jmp   n00095_line_mark_α
.Llit_charset_α_483_0:  .quad            .Llit_charset_α_483_0_s
.Llit_charset_α_483_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00094_lit_charset_bx, .-n00094_lit_charset_bx
                        .type            n00095_line_mark_bx, @function
n00095_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_line_mark_α:       mov              r11, 181
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00096_scan_upto_α
                        .size            n00095_line_mark_bx, .-n00095_line_mark_bx
                        .type            n00096_scan_upto_bx, @function
n00096_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_scan_upto_α:       mov              r11, 182
                        mov              qword ptr [rbp + -1104], r14
.Lscan_upto_α_487_0:    mov              rax, qword ptr [rbp + -1104]
                        cmp              rax, r15;                            jge   n00097_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .Lscan_upto_α_487_3]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_upto_α_487_1
                        mov              qword ptr [rbp + -1120], 3
                        add              rax, 1
                        mov              qword ptr [rbp + -1112], rax;        jmp   n00098_line_mark_α
.Lscan_upto_α_487_1:    inc              qword ptr [rbp + -1104];             jmp   .Lscan_upto_α_487_0
n00096_scan_upto_β:       mov              r11, 182
                        inc              qword ptr [rbp + -1104];             jmp   .Lscan_upto_α_487_0
.Lscan_upto_β_487_2:    .quad            .Lscan_upto_β_487_2_s
.Lscan_upto_β_487_2_s:  .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.Lscan_upto_α_487_3:    .quad            0
.Lscan_upto_β_487_4:    .quad            576460743847706622
.Lscan_upto_β_487_5:    .quad            0
.Lscan_upto_β_487_6:    .quad            0
                        .size            n00096_scan_upto_bx, .-n00096_scan_upto_bx
                        .type            n00098_line_mark_bx, @function
n00098_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_line_mark_α:       mov              r11, 183
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00099_scan_tab_α
                        .size            n00098_line_mark_bx, .-n00098_line_mark_bx
                        .type            n00099_scan_tab_bx, @function
n00099_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_scan_tab_α:        mov              r11, 184
                        mov              rdi, qword ptr [rbp + -1120]
                        mov              rsi, qword ptr [rbp + -1112]
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
                        test             eax, eax;                            jz    n00096_scan_upto_β
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
1:                      mov              rdi, qword ptr [rbp + -1120]
                        mov              rsi, qword ptr [rbp + -1112]
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
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_491_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_491_0:     cmp              rax, 1;                              jl    n00096_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00096_scan_upto_β
                        mov              qword ptr [rbp + -1152], r14
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
1:                      mov              qword ptr [rbp + -1168], rax
                        mov              qword ptr [rbp + -1160], rdx;        jmp   n00100_line_mark_α
n00099_scan_tab_β:        mov              r11, 184
                        mov              r14, qword ptr [rbp + -1152];        jmp   n00096_scan_upto_β
                        .size            n00099_scan_tab_bx, .-n00099_scan_tab_bx
                        .type            n00100_line_mark_bx, @function
n00100_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00100_line_mark_α:       mov              r11, 185
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 101;            jmp   n00101_lit_charset_α
                        .size            n00100_line_mark_bx, .-n00100_line_mark_bx
                        .type            n00101_lit_charset_bx, @function
n00101_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_lit_charset_α:     mov              r11, 186
                        mov              qword ptr [rbp + -784], 2            # result
                        mov              dword ptr [rbp + -780], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_494_0]
                        mov              qword ptr [rbp + -776], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_494_0]
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
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:90
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
.Llit_charset_α_494_0:  .quad            .Llit_charset_α_494_0_s
.Llit_charset_α_494_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00101_lit_charset_bx, .-n00101_lit_charset_bx
                        .type            n00102_line_mark_bx, @function
n00102_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_line_mark_α:       mov              r11, 187
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 101;            jmp   n00103_scan_many_α
                        .size            n00102_line_mark_bx, .-n00102_line_mark_bx
                        .type            n00103_scan_many_bx, @function
n00103_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_scan_many_α:       mov              r11, 188
                        lea              rdi, [rip + .Lscan_many_α_498_3]
                        mov              eax, r14d
.Lscan_many_α_498_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_498_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_many_α_498_1
                        add              eax, 1;                              jmp   .Lscan_many_α_498_0
.Lscan_many_α_498_1:    cmp              eax, r14d;                           je    n00104_line_mark_α
                        mov              qword ptr [rbp + -816], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + -808], rcx;         jmp   n00105_line_mark_α
n00103_scan_many_β:       mov              r11, 188;                            jmp   n00104_line_mark_α
.Lscan_many_β_498_2:    .quad            .Lscan_many_β_498_2_s
.Lscan_many_β_498_2_s:  .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.Lscan_many_α_498_3:    .quad            0
.Lscan_many_β_498_4:    .quad            576460743847706622
.Lscan_many_β_498_5:    .quad            0
.Lscan_many_β_498_6:    .quad            0
                        .size            n00103_scan_many_bx, .-n00103_scan_many_bx
                        .type            n00105_line_mark_bx, @function
n00105_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00105_line_mark_α:       mov              r11, 189
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 101;            jmp   n00106_scan_tab_α
                        .size            n00105_line_mark_bx, .-n00105_line_mark_bx
                        .type            n00106_scan_tab_bx, @function
n00106_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_scan_tab_α:        mov              r11, 190
                        mov              rdi, qword ptr [rbp + -816]
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
                        test             eax, eax;                            jz    n00104_line_mark_α
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
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_502_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_502_0:     cmp              rax, 1;                              jl    n00104_line_mark_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00104_line_mark_α
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
                        mov              qword ptr [rbp + -856], rdx;         jmp   n00107_assign_α
n00106_scan_tab_β:        mov              r11, 190
                        mov              r14, qword ptr [rbp + -848];         jmp   n00104_line_mark_α
                        .size            n00106_scan_tab_bx, .-n00106_scan_tab_bx
                        .type            n00107_assign_bx, @function
n00107_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_assign_α:          mov              r11, 191
                        mov              rax, qword ptr [rbp + -864]
                        mov              rdx, qword ptr [rbp + -856]
                        mov              qword ptr [rbp + -160], rax
                        mov              qword ptr [rbp + -152], rdx;         jmp   n00104_line_mark_α
                        .size            n00107_assign_bx, .-n00107_assign_bx
                        .type            n00104_line_mark_bx, @function
n00104_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_line_mark_α:       mov              r11, 192
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 102;            jmp   n00108_disjunction_α
                        .size            n00104_line_mark_bx, .-n00104_line_mark_bx
                        .type            n00108_disjunction_bx, @function
n00108_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00108_disjunction_α:     mov              r11, 193
                        mov              qword ptr [rbp + -1024], 0
                        mov              qword ptr [rbp + -1016], 0
                        mov              dword ptr [rbp + -1008], 0;          jmp   n00109_var_α
.Ldisjunction_γ_417_as: mov              r11, 193
                        mov              eax, dword ptr [rbp + -1008]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_507_0
                                                                              jmp   n00110_conjunction_α
.Ldisjunction_α_507_0:                                                        jmp   n00110_conjunction_α
n00108_disjunction_β:     mov              r11, 193
                        mov              eax, dword ptr [rbp + -1008];        jmp   n00094_lit_charset_α
.Ldisjunction_γ_417_af: mov              r11, 193
.Ldisjunction_ω_417_af: mov              r11, 193
                        add              dword ptr [rbp + -1008], 1
                        mov              eax, dword ptr [rbp + -1008];        jmp   n00094_lit_charset_α
                        .size            n00108_disjunction_bx, .-n00108_disjunction_bx
                        .type            n00110_conjunction_bx, @function
n00110_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00110_conjunction_α:     mov              r11, 194
                        mov              rax, qword ptr [rbp + -1024]
                        mov              qword ptr [rbp + -1040], rax
                        mov              rax, qword ptr [rbp + -1016]
                        mov              qword ptr [rbp + -1032], rax;        jmp   n00094_lit_charset_α
n00110_conjunction_β:     mov              r11, 194;                            jmp   n00094_lit_charset_α
                        .size            n00110_conjunction_bx, .-n00110_conjunction_bx
                        .type            n00109_var_bx, @function
n00109_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_var_α:             mov              r11, 195
                        mov              rax, qword ptr [rbp + -160]
                        mov              qword ptr [rbp + -912], rax
                        mov              rax, qword ptr [rbp + -152]
                        mov              qword ptr [rbp + -904], rax;         jmp   n00111_unop_α
n00109_var_β:             mov              r11, 195;                            jmp   .Ldisjunction_ω_417_af
                        .size            n00109_var_bx, .-n00109_var_bx
                        .type            n00111_unop_bx, @function
n00111_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00111_unop_α:            mov              r11, 196
                        mov              rdi, qword ptr [rbp + -160]
                        mov              rsi, qword ptr [rbp + -152]
                        call             qword ptr [rip + rt_size_d@GOTPCREL]
                        mov              qword ptr [rbp + -928], rax
                        mov              qword ptr [rbp + -920], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:107
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
1:                                                                            jmp   n00112_lit_integer_α
                        .size            n00111_unop_bx, .-n00111_unop_bx
                        .type            n00112_lit_integer_bx, @function
n00112_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_lit_integer_α:     mov              r11, 197
                        mov              qword ptr [rbp + -896], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_512_0]
                        mov              qword ptr [rbp + -888], rax;         jmp   n00113_binop_test_α
.Llit_integer_α_512_0:  .quad            3
                        .size            n00112_lit_integer_bx, .-n00112_lit_integer_bx
                        .type            n00113_binop_test_bx, @function
n00113_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00113_binop_test_α:      mov              r11, 198
                        mov              eax, dword ptr [rbp + -928]
                        cmp              al, 112;                             je    .Lbinop_test_α_513_0
                        mov              eax, dword ptr [rbp + -896]
                        cmp              al, 112;                             je    .Lbinop_test_α_513_0
                        mov              eax, dword ptr [rbp + -928]
                        cmp              al, 3;                               jne   .Lbinop_test_α_513_2
                        mov              eax, dword ptr [rbp + -896]
                        cmp              al, 3;                               jne   .Lbinop_test_α_513_2
.Lbinop_test_α_513_1:   mov              rax, qword ptr [rbp + -920]
                        mov              rcx, qword ptr [rbp + -888]
                        cmp              rax, rcx;                            jl    .Ldisjunction_ω_417_af
                        mov              rcx, qword ptr [rbp + -896]
                        mov              qword ptr [rbp + -944], rcx
                        mov              rcx, qword ptr [rbp + -888]
                        mov              qword ptr [rbp + -936], rcx;         jmp   n00114_var_α
.Lbinop_test_α_513_0:   mov              rdi, qword ptr [rbp + -928]
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
                        test             eax, eax;                            je    .Lbinop_test_α_513_2
                        cmp              eax, 1;                              je    .Ldisjunction_ω_417_af
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
1:                                                                            jmp   n00114_var_α
.Lbinop_test_α_513_2:   mov              rdi, qword ptr [rbp + -928]
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
1:                      test             eax, eax;                            jz    .Ldisjunction_ω_417_af
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
1:                                                                            jmp   n00114_var_α
                        .size            n00113_binop_test_bx, .-n00113_binop_test_bx
                        .type            n00114_var_bx, @function
n00114_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00114_var_α:             mov              r11, 199
                        mov              rax, qword ptr [rbp + -160]
                        mov              qword ptr [rbp + -992], rax
                        mov              rax, qword ptr [rbp + -152]
                        mov              qword ptr [rbp + -984], rax;         jmp   n00059_suspend_α
                        .size            n00114_var_bx, .-n00114_var_bx
                        .type            n00059_suspend_bx, @function
n00059_suspend_bx:
#=======================================================================================================================
# suspend
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 102 0
n00059_suspend_α:         mov              r11, 200
                        lea              rax, [rip + n00059_suspend_β]
                        mov              qword ptr [rbp + -192], rax
                        mov              rax, qword ptr [rbp + -992]
                        mov              qword ptr [rbp + -1296], rax
                        mov              rax, qword ptr [rbp + -984]
                        mov              qword ptr [rbp + -1288], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00115_scan_α
n00059_suspend_β:         mov              r11, 200
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
                        pop              rax;                                 jmp   n00115_scan_β
                        .size            n00059_suspend_bx, .-n00059_suspend_bx
                        .type            n00115_scan_bx, @function
n00115_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00115_scan_α:            mov              r11, 201
                        mov              dword ptr [rbp + -960], r14d
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
                        mov              rdi, qword ptr [rbp + -1216]
                        mov              rsi, qword ptr [rbp + -1208]
                        mov              rdx, qword ptr [rbp + -1200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + -1216]
                        mov              r14, qword ptr [rbp + -1208]
                        mov              r15, qword ptr [rbp + -1200];        jmp   item_γ
n00115_scan_β:            mov              r11, 201
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -1208], rax
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00116_goto_β
                                                                              jmp   n00094_lit_charset_α
                        .size            n00115_scan_bx, .-n00115_scan_bx
                        .type            n00116_goto_bx, @function
n00116_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00116_goto_α:            mov              r11, 202;                            jmp   n00094_lit_charset_α
n00116_goto_β:            mov              r11, 202;                            jmp   n00094_lit_charset_α
                        .size            n00116_goto_bx, .-n00116_goto_bx
                        .type            n00097_scan_bx, @function
n00097_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00097_scan_α:            mov              r11, 203
                        mov              rdi, qword ptr [rbp + -1216]
                        mov              rsi, qword ptr [rbp + -1208]
                        mov              rdx, qword ptr [rbp + -1200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + -1216]
                        mov              r14, qword ptr [rbp + -1208]
                        mov              r15, qword ptr [rbp + -1200];        jmp   n00062_line_mark_α
n00097_scan_β:            mov              r11, 203;                            jmp   n00062_line_mark_α
                        .size            n00097_scan_bx, .-n00097_scan_bx
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
                        .quad            5567624072538
                        .quad            42949673104
                        .quad            .Lgcmap_item_s
                        .quad            1168
                        .quad            18
                        .quad            87960930222080
                        .quad            8804682956880
                        .quad            26392574034008
                        .quad            35184372088944
                        .quad            17596481011856
                        .quad            35184372088992
                        .quad            17596481011904
                        .quad            87960930222288
                        .quad            17596481012000
                        .quad            35184372089136
                        .quad            8800387989840
                        .quad            8804682957144
                        .quad            105553116266848
                        .quad            17596481012160
                        .quad            703687441777104
                        .quad            8808977925200
                        .quad            8800387990616
                        .quad            52776558134368
.Lgcmap_item_s:         .string          "item"
#-----------------------------------------------------------------------------------------------------------------------
FN__options:
                        sub              rsp, 3712
                        lea              rax, [rip + .Lgcmap_options]
                        mov              qword ptr [rsp + 3496], rax
                        mov              dword ptr [rsp + 3488], 160
                        mov              dword ptr [rsp + 3492], 3712
                        mov              eax, 0
                        mov              qword ptr [rsp + 3704], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 3488
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
                        mov              rdi, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rdi, qword ptr [rdi + 0]
                        mov              ecx, dword ptr [rdi + 0]
                        cmp              ecx, 65536;                          jae   .Loptions_α_522_245
                        mov              rsi, 40
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm523:        .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm523]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 2
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
.Loptions_α_522_245:
options_α_body:
                        .type            n00117_line_mark_bx, @function
n00117_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_line_mark_α:       mov              r11, 204
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 111
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_678_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00118_line_mark_α
.Lline_mark_α_678_0:    .quad            .Lline_mark_α_678_0_s
.Lline_mark_α_678_0_s:  .string          "concord.icn"
                        .size            n00117_line_mark_bx, .-n00117_line_mark_bx
                        .type            n00118_line_mark_bx, @function
n00118_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_line_mark_α:       mov              r11, 205
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 112;            jmp   n00119_var_ref_α
                        .size            n00118_line_mark_bx, .-n00118_line_mark_bx
                        .type            n00119_var_ref_bx, @function
n00119_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00119_var_ref_α:         mov              r11, 206
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx;         jmp   n00120_nulltest_var_α
                        .size            n00119_var_ref_bx, .-n00119_var_ref_bx
                        .type            n00120_nulltest_var_bx, @function
n00120_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_nulltest_var_α:    mov              r11, 207
                        mov              eax, dword ptr [rbp + 3200]
                        cmp              al, 104;                             je    n00121_line_mark_α
                        mov              rdi, qword ptr [rbp + 3200]
                        mov              rsi, qword ptr [rbp + 3208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00121_line_mark_α
                        cmp              eax, 0;                              jne   n00121_line_mark_α
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3224], rax
                        push             rax                                  # gc_poll bb_unop.cpp:55
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
1:                                                                            jmp   n00122_lit_charset_α
                        .size            n00120_nulltest_var_bx, .-n00120_nulltest_var_bx
                        .type            n00122_lit_charset_bx, @function
n00122_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_lit_charset_α:     mov              r11, 208
                        mov              qword ptr [rbp + 3296], 2            # result
                        mov              dword ptr [rbp + 3300], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_684_0]
                        mov              qword ptr [rbp + 3304], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_684_0]
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
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:90
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
1:                                                                            jmp   n00123_line_mark_α
.Llit_charset_α_684_0:  .quad            .Llit_charset_α_684_0_s
.Llit_charset_α_684_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00122_lit_charset_bx, .-n00122_lit_charset_bx
                        .type            n00123_line_mark_bx, @function
n00123_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00123_line_mark_α:       mov              r11, 209
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 112;            jmp   n00124_call_icon_α
                        .size            n00123_line_mark_bx, .-n00123_line_mark_bx
                        .type            n00124_call_icon_bx, @function
n00124_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_call_icon_α:       mov              r11, 210
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3272], rax
                        .section         .rodata
.Lcall_icon_α_rkfn688:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn688]
                        lea              rsi, [rbp + 3264]
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
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              al, 104;                             je    n00121_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   n00125_assign_var_α
n00124_call_icon_β:       mov              r11, 210;                            jmp   n00121_line_mark_α
                        .size            n00124_call_icon_bx, .-n00124_call_icon_bx
                        .type            n00125_assign_var_bx, @function
n00125_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_assign_var_α:      mov              r11, 211
                        mov              rdi, qword ptr [rbp + 3216]
                        mov              rsi, qword ptr [rbp + 3224]
                        mov              rdx, qword ptr [rbp + 3248]
                        mov              rcx, qword ptr [rbp + 3256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00121_line_mark_α
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
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
1:                                                                            jmp   n00121_line_mark_α
                        .size            n00125_assign_var_bx, .-n00125_assign_var_bx
                        .type            n00121_line_mark_bx, @function
n00121_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_line_mark_α:       mov              r11, 212
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 113;            jmp   n00126_line_mark_α
                        .size            n00121_line_mark_bx, .-n00121_line_mark_bx
                        .type            n00126_line_mark_bx, @function
n00126_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_line_mark_α:       mov              r11, 213
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 113;            jmp   n00127_call_icon_α
                        .size            n00126_line_mark_bx, .-n00126_line_mark_bx
                        .type            n00127_call_icon_bx, @function
n00127_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_call_icon_α:       mov              r11, 214
                        .section         .rodata
.Lcall_icon_α_rkfn695:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn695]
                        lea              rsi, [rbp + 3168]
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
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              al, 104;                             je    n00128_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   n00129_assign_α
n00127_call_icon_β:       mov              r11, 214;                            jmp   n00128_line_mark_α
                        .size            n00127_call_icon_bx, .-n00127_call_icon_bx
                        .type            n00129_assign_bx, @function
n00129_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00129_assign_α:          mov              r11, 215
                        mov              rax, qword ptr [rbp + 3152]
                        mov              rdx, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx;         jmp   n00128_line_mark_α
                        .size            n00129_assign_bx, .-n00129_assign_bx
                        .type            n00128_line_mark_bx, @function
n00128_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00128_line_mark_α:       mov              r11, 216
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 114;            jmp   n00130_make_list_α
                        .size            n00128_line_mark_bx, .-n00128_line_mark_bx
                        .type            n00130_make_list_bx, @function
n00130_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00130_make_list_α:       mov              r11, 217
                        lea              rdi, [rbp + 3136]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        push             rax                                  # gc_poll bb_make_list.cpp:57
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
1:                                                                            jmp   n00131_assign_α
                        .size            n00130_make_list_bx, .-n00130_make_list_bx
                        .type            n00131_assign_bx, @function
n00131_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00131_assign_α:          mov              r11, 218
                        mov              rax, qword ptr [rbp + 3120]
                        mov              rdx, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx;         jmp   n00132_line_mark_α
                        .size            n00131_assign_bx, .-n00131_assign_bx
                        .type            n00132_line_mark_bx, @function
n00132_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00132_line_mark_α:       mov              r11, 219
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00133_var_ref_α
                        .size            n00132_line_mark_bx, .-n00132_line_mark_bx
                        .type            n00133_var_ref_bx, @function
n00133_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_var_ref_α:         mov              r11, 220
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00134_deref_α
                        .size            n00133_var_ref_bx, .-n00133_var_ref_bx
                        .type            n00134_deref_bx, @function
n00134_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00134_deref_α:           mov              r11, 221
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00135_line_mark_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
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
1:                                                                            jmp   n00136_line_mark_α
                        .size            n00134_deref_bx, .-n00134_deref_bx
                        .type            n00136_line_mark_bx, @function
n00136_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00136_line_mark_α:       mov              r11, 222
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00137_call_icon_α
                        .size            n00136_line_mark_bx, .-n00136_line_mark_bx
                        .type            n00137_call_icon_bx, @function
n00137_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_call_icon_α:       mov              r11, 223
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lcall_icon_α_rkfn710:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn710]
                        lea              rsi, [rbp + 320]
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
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    n00135_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
n00137_call_icon_β:       mov              r11, 223;                            jmp   n00135_line_mark_α
                        .size            n00137_call_icon_bx, .-n00137_call_icon_bx
                        .type            n00138_assign_bx, @function
n00138_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_assign_α:          mov              r11, 224
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx;         jmp   n00139_var_α
                        .size            n00138_assign_bx, .-n00138_assign_bx
                        .type            n00139_var_bx, @function
n00139_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00139_var_α:             mov              r11, 225
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3096], rax;         jmp   n00140_scan_enter_α
                        .size            n00139_var_bx, .-n00139_var_bx
                        .type            n00140_scan_enter_bx, @function
n00140_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_scan_enter_α:      mov              r11, 226
                        mov              qword ptr [rbp + 400], r13
                        mov              qword ptr [rbp + 408], r14
                        mov              qword ptr [rbp + 416], r15
                        mov              rdi, qword ptr [rbp + 3088]
                        mov              rsi, qword ptr [rbp + 3096]
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
1:                      test             rax, rax;                            je    n00133_var_ref_α
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n00141_disjunction_α
                        .size            n00140_scan_enter_bx, .-n00140_scan_enter_bx
                        .type            n00141_disjunction_bx, @function
n00141_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00141_disjunction_α:     mov              r11, 227
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              dword ptr [rbp + 480], 0;            jmp   n00142_lit_string_α
.Ldisjunction_γ_547_as: mov              r11, 227
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_717_0
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 472], rax;          jmp   n00143_scan_α
.Ldisjunction_α_717_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_717_1
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 472], rax;          jmp   n00143_scan_α
.Ldisjunction_α_717_1:                                                        jmp   n00143_scan_α
n00141_disjunction_β:     mov              r11, 227
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0;                              je    n00144_disjunction_β
                                                                              jmp   n00145_scan_α
.Ldisjunction_γ_547_af: mov              r11, 227
.Ldisjunction_ω_547_af: mov              r11, 227
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 1;                              je    n00146_var_ref_α
                                                                              jmp   n00145_scan_α
                        .size            n00141_disjunction_bx, .-n00141_disjunction_bx
                        .type            n00143_scan_bx, @function
n00143_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_scan_α:            mov              r11, 228
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 400]
                        mov              r14, qword ptr [rbp + 408]
                        mov              r15, qword ptr [rbp + 416];          jmp   n00133_var_ref_α
n00143_scan_β:            mov              r11, 228
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
                        mov              r14, rax;                            jmp   n00141_disjunction_β
                                                                              jmp   n00133_var_ref_α
                        .size            n00143_scan_bx, .-n00143_scan_bx
                        .type            n00147_conjunction_bx, @function
n00147_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_conjunction_α:     mov              r11, 229;                            jmp   .Ldisjunction_γ_547_as
n00147_conjunction_β:     mov              r11, 229;                            jmp   n00145_scan_α
                        .size            n00147_conjunction_bx, .-n00147_conjunction_bx
                        .type            n00146_var_ref_bx, @function
n00146_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_var_ref_α:         mov              r11, 230
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx;         jmp   n00148_var_ref_α
n00146_var_ref_β:         mov              r11, 230;                            jmp   n00145_scan_α
                        .size            n00146_var_ref_bx, .-n00146_var_ref_bx
                        .type            n00148_var_ref_bx, @function
n00148_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_var_ref_α:         mov              r11, 231
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx;         jmp   n00149_deref_α
                        .size            n00148_var_ref_bx, .-n00148_var_ref_bx
                        .type            n00149_deref_bx, @function
n00149_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00149_deref_α:           mov              r11, 232
                        mov              rdi, qword ptr [rbp + 3024]
                        mov              rsi, qword ptr [rbp + 3032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00145_scan_α
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
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
1:                                                                            jmp   n00150_deref_α
                        .size            n00149_deref_bx, .-n00149_deref_bx
                        .type            n00150_deref_bx, @function
n00150_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00150_deref_α:           mov              r11, 233
                        mov              rdi, qword ptr [rbp + 3040]
                        mov              rsi, qword ptr [rbp + 3048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00145_scan_α
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
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
1:                                                                            jmp   n00151_line_mark_α
                        .size            n00150_deref_bx, .-n00150_deref_bx
                        .type            n00151_line_mark_bx, @function
n00151_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00151_line_mark_α:       mov              r11, 234
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 136;            jmp   n00152_call_icon_α
                        .size            n00151_line_mark_bx, .-n00151_line_mark_bx
                        .type            n00152_call_icon_bx, @function
n00152_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_call_icon_α:       mov              r11, 235
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3000], rax
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 2984], rax
                        .section         .rodata
.Lcall_icon_α_rkfn730:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn730]
                        lea              rsi, [rbp + 2976]
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
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        cmp              al, 104;                             je    n00145_scan_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   .Ldisjunction_γ_547_as
n00152_call_icon_β:       mov              r11, 235;                            jmp   n00145_scan_α
                        .size            n00152_call_icon_bx, .-n00152_call_icon_bx
                        .type            n00142_lit_string_bx, @function
n00142_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_lit_string_α:      mov              r11, 236
                        mov              qword ptr [rbp + 2928], 2            # result
                        mov              dword ptr [rbp + 2932], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_731_0]
                        mov              qword ptr [rbp + 2936], rax;         jmp   n00153_scan_match_α
n00142_lit_string_β:      mov              r11, 236;                            jmp   .Ldisjunction_ω_547_af
.Llit_string_α_731_0:   .quad            .Llit_string_α_731_0_s
.Llit_string_α_731_0_s: .string          "-"
                        .size            n00142_lit_string_bx, .-n00142_lit_string_bx
                        .type            n00153_scan_match_bx, @function
n00153_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00153_scan_match_α:      mov              r11, 237
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_547_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_733_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_547_af
                        mov              qword ptr [rbp + 2896], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2904], rax;         jmp   n00154_scan_tab_α
.Lscan_match_α_733_0:   .quad            .Lscan_match_α_733_0_s
.Lscan_match_α_733_0_s: .string          "-"
                        .size            n00153_scan_match_bx, .-n00153_scan_match_bx
                        .type            n00154_scan_tab_bx, @function
n00154_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_scan_tab_α:        mov              r11, 238
                        mov              rdi, qword ptr [rbp + 2896]
                        mov              rsi, qword ptr [rbp + 2904]
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
                        test             eax, eax;                            jz    .Ldisjunction_ω_547_af
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
1:                      mov              rdi, qword ptr [rbp + 2896]
                        mov              rsi, qword ptr [rbp + 2904]
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
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_735_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_735_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_547_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_547_af
                        mov              qword ptr [rbp + 2880], r14
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
1:                      mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx;         jmp   n00155_lit_integer_α
n00154_scan_tab_β:        mov              r11, 238
                        mov              r14, qword ptr [rbp + 2880];         jmp   .Ldisjunction_ω_547_af
                        .size            n00154_scan_tab_bx, .-n00154_scan_tab_bx
                        .type            n00155_lit_integer_bx, @function
n00155_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_lit_integer_α:     mov              r11, 239
                        mov              qword ptr [rbp + 2848], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_736_0]
                        mov              qword ptr [rbp + 2856], rax;         jmp   n00156_line_mark_α
.Llit_integer_α_736_0:  .quad            0
                        .size            n00155_lit_integer_bx, .-n00155_lit_integer_bx
                        .type            n00156_line_mark_bx, @function
n00156_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_line_mark_α:       mov              r11, 240
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 117;            jmp   n00157_scan_pos_α
                        .size            n00156_line_mark_bx, .-n00156_line_mark_bx
                        .type            n00157_scan_pos_bx, @function
n00157_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00157_scan_pos_α:        mov              r11, 241
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_740_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_740_0:     cmp              rax, 1;                              jl    n00158_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00158_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00158_var_α
                        mov              qword ptr [rbp + 2816], 3
                        mov              qword ptr [rbp + 2824], rax;         jmp   n00154_scan_tab_β
                        .size            n00157_scan_pos_bx, .-n00157_scan_pos_bx
                        .type            n00158_var_bx, @function
n00158_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_var_α:             mov              r11, 242
                        mov              qword ptr [rbp + 2800], 0
                        mov              qword ptr [rbp + 2808], 0;           jmp   n00159_conjunction_α
n00158_var_β:             mov              r11, 242;                            jmp   n00154_scan_tab_β
                        .size            n00158_var_bx, .-n00158_var_bx
                        .type            n00159_conjunction_bx, @function
n00159_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_conjunction_α:     mov              r11, 243
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2792], rax;         jmp   n00160_line_mark_α
n00159_conjunction_β:     mov              r11, 243;                            jmp   .Ldisjunction_ω_547_af
                        .size            n00159_conjunction_bx, .-n00159_conjunction_bx
                        .type            n00160_line_mark_bx, @function
n00160_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00160_line_mark_α:       mov              r11, 244
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00161_disjunction_α
                        .size            n00160_line_mark_bx, .-n00160_line_mark_bx
                        .type            n00161_disjunction_bx, @function
n00161_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_disjunction_α:     mov              r11, 245
                        mov              qword ptr [rbp + 2544], 0
                        mov              qword ptr [rbp + 2552], 0
                        mov              dword ptr [rbp + 2560], 0;           jmp   n00162_lit_string_α
.Ldisjunction_γ_565_as: mov              r11, 245
                        mov              eax, dword ptr [rbp + 2560]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_746_0
                                                                              jmp   n00163_line_mark_α
.Ldisjunction_α_746_0:                                                        jmp   n00163_line_mark_α
n00161_disjunction_β:     mov              r11, 245
                        mov              eax, dword ptr [rbp + 2560];         jmp   n00163_line_mark_α
.Ldisjunction_γ_565_af: mov              r11, 245
.Ldisjunction_ω_565_af: mov              r11, 245
                        add              dword ptr [rbp + 2560], 1
                        mov              eax, dword ptr [rbp + 2560];         jmp   n00163_line_mark_α
                        .size            n00161_disjunction_bx, .-n00161_disjunction_bx
                        .type            n00163_line_mark_bx, @function
n00163_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_line_mark_α:       mov              r11, 246
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 119;            jmp   n00164_lit_integer_α
                        .size            n00163_line_mark_bx, .-n00163_line_mark_bx
                        .type            n00164_lit_integer_bx, @function
n00164_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00164_lit_integer_α:     mov              r11, 247
                        mov              qword ptr [rbp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_749_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n00165_line_mark_α
.Llit_integer_α_749_0:  .quad            1
                        .size            n00164_lit_integer_bx, .-n00164_lit_integer_bx
                        .type            n00165_line_mark_bx, @function
n00165_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_line_mark_α:       mov              r11, 248
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 119;            jmp   n00166_scan_move_α
                        .size            n00165_line_mark_bx, .-n00165_line_mark_bx
                        .type            n00166_scan_move_bx, @function
n00166_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00166_scan_move_α:       mov              r11, 249
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n00145_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00145_scan_α
                        mov              qword ptr [rbp + 544], r14
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
1:                      mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n00167_assign_α
n00166_scan_move_β:       mov              r11, 249
                        mov              r14, qword ptr [rbp + 544];          jmp   n00145_scan_α
                        .size            n00166_scan_move_bx, .-n00166_scan_move_bx
                        .type            n00167_assign_bx, @function
n00167_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00167_assign_α:          mov              r11, 250
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx;         jmp   n00144_disjunction_α
                        .size            n00167_assign_bx, .-n00167_assign_bx
                        .type            n00144_disjunction_bx, @function
n00144_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_disjunction_α:     mov              r11, 251
                        mov              qword ptr [rbp + 592], 0
                        mov              qword ptr [rbp + 600], 0
                        mov              dword ptr [rbp + 608], 0;            jmp   n00168_var_ref_α
.Ldisjunction_γ_571_as: mov              r11, 251
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_756_0
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00164_lit_integer_α
.Ldisjunction_α_756_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_756_1
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00164_lit_integer_α
.Ldisjunction_α_756_1:                                                        jmp   n00164_lit_integer_α
n00144_disjunction_β:     mov              r11, 251
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0;                              je    n00169_disjunction_β
                                                                              jmp   n00164_lit_integer_α
.Ldisjunction_γ_571_af: mov              r11, 251
.Ldisjunction_ω_571_af: mov              r11, 251
                        add              dword ptr [rbp + 608], 1
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 1;                              je    n00170_lit_string_α
                                                                              jmp   n00164_lit_integer_α
                        .size            n00144_disjunction_bx, .-n00144_disjunction_bx
                        .type            n00170_lit_string_bx, @function
n00170_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00170_lit_string_α:      mov              r11, 252
                        mov              qword ptr [rbp + 2464], 2            # result
                        mov              dword ptr [rbp + 2468], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_757_0]
                        mov              qword ptr [rbp + 2472], rax;         jmp   n00171_var_ref_α
n00170_lit_string_β:      mov              r11, 252;                            jmp   n00164_lit_integer_α
.Llit_string_α_757_0:   .quad            .Llit_string_α_757_0_s
.Llit_string_α_757_0_s: .string          "Unrecognized option: -"
                        .size            n00170_lit_string_bx, .-n00170_lit_string_bx
                        .type            n00171_var_ref_bx, @function
n00171_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_var_ref_α:         mov              r11, 253
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx;         jmp   n00172_deref_α
                        .size            n00171_var_ref_bx, .-n00171_var_ref_bx
                        .type            n00172_deref_bx, @function
n00172_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_deref_α:           mov              r11, 254
                        mov              rdi, qword ptr [rbp + 2496]
                        mov              rsi, qword ptr [rbp + 2504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00164_lit_integer_α
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
1:                                                                            jmp   n00173_line_mark_α
                        .size            n00172_deref_bx, .-n00172_deref_bx
                        .type            n00173_line_mark_bx, @function
n00173_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00173_line_mark_α:       mov              r11, 255
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 134;            jmp   n00174_call_icon_α
                        .size            n00173_line_mark_bx, .-n00173_line_mark_bx
                        .type            n00174_call_icon_bx, @function
n00174_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00174_call_icon_α:       mov              r11, 256
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2440], rax
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2424], rax
                        .section         .rodata
.Lcall_icon_α_rkfn764:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn764]
                        lea              rsi, [rbp + 2416]
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
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              al, 104;                             je    n00164_lit_integer_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   .Ldisjunction_γ_571_as
n00174_call_icon_β:       mov              r11, 256;                            jmp   n00164_lit_integer_α
                        .size            n00174_call_icon_bx, .-n00174_call_icon_bx
                        .type            n00168_var_ref_bx, @function
n00168_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00168_var_ref_α:         mov              r11, 257
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx;         jmp   n00175_var_ref_α
n00168_var_ref_β:         mov              r11, 257;                            jmp   .Ldisjunction_ω_571_af
                        .size            n00168_var_ref_bx, .-n00168_var_ref_bx
                        .type            n00175_var_ref_bx, @function
n00175_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_var_ref_α:         mov              r11, 258
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx;         jmp   n00176_deref_α
                        .size            n00175_var_ref_bx, .-n00175_var_ref_bx
                        .type            n00176_deref_bx, @function
n00176_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_deref_α:           mov              r11, 259
                        mov              rdi, qword ptr [rbp + 2320]
                        mov              rsi, qword ptr [rbp + 2328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_571_af
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
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
1:                                                                            jmp   n00177_deref_α
                        .size            n00176_deref_bx, .-n00176_deref_bx
                        .type            n00177_deref_bx, @function
n00177_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00177_deref_α:           mov              r11, 260
                        mov              rdi, qword ptr [rbp + 2336]
                        mov              rsi, qword ptr [rbp + 2344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_571_af
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
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
1:                                                                            jmp   n00178_line_mark_α
                        .size            n00177_deref_bx, .-n00177_deref_bx
                        .type            n00178_line_mark_bx, @function
n00178_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00178_line_mark_α:       mov              r11, 261
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 120;            jmp   n00179_call_builtin_gen_α
                        .size            n00178_line_mark_bx, .-n00178_line_mark_bx
                        .type            n00179_call_builtin_gen_bx, @function
n00179_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_call_builtin_gen_α:
                        mov              r11, 262
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2264], rax
                        mov              qword ptr [rbp + 2288], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_builtin_gen_α_773_60:
                        .section         .rodata
.Lcall_builtin_gen_α_bynamegenfn262: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_gen_α_bynamegenfn262]
                        lea              rsi, [rbp + 2256]
                        mov              edx, 2
                        lea              rcx, [rbp + 2288]
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
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_571_af
                                                                              jmp   n00180_lit_integer_α
n00179_call_builtin_gen_β:
                        mov              r11, 262;                            jmp   .Lcall_builtin_gen_α_773_60
                        .size            n00179_call_builtin_gen_bx, .-n00179_call_builtin_gen_bx
                        .type            n00180_lit_integer_bx, @function
n00180_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_lit_integer_α:     mov              r11, 263
                        mov              qword ptr [rbp + 2384], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_774_0]
                        mov              qword ptr [rbp + 2392], rax;         jmp   n00181_coerce_numeric_α
.Llit_integer_α_774_0:  .quad            1
                        .size            n00180_lit_integer_bx, .-n00180_lit_integer_bx
                        .type            n00181_coerce_numeric_bx, @function
n00181_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00181_coerce_numeric_α:  mov              r11, 264
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_776_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_776_0
                        mov              eax, dword ptr [rbp + 2384]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_776_0
.Lcoerce_numeric_α_776_1:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2232], rax;         jmp   n00182_binop_α
.Lcoerce_numeric_α_776_0:
                        lea              rdi, [rbp + 2240]
                        lea              rsi, [rbp + 2384]
                        lea              rdx, [rbp + 2224]
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
1:                      mov              eax, dword ptr [rbp + 2224]
                        cmp              al, 104;                             je    .Ldisjunction_ω_571_af
                                                                              jmp   n00182_binop_α
                        .size            n00181_coerce_numeric_bx, .-n00181_coerce_numeric_bx
                        .type            n00182_binop_bx, @function
n00182_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_binop_α:           mov              r11, 265
                        mov              eax, dword ptr [rbp + 2224]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_777_2
                        mov              rax, qword ptr [rbp + 2232]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_777_0
                        mov              qword ptr [rbp + 2208], 3
                        mov              qword ptr [rbp + 2216], rax;         jmp   .Lbinop_α_777_7
.Lbinop_α_777_2:        and              edx, 1;                              jz    .Lbinop_α_777_0
                        mov              rsi, qword ptr [rbp + 2232]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_777_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_777_4
.Lbinop_α_777_3:        movq             xmm0, rsi
.Lbinop_α_777_4:        cmp              cl, 5;                               je    .Lbinop_α_777_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_777_6
.Lbinop_α_777_5:        movq             xmm1, rdi
.Lbinop_α_777_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_777_0
                        mov              qword ptr [rbp + 2208], 5
                        mov              qword ptr [rbp + 2216], rax
.Lbinop_α_777_7:                                                              jmp   n00183_assign_α
.Lbinop_α_777_0:        mov              rdi, qword ptr [rbp + 2224]
                        mov              rsi, qword ptr [rbp + 2232]
                        mov              rdx, qword ptr [rbp + 2384]
                        mov              rcx, qword ptr [rbp + 2392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_571_af
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:320
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
1:                                                                            jmp   n00183_assign_α
                        .size            n00182_binop_bx, .-n00182_binop_bx
                        .type            n00183_assign_bx, @function
n00183_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_assign_α:          mov              r11, 266
                        mov              rax, qword ptr [rbp + 2208]
                        mov              rdx, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx;         jmp   n00184_var_ref_α
                        .size            n00183_assign_bx, .-n00183_assign_bx
                        .type            n00184_var_ref_bx, @function
n00184_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00184_var_ref_α:         mov              r11, 267
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00185_var_α
                        .size            n00184_var_ref_bx, .-n00184_var_ref_bx
                        .type            n00185_var_bx, @function
n00185_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_var_α:             mov              r11, 268
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 648], rax;          jmp   n00186_subscript_α
                        .size            n00185_var_bx, .-n00185_var_bx
                        .type            n00186_subscript_bx, @function
n00186_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_subscript_α:       mov              r11, 269
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00164_lit_integer_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
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
1:                                                                            jmp   n00169_disjunction_α
                        .size            n00186_subscript_bx, .-n00186_subscript_bx
                        .type            n00169_disjunction_bx, @function
n00169_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_disjunction_α:     mov              r11, 270
                        mov              qword ptr [rbp + 688], 0
                        mov              qword ptr [rbp + 696], 0
                        mov              dword ptr [rbp + 704], 0;            jmp   n00187_lit_charset_α
.Ldisjunction_γ_590_as: mov              r11, 270
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_785_0
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax;          jmp   n00188_assign_var_α
.Ldisjunction_α_785_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_785_1
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 696], rax;          jmp   n00188_assign_var_α
.Ldisjunction_α_785_1:                                                        jmp   n00188_assign_var_α
n00169_disjunction_β:     mov              r11, 270
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 0;                              je    n00189_disjunction_β
                                                                              jmp   n00164_lit_integer_α
.Ldisjunction_γ_590_af: mov              r11, 270
.Ldisjunction_ω_590_af: mov              r11, 270
                        add              dword ptr [rbp + 704], 1
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 1;                              je    n00190_lit_integer_α
                                                                              jmp   n00164_lit_integer_α
                        .size            n00169_disjunction_bx, .-n00169_disjunction_bx
                        .type            n00188_assign_var_bx, @function
n00188_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_assign_var_α:      mov              r11, 271
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00164_lit_integer_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
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
1:                                                                            jmp   .Ldisjunction_γ_571_as
n00188_assign_var_β:      mov              r11, 271;                            jmp   n00164_lit_integer_α
                        .size            n00188_assign_var_bx, .-n00188_assign_var_bx
                        .type            n00190_lit_integer_bx, @function
n00190_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_lit_integer_α:     mov              r11, 272
                        mov              qword ptr [rbp + 2192], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_787_0]
                        mov              qword ptr [rbp + 2200], rax;         jmp   .Ldisjunction_γ_590_as
n00190_lit_integer_β:     mov              r11, 272;                            jmp   n00164_lit_integer_α
.Llit_integer_α_787_0:  .quad            1
                        .size            n00190_lit_integer_bx, .-n00190_lit_integer_bx
                        .type            n00187_lit_charset_bx, @function
n00187_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00187_lit_charset_α:     mov              r11, 273
                        mov              qword ptr [rbp + 2064], 2            # result
                        mov              dword ptr [rbp + 2068], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_788_0]
                        mov              qword ptr [rbp + 2072], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_788_0]
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
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:90
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
1:                                                                            jmp   n00191_var_ref_α
n00187_lit_charset_β:     mov              r11, 273;                            jmp   .Ldisjunction_ω_590_af
.Llit_charset_α_788_0:  .quad            .Llit_charset_α_788_0_s
.Llit_charset_α_788_0_s:
                        .string          "+.:"
                        .size            n00187_lit_charset_bx, .-n00187_lit_charset_bx
                        .type            n00191_var_ref_bx, @function
n00191_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00191_var_ref_α:         mov              r11, 274
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx;         jmp   n00192_var_α
                        .size            n00191_var_ref_bx, .-n00191_var_ref_bx
                        .type            n00192_var_bx, @function
n00192_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_var_α:             mov              r11, 275
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 2120], rax;         jmp   n00193_subscript_α
                        .size            n00192_var_bx, .-n00192_var_bx
                        .type            n00193_subscript_bx, @function
n00193_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_subscript_α:       mov              r11, 276
                        mov              rdi, qword ptr [rbp + 2096]
                        mov              rsi, qword ptr [rbp + 2104]
                        mov              rdx, qword ptr [rbp + 2112]
                        mov              rcx, qword ptr [rbp + 2120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_590_af
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
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
1:                                                                            jmp   n00194_deref_α
                        .size            n00193_subscript_bx, .-n00193_subscript_bx
                        .type            n00194_deref_bx, @function
n00194_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_deref_α:           mov              r11, 277
                        mov              rdi, qword ptr [rbp + 2128]
                        mov              rsi, qword ptr [rbp + 2136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_590_af
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
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
1:                                                                            jmp   n00195_assign_α
                        .size            n00194_deref_bx, .-n00194_deref_bx
                        .type            n00195_assign_bx, @function
n00195_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00195_assign_α:          mov              r11, 278
                        mov              rax, qword ptr [rbp + 2144]
                        mov              rdx, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx;         jmp   n00196_var_ref_α
                        .size            n00195_assign_bx, .-n00195_assign_bx
                        .type            n00196_var_ref_bx, @function
n00196_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_var_ref_α:         mov              r11, 279
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx;         jmp   n00197_deref_α
                        .size            n00196_var_ref_bx, .-n00196_var_ref_bx
                        .type            n00197_deref_bx, @function
n00197_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_deref_α:           mov              r11, 280
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_590_af
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
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
1:                                                                            jmp   n00198_line_mark_α
                        .size            n00197_deref_bx, .-n00197_deref_bx
                        .type            n00198_line_mark_bx, @function
n00198_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_line_mark_α:       mov              r11, 281
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 122;            jmp   n00199_call_icon_α
                        .size            n00198_line_mark_bx, .-n00198_line_mark_bx
                        .type            n00199_call_icon_bx, @function
n00199_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_call_icon_α:       mov              r11, 282
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2024], rax
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
.Lcall_icon_α_bynamefn282: .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_bynamefn282]
                        lea              rsi, [rbp + 2016]
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
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_590_af
                                                                              jmp   n00200_line_mark_α
n00199_call_icon_β:       mov              r11, 282;                            jmp   .Ldisjunction_ω_590_af
                        .size            n00199_call_icon_bx, .-n00199_call_icon_bx
                        .type            n00200_line_mark_bx, @function
n00200_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00200_line_mark_α:       mov              r11, 283
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00201_disjunction_α
                        .size            n00200_line_mark_bx, .-n00200_line_mark_bx
                        .type            n00201_disjunction_bx, @function
n00201_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_disjunction_α:     mov              r11, 284
                        mov              qword ptr [rbp + 1632], 0
                        mov              qword ptr [rbp + 1640], 0
                        mov              dword ptr [rbp + 1648], 0;           jmp   n00202_lit_string_α
.Ldisjunction_γ_604_as: mov              r11, 284
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_805_0
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1640], rax;         jmp   n00203_assign_α
.Ldisjunction_α_805_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_805_1
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1640], rax;         jmp   n00203_assign_α
.Ldisjunction_α_805_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_805_2
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1640], rax;         jmp   n00203_assign_α
.Ldisjunction_α_805_2:                                                        jmp   n00203_assign_α
n00201_disjunction_β:     mov              r11, 284
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 0;                              je    n00204_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_604_af
                                                                              jmp   .Ldisjunction_ω_604_af
.Ldisjunction_γ_604_af: mov              r11, 284
.Ldisjunction_ω_604_af: mov              r11, 284
                        add              dword ptr [rbp + 1648], 1
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 1;                              je    n00205_var_ref_α
                        cmp              eax, 2;                              je    n00206_lit_string_α
                                                                              jmp   n00207_line_mark_α
                        .size            n00201_disjunction_bx, .-n00201_disjunction_bx
                        .type            n00203_assign_bx, @function
n00203_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_assign_α:          mov              r11, 285
                        mov              rax, qword ptr [rbp + 1632]
                        mov              rdx, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx;         jmp   n00207_line_mark_α
                        .size            n00203_assign_bx, .-n00203_assign_bx
                        .type            n00207_line_mark_bx, @function
n00207_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_line_mark_α:       mov              r11, 286
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 125;            jmp   n00208_var_α
                        .size            n00207_line_mark_bx, .-n00207_line_mark_bx
                        .type            n00208_var_bx, @function
n00208_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_var_α:             mov              r11, 287
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00189_disjunction_α
                        .size            n00208_var_bx, .-n00208_var_bx
                        .type            n00189_disjunction_bx, @function
n00189_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00189_disjunction_α:     mov              r11, 288
                        mov              qword ptr [rbp + 752], 0
                        mov              qword ptr [rbp + 760], 0
                        mov              dword ptr [rbp + 768], 0;            jmp   n00209_lit_string_α
.Ldisjunction_γ_608_as: mov              r11, 288
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_812_0
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 760], rax;          jmp   n00210_conjunction_α
.Ldisjunction_α_812_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_812_1
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 760], rax;          jmp   n00210_conjunction_α
.Ldisjunction_α_812_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_812_2
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 760], rax;          jmp   n00210_conjunction_α
.Ldisjunction_α_812_2:                                                        jmp   n00210_conjunction_α
n00189_disjunction_β:     mov              r11, 288
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 0;                              je    n00164_lit_integer_α
                        cmp              eax, 1;                              je    n00211_disjunction_β
                                                                              jmp   n00212_disjunction_β
.Ldisjunction_γ_608_af: mov              r11, 288
.Ldisjunction_ω_608_af: mov              r11, 288
                        add              dword ptr [rbp + 768], 1
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 1;                              je    n00213_lit_string_α
                        cmp              eax, 2;                              je    n00214_lit_string_α
                                                                              jmp   n00164_lit_integer_α
                        .size            n00189_disjunction_bx, .-n00189_disjunction_bx
                        .type            n00210_conjunction_bx, @function
n00210_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_conjunction_α:     mov              r11, 289
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax;          jmp   .Ldisjunction_γ_590_as
n00210_conjunction_β:     mov              r11, 289;                            jmp   n00164_lit_integer_α
                        .size            n00210_conjunction_bx, .-n00210_conjunction_bx
                        .type            n00214_lit_string_bx, @function
n00214_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_lit_string_α:      mov              r11, 290
                        mov              qword ptr [rbp + 1536], 2            # result
                        mov              dword ptr [rbp + 1540], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_814_0]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n00215_call_builtin_α
n00214_lit_string_β:      mov              r11, 290;                            jmp   .Ldisjunction_ω_608_af
.Llit_string_α_814_0:   .quad            .Llit_string_α_814_0_s
.Llit_string_α_814_0_s: .string          "."
                        .size            n00214_lit_string_bx, .-n00214_lit_string_bx
                        .type            n00215_call_builtin_bx, @function
n00215_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_call_builtin_α:    mov              r11, 291
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 1592], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn816: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn816]
                        lea              rsi, [rbp + 1584]
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
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_608_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   n00212_disjunction_α
n00215_call_builtin_β:    mov              r11, 291;                            jmp   .Ldisjunction_ω_608_af
                        .size            n00215_call_builtin_bx, .-n00215_call_builtin_bx
                        .type            n00212_disjunction_bx, @function
n00212_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_disjunction_α:     mov              r11, 292
                        mov              qword ptr [rbp + 1248], 0
                        mov              qword ptr [rbp + 1256], 0
                        mov              dword ptr [rbp + 1264], 0;           jmp   n00216_var_ref_α
.Ldisjunction_γ_612_as: mov              r11, 292
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_818_0
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax;         jmp   .Ldisjunction_γ_608_as
.Ldisjunction_α_818_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_818_1
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1256], rax;         jmp   .Ldisjunction_γ_608_as
.Ldisjunction_α_818_1:                                                        jmp   .Ldisjunction_γ_608_as
n00212_disjunction_β:     mov              r11, 292
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_612_af
                                                                              jmp   .Ldisjunction_ω_612_af
.Ldisjunction_γ_612_af: mov              r11, 292
.Ldisjunction_ω_612_af: mov              r11, 292
                        add              dword ptr [rbp + 1264], 1
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 1;                              je    n00217_lit_string_α
                                                                              jmp   n00164_lit_integer_α
                        .size            n00212_disjunction_bx, .-n00212_disjunction_bx
                        .type            n00217_lit_string_bx, @function
n00217_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_lit_string_α:      mov              r11, 293
                        mov              qword ptr [rbp + 1440], 2            # result
                        mov              dword ptr [rbp + 1444], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_819_0]
                        mov              qword ptr [rbp + 1448], rax;         jmp   n00218_var_ref_α
n00217_lit_string_β:      mov              r11, 293;                            jmp   .Ldisjunction_ω_612_af
.Llit_string_α_819_0:   .quad            .Llit_string_α_819_0_s
.Llit_string_α_819_0_s: .string          "-"
                        .size            n00217_lit_string_bx, .-n00217_lit_string_bx
                        .type            n00218_var_ref_bx, @function
n00218_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_var_ref_α:         mov              r11, 294
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n00219_lit_string_α
                        .size            n00218_var_ref_bx, .-n00218_var_ref_bx
                        .type            n00219_lit_string_bx, @function
n00219_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00219_lit_string_α:      mov              r11, 295
                        mov              qword ptr [rbp + 1488], 2            # result
                        mov              dword ptr [rbp + 1492], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_822_0]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n00220_deref_α
.Llit_string_α_822_0:   .quad            .Llit_string_α_822_0_s
.Llit_string_α_822_0_s: .string          " needs numeric parameter"
                        .size            n00219_lit_string_bx, .-n00219_lit_string_bx
                        .type            n00220_deref_bx, @function
n00220_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_deref_α:           mov              r11, 296
                        mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_612_af
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
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
1:                                                                            jmp   n00221_line_mark_α
                        .size            n00220_deref_bx, .-n00220_deref_bx
                        .type            n00221_line_mark_bx, @function
n00221_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_line_mark_α:       mov              r11, 297
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 130;            jmp   n00222_call_icon_α
                        .size            n00221_line_mark_bx, .-n00221_line_mark_bx
                        .type            n00222_call_icon_bx, @function
n00222_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_call_icon_α:       mov              r11, 298
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1384], rax
                        .section         .rodata
.Lcall_icon_α_rkfn827:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn827]
                        lea              rsi, [rbp + 1376]
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
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_612_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   .Ldisjunction_γ_612_as
n00222_call_icon_β:       mov              r11, 298;                            jmp   .Ldisjunction_ω_612_af
                        .size            n00222_call_icon_bx, .-n00222_call_icon_bx
                        .type            n00216_var_ref_bx, @function
n00216_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_var_ref_α:         mov              r11, 299
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n00223_deref_α
n00216_var_ref_β:         mov              r11, 299;                            jmp   .Ldisjunction_ω_612_af
                        .size            n00216_var_ref_bx, .-n00216_var_ref_bx
                        .type            n00223_deref_bx, @function
n00223_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_deref_α:           mov              r11, 300
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_612_af
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
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
1:                                                                            jmp   n00224_line_mark_α
                        .size            n00223_deref_bx, .-n00223_deref_bx
                        .type            n00224_line_mark_bx, @function
n00224_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_line_mark_α:       mov              r11, 301
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00225_call_icon_α
                        .size            n00224_line_mark_bx, .-n00224_line_mark_bx
                        .type            n00225_call_icon_bx, @function
n00225_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_call_icon_α:       mov              r11, 302
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lcall_icon_α_rkfn834:  .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn834]
                        lea              rsi, [rbp + 1296]
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
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_612_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   .Ldisjunction_γ_612_as
n00225_call_icon_β:       mov              r11, 302;                            jmp   .Ldisjunction_ω_612_af
                        .size            n00225_call_icon_bx, .-n00225_call_icon_bx
                        .type            n00213_lit_string_bx, @function
n00213_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_lit_string_α:      mov              r11, 303
                        mov              qword ptr [rbp + 1168], 2            # result
                        mov              dword ptr [rbp + 1172], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_835_0]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n00226_call_builtin_α
n00213_lit_string_β:      mov              r11, 303;                            jmp   .Ldisjunction_ω_608_af
.Llit_string_α_835_0:   .quad            .Llit_string_α_835_0_s
.Llit_string_α_835_0_s: .string          "+"
                        .size            n00213_lit_string_bx, .-n00213_lit_string_bx
                        .type            n00226_call_builtin_bx, @function
n00226_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_call_builtin_α:    mov              r11, 304
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn837: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn837]
                        lea              rsi, [rbp + 1216]
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
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_608_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   n00211_disjunction_α
n00226_call_builtin_β:    mov              r11, 304;                            jmp   .Ldisjunction_ω_608_af
                        .size            n00226_call_builtin_bx, .-n00226_call_builtin_bx
                        .type            n00211_disjunction_bx, @function
n00211_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_disjunction_α:     mov              r11, 305
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              dword ptr [rbp + 896], 0;            jmp   n00227_var_ref_α
.Ldisjunction_γ_625_as: mov              r11, 305
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_839_0
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax;          jmp   .Ldisjunction_γ_608_as
.Ldisjunction_α_839_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_839_1
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 888], rax;          jmp   .Ldisjunction_γ_608_as
.Ldisjunction_α_839_1:                                                        jmp   .Ldisjunction_γ_608_as
n00211_disjunction_β:     mov              r11, 305
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_625_af
                                                                              jmp   .Ldisjunction_ω_625_af
.Ldisjunction_γ_625_af: mov              r11, 305
.Ldisjunction_ω_625_af: mov              r11, 305
                        add              dword ptr [rbp + 896], 1
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 1;                              je    n00228_lit_string_α
                                                                              jmp   n00164_lit_integer_α
                        .size            n00211_disjunction_bx, .-n00211_disjunction_bx
                        .type            n00228_lit_string_bx, @function
n00228_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00228_lit_string_α:      mov              r11, 306
                        mov              qword ptr [rbp + 1072], 2            # result
                        mov              dword ptr [rbp + 1076], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_840_0]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n00229_var_ref_α
n00228_lit_string_β:      mov              r11, 306;                            jmp   .Ldisjunction_ω_625_af
.Llit_string_α_840_0:   .quad            .Llit_string_α_840_0_s
.Llit_string_α_840_0_s: .string          "-"
                        .size            n00228_lit_string_bx, .-n00228_lit_string_bx
                        .type            n00229_var_ref_bx, @function
n00229_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_var_ref_α:         mov              r11, 307
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n00230_lit_string_α
                        .size            n00229_var_ref_bx, .-n00229_var_ref_bx
                        .type            n00230_lit_string_bx, @function
n00230_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_lit_string_α:      mov              r11, 308
                        mov              qword ptr [rbp + 1120], 2            # result
                        mov              dword ptr [rbp + 1124], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_843_0]
                        mov              qword ptr [rbp + 1128], rax;         jmp   n00231_deref_α
.Llit_string_α_843_0:   .quad            .Llit_string_α_843_0_s
.Llit_string_α_843_0_s: .string          " needs numeric parameter"
                        .size            n00230_lit_string_bx, .-n00230_lit_string_bx
                        .type            n00231_deref_bx, @function
n00231_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00231_deref_α:           mov              r11, 309
                        mov              rdi, qword ptr [rbp + 1104]
                        mov              rsi, qword ptr [rbp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_625_af
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
1:                                                                            jmp   n00232_line_mark_α
                        .size            n00231_deref_bx, .-n00231_deref_bx
                        .type            n00232_line_mark_bx, @function
n00232_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_line_mark_α:       mov              r11, 310
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 128;            jmp   n00233_call_icon_α
                        .size            n00232_line_mark_bx, .-n00232_line_mark_bx
                        .type            n00233_call_icon_bx, @function
n00233_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_call_icon_α:       mov              r11, 311
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lcall_icon_α_rkfn848:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn848]
                        lea              rsi, [rbp + 1008]
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
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_625_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   .Ldisjunction_γ_625_as
n00233_call_icon_β:       mov              r11, 311;                            jmp   .Ldisjunction_ω_625_af
                        .size            n00233_call_icon_bx, .-n00233_call_icon_bx
                        .type            n00227_var_ref_bx, @function
n00227_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_var_ref_α:         mov              r11, 312
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n00234_deref_α
n00227_var_ref_β:         mov              r11, 312;                            jmp   .Ldisjunction_ω_625_af
                        .size            n00227_var_ref_bx, .-n00227_var_ref_bx
                        .type            n00234_deref_bx, @function
n00234_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00234_deref_α:           mov              r11, 313
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_625_af
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
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
n00235_line_mark_α:       mov              r11, 314
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 127;            jmp   n00236_call_icon_α
                        .size            n00235_line_mark_bx, .-n00235_line_mark_bx
                        .type            n00236_call_icon_bx, @function
n00236_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_call_icon_α:       mov              r11, 315
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lcall_icon_α_rkfn855:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn855]
                        lea              rsi, [rbp + 928]
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
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_625_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   .Ldisjunction_γ_625_as
n00236_call_icon_β:       mov              r11, 315;                            jmp   .Ldisjunction_ω_625_af
                        .size            n00236_call_icon_bx, .-n00236_call_icon_bx
                        .type            n00209_lit_string_bx, @function
n00209_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_lit_string_α:      mov              r11, 316
                        mov              qword ptr [rbp + 800], 2             # result
                        mov              dword ptr [rbp + 804], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_856_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00237_call_builtin_α
n00209_lit_string_β:      mov              r11, 316;                            jmp   .Ldisjunction_ω_608_af
.Llit_string_α_856_0:   .quad            .Llit_string_α_856_0_s
.Llit_string_α_856_0_s: .string          ":"
                        .size            n00209_lit_string_bx, .-n00209_lit_string_bx
                        .type            n00237_call_builtin_bx, @function
n00237_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00237_call_builtin_α:    mov              r11, 317
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn858: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn858]
                        lea              rsi, [rbp + 848]
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
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_608_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   n00238_var_α
n00237_call_builtin_β:    mov              r11, 317;                            jmp   .Ldisjunction_ω_608_af
                        .size            n00237_call_builtin_bx, .-n00237_call_builtin_bx
                        .type            n00238_var_bx, @function
n00238_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_var_α:             mov              r11, 318
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 792], rax;          jmp   .Ldisjunction_γ_608_as
n00238_var_β:             mov              r11, 318;                            jmp   n00164_lit_integer_α
                        .size            n00238_var_bx, .-n00238_var_bx
                        .type            n00206_lit_string_bx, @function
n00206_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00206_lit_string_α:      mov              r11, 319
                        mov              qword ptr [rbp + 1920], 2            # result
                        mov              dword ptr [rbp + 1924], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_861_0]
                        mov              qword ptr [rbp + 1928], rax;         jmp   n00239_var_ref_α
n00206_lit_string_β:      mov              r11, 319;                            jmp   .Ldisjunction_ω_604_af
.Llit_string_α_861_0:   .quad            .Llit_string_α_861_0_s
.Llit_string_α_861_0_s: .string          "No parameter following -"
                        .size            n00206_lit_string_bx, .-n00206_lit_string_bx
                        .type            n00239_var_ref_bx, @function
n00239_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_var_ref_α:         mov              r11, 320
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx;         jmp   n00240_deref_α
                        .size            n00239_var_ref_bx, .-n00239_var_ref_bx
                        .type            n00240_deref_bx, @function
n00240_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00240_deref_α:           mov              r11, 321
                        mov              rdi, qword ptr [rbp + 1952]
                        mov              rsi, qword ptr [rbp + 1960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_604_af
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
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
1:                                                                            jmp   n00241_line_mark_α
                        .size            n00240_deref_bx, .-n00240_deref_bx
                        .type            n00241_line_mark_bx, @function
n00241_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_line_mark_α:       mov              r11, 322
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 124;            jmp   n00242_call_icon_α
                        .size            n00241_line_mark_bx, .-n00241_line_mark_bx
                        .type            n00242_call_icon_bx, @function
n00242_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_call_icon_α:       mov              r11, 323
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1880], rax
                        .section         .rodata
.Lcall_icon_α_rkfn868:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn868]
                        lea              rsi, [rbp + 1872]
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
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_604_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   .Ldisjunction_γ_604_as
n00242_call_icon_β:       mov              r11, 323;                            jmp   .Ldisjunction_ω_604_af
                        .size            n00242_call_icon_bx, .-n00242_call_icon_bx
                        .type            n00205_var_ref_bx, @function
n00205_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_var_ref_α:         mov              r11, 324
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx;         jmp   n00243_deref_α
n00205_var_ref_β:         mov              r11, 324;                            jmp   .Ldisjunction_ω_604_af
                        .size            n00205_var_ref_bx, .-n00205_var_ref_bx
                        .type            n00243_deref_bx, @function
n00243_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_deref_α:           mov              r11, 325
                        mov              rdi, qword ptr [rbp + 1824]
                        mov              rsi, qword ptr [rbp + 1832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_604_af
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
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
1:                                                                            jmp   n00244_line_mark_α
                        .size            n00243_deref_bx, .-n00243_deref_bx
                        .type            n00244_line_mark_bx, @function
n00244_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00244_line_mark_α:       mov              r11, 326
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00245_call_icon_α
                        .size            n00244_line_mark_bx, .-n00244_line_mark_bx
                        .type            n00245_call_icon_bx, @function
n00245_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_call_icon_α:       mov              r11, 327
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1800], rax
                        .section         .rodata
.Lcall_icon_α_rkfn875:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn875]
                        lea              rsi, [rbp + 1792]
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
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_604_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   .Ldisjunction_γ_604_as
n00245_call_icon_β:       mov              r11, 327;                            jmp   .Ldisjunction_ω_604_af
                        .size            n00245_call_icon_bx, .-n00245_call_icon_bx
                        .type            n00202_lit_string_bx, @function
n00202_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_lit_string_α:      mov              r11, 328
                        mov              qword ptr [rbp + 1680], 2            # result
                        mov              dword ptr [rbp + 1684], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_876_0]
                        mov              qword ptr [rbp + 1688], rax;         jmp   n00246_lit_integer_α
n00202_lit_string_β:      mov              r11, 328;                            jmp   .Ldisjunction_ω_604_af
.Llit_string_α_876_0:   .quad            .Llit_string_α_876_0_s
.Llit_string_α_876_0_s: .string          ""
                        .size            n00202_lit_string_bx, .-n00202_lit_string_bx
                        .type            n00246_lit_integer_bx, @function
n00246_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_lit_integer_α:     mov              r11, 329
                        mov              qword ptr [rbp + 1760], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_877_0]
                        mov              qword ptr [rbp + 1768], rax;         jmp   n00247_line_mark_α
.Llit_integer_α_877_0:  .quad            0
                        .size            n00246_lit_integer_bx, .-n00246_lit_integer_bx
                        .type            n00247_line_mark_bx, @function
n00247_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_line_mark_α:       mov              r11, 330
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00204_scan_tab_α
                        .size            n00247_line_mark_bx, .-n00247_line_mark_bx
                        .type            n00204_scan_tab_bx, @function
n00204_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_scan_tab_α:        mov              r11, 331
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_881_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_881_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_604_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_604_af
                        mov              qword ptr [rbp + 1728], r14
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
1:                      mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx;         jmp   n00248_binop_test_α
n00204_scan_tab_β:        mov              r11, 331
                        mov              r14, qword ptr [rbp + 1728];         jmp   .Ldisjunction_ω_604_af
                        .size            n00204_scan_tab_bx, .-n00204_scan_tab_bx
                        .type            n00248_binop_test_bx, @function
n00248_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_binop_test_α:      mov              r11, 332
                        mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        mov              rdx, qword ptr [rbp + 1712]
                        mov              rcx, qword ptr [rbp + 1720]
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
1:                      test             eax, eax;                            jz    n00204_scan_tab_β
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
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
1:                                                                            jmp   .Ldisjunction_γ_604_as
n00248_binop_test_β:      mov              r11, 332;                            jmp   n00204_scan_tab_β
                        .size            n00248_binop_test_bx, .-n00248_binop_test_bx
                        .type            n00145_scan_bx, @function
n00145_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00145_scan_α:            mov              r11, 333
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 400]
                        mov              r14, qword ptr [rbp + 408]
                        mov              r15, qword ptr [rbp + 416];          jmp   n00133_var_ref_α
n00145_scan_β:            mov              r11, 333;                            jmp   n00133_var_ref_α
                        .size            n00145_scan_bx, .-n00145_scan_bx
                        .type            n00162_lit_string_bx, @function
n00162_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00162_lit_string_α:      mov              r11, 334
                        mov              qword ptr [rbp + 2736], 2            # result
                        mov              dword ptr [rbp + 2740], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_885_0]
                        mov              qword ptr [rbp + 2744], rax;         jmp   n00249_scan_match_α
n00162_lit_string_β:      mov              r11, 334;                            jmp   .Ldisjunction_ω_565_af
.Llit_string_α_885_0:   .quad            .Llit_string_α_885_0_s
.Llit_string_α_885_0_s: .string          "-"
                        .size            n00162_lit_string_bx, .-n00162_lit_string_bx
                        .type            n00249_scan_match_bx, @function
n00249_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00249_scan_match_α:      mov              r11, 335
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_565_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_887_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_565_af
                        mov              qword ptr [rbp + 2704], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2712], rax;         jmp   n00250_scan_tab_α
.Lscan_match_α_887_0:   .quad            .Lscan_match_α_887_0_s
.Lscan_match_α_887_0_s: .string          "-"
                        .size            n00249_scan_match_bx, .-n00249_scan_match_bx
                        .type            n00250_scan_tab_bx, @function
n00250_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_scan_tab_α:        mov              r11, 336
                        mov              rdi, qword ptr [rbp + 2704]
                        mov              rsi, qword ptr [rbp + 2712]
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
                        test             eax, eax;                            jz    .Ldisjunction_ω_565_af
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
1:                      mov              rdi, qword ptr [rbp + 2704]
                        mov              rsi, qword ptr [rbp + 2712]
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
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_889_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_889_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_565_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_565_af
                        mov              qword ptr [rbp + 2688], r14
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
1:                      mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx;         jmp   n00251_lit_integer_α
n00250_scan_tab_β:        mov              r11, 336
                        mov              r14, qword ptr [rbp + 2688];         jmp   .Ldisjunction_ω_565_af
                        .size            n00250_scan_tab_bx, .-n00250_scan_tab_bx
                        .type            n00251_lit_integer_bx, @function
n00251_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_lit_integer_α:     mov              r11, 337
                        mov              qword ptr [rbp + 2656], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_890_0]
                        mov              qword ptr [rbp + 2664], rax;         jmp   n00252_line_mark_α
.Llit_integer_α_890_0:  .quad            0
                        .size            n00251_lit_integer_bx, .-n00251_lit_integer_bx
                        .type            n00252_line_mark_bx, @function
n00252_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_line_mark_α:       mov              r11, 338
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00253_scan_pos_α
                        .size            n00252_line_mark_bx, .-n00252_line_mark_bx
                        .type            n00253_scan_pos_bx, @function
n00253_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_scan_pos_α:        mov              r11, 339
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_894_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_894_0:     cmp              rax, 1;                              jl    n00250_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00250_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00250_scan_tab_β
                        mov              qword ptr [rbp + 2624], 3
                        mov              qword ptr [rbp + 2632], rax;         jmp   n00254_conjunction_α
                        .size            n00253_scan_pos_bx, .-n00253_scan_pos_bx
                        .type            n00254_conjunction_bx, @function
n00254_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_conjunction_α:     mov              r11, 340
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2616], rax;         jmp   n00255_scan_α
n00254_conjunction_β:     mov              r11, 340;                            jmp   .Ldisjunction_ω_565_af
                        .size            n00254_conjunction_bx, .-n00254_conjunction_bx
                        .type            n00255_scan_bx, @function
n00255_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00255_scan_α:            mov              r11, 341
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 400]
                        mov              r14, qword ptr [rbp + 408]
                        mov              r15, qword ptr [rbp + 416];          jmp   n00256_var_α
n00255_scan_β:            mov              r11, 341;                            jmp   n00256_var_α
                        .size            n00255_scan_bx, .-n00255_scan_bx
                        .type            n00256_var_bx, @function
n00256_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_var_α:             mov              r11, 342
                        mov              qword ptr [rbp + 2576], 0
                        mov              qword ptr [rbp + 2584], 0;           jmp   n00257_assign_α
n00256_var_β:             mov              r11, 342;                            jmp   n00258_var_α
                        .size            n00256_var_bx, .-n00256_var_bx
                        .type            n00257_assign_bx, @function
n00257_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00257_assign_α:          mov              r11, 343
                        mov              rax, qword ptr [rbp + 2576]
                        mov              rdx, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx;         jmp   n00258_var_α
                        .size            n00257_assign_bx, .-n00257_assign_bx
                        .type            n00258_var_bx, @function
n00258_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_var_α:             mov              r11, 344
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 280], rax;          jmp   n00135_line_mark_α
                        .size            n00258_var_bx, .-n00258_var_bx
                        .type            n00135_line_mark_bx, @function
n00135_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_line_mark_α:       mov              r11, 345
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 138;            jmp   n00259_var_ref_α
                        .size            n00135_line_mark_bx, .-n00135_line_mark_bx
                        .type            n00259_var_ref_bx, @function
n00259_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_var_ref_α:         mov              r11, 346
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n00260_var_ref_α
                        .size            n00259_var_ref_bx, .-n00259_var_ref_bx
                        .type            n00260_var_ref_bx, @function
n00260_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_var_ref_α:         mov              r11, 347
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00261_deref_α
                        .size            n00260_var_ref_bx, .-n00260_var_ref_bx
                        .type            n00261_deref_bx, @function
n00261_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00261_deref_α:           mov              r11, 348
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
                        cmp              al, 104;                             je    n00262_line_mark_α
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
1:                                                                            jmp   n00263_line_mark_α
                        .size            n00261_deref_bx, .-n00261_deref_bx
                        .type            n00263_line_mark_bx, @function
n00263_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_line_mark_α:       mov              r11, 349
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 138;            jmp   n00264_call_icon_α
                        .size            n00263_line_mark_bx, .-n00263_line_mark_bx
                        .type            n00264_call_icon_bx, @function
n00264_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_call_icon_α:       mov              r11, 350
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn912:  .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn912]
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
                        cmp              al, 104;                             je    n00262_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   n00265_deref_α
n00264_call_icon_β:       mov              r11, 350;                            jmp   n00262_line_mark_α
                        .size            n00264_call_icon_bx, .-n00264_call_icon_bx
                        .type            n00265_deref_bx, @function
n00265_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00265_deref_α:           mov              r11, 351
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00262_line_mark_α
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
1:                                                                            jmp   n00266_line_mark_α
                        .size            n00265_deref_bx, .-n00265_deref_bx
                        .type            n00266_line_mark_bx, @function
n00266_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_line_mark_α:       mov              r11, 352
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 138;            jmp   n00267_call_icon_α
                        .size            n00266_line_mark_bx, .-n00266_line_mark_bx
                        .type            n00267_call_icon_bx, @function
n00267_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_call_icon_α:       mov              r11, 353
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lcall_icon_α_rkfn917:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn917]
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
                        cmp              al, 104;                             je    n00262_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   n00259_var_ref_α
n00267_call_icon_β:       mov              r11, 353;                            jmp   n00262_line_mark_α
                        .size            n00267_call_icon_bx, .-n00267_call_icon_bx
                        .type            n00262_line_mark_bx, @function
n00262_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_line_mark_α:       mov              r11, 354
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 139;            jmp   n00268_var_α
                        .size            n00262_line_mark_bx, .-n00262_line_mark_bx
                        .type            n00268_var_bx, @function
n00268_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00268_var_α:             mov              r11, 355
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 56], rax;           jmp   n00269_return_α
                        .size            n00268_var_bx, .-n00268_var_bx
                        .type            n00269_return_bx, @function
n00269_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_return_α:          mov              r11, 356
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   options_γ
                        .size            n00269_return_bx, .-n00269_return_bx
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
                        lea              rsp, [rbp + 3712]
                        mov              rbp, qword ptr [rbp + 3704];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 3712]
                        mov              rbp, qword ptr [rbp + 3704];         jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Loptions_α_923_3]
                        push             rcx
                        lea              rcx, [rip + .Loptions_α_923_2]
                        push             rcx;                                 jmp   FN__options
.Loptions_α_923_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Loptions_α_923_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_options:
                        .quad            15944265059674
                        .quad            34359738576
                        .quad            .Lgcmap_options_s
                        .quad            3488
                        .quad            34
                        .quad            439804651110400
                        .quad            8804682957200
                        .quad            26392574034328
                        .quad            52776558133680
                        .quad            17596481012192
                        .quad            52776558133744
                        .quad            17596481012256
                        .quad            52776558133808
                        .quad            17596481012320
                        .quad            87960930222704
                        .quad            17596481012416
                        .quad            52776558133968
                        .quad            17596481012480
                        .quad            123145302311696
                        .quad            17596481012608
                        .quad            387028092978064
                        .quad            17596481012976
                        .quad            404620279022848
                        .quad            17596481013360
                        .quad            70368744179328
                        .quad            17596481013440
                        .quad            598134325511888
                        .quad            17596481014000
                        .quad            281474976712960
                        .quad            17596481014272
                        .quad            123145302313488
                        .quad            17596481014400
                        .quad            17592186047120
                        .quad            17596481014432
                        .quad            158329674402480
                        .quad            17596481014592
                        .quad            17592186047312
                        .quad            17596481014624
                        .quad            615726511557488
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
                        sub              rsp, 1488
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 1352], rax
                        mov              dword ptr [rsp + 1344], 160
                        mov              dword ptr [rsp + 1348], 1488
                        mov              eax, 0
                        mov              qword ptr [rsp + 1480], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 1344
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 4
                        call             rt_icn_zframe_args_install@PLT
                        mov              rdi, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rdi, qword ptr [rdi + 0]
                        mov              ecx, dword ptr [rdi + 0]
                        cmp              ecx, 65536;                          jae   .Lmain_α_923_245
                        mov              rsi, 40
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm924:        .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm924]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 1
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
.Lmain_α_923_245:
main_α_body:
                        .type            n00270_line_mark_bx, @function
n00270_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_line_mark_α:       mov              r11, 357
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_997_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00271_line_mark_α
.Lline_mark_α_997_0:    .quad            .Lline_mark_α_997_0_s
.Lline_mark_α_997_0_s:  .string          "concord.icn"
                        .size            n00270_line_mark_bx, .-n00270_line_mark_bx
                        .type            n00271_line_mark_bx, @function
n00271_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_line_mark_α:       mov              r11, 358
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 43;             jmp   n00272_var_ref_α
                        .size            n00271_line_mark_bx, .-n00271_line_mark_bx
                        .type            n00272_var_ref_bx, @function
n00272_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_var_ref_α:         mov              r11, 359
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx;         jmp   n00273_lit_string_α
                        .size            n00272_var_ref_bx, .-n00272_var_ref_bx
                        .type            n00273_lit_string_bx, @function
n00273_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_lit_string_α:      mov              r11, 360
                        mov              qword ptr [rbp + 1216], 2            # result
                        mov              dword ptr [rbp + 1220], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1002_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n00274_deref_α
.Llit_string_α_1002_0:  .quad            .Llit_string_α_1002_0_s
.Llit_string_α_1002_0_s:
                        .string          "l+w+"
                        .size            n00273_lit_string_bx, .-n00273_lit_string_bx
                        .type            n00274_deref_bx, @function
n00274_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00274_deref_α:           mov              r11, 361
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00275_line_mark_α
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
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
1:                                                                            jmp   n00276_line_mark_α
                        .size            n00274_deref_bx, .-n00274_deref_bx
                        .type            n00276_line_mark_bx, @function
n00276_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_line_mark_α:       mov              r11, 362
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 43;             jmp   n00277_call_proc_staged_α
                        .size            n00276_line_mark_bx, .-n00276_line_mark_bx
                        .type            n00277_call_proc_staged_bx, @function
n00277_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_call_proc_staged_α:
                        mov              r11, 363
                        lea              rsi, [rbp + 1248]
                        lea              rdx, [rbp + 1216]
                        call             options_dcα;                         jmp   .Lcall_proc_staged_α_1007_2
.Lcall_proc_staged_α_1007_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1007_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
.Lcall_proc_staged_α_1007_29:
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              al, 104;                             je    n00275_line_mark_α
                                                                              jmp   n00278_deref_α
n00277_call_proc_staged_β:
                        mov              r11, 363;                            jmp   n00275_line_mark_α
.Lcall_proc_staged_β_1007_0:
                        .quad            .Lcall_proc_staged_β_1007_0_s
.Lcall_proc_staged_β_1007_0_s:
                        .string          "options"
                        .size            n00277_call_proc_staged_bx, .-n00277_call_proc_staged_bx
                        .type            n00278_deref_bx, @function
n00278_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_deref_α:           mov              r11, 364
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00275_line_mark_α
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
1:                                                                            jmp   n00279_assign_α
                        .size            n00278_deref_bx, .-n00278_deref_bx
                        .type            n00279_assign_bx, @function
n00279_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00279_assign_α:          mov              r11, 365
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n00275_line_mark_α
                        .size            n00279_assign_bx, .-n00279_assign_bx
                        .type            n00275_line_mark_bx, @function
n00275_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_line_mark_α:       mov              r11, 366
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 44;             jmp   n00280_disjunction_α
                        .size            n00275_line_mark_bx, .-n00275_line_mark_bx
                        .type            n00280_disjunction_bx, @function
n00280_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00280_disjunction_α:     mov              r11, 367
                        mov              qword ptr [rbp + 992], 0
                        mov              qword ptr [rbp + 1000], 0
                        mov              dword ptr [rbp + 1008], 0;           jmp   n00281_var_ref_α
.Ldisjunction_γ_935_as: mov              r11, 367
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1013_0
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n00282_assign_α
.Ldisjunction_α_1013_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1013_1
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n00282_assign_α
.Ldisjunction_α_1013_1:                                                       jmp   n00282_assign_α
n00280_disjunction_β:     mov              r11, 367
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_935_af
                                                                              jmp   .Ldisjunction_ω_935_af
.Ldisjunction_γ_935_af: mov              r11, 367
.Ldisjunction_ω_935_af: mov              r11, 367
                        add              dword ptr [rbp + 1008], 1
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 1;                              je    n00283_lit_integer_α
                                                                              jmp   n00284_line_mark_α
                        .size            n00280_disjunction_bx, .-n00280_disjunction_bx
                        .type            n00282_assign_bx, @function
n00282_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_assign_α:          mov              r11, 368
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        mov              qword ptr [r9 + 16], rax             # colmax
                        mov              qword ptr [r9 + 24], rdx;            jmp   n00284_line_mark_α
                        .size            n00282_assign_bx, .-n00282_assign_bx
                        .type            n00284_line_mark_bx, @function
n00284_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_line_mark_α:       mov              r11, 369
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 45;             jmp   n00285_disjunction_α
                        .size            n00284_line_mark_bx, .-n00284_line_mark_bx
                        .type            n00285_disjunction_bx, @function
n00285_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_disjunction_α:     mov              r11, 370
                        mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 840], 0
                        mov              dword ptr [rbp + 848], 0;            jmp   n00286_var_ref_α
.Ldisjunction_γ_938_as: mov              r11, 370
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1018_0
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00287_assign_α
.Ldisjunction_α_1018_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1018_1
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00287_assign_α
.Ldisjunction_α_1018_1:                                                       jmp   n00287_assign_α
n00285_disjunction_β:     mov              r11, 370
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_938_af
                                                                              jmp   .Ldisjunction_ω_938_af
.Ldisjunction_γ_938_af: mov              r11, 370
.Ldisjunction_ω_938_af: mov              r11, 370
                        add              dword ptr [rbp + 848], 1
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 1;                              je    n00288_lit_integer_α
                                                                              jmp   n00289_line_mark_α
                        .size            n00285_disjunction_bx, .-n00285_disjunction_bx
                        .type            n00287_assign_bx, @function
n00287_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_assign_α:          mov              r11, 371
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [r9 + 32], rax             # namewidth
                        mov              qword ptr [r9 + 40], rdx;            jmp   n00289_line_mark_α
                        .size            n00287_assign_bx, .-n00287_assign_bx
                        .type            n00289_line_mark_bx, @function
n00289_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_line_mark_α:       mov              r11, 372
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 46;             jmp   n00290_lit_string_α
                        .size            n00289_line_mark_bx, .-n00289_line_mark_bx
                        .type            n00290_lit_string_bx, @function
n00290_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00290_lit_string_α:      mov              r11, 373
                        mov              qword ptr [rbp + 784], 2             # result
                        mov              dword ptr [rbp + 788], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_1022_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00291_line_mark_α
.Llit_string_α_1022_0:  .quad            .Llit_string_α_1022_0_s
.Llit_string_α_1022_0_s:
                        .string          ""
                        .size            n00290_lit_string_bx, .-n00290_lit_string_bx
                        .type            n00291_line_mark_bx, @function
n00291_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00291_line_mark_α:       mov              r11, 374
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 46;             jmp   n00292_call_icon_α
                        .size            n00291_line_mark_bx, .-n00291_line_mark_bx
                        .type            n00292_call_icon_bx, @function
n00292_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00292_call_icon_α:       mov              r11, 375
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1026: .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1026]
                        lea              rsi, [rbp + 752]
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
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    n00293_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   n00294_assign_α
n00292_call_icon_β:       mov              r11, 375;                            jmp   n00293_line_mark_α
                        .size            n00292_call_icon_bx, .-n00292_call_icon_bx
                        .type            n00294_assign_bx, @function
n00294_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_assign_α:          mov              r11, 376
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [r9 + 0], rax              # uses
                        mov              qword ptr [r9 + 8], rdx;             jmp   n00293_line_mark_α
                        .size            n00294_assign_bx, .-n00294_assign_bx
                        .type            n00293_line_mark_bx, @function
n00293_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_line_mark_α:       mov              r11, 377
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 47;             jmp   n00295_lit_integer_α
                        .size            n00293_line_mark_bx, .-n00293_line_mark_bx
                        .type            n00295_lit_integer_bx, @function
n00295_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_lit_integer_α:     mov              r11, 378
                        mov              qword ptr [rbp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1030_0]
                        mov              qword ptr [rbp + 712], rax;          jmp   n00296_assign_α
.Llit_integer_α_1030_0: .quad            0
                        .size            n00295_lit_integer_bx, .-n00295_lit_integer_bx
                        .type            n00296_assign_bx, @function
n00296_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_assign_α:          mov              r11, 379
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [r9 + 48], rax             # lineno
                        mov              qword ptr [r9 + 56], rdx;            jmp   n00297_line_mark_α
                        .size            n00296_assign_bx, .-n00296_assign_bx
                        .type            n00297_line_mark_bx, @function
n00297_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00297_line_mark_α:       mov              r11, 380
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 48;             jmp   n00298_line_mark_α
                        .size            n00297_line_mark_bx, .-n00297_line_mark_bx
                        .type            n00298_line_mark_bx, @function
n00298_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_line_mark_α:       mov              r11, 381
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 48;             jmp   n00299_proc_gen_α
                        .size            n00298_line_mark_bx, .-n00298_line_mark_bx
                        .type            n00299_proc_gen_bx, @function
n00299_proc_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_proc_gen_α:        mov              r11, 382
                        mov              qword ptr [rbp + 608], 0
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
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:530
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
                        lea              rcx, [rip + .Lproc_gen_α_1037_7]     # CEO-483 (hq_U): NO PAD IN THE GENERATOR REGIME. The pad above is caller-side transient bookkeeping that had drifted into the callee ENTRY FRAME as a sixth word, and hq_U FINDING-2026-09-09 measured that NOTHING READS IT -- an injected 0x5EEDFACE store into [entry rsp+32] left parse byte-identical while the same store into [entry rsp+0] SIGSEGVd, so the experiment had a positive control and the slot is padding. The comment that used to sit here named a `selfrec depth` reader at [entry rsp+32]; `selfrec` occurred exactly once in the whole tree -- in that sentence. The 8 bytes are NOT deleted, they MOVE ACROSS THE CALL into the callee`s own carve (emit.cpp: carve gains 8, ANCHOR lea rsp+48 -> rsp+40), so the callee body still lands 0 mod 16. Dropping the pad WITHOUT that move was measured on 2026-09-10 and SIGSEGVs patchu -- the crash is parity, never a lost datum. Entry frame in the generator regime is now FIVE words: [rsp+0]=gamma [rsp+8]=omega [rsp+16]=REGION [rsp+24]=L7 [rsp+32]=N-2 ABI word, ANCHOR=[rsp+40]. rt_genp_spine_enter_n2 (rt.c) is the hand-written twin of this block and was shrunk by the same word in the same landing.
                        push             rcx
                        test             rax, rax;                            je    .Lproc_gen_α_1037_1
                        sub              rsp, 8
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lproc_gen_α_1037_4]
                        push             rcx
                        lea              rcx, [rip + .Lproc_gen_α_1037_3]
                        push             rcx
                        lea              rdx, [rip + .Lproc_gen_α_1037_4];    jmp   rax
.Lproc_gen_α_1037_3:    cmp              al, 104;                             je    .Lproc_gen_α_1037_8
                        mov              rdi, qword ptr [rdx + -1296]
                        mov              rsi, qword ptr [rdx + -1288]
                        mov              qword ptr [rbp + 616], rdx;          jmp   .Lproc_gen_α_1037_9
.Lproc_gen_α_1037_8:    mov              edi, 104
                        mov              esi, 0
                        mov              qword ptr [rbp + 616], rsp
.Lproc_gen_α_1037_9:    mov              rax, qword ptr [rbp + 608]
                        test             rax, rax;                            jne   .Lproc_gen_α_1037_5
                        mov              qword ptr [rbp + 608], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lproc_gen_α_1037_2
.Lproc_gen_α_1037_5:    call             qword ptr [rip + rt_gen_spine_pass_γ@GOTPCREL]
                                                                              jmp   .Lproc_gen_α_1037_2
.Lproc_gen_α_1037_4:    add              rsp, 16
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 608]
                        test             rax, rax;                            jne   .Lproc_gen_α_1037_6
                        mov              qword ptr [rbp + 608], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lproc_gen_α_1037_2
.Lproc_gen_α_1037_6:    call             qword ptr [rip + rt_gen_spine_pass_ω@GOTPCREL]
                                                                              jmp   .Lproc_gen_α_1037_2
.Lproc_gen_α_1037_1:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lproc_gen_α_1037_2:    mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lproc_gen_α_1037_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
.Lproc_gen_α_1037_29:   mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    n00300_line_mark_α
                                                                              jmp   n00301_var_ref_α
n00299_proc_gen_β:        mov              r11, 382
                        call             qword ptr [rip + rt_gen_spine_resume_enter@GOTPCREL]
                        mov              rax, qword ptr [rbp + 616]
                        mov              rsp, qword ptr [rax + 40];           jmp   qword ptr [rax + 32]
.Lproc_gen_α_1037_7:    add              rsp, 8
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    n00300_line_mark_α
                                                                              jmp   n00301_var_ref_α
.Lproc_gen_β_1037_0:    .quad            .Lproc_gen_β_1037_0_s
.Lproc_gen_β_1037_0_s:  .string          "item"
                        .size            n00299_proc_gen_bx, .-n00299_proc_gen_bx
                        .type            n00301_var_ref_bx, @function
n00301_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00301_var_ref_α:         mov              r11, 383
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # lineno
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n00302_deref_α
                        .size            n00301_var_ref_bx, .-n00301_var_ref_bx
                        .type            n00302_deref_bx, @function
n00302_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_deref_α:           mov              r11, 384
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00299_proc_gen_β
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
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
1:                                                                            jmp   n00303_deref_α
                        .size            n00302_deref_bx, .-n00302_deref_bx
                        .type            n00303_deref_bx, @function
n00303_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_deref_α:           mov              r11, 385
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00299_proc_gen_β
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
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
1:                                                                            jmp   n00304_line_mark_α
                        .size            n00303_deref_bx, .-n00303_deref_bx
                        .type            n00304_line_mark_bx, @function
n00304_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00304_line_mark_α:       mov              r11, 386
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 48;             jmp   n00305_call_proc_staged_α
                        .size            n00304_line_mark_bx, .-n00304_line_mark_bx
                        .type            n00305_call_proc_staged_bx, @function
n00305_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00305_call_proc_staged_α:
                        mov              r11, 387
                        lea              rsi, [rbp + 656]
                        lea              rdx, [rbp + 672]
                        call             tabulate_dcα;                        jmp   .Lcall_proc_staged_α_1045_2
.Lcall_proc_staged_α_1045_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1045_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
.Lcall_proc_staged_α_1045_29:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              al, 104;                             je    n00299_proc_gen_β
                                                                              jmp   n00306_deref_α
n00305_call_proc_staged_β:
                        mov              r11, 387;                            jmp   n00299_proc_gen_β
.Lcall_proc_staged_β_1045_0:
                        .quad            .Lcall_proc_staged_β_1045_0_s
.Lcall_proc_staged_β_1045_0_s:
                        .string          "tabulate"
                        .size            n00305_call_proc_staged_bx, .-n00305_call_proc_staged_bx
                        .type            n00306_deref_bx, @function
n00306_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00306_deref_α:           mov              r11, 388
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00299_proc_gen_β
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
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
1:                                                                            jmp   n00299_proc_gen_β
                        .size            n00306_deref_bx, .-n00306_deref_bx
                        .type            n00300_line_mark_bx, @function
n00300_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00300_line_mark_α:       mov              r11, 389
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 49;             jmp   n00307_var_ref_α
                        .size            n00300_line_mark_bx, .-n00300_line_mark_bx
                        .type            n00307_var_ref_bx, @function
n00307_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00307_var_ref_α:         mov              r11, 390
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n00308_lit_integer_α
                        .size            n00307_var_ref_bx, .-n00307_var_ref_bx
                        .type            n00308_lit_integer_bx, @function
n00308_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00308_lit_integer_α:     mov              r11, 391
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1051_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n00309_deref_α
.Llit_integer_α_1051_0: .quad            3
                        .size            n00308_lit_integer_bx, .-n00308_lit_integer_bx
                        .type            n00309_deref_bx, @function
n00309_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00309_deref_α:           mov              r11, 392
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00310_line_mark_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
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
1:                                                                            jmp   n00311_line_mark_α
                        .size            n00309_deref_bx, .-n00309_deref_bx
                        .type            n00311_line_mark_bx, @function
n00311_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_line_mark_α:       mov              r11, 393
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 49;             jmp   n00312_call_icon_α
                        .size            n00311_line_mark_bx, .-n00311_line_mark_bx
                        .type            n00312_call_icon_bx, @function
n00312_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_call_icon_α:       mov              r11, 394
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1056: .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1056]
                        lea              rsi, [rbp + 432]
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
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    n00310_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   n00313_assign_α
n00312_call_icon_β:       mov              r11, 394;                            jmp   n00310_line_mark_α
                        .size            n00312_call_icon_bx, .-n00312_call_icon_bx
                        .type            n00313_assign_bx, @function
n00313_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00313_assign_α:          mov              r11, 395
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx;         jmp   n00310_line_mark_α
                        .size            n00313_assign_bx, .-n00313_assign_bx
                        .type            n00310_line_mark_bx, @function
n00310_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00310_line_mark_α:       mov              r11, 396
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 50;             jmp   n00314_var_ref_α
                        .size            n00310_line_mark_bx, .-n00310_line_mark_bx
                        .type            n00314_var_ref_bx, @function
n00314_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00314_var_ref_α:         mov              r11, 397
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00315_deref_α
                        .size            n00314_var_ref_bx, .-n00314_var_ref_bx
                        .type            n00315_deref_bx, @function
n00315_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00315_deref_α:           mov              r11, 398
                        mov              rdi, qword ptr [rbp + 96]
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
1:                                                                            jmp   n00316_line_mark_α
                        .size            n00315_deref_bx, .-n00315_deref_bx
                        .type            n00316_line_mark_bx, @function
n00316_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00316_line_mark_α:       mov              r11, 399
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 50;             jmp   n00317_call_icon_α
                        .size            n00316_line_mark_bx, .-n00316_line_mark_bx
                        .type            n00317_call_icon_bx, @function
n00317_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00317_call_icon_α:       mov              r11, 400
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1066: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1066]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   n00318_assign_α
n00317_call_icon_β:       mov              r11, 400;                            jmp   main_ω
                        .size            n00317_call_icon_bx, .-n00317_call_icon_bx
                        .type            n00318_assign_bx, @function
n00318_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00318_assign_α:          mov              r11, 401
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx;         jmp   n00319_var_ref_α
                        .size            n00318_assign_bx, .-n00318_assign_bx
                        .type            n00319_var_ref_bx, @function
n00319_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00319_var_ref_α:         mov              r11, 402
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00320_var_ref_α
                        .size            n00319_var_ref_bx, .-n00319_var_ref_bx
                        .type            n00320_var_ref_bx, @function
n00320_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00320_var_ref_α:         mov              r11, 403
                        mov              rax, 4294967336
                        mov              rdx, 1879052320                      # namewidth
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n00321_deref_α
                        .size            n00320_var_ref_bx, .-n00320_var_ref_bx
                        .type            n00321_deref_bx, @function
n00321_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00321_deref_α:           mov              r11, 404
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
                        cmp              al, 104;                             je    n00314_var_ref_α
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
1:                                                                            jmp   n00322_deref_α
                        .size            n00321_deref_bx, .-n00321_deref_bx
                        .type            n00322_deref_bx, @function
n00322_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00322_deref_α:           mov              r11, 405
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00314_var_ref_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
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
1:                                                                            jmp   n00323_line_mark_α
                        .size            n00322_deref_bx, .-n00322_deref_bx
                        .type            n00323_line_mark_bx, @function
n00323_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00323_line_mark_α:       mov              r11, 406
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51;             jmp   n00324_call_icon_α
                        .size            n00323_line_mark_bx, .-n00323_line_mark_bx
                        .type            n00324_call_icon_bx, @function
n00324_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_call_icon_α:       mov              r11, 407
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1077: .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1077]
                        lea              rsi, [rbp + 208]
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
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              al, 104;                             je    n00314_var_ref_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   n00325_var_ref_α
n00324_call_icon_β:       mov              r11, 407;                            jmp   n00314_var_ref_α
                        .size            n00324_call_icon_bx, .-n00324_call_icon_bx
                        .type            n00325_var_ref_bx, @function
n00325_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00325_var_ref_α:         mov              r11, 408
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n00326_deref_α
                        .size            n00325_var_ref_bx, .-n00325_var_ref_bx
                        .type            n00326_deref_bx, @function
n00326_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00326_deref_α:           mov              r11, 409
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
                        cmp              al, 104;                             je    n00314_var_ref_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
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
1:                                                                            jmp   n00327_line_mark_α
                        .size            n00326_deref_bx, .-n00326_deref_bx
                        .type            n00327_line_mark_bx, @function
n00327_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00327_line_mark_α:       mov              r11, 410
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51;             jmp   n00328_call_icon_α
                        .size            n00327_line_mark_bx, .-n00327_line_mark_bx
                        .type            n00328_call_icon_bx, @function
n00328_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00328_call_icon_α:       mov              r11, 411
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1084: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1084]
                        lea              rsi, [rbp + 336]
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
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n00314_var_ref_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:271
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
1:                                                                            jmp   n00329_binop_α
n00328_call_icon_β:       mov              r11, 411;                            jmp   n00314_var_ref_α
                        .size            n00328_call_icon_bx, .-n00328_call_icon_bx
                        .type            n00329_binop_bx, @function
n00329_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00329_binop_α:           mov              r11, 412
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
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
1:                                                                            jmp   n00330_line_mark_α
                        .size            n00329_binop_bx, .-n00329_binop_bx
                        .type            n00330_line_mark_bx, @function
n00330_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00330_line_mark_α:       mov              r11, 413
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51;             jmp   n00331_call_proc_staged_α
                        .size            n00330_line_mark_bx, .-n00330_line_mark_bx
                        .type            n00331_call_proc_staged_bx, @function
n00331_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00331_call_proc_staged_α:
                        mov              r11, 414
                        lea              rsi, [rbp + 176]
                        call             format_dcα;                          jmp   .Lcall_proc_staged_α_1089_2
.Lcall_proc_staged_α_1089_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1089_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
.Lcall_proc_staged_α_1089_29:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    n00314_var_ref_α
                                                                              jmp   n00332_deref_α
n00331_call_proc_staged_β:
                        mov              r11, 414;                            jmp   n00314_var_ref_α
.Lcall_proc_staged_β_1089_0:
                        .quad            .Lcall_proc_staged_β_1089_0_s
.Lcall_proc_staged_β_1089_0_s:
                        .string          "format"
                        .size            n00331_call_proc_staged_bx, .-n00331_call_proc_staged_bx
                        .type            n00332_deref_bx, @function
n00332_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00332_deref_α:           mov              r11, 415
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00314_var_ref_α
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
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
1:                                                                            jmp   n00314_var_ref_α
                        .size            n00332_deref_bx, .-n00332_deref_bx
                        .type            n00288_lit_integer_bx, @function
n00288_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00288_lit_integer_α:     mov              r11, 416
                        mov              qword ptr [rbp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1091_0]
                        mov              qword ptr [rbp + 968], rax;          jmp   .Ldisjunction_γ_938_as
n00288_lit_integer_β:     mov              r11, 416;                            jmp   .Ldisjunction_ω_938_af
.Llit_integer_α_1091_0: .quad            15
                        .size            n00288_lit_integer_bx, .-n00288_lit_integer_bx
                        .type            n00286_var_ref_bx, @function
n00286_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00286_var_ref_α:         mov              r11, 417
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n00333_lit_string_α
n00286_var_ref_β:         mov              r11, 417;                            jmp   .Ldisjunction_ω_938_af
                        .size            n00286_var_ref_bx, .-n00286_var_ref_bx
                        .type            n00333_lit_string_bx, @function
n00333_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00333_lit_string_α:      mov              r11, 418
                        mov              qword ptr [rbp + 896], 2             # result
                        mov              dword ptr [rbp + 900], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1094_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00334_subscript_α
.Llit_string_α_1094_0:  .quad            .Llit_string_α_1094_0_s
.Llit_string_α_1094_0_s:
                        .string          "w"
                        .size            n00333_lit_string_bx, .-n00333_lit_string_bx
                        .type            n00334_subscript_bx, @function
n00334_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00334_subscript_α:       mov              r11, 419
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_938_af
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
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
1:                                                                            jmp   n00335_deref_α
                        .size            n00334_subscript_bx, .-n00334_subscript_bx
                        .type            n00335_deref_bx, @function
n00335_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00335_deref_α:           mov              r11, 420
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_938_af
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
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
1:                                                                            jmp   n00336_unop_test_α
                        .size            n00335_deref_bx, .-n00335_deref_bx
                        .type            n00336_unop_test_bx, @function
n00336_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00336_unop_test_α:       mov              r11, 421
                        mov              eax, dword ptr [rbp + 944]
                        cmp              al, 104;                             je    .Ldisjunction_ω_938_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_938_af
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 872], rax;          jmp   .Ldisjunction_γ_938_as
n00336_unop_test_β:       mov              r11, 421;                            jmp   .Ldisjunction_ω_938_af
                        .size            n00336_unop_test_bx, .-n00336_unop_test_bx
                        .type            n00283_lit_integer_bx, @function
n00283_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00283_lit_integer_α:     mov              r11, 422
                        mov              qword ptr [rbp + 1120], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1098_0]
                        mov              qword ptr [rbp + 1128], rax;         jmp   .Ldisjunction_γ_935_as
n00283_lit_integer_β:     mov              r11, 422;                            jmp   .Ldisjunction_ω_935_af
.Llit_integer_α_1098_0: .quad            72
                        .size            n00283_lit_integer_bx, .-n00283_lit_integer_bx
                        .type            n00281_var_ref_bx, @function
n00281_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_var_ref_α:         mov              r11, 423
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n00337_lit_string_α
n00281_var_ref_β:         mov              r11, 423;                            jmp   .Ldisjunction_ω_935_af
                        .size            n00281_var_ref_bx, .-n00281_var_ref_bx
                        .type            n00337_lit_string_bx, @function
n00337_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00337_lit_string_α:      mov              r11, 424
                        mov              qword ptr [rbp + 1056], 2            # result
                        mov              dword ptr [rbp + 1060], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1101_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n00338_subscript_α
.Llit_string_α_1101_0:  .quad            .Llit_string_α_1101_0_s
.Llit_string_α_1101_0_s:
                        .string          "l"
                        .size            n00337_lit_string_bx, .-n00337_lit_string_bx
                        .type            n00338_subscript_bx, @function
n00338_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00338_subscript_α:       mov              r11, 425
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_935_af
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
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
1:                                                                            jmp   n00339_deref_α
                        .size            n00338_subscript_bx, .-n00338_subscript_bx
                        .type            n00339_deref_bx, @function
n00339_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00339_deref_α:           mov              r11, 426
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_935_af
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
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
1:                                                                            jmp   n00340_unop_test_α
                        .size            n00339_deref_bx, .-n00339_deref_bx
                        .type            n00340_unop_test_bx, @function
n00340_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00340_unop_test_α:       mov              r11, 427
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              al, 104;                             je    .Ldisjunction_ω_935_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_935_af
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1032], rax;         jmp   .Ldisjunction_γ_935_as
n00340_unop_test_β:       mov              r11, 427;                            jmp   .Ldisjunction_ω_935_af
                        .size            n00340_unop_test_bx, .-n00340_unop_test_bx
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
                        .quad            6392257793370
                        .quad            38654705792
                        .quad            .Lgcmap_main_s
                        .quad            1344
                        .quad            8
                        .quad            668503069687808
                        .quad            8800387990112
                        .quad            8808977924712
                        .quad            246290604622448
                        .quad            17596481012560
                        .quad            158329674400608
                        .quad            17596481012720
                        .quad            351843720889344
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
.Lstartup_ipp00341_0:    .string          "args"
                        .align           8
.Lstartup_ipnames9000:
                        .quad            .Lstartup_ipp00341_0
                        .quad            0
.Lstartup_iln00341_0:    .string          "opts"
.Lstartup_iln00341_1:    .string          "uselist"
.Lstartup_iln00341_2:    .string          "name"
.Lstartup_iln00341_3:    .string          "line"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00341_0
                        .quad            .Lstartup_iln00341_1
                        .quad            .Lstartup_iln00341_2
                        .quad            .Lstartup_iln00341_3
                        .quad            0
                        .align           4
.Lstartup_iloffs9000:
                        .long            1328
                        .long            1312
                        .long            1296
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
                        .long            1744
                        .long            1760
                        .long            1728
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
                        .long            1776
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
                        .long            1056
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__format
                        .quad            format_dcα
                        .quad            0
                        .quad            .Lstartup_ipnames1
                        .long            1
                        .long            0
                        .long            1072
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
                        .long            1152
                        .long            1136
                        .long            1120
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
                        .long            1168
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
                        mov              esi, 1296
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
                        .long            3408
                        .long            3472
                        .long            3424
                        .long            3360
                        .long            3376
                        .long            3440
                        .long            3456
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
                        .long            3488
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
