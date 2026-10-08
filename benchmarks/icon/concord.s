                        .intel_syntax    noprefix
                        .text
                        .file            1 "concord.icn"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__tabulate:
                        sub              rsp, 2016
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 2008
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_tabulate]
                        mov              qword ptr [rsp + 1864], rax
                        mov              dword ptr [rsp + 1856], 160
                        mov              dword ptr [rsp + 1860], 2016
                        mov              eax, 0
                        mov              qword ptr [rsp + 2008], rbp
                        mov              rbp, rsp
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
tabulate_α_body:
                        .type            n0_line_mark_bx, @function
n0_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .rodata
.Lstnof1:               .string          "concord.icn"
                        .popsection
.Lline_mark_α_93_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_93_stno
                        .long            0
                        .long            59
                        .quad            .Lstnof1
                        .popsection
n0_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 59
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_94_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n1_line_mark_α
.Lline_mark_α_94_0:     .quad            .Lline_mark_α_94_0_s
.Lline_mark_α_94_0_s:   .string          "concord.icn"
                        .size            n0_line_mark_bx, .-n0_line_mark_bx
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_95_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_95_stno
                        .long            0
                        .long            60
                        .quad            .Lstnof1
                        .popsection
n1_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 60;             jmp   n2_var_ref_α
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_var_ref_bx, @function
n2_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rbp + 2032]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx;         jmp   n3_deref_α
                        .size            n2_var_ref_bx, .-n2_var_ref_bx
                        .type            n3_deref_bx, @function
n3_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_deref_α:             mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_tabulate_1:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n7_line_mark_α
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_0:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n4_line_mark_α
                        .size            n3_deref_bx, .-n3_deref_bx
                        .type            n4_line_mark_bx, @function
n4_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_100_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_100_stno
                        .long            0
                        .long            60
                        .quad            .Lstnof1
                        .popsection
n4_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 60;             jmp   n5_call_icon_α
                        .size            n4_line_mark_bx, .-n4_line_mark_bx
                        .type            n5_call_icon_bx, @function
n5_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_icon_α:         mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1720], rax
                        .section         .rodata
.Lcall_icon_α_rkfn103:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn103]
                        lea              rsi, [rbp + 1712]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_tabulate_2:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_3:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n7_line_mark_α
                                                                              jmp   n6_assign_α
n5_call_icon_β:                                                               jmp   n7_line_mark_α
                        .size            n5_call_icon_bx, .-n5_call_icon_bx
                        .type            n6_assign_bx, @function
n6_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rax, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n7_line_mark_α
                        .size            n6_assign_bx, .-n6_assign_bx
                        .type            n7_line_mark_bx, @function
n7_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_105_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_105_stno
                        .long            0
                        .long            61
                        .quad            .Lstnof1
                        .popsection
n7_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 61;             jmp   n8_lit_string_α
                        .size            n7_line_mark_bx, .-n7_line_mark_bx
                        .type            n8_lit_string_bx, @function
n8_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_107_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n9_assign_α
.Llit_string_α_107_0:   .quad            .Llit_string_α_107_0_s
.Llit_string_α_107_0_s: .string          ""
                        .size            n8_lit_string_bx, .-n8_lit_string_bx
                        .type            n9_assign_bx, @function
n9_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              rax, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx;         jmp   n10_line_mark_α
                        .size            n9_assign_bx, .-n9_assign_bx
                        .type            n10_line_mark_bx, @function
n10_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_109_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_109_stno
                        .long            0
                        .long            62
                        .quad            .Lstnof1
                        .popsection
n10_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 62;             jmp   n11_var_ref_α
                        .size            n10_line_mark_bx, .-n10_line_mark_bx
                        .type            n11_var_ref_bx, @function
n11_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx;         jmp   n12_var_α
                        .size            n11_var_ref_bx, .-n11_var_ref_bx
                        .type            n12_var_bx, @function
n12_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1592], rax;         jmp   n13_subscript_α
                        .size            n12_var_bx, .-n12_var_bx
                        .type            n13_subscript_bx, @function
n13_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_subscript_α:        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1584]
                        mov              rcx, qword ptr [rbp + 1592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_tabulate_5:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    tabulate_ω
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_4:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n14_deref_α
                        .size            n13_subscript_bx, .-n13_subscript_bx
                        .type            n14_deref_bx, @function
n14_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_deref_α:            mov              rdi, qword ptr [rbp + 1600]
                        mov              rsi, qword ptr [rbp + 1608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_tabulate_7:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    tabulate_ω
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_6:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n15_scan_enter_α
                        .size            n14_deref_bx, .-n14_deref_bx
                        .type            n15_scan_enter_bx, @function
n15_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_scan_enter_α:       mov              qword ptr [rbp + 64], r13
                        mov              qword ptr [rbp + 72], r14
                        mov              qword ptr [rbp + 80], r15
                        mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
.Lgcsite_tabulate_9:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_tabulate_8:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            je    tabulate_ω
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n16_line_mark_α
                        .size            n15_scan_enter_bx, .-n15_scan_enter_bx
                        .type            n16_line_mark_bx, @function
n16_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_119_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_119_stno
                        .long            0
                        .long            63
                        .quad            .Lstnof1
                        .popsection
n16_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n17_bound_α
                        .size            n16_line_mark_bx, .-n16_line_mark_bx
                        .type            n17_bound_bx, @function
n17_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_bound_α:            mov              qword ptr [rbp + 1296], rsp;         jmp   n18_var_α
                        .size            n17_bound_bx, .-n17_bound_bx
                        .type            n18_var_bx, @function
n18_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n19_lit_charset_α
                        .size            n18_var_bx, .-n18_var_bx
                        .type            n19_lit_charset_bx, @function
n19_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_charset_α:      mov              qword ptr [rbp + 1248], 2            # result
                        mov              dword ptr [rbp + 1252], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_125_0]
                        mov              qword ptr [rbp + 1256], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_125_0]
                        mov              rsi, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
.Lgcsite_tabulate_11:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_tabulate_10:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n20_line_mark_α
.Llit_charset_α_125_0:  .quad            .Llit_charset_α_125_0_s
.Llit_charset_α_125_0_s:
                        .string          "0123456789"
                        .size            n19_lit_charset_bx, .-n19_lit_charset_bx
                        .type            n20_line_mark_bx, @function
n20_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_126_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_126_stno
                        .long            0
                        .long            63
                        .quad            .Lstnof1
                        .popsection
n20_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n21_scan_upto_α
                        .size            n20_line_mark_bx, .-n20_line_mark_bx
                        .type            n21_scan_upto_bx, @function
n21_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_scan_upto_α:        mov              qword ptr [rbp + 1216], r14
.Lscan_upto_α_129_0:    mov              rax, qword ptr [rbp + 1216]
                        cmp              rax, r15;                            jge   n42_line_mark_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .Lscan_upto_α_129_3]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_upto_α_129_1
                        mov              qword ptr [rbp + 1200], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 1208], rax;         jmp   n22_line_mark_α
.Lscan_upto_α_129_1:    inc              qword ptr [rbp + 1216];              jmp   .Lscan_upto_α_129_0
n21_scan_upto_β:        inc              qword ptr [rbp + 1216];              jmp   .Lscan_upto_α_129_0
.Lscan_upto_β_129_2:    .quad            .Lscan_upto_β_129_2_s
.Lscan_upto_β_129_2_s:  .string          "0123456789"
.Lscan_upto_α_129_3:    .quad            287948901175001088
.Lscan_upto_β_129_4:    .quad            0
.Lscan_upto_β_129_5:    .quad            0
.Lscan_upto_β_129_6:    .quad            0
                        .size            n21_scan_upto_bx, .-n21_scan_upto_bx
                        .type            n22_line_mark_bx, @function
n22_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_130_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_130_stno
                        .long            0
                        .long            63
                        .quad            .Lstnof1
                        .popsection
n22_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n23_scan_tab_α
                        .size            n22_line_mark_bx, .-n22_line_mark_bx
                        .type            n23_scan_tab_bx, @function
n23_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_scan_tab_α:         mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_tabulate_17:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_tabulate_16:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_tabulate_15:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_tabulate_14:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_133_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_133_0:     cmp              rax, 1;                              jl    n21_scan_upto_β
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
.Lgcsite_tabulate_13:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_tabulate_12:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx;         jmp   n24_binop_α
n23_scan_tab_β:         mov              r14, qword ptr [rbp + 1168];         jmp   n21_scan_upto_β
                        .size            n23_scan_tab_bx, .-n23_scan_tab_bx
                        .type            n24_binop_bx, @function
n24_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:            mov              rdi, qword ptr [rbp + 1824]
                        mov              rsi, qword ptr [rbp + 1832]
                        mov              rdx, qword ptr [rbp + 1152]
                        mov              rcx, qword ptr [rbp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_19:   mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_18:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n25_assign_α
                        .size            n24_binop_bx, .-n24_binop_bx
                        .type            n25_assign_bx, @function
n25_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx;         jmp   n26_line_mark_α
                        .size            n25_assign_bx, .-n25_assign_bx
                        .type            n26_line_mark_bx, @function
n26_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_136_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_136_stno
                        .long            0
                        .long            64
                        .quad            .Lstnof1
                        .popsection
n26_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 64;             jmp   n27_line_mark_α
                        .size            n26_line_mark_bx, .-n26_line_mark_bx
                        .type            n27_line_mark_bx, @function
n27_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_138_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_138_stno
                        .long            0
                        .long            64
                        .quad            .Lstnof1
                        .popsection
n27_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 64;             jmp   n28_lit_charset_α
                        .size            n27_line_mark_bx, .-n27_line_mark_bx
                        .type            n28_lit_charset_bx, @function
n28_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_charset_α:      mov              qword ptr [rbp + 1488], 2            # result
                        mov              dword ptr [rbp + 1492], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_140_0]
                        mov              qword ptr [rbp + 1496], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_140_0]
                        mov              rsi, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
.Lgcsite_tabulate_21:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_tabulate_20:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n29_line_mark_α
.Llit_charset_α_140_0:  .quad            .Llit_charset_α_140_0_s
.Llit_charset_α_140_0_s:
                        .string          "0123456789"
                        .size            n28_lit_charset_bx, .-n28_lit_charset_bx
                        .type            n29_line_mark_bx, @function
n29_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_141_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_141_stno
                        .long            0
                        .long            64
                        .quad            .Lstnof1
                        .popsection
n29_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 64;             jmp   n30_scan_many_α
                        .size            n29_line_mark_bx, .-n29_line_mark_bx
                        .type            n30_scan_many_bx, @function
n30_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_scan_many_α:        lea              rdi, [rip + .Lscan_many_α_144_3]
                        mov              eax, r14d
.Lscan_many_α_144_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_144_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_many_α_144_1
                        add              eax, 1;                              jmp   .Lscan_many_α_144_0
.Lscan_many_α_144_1:    cmp              eax, r14d;                           je    n34_line_mark_α
                        mov              qword ptr [rbp + 1456], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 1464], rcx;         jmp   n31_line_mark_α
n30_scan_many_β:                                                              jmp   n34_line_mark_α
.Lscan_many_β_144_2:    .quad            .Lscan_many_β_144_2_s
.Lscan_many_β_144_2_s:  .string          "0123456789"
.Lscan_many_α_144_3:    .quad            287948901175001088
.Lscan_many_β_144_4:    .quad            0
.Lscan_many_β_144_5:    .quad            0
.Lscan_many_β_144_6:    .quad            0
                        .size            n30_scan_many_bx, .-n30_scan_many_bx
                        .type            n31_line_mark_bx, @function
n31_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_145_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_145_stno
                        .long            0
                        .long            64
                        .quad            .Lstnof1
                        .popsection
n31_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 64;             jmp   n32_scan_tab_α
                        .size            n31_line_mark_bx, .-n31_line_mark_bx
                        .type            n32_scan_tab_bx, @function
n32_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_scan_tab_α:         mov              rdi, qword ptr [rbp + 1456]
                        mov              rsi, qword ptr [rbp + 1464]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_tabulate_27:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_tabulate_26:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 1456]
                        mov              rsi, qword ptr [rbp + 1464]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_tabulate_25:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_tabulate_24:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_148_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_148_0:     cmp              rax, 1;                              jl    n34_line_mark_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n34_line_mark_α
                        mov              qword ptr [rbp + 1424], r14
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
.Lgcsite_tabulate_23:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_tabulate_22:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx;         jmp   n33_assign_α
n32_scan_tab_β:         mov              r14, qword ptr [rbp + 1424];         jmp   n34_line_mark_α
                        .size            n32_scan_tab_bx, .-n32_scan_tab_bx
                        .type            n33_assign_bx, @function
n33_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:           mov              rax, qword ptr [rbp + 1408]
                        mov              rdx, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx;         jmp   n34_line_mark_α
                        .size            n33_assign_bx, .-n33_assign_bx
                        .type            n34_line_mark_bx, @function
n34_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_150_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_150_stno
                        .long            0
                        .long            65
                        .quad            .Lstnof1
                        .popsection
n34_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 65;             jmp   n35_var_α
                        .size            n34_line_mark_bx, .-n34_line_mark_bx
                        .type            n35_var_bx, @function
n35_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:              mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 24], rax;           jmp   n36_var_α
                        .size            n35_var_bx, .-n35_var_bx
                        .type            n36_var_bx, @function
n36_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 40], rax;           jmp   n37_binop_α
                        .size            n36_var_bx, .-n36_var_bx
                        .type            n37_binop_bx, @function
n37_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_α:            mov              rdi, qword ptr [rbp + 1824]
                        mov              rsi, qword ptr [rbp + 1832]
                        mov              rdx, qword ptr [rbp + 1808]
                        mov              rcx, qword ptr [rbp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_29:   mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_28:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n38_assign_α
                        .size            n37_binop_bx, .-n37_binop_bx
                        .type            n38_assign_bx, @function
n38_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:           mov              rax, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n39_conjunction_α
                        .size            n38_assign_bx, .-n38_assign_bx
                        .type            n39_conjunction_bx, @function
n39_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_conjunction_α:      mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n40_unmark_α
n39_conjunction_β:                                                            jmp   n40_unmark_α
                        .size            n39_conjunction_bx, .-n39_conjunction_bx
                        .type            n40_unmark_bx, @function
n40_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_unmark_α:           mov              rsp, qword ptr [rbp + 1296];         jmp   n41_line_mark_α
                        .size            n40_unmark_bx, .-n40_unmark_bx
                        .type            n41_line_mark_bx, @function
n41_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_161_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_161_stno
                        .long            0
                        .long            63
                        .quad            .Lstnof1
                        .popsection
n41_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n17_bound_α
                        .size            n41_line_mark_bx, .-n41_line_mark_bx
                        .type            n42_line_mark_bx, @function
n42_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_163_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_163_stno
                        .long            0
                        .long            67
                        .quad            .Lstnof1
                        .popsection
n42_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 67;             jmp   n43_disjunction_α
                        .size            n42_line_mark_bx, .-n42_line_mark_bx
                        .type            n43_disjunction_bx, @function
n43_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_disjunction_α:      mov              qword ptr [rbp + 144], 0
                        mov              qword ptr [rbp + 152], 0
                        mov              dword ptr [rbp + 160], 0;            jmp   n76_disjunction_α
.Ldisjunction_γ_43_as:  mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_166_0
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 152], rax;          jmp   n44_conjunction_α
.Ldisjunction_α_166_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_166_1
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 152], rax;          jmp   n44_conjunction_α
.Ldisjunction_α_166_1:                                                        jmp   n44_conjunction_α
n43_disjunction_β:      mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0;                              je    n87_scan_α
                                                                              jmp   n87_scan_α
.Ldisjunction_γ_43_af:
.Ldisjunction_ω_43_af:  add              dword ptr [rbp + 160], 1
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 1;                              je    n46_line_mark_α
                                                                              jmp   n87_scan_α
                        .size            n43_disjunction_bx, .-n43_disjunction_bx
                        .type            n44_conjunction_bx, @function
n44_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_conjunction_α:      mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 136], rax;          jmp   n45_scan_α
n44_conjunction_β:                                                            jmp   n87_scan_α
                        .size            n44_conjunction_bx, .-n44_conjunction_bx
                        .type            n45_scan_bx, @function
n45_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_scan_α:             mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
.Lgcsite_tabulate_32:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80];           jmp   tabulate_ω
n45_scan_β:             mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_reenter@PLT
.Lgcsite_tabulate_31:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
.Lgcsite_tabulate_30:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax;                            jmp   n43_disjunction_β
                                                                              jmp   tabulate_ω
                        .size            n45_scan_bx, .-n45_scan_bx
                        .type            n46_line_mark_bx, @function
n46_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_170_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_170_stno
                        .long            0
                        .long            70
                        .quad            .Lstnof1
                        .popsection
n46_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70;             jmp   n47_line_mark_α
n46_line_mark_β:                                                              jmp   n47_line_mark_α
                        .size            n46_line_mark_bx, .-n46_line_mark_bx
                        .type            n47_line_mark_bx, @function
n47_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_172_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_172_stno
                        .long            0
                        .long            70
                        .quad            .Lstnof1
                        .popsection
n47_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70;             jmp   n48_disjunction_α
                        .size            n47_line_mark_bx, .-n47_line_mark_bx
                        .type            n48_disjunction_bx, @function
n48_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_disjunction_α:      mov              qword ptr [rbp + 752], 0
                        mov              qword ptr [rbp + 760], 0
                        mov              dword ptr [rbp + 768], 0;            jmp   n67_lit_string_α
.Ldisjunction_γ_48_as:  mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_175_0
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax;          jmp   n49_line_mark_α
.Ldisjunction_α_175_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_175_1
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 760], rax;          jmp   n49_line_mark_α
.Ldisjunction_α_175_1:                                                        jmp   n49_line_mark_α
n48_disjunction_β:      mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 0;                              je    n74_scan_tab_β
                                                                              jmp   n49_line_mark_α
.Ldisjunction_γ_48_af:
.Ldisjunction_ω_48_af:  add              dword ptr [rbp + 768], 1
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 1;                              je    n65_lit_integer_α
                                                                              jmp   n49_line_mark_α
                        .size            n48_disjunction_bx, .-n48_disjunction_bx
                        .type            n49_line_mark_bx, @function
n49_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_176_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_176_stno
                        .long            0
                        .long            71
                        .quad            .Lstnof1
                        .popsection
n49_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 71;             jmp   n50_var_ref_α
                        .size            n49_line_mark_bx, .-n49_line_mark_bx
                        .type            n50_var_ref_bx, @function
n50_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n51_var_α
                        .size            n50_var_ref_bx, .-n50_var_ref_bx
                        .type            n51_var_bx, @function
n51_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 504], rax;          jmp   n52_subscript_α
                        .size            n51_var_bx, .-n51_var_bx
                        .type            n52_subscript_bx, @function
n52_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_subscript_α:        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_tabulate_34:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n87_scan_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_33:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n53_var_α
                        .size            n52_subscript_bx, .-n52_subscript_bx
                        .type            n53_var_bx, @function
n53_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 600], rax;          jmp   n54_lit_string_α
                        .size            n53_var_bx, .-n53_var_bx
                        .type            n54_lit_string_bx, @function
n54_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       mov              qword ptr [rbp + 608], 2             # result
                        mov              dword ptr [rbp + 612], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_185_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n55_binop_α
.Llit_string_α_185_0:   .quad            .Llit_string_α_185_0_s
.Llit_string_α_185_0_s: .string          "("
                        .size            n54_lit_string_bx, .-n54_lit_string_bx
                        .type            n55_binop_bx, @function
n55_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_binop_α:            mov              rdi, qword ptr [rbp + 1824]
                        mov              rsi, qword ptr [rbp + 1832]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_36:   mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_35:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n56_var_α
                        .size            n55_binop_bx, .-n55_binop_bx
                        .type            n56_var_bx, @function
n56_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 680], rax;          jmp   n57_lit_integer_α
                        .size            n56_var_bx, .-n56_var_bx
                        .type            n57_lit_integer_bx, @function
n57_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      mov              qword ptr [rbp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_189_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n58_coerce_numeric_α
.Llit_integer_α_189_0:  .quad            1
                        .size            n57_lit_integer_bx, .-n57_lit_integer_bx
                        .type            n58_coerce_numeric_bx, @function
n58_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_coerce_numeric_α:   mov              eax, dword ptr [rbp + 1840]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_191_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_191_0
                        mov              eax, dword ptr [rbp + 688]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_191_0
.Lcoerce_numeric_α_191_1:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 664], rax;          jmp   n59_binop_α
.Lcoerce_numeric_α_191_0:
                        lea              rdi, [rbp + 1840]
                        lea              rsi, [rbp + 688]
                        lea              rdx, [rbp + 656]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_tabulate_38:   push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_37:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 656]
                        cmp              al, 104;                             je    n87_scan_α
                                                                              jmp   n59_binop_α
                        .size            n58_coerce_numeric_bx, .-n58_coerce_numeric_bx
                        .type            n59_binop_bx, @function
n59_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_α:            mov              eax, dword ptr [rbp + 656]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_192_2
                        mov              rax, qword ptr [rbp + 664]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_192_0
                        mov              qword ptr [rbp + 640], 3
                        mov              qword ptr [rbp + 648], rax;          jmp   .Lbinop_α_192_7
.Lbinop_α_192_2:        and              edx, 1;                              jz    .Lbinop_α_192_0
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_192_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_192_4
.Lbinop_α_192_3:        movq             xmm0, rsi
.Lbinop_α_192_4:        cmp              cl, 5;                               je    .Lbinop_α_192_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_192_6
.Lbinop_α_192_5:        movq             xmm1, rdi
.Lbinop_α_192_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_192_0
                        mov              qword ptr [rbp + 640], 5
                        mov              qword ptr [rbp + 648], rax
.Lbinop_α_192_7:                                                              jmp   n60_binop_α
.Lbinop_α_192_0:        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
.Lgcsite_tabulate_40:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n87_scan_α
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
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
.Lgcsite_tabulate_39:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n60_binop_α
                        .size            n59_binop_bx, .-n59_binop_bx
                        .type            n60_binop_bx, @function
n60_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:            mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_42:   mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_41:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n61_lit_string_α
                        .size            n60_binop_bx, .-n60_binop_bx
                        .type            n61_lit_string_bx, @function
n61_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:       mov              qword ptr [rbp + 704], 2             # result
                        mov              dword ptr [rbp + 708], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_194_0]
                        mov              qword ptr [rbp + 712], rax;          jmp   n62_binop_α
.Llit_string_α_194_0:   .quad            .Llit_string_α_194_0_s
.Llit_string_α_194_0_s: .string          "), "
                        .size            n61_lit_string_bx, .-n61_lit_string_bx
                        .type            n62_binop_bx, @function
n62_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_binop_α:            mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_44:   mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_43:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n63_assign_var_α
                        .size            n62_binop_bx, .-n62_binop_bx
                        .type            n63_assign_var_bx, @function
n63_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_var_α:       mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 544]
                        mov              rcx, qword ptr [rbp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_tabulate_46:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n87_scan_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_45:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n64_conjunction_α
                        .size            n63_assign_var_bx, .-n63_assign_var_bx
                        .type            n64_conjunction_bx, @function
n64_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_conjunction_α:      mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 472], rax;          jmp   .Ldisjunction_γ_43_as
n64_conjunction_β:                                                            jmp   n87_scan_α
                        .size            n64_conjunction_bx, .-n64_conjunction_bx
                        .type            n65_lit_integer_bx, @function
n65_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:      mov              qword ptr [rbp + 1040], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_198_0]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n66_assign_α
n65_lit_integer_β:                                                            jmp   n49_line_mark_α
.Llit_integer_α_198_0:  .quad            1
                        .size            n65_lit_integer_bx, .-n65_lit_integer_bx
                        .type            n66_assign_bx, @function
n66_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:           mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx;         jmp   .Ldisjunction_γ_48_as
n66_assign_β:                                                                 jmp   n49_line_mark_α
                        .size            n66_assign_bx, .-n66_assign_bx
                        .type            n67_lit_string_bx, @function
n67_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_200_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n68_scan_match_α
n67_lit_string_β:                                                             jmp   .Ldisjunction_ω_48_af
.Llit_string_α_200_0:   .quad            .Llit_string_α_200_0_s
.Llit_string_α_200_0_s: .string          "("
                        .size            n67_lit_string_bx, .-n67_lit_string_bx
                        .type            n68_scan_match_bx, @function
n68_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_scan_match_α:       mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_48_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_202_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
.Lgcsite_tabulate_47:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        test             eax, eax;                            jne   .Ldisjunction_ω_48_af
                        mov              qword ptr [rbp + 960], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 968], rax;          jmp   n69_scan_tab_α
.Lscan_match_α_202_0:   .quad            .Lscan_match_α_202_0_s
.Lscan_match_α_202_0_s: .string          "("
                        .size            n68_scan_match_bx, .-n68_scan_match_bx
                        .type            n69_scan_tab_bx, @function
n69_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_scan_tab_α:         mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_tabulate_53:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    .Ldisjunction_ω_48_af
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
.Lgcsite_tabulate_52:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_tabulate_51:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_tabulate_50:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_204_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_204_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_48_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_48_af
                        mov              qword ptr [rbp + 944], r14
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
.Lgcsite_tabulate_49:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_tabulate_48:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n70_lit_charset_α
n69_scan_tab_β:         mov              r14, qword ptr [rbp + 944];          jmp   .Ldisjunction_ω_48_af
                        .size            n69_scan_tab_bx, .-n69_scan_tab_bx
                        .type            n70_lit_charset_bx, @function
n70_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_charset_α:      mov              qword ptr [rbp + 896], 2             # result
                        mov              dword ptr [rbp + 900], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_205_0]
                        mov              qword ptr [rbp + 904], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_205_0]
                        mov              rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
.Lgcsite_tabulate_55:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_tabulate_54:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n71_line_mark_α
.Llit_charset_α_205_0:  .quad            .Llit_charset_α_205_0_s
.Llit_charset_α_205_0_s:
                        .string          ")"
                        .size            n70_lit_charset_bx, .-n70_lit_charset_bx
                        .type            n71_line_mark_bx, @function
n71_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_206_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_206_stno
                        .long            0
                        .long            70
                        .quad            .Lstnof1
                        .popsection
n71_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70;             jmp   n72_scan_upto_α
                        .size            n71_line_mark_bx, .-n71_line_mark_bx
                        .type            n72_scan_upto_bx, @function
n72_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_scan_upto_α:        mov              qword ptr [rbp + 864], r14
.Lscan_upto_α_209_0:    mov              rax, qword ptr [rbp + 864]
                        cmp              rax, r15;                            jge   n49_line_mark_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .Lscan_upto_α_209_3]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_upto_α_209_1
                        mov              qword ptr [rbp + 848], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 856], rax;          jmp   n73_line_mark_α
.Lscan_upto_α_209_1:    inc              qword ptr [rbp + 864];               jmp   .Lscan_upto_α_209_0
n72_scan_upto_β:        inc              qword ptr [rbp + 864];               jmp   .Lscan_upto_α_209_0
.Lscan_upto_β_209_2:    .quad            .Lscan_upto_β_209_2_s
.Lscan_upto_β_209_2_s:  .string          ")"
.Lscan_upto_α_209_3:    .quad            2199023255552
.Lscan_upto_β_209_4:    .quad            0
.Lscan_upto_β_209_5:    .quad            0
.Lscan_upto_β_209_6:    .quad            0
                        .size            n72_scan_upto_bx, .-n72_scan_upto_bx
                        .type            n73_line_mark_bx, @function
n73_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_210_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_210_stno
                        .long            0
                        .long            70
                        .quad            .Lstnof1
                        .popsection
n73_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70;             jmp   n74_scan_tab_α
                        .size            n73_line_mark_bx, .-n73_line_mark_bx
                        .type            n74_scan_tab_bx, @function
n74_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_scan_tab_α:         mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_tabulate_61:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    n72_scan_upto_β
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
.Lgcsite_tabulate_60:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_tabulate_59:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_tabulate_58:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_213_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_213_0:     cmp              rax, 1;                              jl    n72_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n72_scan_upto_β
                        mov              qword ptr [rbp + 816], r14
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
.Lgcsite_tabulate_57:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_tabulate_56:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n75_assign_α
n74_scan_tab_β:         mov              r14, qword ptr [rbp + 816];          jmp   n72_scan_upto_β
                        .size            n74_scan_tab_bx, .-n74_scan_tab_bx
                        .type            n75_assign_bx, @function
n75_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:           mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   .Ldisjunction_γ_48_as
n75_assign_β:                                                                 jmp   n49_line_mark_α
                        .size            n75_assign_bx, .-n75_assign_bx
                        .type            n76_disjunction_bx, @function
n76_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_disjunction_α:      mov              qword ptr [rbp + 352], 0
                        mov              qword ptr [rbp + 360], 0
                        mov              dword ptr [rbp + 368], 0;            jmp   n91_var_α
.Ldisjunction_γ_76_as:  mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_216_0
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax;          jmp   n77_line_mark_α
.Ldisjunction_α_216_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_216_1
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax;          jmp   n77_line_mark_α
.Ldisjunction_α_216_1:                                                        jmp   n77_line_mark_α
n76_disjunction_β:      mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_76_af
                                                                              jmp   .Ldisjunction_ω_76_af
.Ldisjunction_γ_76_af:
.Ldisjunction_ω_76_af:  add              dword ptr [rbp + 368], 1
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 1;                              je    n88_var_α
                                                                              jmp   .Ldisjunction_ω_43_af
                        .size            n76_disjunction_bx, .-n76_disjunction_bx
                        .type            n77_line_mark_bx, @function
n77_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_217_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_217_stno
                        .long            0
                        .long            68
                        .quad            .Lstnof1
                        .popsection
n77_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 68;             jmp   n78_var_ref_α
                        .size            n77_line_mark_bx, .-n77_line_mark_bx
                        .type            n78_var_ref_bx, @function
n78_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n79_var_α
                        .size            n78_var_ref_bx, .-n78_var_ref_bx
                        .type            n79_var_bx, @function
n79_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 200], rax;          jmp   n80_subscript_α
                        .size            n79_var_bx, .-n79_var_bx
                        .type            n80_subscript_bx, @function
n80_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_subscript_α:        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_tabulate_63:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n87_scan_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_62:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n81_var_α
                        .size            n80_subscript_bx, .-n80_subscript_bx
                        .type            n81_var_bx, @function
n81_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 296], rax;          jmp   n82_lit_string_α
                        .size            n81_var_bx, .-n81_var_bx
                        .type            n82_lit_string_bx, @function
n82_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              qword ptr [rbp + 304], 2             # result
                        mov              dword ptr [rbp + 308], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_226_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n83_binop_α
.Llit_string_α_226_0:   .quad            .Llit_string_α_226_0_s
.Llit_string_α_226_0_s: .string          ", "
                        .size            n82_lit_string_bx, .-n82_lit_string_bx
                        .type            n83_binop_bx, @function
n83_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_binop_α:            mov              rdi, qword ptr [rbp + 2032]
                        mov              rsi, qword ptr [rbp + 2040]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_65:   mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_64:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n84_deref_α
                        .size            n83_binop_bx, .-n83_binop_bx
                        .type            n84_deref_bx, @function
n84_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_deref_α:            mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_tabulate_67:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n87_scan_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_66:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n85_binop_α
                        .size            n84_deref_bx, .-n84_deref_bx
                        .type            n85_binop_bx, @function
n85_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_α:            mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_69:   mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_68:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n86_assign_var_α
                        .size            n85_binop_bx, .-n85_binop_bx
                        .type            n86_assign_var_bx, @function
n86_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_var_α:       mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_tabulate_71:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n87_scan_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_70:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_43_as
n86_assign_var_β:                                                             jmp   n87_scan_α
                        .size            n86_assign_var_bx, .-n86_assign_var_bx
                        .type            n87_scan_bx, @function
n87_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_scan_α:             mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
.Lgcsite_tabulate_72:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80];           jmp   tabulate_ω
n87_scan_β:                                                                   jmp   tabulate_ω
                        .size            n87_scan_bx, .-n87_scan_bx
                        .type            n88_var_bx, @function
n88_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 440], rax;          jmp   n89_var_α
n88_var_β:                                                                    jmp   .Ldisjunction_ω_76_af
                        .size            n88_var_bx, .-n88_var_bx
                        .type            n89_var_bx, @function
n89_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:              mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 456], rax;          jmp   n90_binop_test_α
                        .size            n89_var_bx, .-n89_var_bx
                        .type            n90_binop_test_bx, @function
n90_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_binop_test_α:       mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 2032]
                        mov              rcx, qword ptr [rbp + 2040]
                        mov              r8d, 17
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_tabulate_76:   push             rax
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
.Lgcsite_tabulate_75:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    .Ldisjunction_ω_76_af
                        mov              rdi, qword ptr [rbp + 2032]
                        mov              rsi, qword ptr [rbp + 2040]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
.Lgcsite_tabulate_74:   mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
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
.Lgcsite_tabulate_73:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_76_as
n90_binop_test_β:                                                             jmp   .Ldisjunction_ω_76_af
                        .size            n90_binop_test_bx, .-n90_binop_test_bx
                        .type            n91_var_bx, @function
n91_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:              mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 408], rax;          jmp   n92_unop_test_α
n91_var_β:                                                                    jmp   .Ldisjunction_ω_76_af
                        .size            n91_var_bx, .-n91_var_bx
                        .type            n92_unop_test_bx, @function
n92_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_unop_test_α:        mov              eax, dword ptr [rbp + 1808]
                        cmp              al, 104;                             je    .Ldisjunction_ω_76_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_76_af
                        mov              qword ptr [rbp + 384], 0
                        mov              qword ptr [rbp + 392], 0;            jmp   .Ldisjunction_γ_76_as
n92_unop_test_β:                                                              jmp   .Ldisjunction_ω_76_af
                        .size            n92_unop_test_bx, .-n92_unop_test_bx
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
                        lea              rsp, [rbp + 2048]
                        mov              rbp, qword ptr [rbp + 2008];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 2048]
                        mov              rbp, qword ptr [rbp + 2008];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_tabulate:
                        .quad            8660000525658
                        .quad            515396075664
                        .quad            .Lgcmap_tabulate_s
                        .quad            1856
                        .quad            26
                        .quad            70368744177664
                        .quad            8804682956864
                        .quad            26392574033992
                        .quad            70368744177760
                        .quad            17596481011872
                        .quad            211106232533168
                        .quad            17596481012080
                        .quad            422212465066368
                        .quad            17596481012480
                        .quad            35184372089616
                        .quad            17596481012528
                        .quad            35184372089664
                        .quad            17596481012576
                        .quad            70368744178544
                        .quad            17596481012656
                        .quad            17592186045376
                        .quad            17596481012688
                        .quad            193514046489568
                        .quad            17596481012880
                        .quad            35184372090016
                        .quad            17596481012928
                        .quad            70368744178896
                        .quad            17596481013008
                        .quad            123145302312224
                        .quad            17596481013136
                        .quad            457396837156256
.Lgcmap_tabulate_s:     .string          "tabulate"
.Lgcsites_tabulate_0:   .quad            77
                        .quad            .Lgcmap_tabulate
                        .quad            0
                        .quad            .Lgcsite_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_1
                        .quad            65537
                        .quad            .Lgcsite_tabulate_2
                        .quad            65537
                        .quad            .Lgcsite_tabulate_3
                        .quad            65537
                        .quad            .Lgcsite_tabulate_4
                        .quad            65537
                        .quad            .Lgcsite_tabulate_5
                        .quad            65537
                        .quad            .Lgcsite_tabulate_6
                        .quad            65537
                        .quad            .Lgcsite_tabulate_7
                        .quad            65537
                        .quad            .Lgcsite_tabulate_8
                        .quad            65537
                        .quad            .Lgcsite_tabulate_9
                        .quad            65537
                        .quad            .Lgcsite_tabulate_10
                        .quad            65537
                        .quad            .Lgcsite_tabulate_11
                        .quad            65537
                        .quad            .Lgcsite_tabulate_12
                        .quad            65537
                        .quad            .Lgcsite_tabulate_13
                        .quad            65537
                        .quad            .Lgcsite_tabulate_14
                        .quad            65537
                        .quad            .Lgcsite_tabulate_15
                        .quad            65537
                        .quad            .Lgcsite_tabulate_16
                        .quad            65537
                        .quad            .Lgcsite_tabulate_17
                        .quad            65537
                        .quad            .Lgcsite_tabulate_18
                        .quad            65537
                        .quad            .Lgcsite_tabulate_19
                        .quad            65537
                        .quad            .Lgcsite_tabulate_20
                        .quad            65537
                        .quad            .Lgcsite_tabulate_21
                        .quad            65537
                        .quad            .Lgcsite_tabulate_22
                        .quad            65537
                        .quad            .Lgcsite_tabulate_23
                        .quad            65537
                        .quad            .Lgcsite_tabulate_24
                        .quad            65537
                        .quad            .Lgcsite_tabulate_25
                        .quad            65537
                        .quad            .Lgcsite_tabulate_26
                        .quad            65537
                        .quad            .Lgcsite_tabulate_27
                        .quad            65537
                        .quad            .Lgcsite_tabulate_28
                        .quad            65537
                        .quad            .Lgcsite_tabulate_29
                        .quad            65537
                        .quad            .Lgcsite_tabulate_30
                        .quad            65537
                        .quad            .Lgcsite_tabulate_31
                        .quad            65537
                        .quad            .Lgcsite_tabulate_32
                        .quad            65537
                        .quad            .Lgcsite_tabulate_33
                        .quad            65537
                        .quad            .Lgcsite_tabulate_34
                        .quad            65537
                        .quad            .Lgcsite_tabulate_35
                        .quad            65537
                        .quad            .Lgcsite_tabulate_36
                        .quad            65537
                        .quad            .Lgcsite_tabulate_37
                        .quad            65537
                        .quad            .Lgcsite_tabulate_38
                        .quad            65537
                        .quad            .Lgcsite_tabulate_39
                        .quad            65537
                        .quad            .Lgcsite_tabulate_40
                        .quad            65537
                        .quad            .Lgcsite_tabulate_41
                        .quad            65537
                        .quad            .Lgcsite_tabulate_42
                        .quad            65537
                        .quad            .Lgcsite_tabulate_43
                        .quad            65537
                        .quad            .Lgcsite_tabulate_44
                        .quad            65537
                        .quad            .Lgcsite_tabulate_45
                        .quad            65537
                        .quad            .Lgcsite_tabulate_46
                        .quad            65537
                        .quad            .Lgcsite_tabulate_47
                        .quad            65537
                        .quad            .Lgcsite_tabulate_48
                        .quad            65537
                        .quad            .Lgcsite_tabulate_49
                        .quad            65537
                        .quad            .Lgcsite_tabulate_50
                        .quad            65537
                        .quad            .Lgcsite_tabulate_51
                        .quad            65537
                        .quad            .Lgcsite_tabulate_52
                        .quad            65537
                        .quad            .Lgcsite_tabulate_53
                        .quad            65537
                        .quad            .Lgcsite_tabulate_54
                        .quad            65537
                        .quad            .Lgcsite_tabulate_55
                        .quad            65537
                        .quad            .Lgcsite_tabulate_56
                        .quad            65537
                        .quad            .Lgcsite_tabulate_57
                        .quad            65537
                        .quad            .Lgcsite_tabulate_58
                        .quad            65537
                        .quad            .Lgcsite_tabulate_59
                        .quad            65537
                        .quad            .Lgcsite_tabulate_60
                        .quad            65537
                        .quad            .Lgcsite_tabulate_61
                        .quad            65537
                        .quad            .Lgcsite_tabulate_62
                        .quad            65537
                        .quad            .Lgcsite_tabulate_63
                        .quad            65537
                        .quad            .Lgcsite_tabulate_64
                        .quad            65537
                        .quad            .Lgcsite_tabulate_65
                        .quad            65537
                        .quad            .Lgcsite_tabulate_66
                        .quad            65537
                        .quad            .Lgcsite_tabulate_67
                        .quad            65537
                        .quad            .Lgcsite_tabulate_68
                        .quad            65537
                        .quad            .Lgcsite_tabulate_69
                        .quad            65537
                        .quad            .Lgcsite_tabulate_70
                        .quad            65537
                        .quad            .Lgcsite_tabulate_71
                        .quad            65537
                        .quad            .Lgcsite_tabulate_72
                        .quad            65537
                        .quad            .Lgcsite_tabulate_73
                        .quad            65537
                        .quad            .Lgcsite_tabulate_74
                        .quad            65537
                        .quad            .Lgcsite_tabulate_75
                        .quad            65537
                        .quad            .Lgcsite_tabulate_76
                        .quad            65537
#-----------------------------------------------------------------------------------------------------------------------
FN__format:
                        sub              rsp, 1280
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 1272
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_format]
                        mov              qword ptr [rsp + 1192], rax
                        mov              dword ptr [rsp + 1184], 160
                        mov              dword ptr [rsp + 1188], 1280
                        mov              eax, 0
                        mov              qword ptr [rsp + 1272], rbp
                        mov              rbp, rsp
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
format_α_body:
                        .type            n00001_line_mark_bx, @function
n00001_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_305_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_305_stno
                        .long            0
                        .long            79
                        .quad            .Lstnof1
                        .popsection
n00001_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 79
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_306_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00002_line_mark_α
.Lline_mark_α_306_0:    .quad            .Lline_mark_α_306_0_s
.Lline_mark_α_306_0_s:  .string          "concord.icn"
                        .size            n00001_line_mark_bx, .-n00001_line_mark_bx
                        .type            n00002_line_mark_bx, @function
n00002_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_307_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_307_stno
                        .long            0
                        .long            80
                        .quad            .Lstnof1
                        .popsection
n00002_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 80;             jmp   n00003_bound_α
                        .size            n00002_line_mark_bx, .-n00002_line_mark_bx
                        .type            n00003_bound_bx, @function
n00003_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_bound_α:           mov              qword ptr [rbp + 288], rsp;          jmp   n00004_var_α
                        .size            n00003_bound_bx, .-n00003_bound_bx
                        .type            n00004_var_bx, @function
n00004_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_var_α:             mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 200], rax;          jmp   n00005_unop_α
                        .size            n00004_var_bx, .-n00004_var_bx
                        .type            n00005_unop_bx, @function
n00005_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_unop_α:            mov              rdi, qword ptr [rbp + 1280]
                        mov              rsi, qword ptr [rbp + 1288]
                        call             qword ptr [rip + rt_size_d@GOTPCREL]
.Lgcsite_format_1:      mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:116
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_0:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00006_lit_integer_α
                        .size            n00005_unop_bx, .-n00005_unop_bx
                        .type            n00006_lit_integer_bx, @function
n00006_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_lit_integer_α:     mov              qword ptr [rbp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_314_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00007_var_α
.Llit_integer_α_314_0:  .quad            2
                        .size            n00006_lit_integer_bx, .-n00006_lit_integer_bx
                        .type            n00007_var_bx, @function
n00007_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_var_α:             mov              rax, qword ptr [r9 + 16]             # colmax
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rbp + 256], rax           # result
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00008_coerce_numeric_α
                        .size            n00007_var_bx, .-n00007_var_bx
                        .type            n00008_coerce_numeric_bx, @function
n00008_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_coerce_numeric_α:  mov              eax, dword ptr [rbp + 256]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_317_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_317_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_317_0
.Lcoerce_numeric_α_317_1:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax;          jmp   n00009_binop_α
.Lcoerce_numeric_α_317_0:
                        lea              rdi, [rbp + 256]
                        lea              rsi, [rbp + 240]
                        lea              rdx, [rbp + 224]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_format_3:      push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_2:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 224]
                        cmp              al, 104;                             je    n00010_line_mark_α
                                                                              jmp   n00009_binop_α
                        .size            n00008_coerce_numeric_bx, .-n00008_coerce_numeric_bx
                        .type            n00009_binop_bx, @function
n00009_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_binop_α:           mov              eax, dword ptr [rbp + 224]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_318_2
                        mov              rax, qword ptr [rbp + 232]
                        mov              rdx, 2
                        add              rax, rdx;                            jo    .Lbinop_α_318_0
                        mov              qword ptr [rbp + 208], 3
                        mov              qword ptr [rbp + 216], rax;          jmp   .Lbinop_α_318_7
.Lbinop_α_318_2:        and              edx, 1;                              jz    .Lbinop_α_318_0
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_318_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_318_4
.Lbinop_α_318_3:        movq             xmm0, rsi
.Lbinop_α_318_4:        cmp              cl, 5;                               je    .Lbinop_α_318_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_318_6
.Lbinop_α_318_5:        movq             xmm1, rdi
.Lbinop_α_318_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_318_0
                        mov              qword ptr [rbp + 208], 5
                        mov              qword ptr [rbp + 216], rax
.Lbinop_α_318_7:                                                              jmp   n00011_binop_test_α
.Lbinop_α_318_0:        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
.Lgcsite_format_5:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00010_line_mark_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
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
.Lgcsite_format_4:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00011_binop_test_α
                        .size            n00009_binop_bx, .-n00009_binop_bx
                        .type            n00011_binop_test_bx, @function
n00011_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_binop_test_α:      mov              eax, dword ptr [rbp + 176]
                        cmp              al, 112;                             je    .Lbinop_test_α_319_0
                        mov              eax, dword ptr [rbp + 208]
                        cmp              al, 112;                             je    .Lbinop_test_α_319_0
                        mov              eax, dword ptr [rbp + 176]
                        cmp              al, 3;                               jne   .Lbinop_test_α_319_2
                        mov              eax, dword ptr [rbp + 208]
                        cmp              al, 3;                               jne   .Lbinop_test_α_319_2
.Lbinop_test_α_319_1:   mov              rax, qword ptr [rbp + 184]
                        mov              rcx, qword ptr [rbp + 216]
                        cmp              rax, rcx;                            jle   n00010_line_mark_α
                        mov              rcx, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rcx
                        mov              rcx, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rcx;          jmp   n00012_line_mark_α
.Lbinop_test_α_319_0:   mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        mov              r8d, 7
                        lea              r9, [rbp + 160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
.Lgcsite_format_11:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_319_2
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
.Lgcsite_format_10:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00012_line_mark_α
.Lbinop_test_α_319_2:   mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        mov              r8d, 7
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_format_9:      push             rax
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
.Lgcsite_format_8:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    n00010_line_mark_α
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        lea              r8, [rbp + 160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
.Lgcsite_format_7:      mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_format_6:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00012_line_mark_α
                        .size            n00011_binop_test_bx, .-n00011_binop_test_bx
                        .type            n00012_line_mark_bx, @function
n00012_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_320_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_320_stno
                        .long            0
                        .long            81
                        .quad            .Lstnof1
                        .popsection
n00012_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 81;             jmp   n00013_line_mark_α
                        .size            n00012_line_mark_bx, .-n00012_line_mark_bx
                        .type            n00013_line_mark_bx, @function
n00013_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_322_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_322_stno
                        .long            0
                        .long            81
                        .quad            .Lstnof1
                        .popsection
n00013_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 81;             jmp   n00014_lit_integer_α
                        .size            n00013_line_mark_bx, .-n00013_line_mark_bx
                        .type            n00014_lit_integer_bx, @function
n00014_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_lit_integer_α:     mov              qword ptr [rbp + 1072], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_324_0]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n00015_var_α
.Llit_integer_α_324_0:  .quad            2
                        .size            n00014_lit_integer_bx, .-n00014_lit_integer_bx
                        .type            n00015_var_bx, @function
n00015_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_var_α:             mov              rax, qword ptr [r9 + 16]             # colmax
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rbp + 1088], rax          # result
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n00016_coerce_numeric_α
                        .size            n00015_var_bx, .-n00015_var_bx
                        .type            n00016_coerce_numeric_bx, @function
n00016_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_coerce_numeric_α:  mov              eax, dword ptr [rbp + 1088]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_327_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_327_0
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_327_0
.Lcoerce_numeric_α_327_1:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n00017_binop_α
.Lcoerce_numeric_α_327_0:
                        lea              rdi, [rbp + 1088]
                        lea              rsi, [rbp + 1072]
                        lea              rdx, [rbp + 1056]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_format_13:     push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_12:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 1056]
                        cmp              al, 104;                             je    n00018_line_mark_α
                                                                              jmp   n00017_binop_α
                        .size            n00016_coerce_numeric_bx, .-n00016_coerce_numeric_bx
                        .type            n00017_binop_bx, @function
n00017_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_binop_α:           mov              eax, dword ptr [rbp + 1056]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_328_2
                        mov              rax, qword ptr [rbp + 1064]
                        mov              rdx, 2
                        add              rax, rdx;                            jo    .Lbinop_α_328_0
                        mov              qword ptr [rbp + 1040], 3
                        mov              qword ptr [rbp + 1048], rax;         jmp   .Lbinop_α_328_7
.Lbinop_α_328_2:        and              edx, 1;                              jz    .Lbinop_α_328_0
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_328_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_328_4
.Lbinop_α_328_3:        movq             xmm0, rsi
.Lbinop_α_328_4:        cmp              cl, 5;                               je    .Lbinop_α_328_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_328_6
.Lbinop_α_328_5:        movq             xmm1, rdi
.Lbinop_α_328_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_328_0
                        mov              qword ptr [rbp + 1040], 5
                        mov              qword ptr [rbp + 1048], rax
.Lbinop_α_328_7:                                                              jmp   n00019_assign_α
.Lbinop_α_328_0:        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
.Lgcsite_format_15:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00018_line_mark_α
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
.Lgcsite_format_14:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00019_assign_α
                        .size            n00017_binop_bx, .-n00017_binop_bx
                        .type            n00019_assign_bx, @function
n00019_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_assign_α:          mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n00018_line_mark_α
                        .size            n00019_assign_bx, .-n00019_assign_bx
                        .type            n00018_line_mark_bx, @function
n00018_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_330_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_330_stno
                        .long            0
                        .long            82
                        .quad            .Lstnof1
                        .popsection
n00018_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 82;             jmp   n00020_bound_α
                        .size            n00018_line_mark_bx, .-n00018_line_mark_bx
                        .type            n00020_bound_bx, @function
n00020_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_bound_α:           mov              qword ptr [rbp + 976], rsp;          jmp   n00021_var_ref_α
                        .size            n00020_bound_bx, .-n00020_bound_bx
                        .type            n00021_var_ref_bx, @function
n00021_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n00022_var_α
                        .size            n00021_var_ref_bx, .-n00021_var_ref_bx
                        .type            n00022_var_bx, @function
n00022_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_var_α:             mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 872], rax;          jmp   n00023_lit_integer_α
                        .size            n00022_var_bx, .-n00022_var_bx
                        .type            n00023_lit_integer_bx, @function
n00023_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_lit_integer_α:     mov              qword ptr [rbp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_338_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00024_coerce_numeric_α
.Llit_integer_α_338_0:  .quad            1
                        .size            n00023_lit_integer_bx, .-n00023_lit_integer_bx
                        .type            n00024_coerce_numeric_bx, @function
n00024_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_coerce_numeric_α:  mov              eax, dword ptr [rbp + 1168]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_340_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_340_0
                        mov              eax, dword ptr [rbp + 880]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_340_0
.Lcoerce_numeric_α_340_1:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 856], rax;          jmp   n00025_binop_α
.Lcoerce_numeric_α_340_0:
                        lea              rdi, [rbp + 1168]
                        lea              rsi, [rbp + 880]
                        lea              rdx, [rbp + 848]
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_format_17:     push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_16:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 848]
                        cmp              al, 104;                             je    n00026_unmark_α
                                                                              jmp   n00025_binop_α
                        .size            n00024_coerce_numeric_bx, .-n00024_coerce_numeric_bx
                        .type            n00025_binop_bx, @function
n00025_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_binop_α:           mov              eax, dword ptr [rbp + 848]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_341_2
                        mov              rax, qword ptr [rbp + 856]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_341_0
                        mov              qword ptr [rbp + 832], 3
                        mov              qword ptr [rbp + 840], rax;          jmp   .Lbinop_α_341_7
.Lbinop_α_341_2:        and              edx, 1;                              jz    .Lbinop_α_341_0
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_341_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_341_4
.Lbinop_α_341_3:        movq             xmm0, rsi
.Lbinop_α_341_4:        cmp              cl, 5;                               je    .Lbinop_α_341_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_341_6
.Lbinop_α_341_5:        movq             xmm1, rdi
.Lbinop_α_341_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_341_0
                        mov              qword ptr [rbp + 832], 5
                        mov              qword ptr [rbp + 840], rax
.Lbinop_α_341_7:                                                              jmp   n00027_assign_α
.Lbinop_α_341_0:        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 880]
                        mov              rcx, qword ptr [rbp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
.Lgcsite_format_19:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00026_unmark_α
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
.Lgcsite_format_18:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00027_assign_α
                        .size            n00025_binop_bx, .-n00025_binop_bx
                        .type            n00027_assign_bx, @function
n00027_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_assign_α:          mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n00028_subscript_α
                        .size            n00027_assign_bx, .-n00027_assign_bx
                        .type            n00028_subscript_bx, @function
n00028_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_subscript_α:       mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_format_21:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00026_unmark_α
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_20:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00029_deref_α
                        .size            n00028_subscript_bx, .-n00028_subscript_bx
                        .type            n00029_deref_bx, @function
n00029_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_deref_α:           mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_format_23:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00026_unmark_α
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_22:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00030_lit_string_α
                        .size            n00029_deref_bx, .-n00029_deref_bx
                        .type            n00030_lit_string_bx, @function
n00030_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_lit_string_α:      mov              qword ptr [rbp + 928], 2             # result
                        mov              dword ptr [rbp + 932], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_345_0]
                        mov              qword ptr [rbp + 936], rax;          jmp   n00031_binop_test_α
.Llit_string_α_345_0:   .quad            .Llit_string_α_345_0_s
.Llit_string_α_345_0_s: .string          " "
                        .size            n00030_lit_string_bx, .-n00030_lit_string_bx
                        .type            n00031_binop_test_bx, @function
n00031_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_binop_test_α:      mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        mov              rdx, qword ptr [rbp + 928]
                        mov              rcx, qword ptr [rbp + 936]
                        mov              r8d, 16
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_format_27:     push             rax
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
.Lgcsite_format_26:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    n00026_unmark_α
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
.Lgcsite_format_25:     mov              qword ptr [rbp + 784], rax
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
.Lgcsite_format_24:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00032_line_mark_α
                        .size            n00031_binop_test_bx, .-n00031_binop_test_bx
                        .type            n00032_line_mark_bx, @function
n00032_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_347_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_347_stno
                        .long            0
                        .long            83
                        .quad            .Lstnof1
                        .popsection
n00032_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 83;             jmp   n00033_var_ref_α
                        .size            n00032_line_mark_bx, .-n00032_line_mark_bx
                        .type            n00033_var_ref_bx, @function
n00033_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n00034_lit_integer_α
                        .size            n00033_var_ref_bx, .-n00033_var_ref_bx
                        .type            n00034_lit_integer_bx, @function
n00034_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_lit_integer_α:     mov              qword ptr [rbp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_351_0]
                        mov              qword ptr [rbp + 728], rax;          jmp   n00035_var_α
.Llit_integer_α_351_0:  .quad            1
                        .size            n00034_lit_integer_bx, .-n00034_lit_integer_bx
                        .type            n00035_var_bx, @function
n00035_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_var_α:             mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00036_subscript_α
                        .size            n00035_var_bx, .-n00035_var_bx
                        .type            n00036_subscript_bx, @function
n00036_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_subscript_α:       mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        mov              r8, qword ptr [rbp + 736]
                        mov              r9, qword ptr [rbp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_section_var_strict@PLT
.Lgcsite_format_29:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00037_line_mark_α
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
.Lgcsite_format_28:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00038_deref_α
                        .size            n00036_subscript_bx, .-n00036_subscript_bx
                        .type            n00038_deref_bx, @function
n00038_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_deref_α:           mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_format_31:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00037_line_mark_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_30:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00039_line_mark_α
                        .size            n00038_deref_bx, .-n00038_deref_bx
                        .type            n00039_line_mark_bx, @function
n00039_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_356_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_356_stno
                        .long            0
                        .long            83
                        .quad            .Lstnof1
                        .popsection
n00039_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 83;             jmp   n00040_call_icon_α
                        .size            n00039_line_mark_bx, .-n00039_line_mark_bx
                        .type            n00040_call_icon_bx, @function
n00040_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_call_icon_α:       mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lcall_icon_α_rkfn359:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn359]
                        lea              rsi, [rbp + 656]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_format_32:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_33:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00037_line_mark_α
                                                                              jmp   n00037_line_mark_α
n00040_call_icon_β:                                                             jmp   n00037_line_mark_α
                        .size            n00040_call_icon_bx, .-n00040_call_icon_bx
                        .type            n00037_line_mark_bx, @function
n00037_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_360_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_360_stno
                        .long            0
                        .long            84
                        .quad            .Lstnof1
                        .popsection
n00037_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 84;             jmp   n00041_lit_string_α
                        .size            n00037_line_mark_bx, .-n00037_line_mark_bx
                        .type            n00041_lit_string_bx, @function
n00041_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_lit_string_α:      mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_362_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n00042_var_ref_α
.Llit_string_α_362_0:   .quad            .Llit_string_α_362_0_s
.Llit_string_α_362_0_s: .string          " "
                        .size            n00041_lit_string_bx, .-n00041_lit_string_bx
                        .type            n00042_var_ref_bx, @function
n00042_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052320                      # namewidth
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n00043_deref_α
                        .size            n00042_var_ref_bx, .-n00042_var_ref_bx
                        .type            n00043_deref_bx, @function
n00043_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_deref_α:           mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_format_35:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00044_unmark_α
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_34:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00045_line_mark_α
                        .size            n00043_deref_bx, .-n00043_deref_bx
                        .type            n00045_line_mark_bx, @function
n00045_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_366_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_366_stno
                        .long            0
                        .long            84
                        .quad            .Lstnof1
                        .popsection
n00045_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 84;             jmp   n00046_call_icon_α
                        .size            n00045_line_mark_bx, .-n00045_line_mark_bx
                        .type            n00046_call_icon_bx, @function
n00046_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_call_icon_α:       mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lcall_icon_α_rkfn369:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn369]
                        lea              rsi, [rbp + 400]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_format_36:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_37:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00044_unmark_α
                                                                              jmp   n00047_var_α
n00046_call_icon_β:                                                             jmp   n00044_unmark_α
                        .size            n00046_call_icon_bx, .-n00046_call_icon_bx
                        .type            n00047_var_bx, @function
n00047_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_var_α:             mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 536], rax;          jmp   n00048_var_α
                        .size            n00047_var_bx, .-n00047_var_bx
                        .type            n00048_var_bx, @function
n00048_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_var_α:             mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 584], rax;          jmp   n00049_lit_integer_α
                        .size            n00048_var_bx, .-n00048_var_bx
                        .type            n00049_lit_integer_bx, @function
n00049_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_lit_integer_α:     mov              qword ptr [rbp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_374_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00050_coerce_numeric_α
.Llit_integer_α_374_0:  .quad            1
                        .size            n00049_lit_integer_bx, .-n00049_lit_integer_bx
                        .type            n00050_coerce_numeric_bx, @function
n00050_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_coerce_numeric_α:  mov              eax, dword ptr [rbp + 1168]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_376_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_376_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_376_0
.Lcoerce_numeric_α_376_1:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 568], rax;          jmp   n00051_binop_α
.Lcoerce_numeric_α_376_0:
                        lea              rdi, [rbp + 1168]
                        lea              rsi, [rbp + 592]
                        lea              rdx, [rbp + 560]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_format_39:     push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_38:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 560]
                        cmp              al, 104;                             je    n00044_unmark_α
                                                                              jmp   n00051_binop_α
                        .size            n00050_coerce_numeric_bx, .-n00050_coerce_numeric_bx
                        .type            n00051_binop_bx, @function
n00051_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_binop_α:           mov              eax, dword ptr [rbp + 560]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_377_2
                        mov              rax, qword ptr [rbp + 568]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_377_0
                        mov              qword ptr [rbp + 544], 3
                        mov              qword ptr [rbp + 552], rax;          jmp   .Lbinop_α_377_7
.Lbinop_α_377_2:        and              edx, 1;                              jz    .Lbinop_α_377_0
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_377_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_377_4
.Lbinop_α_377_3:        movq             xmm0, rsi
.Lbinop_α_377_4:        cmp              cl, 5;                               je    .Lbinop_α_377_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_377_6
.Lbinop_α_377_5:        movq             xmm1, rdi
.Lbinop_α_377_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_377_0
                        mov              qword ptr [rbp + 544], 5
                        mov              qword ptr [rbp + 552], rax
.Lbinop_α_377_7:                                                              jmp   n00052_lit_integer_α
.Lbinop_α_377_0:        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
.Lgcsite_format_41:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00044_unmark_α
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
.Lgcsite_format_40:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00052_lit_integer_α
                        .size            n00051_binop_bx, .-n00051_binop_bx
                        .type            n00052_lit_integer_bx, @function
n00052_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_lit_integer_α:     mov              qword ptr [rbp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_378_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00053_subscript_α
.Llit_integer_α_378_0:  .quad            0
                        .size            n00052_lit_integer_bx, .-n00052_lit_integer_bx
                        .type            n00053_subscript_bx, @function
n00053_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_subscript_α:       mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 544]
                        mov              rcx, qword ptr [rbp + 552]
                        mov              r8, qword ptr [rbp + 608]
                        mov              r9, qword ptr [rbp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_strict@PLT
.Lgcsite_format_43:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00044_unmark_α
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
.Lgcsite_format_42:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00054_binop_α
                        .size            n00053_subscript_bx, .-n00053_subscript_bx
                        .type            n00054_binop_bx, @function
n00054_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_binop_α:           mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_format_45:     mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_44:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00055_assign_α
                        .size            n00054_binop_bx, .-n00054_binop_bx
                        .type            n00055_assign_bx, @function
n00055_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_assign_α:          mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00056_conjunction_α
                        .size            n00055_assign_bx, .-n00055_assign_bx
                        .type            n00056_conjunction_bx, @function
n00056_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_conjunction_α:     mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax;          jmp   n00044_unmark_α
n00056_conjunction_β:                                                           jmp   n00044_unmark_α
                        .size            n00056_conjunction_bx, .-n00056_conjunction_bx
                        .type            n00044_unmark_bx, @function
n00044_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_unmark_α:          mov              rsp, qword ptr [rbp + 288];          jmp   n00057_line_mark_α
                        .size            n00044_unmark_bx, .-n00044_unmark_bx
                        .type            n00057_line_mark_bx, @function
n00057_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_385_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_385_stno
                        .long            0
                        .long            80
                        .quad            .Lstnof1
                        .popsection
n00057_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 80;             jmp   n00003_bound_α
                        .size            n00057_line_mark_bx, .-n00057_line_mark_bx
                        .type            n00026_unmark_bx, @function
n00026_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_unmark_α:          mov              rsp, qword ptr [rbp + 976];          jmp   n00020_bound_α
                        .size            n00026_unmark_bx, .-n00026_unmark_bx
                        .type            n00010_line_mark_bx, @function
n00010_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_389_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_389_stno
                        .long            0
                        .long            86
                        .quad            .Lstnof1
                        .popsection
n00010_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 86;             jmp   n00058_var_ref_α
                        .size            n00010_line_mark_bx, .-n00010_line_mark_bx
                        .type            n00058_var_ref_bx, @function
n00058_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00059_lit_integer_α
                        .size            n00058_var_ref_bx, .-n00058_var_ref_bx
                        .type            n00059_lit_integer_bx, @function
n00059_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_lit_integer_α:     mov              qword ptr [rbp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_393_0]
                        mov              qword ptr [rbp + 104], rax;          jmp   n00060_lit_integer_α
.Llit_integer_α_393_0:  .quad            1
                        .size            n00059_lit_integer_bx, .-n00059_lit_integer_bx
                        .type            n00060_lit_integer_bx, @function
n00060_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_lit_integer_α:     mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_394_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n00061_subscript_α
.Llit_integer_α_394_0:  .quad            18446744073709551614
                        .size            n00060_lit_integer_bx, .-n00060_lit_integer_bx
                        .type            n00061_subscript_bx, @function
n00061_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_subscript_α:       mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        mov              r8, qword ptr [rbp + 112]
                        mov              r9, qword ptr [rbp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_section_var_strict@PLT
.Lgcsite_format_47:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    format_ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
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
.Lgcsite_format_46:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00062_deref_α
                        .size            n00061_subscript_bx, .-n00061_subscript_bx
                        .type            n00062_deref_bx, @function
n00062_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_deref_α:           mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_format_49:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    format_ω
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_48:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00063_line_mark_α
                        .size            n00062_deref_bx, .-n00062_deref_bx
                        .type            n00063_line_mark_bx, @function
n00063_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_397_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_397_stno
                        .long            0
                        .long            86
                        .quad            .Lstnof1
                        .popsection
n00063_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 86;             jmp   n00064_call_icon_α
                        .size            n00063_line_mark_bx, .-n00063_line_mark_bx
                        .type            n00064_call_icon_bx, @function
n00064_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_call_icon_α:       mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lcall_icon_α_rkfn400:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn400]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_format_50:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_51:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    format_ω
                                                                              jmp   format_ω
n00064_call_icon_β:                                                             jmp   format_ω
                        .size            n00064_call_icon_bx, .-n00064_call_icon_bx
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
                        lea              rsp, [rbp + 1296]
                        mov              rbp, qword ptr [rbp + 1272];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 1296]
                        mov              rbp, qword ptr [rbp + 1272];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_format:
                        .quad            5498904595802
                        .quad            515396075600
                        .quad            .Lgcmap_format_s
                        .quad            1184
                        .quad            5
                        .quad            316659348799488
                        .quad            17596481012000
                        .quad            738871813865776
                        .quad            17596481012688
                        .quad            211106232533984
.Lgcmap_format_s:       .string          "format"
.Lgcsites_format_1:     .quad            52
                        .quad            .Lgcmap_format
                        .quad            0
                        .quad            .Lgcsite_format_0
                        .quad            65537
                        .quad            .Lgcsite_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_2
                        .quad            65537
                        .quad            .Lgcsite_format_3
                        .quad            65537
                        .quad            .Lgcsite_format_4
                        .quad            65537
                        .quad            .Lgcsite_format_5
                        .quad            65537
                        .quad            .Lgcsite_format_6
                        .quad            65537
                        .quad            .Lgcsite_format_7
                        .quad            65537
                        .quad            .Lgcsite_format_8
                        .quad            65537
                        .quad            .Lgcsite_format_9
                        .quad            65537
                        .quad            .Lgcsite_format_10
                        .quad            65537
                        .quad            .Lgcsite_format_11
                        .quad            65537
                        .quad            .Lgcsite_format_12
                        .quad            65537
                        .quad            .Lgcsite_format_13
                        .quad            65537
                        .quad            .Lgcsite_format_14
                        .quad            65537
                        .quad            .Lgcsite_format_15
                        .quad            65537
                        .quad            .Lgcsite_format_16
                        .quad            65537
                        .quad            .Lgcsite_format_17
                        .quad            65537
                        .quad            .Lgcsite_format_18
                        .quad            65537
                        .quad            .Lgcsite_format_19
                        .quad            65537
                        .quad            .Lgcsite_format_20
                        .quad            65537
                        .quad            .Lgcsite_format_21
                        .quad            65537
                        .quad            .Lgcsite_format_22
                        .quad            65537
                        .quad            .Lgcsite_format_23
                        .quad            65537
                        .quad            .Lgcsite_format_24
                        .quad            65537
                        .quad            .Lgcsite_format_25
                        .quad            65537
                        .quad            .Lgcsite_format_26
                        .quad            65537
                        .quad            .Lgcsite_format_27
                        .quad            65537
                        .quad            .Lgcsite_format_28
                        .quad            65537
                        .quad            .Lgcsite_format_29
                        .quad            65537
                        .quad            .Lgcsite_format_30
                        .quad            65537
                        .quad            .Lgcsite_format_31
                        .quad            65537
                        .quad            .Lgcsite_format_32
                        .quad            65537
                        .quad            .Lgcsite_format_33
                        .quad            65537
                        .quad            .Lgcsite_format_34
                        .quad            65537
                        .quad            .Lgcsite_format_35
                        .quad            65537
                        .quad            .Lgcsite_format_36
                        .quad            65537
                        .quad            .Lgcsite_format_37
                        .quad            65537
                        .quad            .Lgcsite_format_38
                        .quad            65537
                        .quad            .Lgcsite_format_39
                        .quad            65537
                        .quad            .Lgcsite_format_40
                        .quad            65537
                        .quad            .Lgcsite_format_41
                        .quad            65537
                        .quad            .Lgcsite_format_42
                        .quad            65537
                        .quad            .Lgcsite_format_43
                        .quad            65537
                        .quad            .Lgcsite_format_44
                        .quad            65537
                        .quad            .Lgcsite_format_45
                        .quad            65537
                        .quad            .Lgcsite_format_46
                        .quad            65537
                        .quad            .Lgcsite_format_47
                        .quad            65537
                        .quad            .Lgcsite_format_48
                        .quad            65537
                        .quad            .Lgcsite_format_49
                        .quad            65537
                        .quad            .Lgcsite_format_50
                        .quad            65537
                        .quad            .Lgcsite_format_51
                        .quad            65537
#-----------------------------------------------------------------------------------------------------------------------
FN__item:
                        lea              rax, [rsp + -1528]
                        mov              qword ptr [rax + 1456], rbp
                        mov              rcx, qword ptr [rsp + 0]
                        mov              qword ptr [rax + 1464], rcx
                        mov              rcx, qword ptr [rsp + 8]
                        mov              qword ptr [rax + 1472], rcx
                        lea              rcx, [rsp + 40]
                        mov              qword ptr [rax + 1480], rcx
                        lea              rbp, [rax + 1456]
                        mov              rsp, rax
                        lea              rax, [rip + .Lgcmap_item]
                        mov              qword ptr [rsp + 1336], rax
                        mov              dword ptr [rsp + 1328], 160
                        mov              dword ptr [rsp + 1332], 1456
                        mov              eax, 0
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 1328
                        rep              stosb
                        mov              r9,  qword ptr [rip + rtccb+48]
item_α_body:
                        lea              rax, [rip + n00065_suspend_β]
                        mov              qword ptr [rbp + -192], rax
                        .type            n00066_line_mark_bx, @function
n00066_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_466_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_466_stno
                        .long            0
                        .long            93
                        .quad            .Lstnof1
                        .popsection
n00066_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 93
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_467_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00067_line_mark_α
.Lline_mark_α_467_0:    .quad            .Lline_mark_α_467_0_s
.Lline_mark_α_467_0_s:  .string          "concord.icn"
                        .size            n00066_line_mark_bx, .-n00066_line_mark_bx
                        .type            n00067_line_mark_bx, @function
n00067_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_468_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_468_stno
                        .long            0
                        .long            94
                        .quad            .Lstnof1
                        .popsection
n00067_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 94;             jmp   n00068_bound_α
                        .size            n00067_line_mark_bx, .-n00067_line_mark_bx
                        .type            n00068_bound_bx, @function
n00068_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_bound_α:           mov              qword ptr [rbp + -1376], rsp;        jmp   n00069_line_mark_α
                        .size            n00068_bound_bx, .-n00068_bound_bx
                        .type            n00069_line_mark_bx, @function
n00069_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_472_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_472_stno
                        .long            0
                        .long            94
                        .quad            .Lstnof1
                        .popsection
n00069_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 94;             jmp   n00070_call_icon_α
                        .size            n00069_line_mark_bx, .-n00069_line_mark_bx
                        .type            n00070_call_icon_bx, @function
n00070_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_call_icon_α:       .section         .rodata
.Lcall_icon_α_rkfn475:  .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn475]
                        lea              rsi, [rbp + -1408]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262295
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_item_0:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -1424], rax
                        mov              qword ptr [rbp + -1416], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_1:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    item_ω
                                                                              jmp   n00071_assign_α
n00070_call_icon_β:                                                             jmp   item_ω
                        .size            n00070_call_icon_bx, .-n00070_call_icon_bx
                        .type            n00071_assign_bx, @function
n00071_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_assign_α:          mov              rax, qword ptr [rbp + -1424]
                        mov              rdx, qword ptr [rbp + -1416]
                        mov              qword ptr [rbp + -176], rax
                        mov              qword ptr [rbp + -168], rdx;         jmp   n00072_line_mark_α
                        .size            n00071_assign_bx, .-n00071_assign_bx
                        .type            n00072_line_mark_bx, @function
n00072_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_477_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_477_stno
                        .long            0
                        .long            95
                        .quad            .Lstnof1
                        .popsection
n00072_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 95;             jmp   n00073_line_mark_α
                        .size            n00072_line_mark_bx, .-n00072_line_mark_bx
                        .type            n00073_line_mark_bx, @function
n00073_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_479_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_479_stno
                        .long            0
                        .long            95
                        .quad            .Lstnof1
                        .popsection
n00073_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 95;             jmp   n00074_lit_integer_α
                        .size            n00073_line_mark_bx, .-n00073_line_mark_bx
                        .type            n00074_lit_integer_bx, @function
n00074_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_lit_integer_α:     mov              qword ptr [rbp + -288], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_481_0]
                        mov              qword ptr [rbp + -280], rax;         jmp   n00075_var_α
.Llit_integer_α_481_0:  .quad            1
                        .size            n00074_lit_integer_bx, .-n00074_lit_integer_bx
                        .type            n00075_var_bx, @function
n00075_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_var_α:             mov              rax, qword ptr [r9 + 48]             # lineno
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rbp + -272], rax          # result
                        mov              qword ptr [rbp + -264], rdx;         jmp   n00076_coerce_numeric_α
                        .size            n00075_var_bx, .-n00075_var_bx
                        .type            n00076_coerce_numeric_bx, @function
n00076_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_coerce_numeric_α:  mov              eax, dword ptr [rbp + -272]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_484_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_484_0
                        mov              eax, dword ptr [rbp + -288]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_484_0
.Lcoerce_numeric_α_484_1:
                        mov              rax, qword ptr [rbp + -272]
                        mov              qword ptr [rbp + -304], rax
                        mov              rax, qword ptr [rbp + -264]
                        mov              qword ptr [rbp + -296], rax;         jmp   n00077_binop_α
.Lcoerce_numeric_α_484_0:
                        lea              rdi, [rbp + -272]
                        lea              rsi, [rbp + -288]
                        lea              rdx, [rbp + -304]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_item_3:        push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_2:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + -304]
                        cmp              al, 104;                             je    n00078_line_mark_α
                                                                              jmp   n00077_binop_α
                        .size            n00076_coerce_numeric_bx, .-n00076_coerce_numeric_bx
                        .type            n00077_binop_bx, @function
n00077_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_binop_α:           mov              eax, dword ptr [rbp + -304]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_485_2
                        mov              rax, qword ptr [rbp + -296]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_485_0
                        mov              qword ptr [rbp + -320], 3
                        mov              qword ptr [rbp + -312], rax;         jmp   .Lbinop_α_485_7
.Lbinop_α_485_2:        and              edx, 1;                              jz    .Lbinop_α_485_0
                        mov              rsi, qword ptr [rbp + -296]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_485_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_485_4
.Lbinop_α_485_3:        movq             xmm0, rsi
.Lbinop_α_485_4:        cmp              cl, 5;                               je    .Lbinop_α_485_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_485_6
.Lbinop_α_485_5:        movq             xmm1, rdi
.Lbinop_α_485_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_485_0
                        mov              qword ptr [rbp + -320], 5
                        mov              qword ptr [rbp + -312], rax
.Lbinop_α_485_7:                                                              jmp   n00079_assign_α
.Lbinop_α_485_0:        mov              rdi, qword ptr [rbp + -304]
                        mov              rsi, qword ptr [rbp + -296]
                        mov              rdx, qword ptr [rbp + -288]
                        mov              rcx, qword ptr [rbp + -280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
.Lgcsite_item_5:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00078_line_mark_α
                        mov              qword ptr [rbp + -320], rax
                        mov              qword ptr [rbp + -312], rdx
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
.Lgcsite_item_4:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00079_assign_α
                        .size            n00077_binop_bx, .-n00077_binop_bx
                        .type            n00079_assign_bx, @function
n00079_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_assign_α:          mov              rax, qword ptr [rbp + -320]
                        mov              rdx, qword ptr [rbp + -312]
                        mov              qword ptr [r9 + 48], rax             # lineno
                        mov              qword ptr [r9 + 56], rdx;            jmp   n00078_line_mark_α
                        .size            n00079_assign_bx, .-n00079_assign_bx
                        .type            n00078_line_mark_bx, @function
n00078_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_487_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_487_stno
                        .long            0
                        .long            96
                        .quad            .Lstnof1
                        .popsection
n00078_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 96;             jmp   n00080_var_ref_α
                        .size            n00078_line_mark_bx, .-n00078_line_mark_bx
                        .type            n00080_var_ref_bx, @function
n00080_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052336                      # lineno
                        mov              qword ptr [rbp + -448], rax
                        mov              qword ptr [rbp + -440], rdx;         jmp   n00081_lit_integer_α
                        .size            n00080_var_ref_bx, .-n00080_var_ref_bx
                        .type            n00081_lit_integer_bx, @function
n00081_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_lit_integer_α:     mov              qword ptr [rbp + -432], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_491_0]
                        mov              qword ptr [rbp + -424], rax;         jmp   n00082_deref_α
.Llit_integer_α_491_0:  .quad            6
                        .size            n00081_lit_integer_bx, .-n00081_lit_integer_bx
                        .type            n00082_deref_bx, @function
n00082_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_deref_α:           mov              rdi, qword ptr [rbp + -448]
                        mov              rsi, qword ptr [rbp + -440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_item_7:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00083_line_mark_α
                        mov              qword ptr [rbp + -416], rax
                        mov              qword ptr [rbp + -408], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_6:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00084_line_mark_α
                        .size            n00082_deref_bx, .-n00082_deref_bx
                        .type            n00084_line_mark_bx, @function
n00084_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_493_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_493_stno
                        .long            0
                        .long            96
                        .quad            .Lstnof1
                        .popsection
n00084_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 96;             jmp   n00085_call_icon_α
                        .size            n00084_line_mark_bx, .-n00084_line_mark_bx
                        .type            n00085_call_icon_bx, @function
n00085_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_call_icon_α:       mov              rax, qword ptr [rbp + -432]
                        mov              qword ptr [rbp + -480], rax
                        mov              rax, qword ptr [rbp + -424]
                        mov              qword ptr [rbp + -472], rax
                        mov              rax, qword ptr [rbp + -416]
                        mov              qword ptr [rbp + -496], rax
                        mov              rax, qword ptr [rbp + -408]
                        mov              qword ptr [rbp + -488], rax
                        .section         .rodata
.Lcall_icon_α_rkfn496:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn496]
                        lea              rsi, [rbp + -496]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_item_8:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -512], rax
                        mov              qword ptr [rbp + -504], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_9:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00083_line_mark_α
                                                                              jmp   n00086_lit_string_α
n00085_call_icon_β:                                                             jmp   n00083_line_mark_α
                        .size            n00085_call_icon_bx, .-n00085_call_icon_bx
                        .type            n00086_lit_string_bx, @function
n00086_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_lit_string_α:      mov              qword ptr [rbp + -400], 2            # result
                        mov              dword ptr [rbp + -396], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_497_0]
                        mov              qword ptr [rbp + -392], rax;         jmp   n00087_var_ref_α
.Llit_string_α_497_0:   .quad            .Llit_string_α_497_0_s
.Llit_string_α_497_0_s: .string          "  "
                        .size            n00086_lit_string_bx, .-n00086_lit_string_bx
                        .type            n00087_var_ref_bx, @function
n00087_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + -176]
                        mov              qword ptr [rbp + -368], rax
                        mov              qword ptr [rbp + -360], rdx;         jmp   n00088_deref_α
                        .size            n00087_var_ref_bx, .-n00087_var_ref_bx
                        .type            n00088_deref_bx, @function
n00088_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_deref_α:           mov              rdi, qword ptr [rbp + -368]
                        mov              rsi, qword ptr [rbp + -360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_item_11:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00083_line_mark_α
                        mov              qword ptr [rbp + -352], rax
                        mov              qword ptr [rbp + -344], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_10:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00089_line_mark_α
                        .size            n00088_deref_bx, .-n00088_deref_bx
                        .type            n00089_line_mark_bx, @function
n00089_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_501_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_501_stno
                        .long            0
                        .long            96
                        .quad            .Lstnof1
                        .popsection
n00089_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 96;             jmp   n00090_call_icon_α
                        .size            n00089_line_mark_bx, .-n00089_line_mark_bx
                        .type            n00090_call_icon_bx, @function
n00090_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_call_icon_α:       mov              rax, qword ptr [rbp + -352]
                        mov              qword ptr [rbp + -544], rax
                        mov              rax, qword ptr [rbp + -344]
                        mov              qword ptr [rbp + -536], rax
                        mov              rax, qword ptr [rbp + -400]
                        mov              qword ptr [rbp + -560], rax
                        mov              rax, qword ptr [rbp + -392]
                        mov              qword ptr [rbp + -552], rax
                        mov              rax, qword ptr [rbp + -512]
                        mov              qword ptr [rbp + -576], rax
                        mov              rax, qword ptr [rbp + -504]
                        mov              qword ptr [rbp + -568], rax
                        .section         .rodata
.Lcall_icon_α_rkfn504:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn504]
                        lea              rsi, [rbp + -576]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_item_12:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -592], rax
                        mov              qword ptr [rbp + -584], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_13:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00083_line_mark_α
                                                                              jmp   n00083_line_mark_α
n00090_call_icon_β:                                                             jmp   n00083_line_mark_α
                        .size            n00090_call_icon_bx, .-n00090_call_icon_bx
                        .type            n00083_line_mark_bx, @function
n00083_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_505_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_505_stno
                        .long            0
                        .long            97
                        .quad            .Lstnof1
                        .popsection
n00083_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97;             jmp   n00091_var_ref_α
                        .size            n00083_line_mark_bx, .-n00083_line_mark_bx
                        .type            n00091_var_ref_bx, @function
n00091_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + -176]
                        mov              qword ptr [rbp + -640], rax
                        mov              qword ptr [rbp + -632], rdx;         jmp   n00092_deref_α
                        .size            n00091_var_ref_bx, .-n00091_var_ref_bx
                        .type            n00092_deref_bx, @function
n00092_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_deref_α:           mov              rdi, qword ptr [rbp + -640]
                        mov              rsi, qword ptr [rbp + -632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_item_15:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00093_line_mark_α
                        mov              qword ptr [rbp + -624], rax
                        mov              qword ptr [rbp + -616], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_14:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00094_line_mark_α
                        .size            n00092_deref_bx, .-n00092_deref_bx
                        .type            n00094_line_mark_bx, @function
n00094_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_510_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_510_stno
                        .long            0
                        .long            97
                        .quad            .Lstnof1
                        .popsection
n00094_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97;             jmp   n00095_call_icon_α
                        .size            n00094_line_mark_bx, .-n00094_line_mark_bx
                        .type            n00095_call_icon_bx, @function
n00095_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_call_icon_α:       mov              rax, qword ptr [rbp + -624]
                        mov              qword ptr [rbp + -672], rax
                        mov              rax, qword ptr [rbp + -616]
                        mov              qword ptr [rbp + -664], rax
                        .section         .rodata
.Lcall_icon_α_rkfn513:  .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn513]
                        lea              rsi, [rbp + -672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196743
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_item_16:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -688], rax
                        mov              qword ptr [rbp + -680], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_17:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00093_line_mark_α
                                                                              jmp   n00096_assign_α
n00095_call_icon_β:                                                             jmp   n00093_line_mark_α
                        .size            n00095_call_icon_bx, .-n00095_call_icon_bx
                        .type            n00096_assign_bx, @function
n00096_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_assign_α:          mov              rax, qword ptr [rbp + -688]
                        mov              rdx, qword ptr [rbp + -680]
                        mov              qword ptr [rbp + -176], rax
                        mov              qword ptr [rbp + -168], rdx;         jmp   n00093_line_mark_α
                        .size            n00096_assign_bx, .-n00096_assign_bx
                        .type            n00093_line_mark_bx, @function
n00093_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_515_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_515_stno
                        .long            0
                        .long            98
                        .quad            .Lstnof1
                        .popsection
n00093_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 98;             jmp   n00097_lit_integer_α
                        .size            n00093_line_mark_bx, .-n00093_line_mark_bx
                        .type            n00097_lit_integer_bx, @function
n00097_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00097_lit_integer_α:     mov              qword ptr [rbp + -720], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_517_0]
                        mov              qword ptr [rbp + -712], rax;         jmp   n00098_assign_α
.Llit_integer_α_517_0:  .quad            1
                        .size            n00097_lit_integer_bx, .-n00097_lit_integer_bx
                        .type            n00098_assign_bx, @function
n00098_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_assign_α:          mov              rax, qword ptr [rbp + -720]
                        mov              rdx, qword ptr [rbp + -712]
                        mov              qword ptr [rbp + -144], rax
                        mov              qword ptr [rbp + -136], rdx;         jmp   n00099_line_mark_α
                        .size            n00098_assign_bx, .-n00098_assign_bx
                        .type            n00099_line_mark_bx, @function
n00099_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_519_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_519_stno
                        .long            0
                        .long            99
                        .quad            .Lstnof1
                        .popsection
n00099_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 99;             jmp   n00100_var_α
                        .size            n00099_line_mark_bx, .-n00099_line_mark_bx
                        .type            n00100_var_bx, @function
n00100_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00100_var_α:             mov              rax, qword ptr [rbp + -176]
                        mov              qword ptr [rbp + -752], rax
                        mov              rax, qword ptr [rbp + -168]
                        mov              qword ptr [rbp + -744], rax;         jmp   n00101_scan_enter_α
                        .size            n00100_var_bx, .-n00100_var_bx
                        .type            n00101_scan_enter_bx, @function
n00101_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_scan_enter_α:      mov              qword ptr [rbp + -1312], r13
                        mov              qword ptr [rbp + -1304], r14
                        mov              qword ptr [rbp + -1296], r15
                        mov              rdi, qword ptr [rbp + -752]
                        mov              rsi, qword ptr [rbp + -744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
.Lgcsite_item_19:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_item_18:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            je    n00102_unmark_α
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n00103_bound_α
                        .size            n00101_scan_enter_bx, .-n00101_scan_enter_bx
                        .type            n00103_bound_bx, @function
n00103_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_bound_α:           mov              qword ptr [rbp + -1120], rsp;        jmp   n00104_lit_charset_α
                        .size            n00103_bound_bx, .-n00103_bound_bx
                        .type            n00104_lit_charset_bx, @function
n00104_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_lit_charset_α:     mov              qword ptr [rbp + -1168], 2           # result
                        mov              dword ptr [rbp + -1164], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_527_0]
                        mov              qword ptr [rbp + -1160], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_527_0]
                        mov              rsi, 52
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
.Lgcsite_item_21:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_item_20:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00105_line_mark_α
.Llit_charset_α_527_0:  .quad            .Llit_charset_α_527_0_s
.Llit_charset_α_527_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00104_lit_charset_bx, .-n00104_lit_charset_bx
                        .type            n00105_line_mark_bx, @function
n00105_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_528_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_528_stno
                        .long            0
                        .long            100
                        .quad            .Lstnof1
                        .popsection
n00105_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00106_scan_upto_α
                        .size            n00105_line_mark_bx, .-n00105_line_mark_bx
                        .type            n00106_scan_upto_bx, @function
n00106_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_scan_upto_α:       mov              qword ptr [rbp + -1200], r14
.Lscan_upto_α_531_0:    mov              rax, qword ptr [rbp + -1200]
                        cmp              rax, r15;                            jge   n00107_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .Lscan_upto_α_531_3]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_upto_α_531_1
                        mov              qword ptr [rbp + -1216], 3
                        add              rax, 1
                        mov              qword ptr [rbp + -1208], rax;        jmp   n00108_line_mark_α
.Lscan_upto_α_531_1:    inc              qword ptr [rbp + -1200];             jmp   .Lscan_upto_α_531_0
n00106_scan_upto_β:       inc              qword ptr [rbp + -1200];             jmp   .Lscan_upto_α_531_0
.Lscan_upto_β_531_2:    .quad            .Lscan_upto_β_531_2_s
.Lscan_upto_β_531_2_s:  .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.Lscan_upto_α_531_3:    .quad            0
.Lscan_upto_β_531_4:    .quad            576460743847706622
.Lscan_upto_β_531_5:    .quad            0
.Lscan_upto_β_531_6:    .quad            0
                        .size            n00106_scan_upto_bx, .-n00106_scan_upto_bx
                        .type            n00108_line_mark_bx, @function
n00108_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_532_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_532_stno
                        .long            0
                        .long            100
                        .quad            .Lstnof1
                        .popsection
n00108_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00109_scan_tab_α
                        .size            n00108_line_mark_bx, .-n00108_line_mark_bx
                        .type            n00109_scan_tab_bx, @function
n00109_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_scan_tab_α:        mov              rdi, qword ptr [rbp + -1216]
                        mov              rsi, qword ptr [rbp + -1208]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_item_27:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    n00106_scan_upto_β
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
.Lgcsite_item_26:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + -1216]
                        mov              rsi, qword ptr [rbp + -1208]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_item_25:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_item_24:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_535_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_535_0:     cmp              rax, 1;                              jl    n00106_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00106_scan_upto_β
                        mov              qword ptr [rbp + -1248], r14
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
.Lgcsite_item_23:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_item_22:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + -1264], rax
                        mov              qword ptr [rbp + -1256], rdx;        jmp   n00110_line_mark_α
n00109_scan_tab_β:        mov              r14, qword ptr [rbp + -1248];        jmp   n00106_scan_upto_β
                        .size            n00109_scan_tab_bx, .-n00109_scan_tab_bx
                        .type            n00110_line_mark_bx, @function
n00110_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_536_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_536_stno
                        .long            0
                        .long            101
                        .quad            .Lstnof1
                        .popsection
n00110_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 101;            jmp   n00111_line_mark_α
                        .size            n00110_line_mark_bx, .-n00110_line_mark_bx
                        .type            n00111_line_mark_bx, @function
n00111_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_538_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_538_stno
                        .long            0
                        .long            101
                        .quad            .Lstnof1
                        .popsection
n00111_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 101;            jmp   n00112_lit_charset_α
                        .size            n00111_line_mark_bx, .-n00111_line_mark_bx
                        .type            n00112_lit_charset_bx, @function
n00112_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_lit_charset_α:     mov              qword ptr [rbp + -816], 2            # result
                        mov              dword ptr [rbp + -812], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_540_0]
                        mov              qword ptr [rbp + -808], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_540_0]
                        mov              rsi, 52
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
.Lgcsite_item_29:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_item_28:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00113_line_mark_α
.Llit_charset_α_540_0:  .quad            .Llit_charset_α_540_0_s
.Llit_charset_α_540_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00112_lit_charset_bx, .-n00112_lit_charset_bx
                        .type            n00113_line_mark_bx, @function
n00113_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_541_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_541_stno
                        .long            0
                        .long            101
                        .quad            .Lstnof1
                        .popsection
n00113_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 101;            jmp   n00114_scan_many_α
                        .size            n00113_line_mark_bx, .-n00113_line_mark_bx
                        .type            n00114_scan_many_bx, @function
n00114_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00114_scan_many_α:       lea              rdi, [rip + .Lscan_many_α_544_3]
                        mov              eax, r14d
.Lscan_many_α_544_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_544_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_many_α_544_1
                        add              eax, 1;                              jmp   .Lscan_many_α_544_0
.Lscan_many_α_544_1:    cmp              eax, r14d;                           je    n00115_line_mark_α
                        mov              qword ptr [rbp + -848], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + -840], rcx;         jmp   n00116_line_mark_α
n00114_scan_many_β:                                                             jmp   n00115_line_mark_α
.Lscan_many_β_544_2:    .quad            .Lscan_many_β_544_2_s
.Lscan_many_β_544_2_s:  .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.Lscan_many_α_544_3:    .quad            0
.Lscan_many_β_544_4:    .quad            576460743847706622
.Lscan_many_β_544_5:    .quad            0
.Lscan_many_β_544_6:    .quad            0
                        .size            n00114_scan_many_bx, .-n00114_scan_many_bx
                        .type            n00116_line_mark_bx, @function
n00116_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_545_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_545_stno
                        .long            0
                        .long            101
                        .quad            .Lstnof1
                        .popsection
n00116_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 101;            jmp   n00117_scan_tab_α
                        .size            n00116_line_mark_bx, .-n00116_line_mark_bx
                        .type            n00117_scan_tab_bx, @function
n00117_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_scan_tab_α:        mov              rdi, qword ptr [rbp + -848]
                        mov              rsi, qword ptr [rbp + -840]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_item_35:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    n00115_line_mark_α
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
.Lgcsite_item_34:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + -848]
                        mov              rsi, qword ptr [rbp + -840]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_item_33:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_item_32:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_548_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_548_0:     cmp              rax, 1;                              jl    n00115_line_mark_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00115_line_mark_α
                        mov              qword ptr [rbp + -880], r14
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
.Lgcsite_item_31:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_item_30:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + -896], rax
                        mov              qword ptr [rbp + -888], rdx;         jmp   n00118_assign_α
n00117_scan_tab_β:        mov              r14, qword ptr [rbp + -880];         jmp   n00115_line_mark_α
                        .size            n00117_scan_tab_bx, .-n00117_scan_tab_bx
                        .type            n00118_assign_bx, @function
n00118_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_assign_α:          mov              rax, qword ptr [rbp + -896]
                        mov              rdx, qword ptr [rbp + -888]
                        mov              qword ptr [rbp + -160], rax
                        mov              qword ptr [rbp + -152], rdx;         jmp   n00115_line_mark_α
                        .size            n00118_assign_bx, .-n00118_assign_bx
                        .type            n00115_line_mark_bx, @function
n00115_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_550_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_550_stno
                        .long            0
                        .long            102
                        .quad            .Lstnof1
                        .popsection
n00115_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 102;            jmp   n00119_disjunction_α
                        .size            n00115_line_mark_bx, .-n00115_line_mark_bx
                        .type            n00119_disjunction_bx, @function
n00119_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00119_disjunction_α:     mov              qword ptr [rbp + -1056], 0
                        mov              qword ptr [rbp + -1048], 0
                        mov              dword ptr [rbp + -1040], 0;          jmp   n00120_var_α
.Ldisjunction_γ_452_as: mov              eax, dword ptr [rbp + -1040]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_553_0
                                                                              jmp   n00121_conjunction_α
.Ldisjunction_α_553_0:                                                        jmp   n00121_conjunction_α
n00119_disjunction_β:     mov              eax, dword ptr [rbp + -1040];        jmp   n00122_unmark_α
.Ldisjunction_γ_452_af:
.Ldisjunction_ω_452_af: add              dword ptr [rbp + -1040], 1
                        mov              eax, dword ptr [rbp + -1040];        jmp   n00122_unmark_α
                        .size            n00119_disjunction_bx, .-n00119_disjunction_bx
                        .type            n00121_conjunction_bx, @function
n00121_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_conjunction_α:     mov              rax, qword ptr [rbp + -1056]
                        mov              qword ptr [rbp + -1072], rax
                        mov              rax, qword ptr [rbp + -1048]
                        mov              qword ptr [rbp + -1064], rax;        jmp   n00122_unmark_α
n00121_conjunction_β:                                                           jmp   n00122_unmark_α
                        .size            n00121_conjunction_bx, .-n00121_conjunction_bx
                        .type            n00120_var_bx, @function
n00120_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_var_α:             mov              rax, qword ptr [rbp + -160]
                        mov              qword ptr [rbp + -944], rax
                        mov              rax, qword ptr [rbp + -152]
                        mov              qword ptr [rbp + -936], rax;         jmp   n00123_unop_α
n00120_var_β:                                                                   jmp   .Ldisjunction_ω_452_af
                        .size            n00120_var_bx, .-n00120_var_bx
                        .type            n00123_unop_bx, @function
n00123_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00123_unop_α:            mov              rdi, qword ptr [rbp + -160]
                        mov              rsi, qword ptr [rbp + -152]
                        call             qword ptr [rip + rt_size_d@GOTPCREL]
.Lgcsite_item_37:       mov              qword ptr [rbp + -960], rax
                        mov              qword ptr [rbp + -952], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:116
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_36:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00124_lit_integer_α
                        .size            n00123_unop_bx, .-n00123_unop_bx
                        .type            n00124_lit_integer_bx, @function
n00124_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_lit_integer_α:     mov              qword ptr [rbp + -928], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_558_0]
                        mov              qword ptr [rbp + -920], rax;         jmp   n00125_binop_test_α
.Llit_integer_α_558_0:  .quad            3
                        .size            n00124_lit_integer_bx, .-n00124_lit_integer_bx
                        .type            n00125_binop_test_bx, @function
n00125_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_binop_test_α:      mov              eax, dword ptr [rbp + -960]
                        cmp              al, 112;                             je    .Lbinop_test_α_559_0
                        mov              eax, dword ptr [rbp + -928]
                        cmp              al, 112;                             je    .Lbinop_test_α_559_0
                        mov              eax, dword ptr [rbp + -960]
                        cmp              al, 3;                               jne   .Lbinop_test_α_559_2
                        mov              eax, dword ptr [rbp + -928]
                        cmp              al, 3;                               jne   .Lbinop_test_α_559_2
.Lbinop_test_α_559_1:   mov              rax, qword ptr [rbp + -952]
                        mov              rcx, qword ptr [rbp + -920]
                        cmp              rax, rcx;                            jl    .Ldisjunction_ω_452_af
                        mov              rcx, qword ptr [rbp + -928]
                        mov              qword ptr [rbp + -976], rcx
                        mov              rcx, qword ptr [rbp + -920]
                        mov              qword ptr [rbp + -968], rcx;         jmp   n00126_var_α
.Lbinop_test_α_559_0:   mov              rdi, qword ptr [rbp + -960]
                        mov              rsi, qword ptr [rbp + -952]
                        mov              rdx, qword ptr [rbp + -928]
                        mov              rcx, qword ptr [rbp + -920]
                        mov              r8d, 8
                        lea              r9, [rbp + -976]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
.Lgcsite_item_43:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_559_2
                        cmp              eax, 1;                              je    .Ldisjunction_ω_452_af
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
.Lgcsite_item_42:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00126_var_α
.Lbinop_test_α_559_2:   mov              rdi, qword ptr [rbp + -960]
                        mov              rsi, qword ptr [rbp + -952]
                        mov              rdx, qword ptr [rbp + -928]
                        mov              rcx, qword ptr [rbp + -920]
                        mov              r8d, 8
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_item_41:       push             rax
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
.Lgcsite_item_40:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    .Ldisjunction_ω_452_af
                        mov              rdi, qword ptr [rbp + -960]
                        mov              rsi, qword ptr [rbp + -952]
                        mov              rdx, qword ptr [rbp + -928]
                        mov              rcx, qword ptr [rbp + -920]
                        lea              r8, [rbp + -976]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
.Lgcsite_item_39:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_item_38:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00126_var_α
                        .size            n00125_binop_test_bx, .-n00125_binop_test_bx
                        .type            n00126_var_bx, @function
n00126_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_var_α:             mov              rax, qword ptr [rbp + -160]
                        mov              qword ptr [rbp + -1024], rax
                        mov              rax, qword ptr [rbp + -152]
                        mov              qword ptr [rbp + -1016], rax;        jmp   n00065_suspend_α
                        .size            n00126_var_bx, .-n00126_var_bx
                        .type            n00065_suspend_bx, @function
n00065_suspend_bx:
#=======================================================================================================================
# suspend
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 102 0
n00065_suspend_α:         lea              rax, [rip + n00065_suspend_β]
                        mov              qword ptr [rbp + -192], rax
                        mov              rax, qword ptr [rbp + -1024]
                        mov              qword ptr [rbp + -1456], rax
                        mov              rax, qword ptr [rbp + -1016]
                        mov              qword ptr [rbp + -1448], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
.Lgcsite_item_46:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00127_scan_α
n00065_suspend_β:         push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
.Lgcsite_item_45:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_live_subj@PLT
.Lgcsite_item_44:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        pop              rdx
                        pop              rax;                                 jmp   n00127_scan_β
                        .size            n00065_suspend_bx, .-n00065_suspend_bx
                        .type            n00127_scan_bx, @function
n00127_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_scan_α:            mov              dword ptr [rbp + -992], r14d
                        mov              dword ptr [rbp + -988], r15d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_live_subj@PLT
.Lgcsite_item_51:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -984], rax
                        mov              rdi, qword ptr [rbp + -1312]
                        mov              rsi, qword ptr [rbp + -1304]
                        mov              rdx, qword ptr [rbp + -1296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
.Lgcsite_item_50:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + -1312]
                        mov              r14, qword ptr [rbp + -1304]
                        mov              r15, qword ptr [rbp + -1296];        jmp   item_γ
n00127_scan_β:            mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
.Lgcsite_item_49:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -1304], rax
                        mov              rdi, qword ptr [rbp + -984]
                        mov              esi, dword ptr [rbp + -988]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_reenter_live@PLT
.Lgcsite_item_48:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14d, dword ptr [rbp + -992]
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
.Lgcsite_item_47:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00122_unmark_α
                                                                              jmp   n00122_unmark_α
                        .size            n00127_scan_bx, .-n00127_scan_bx
                        .type            n00122_unmark_bx, @function
n00122_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_unmark_α:          mov              rsp, qword ptr [rbp + -1120];        jmp   n00128_line_mark_α
n00122_unmark_β:                                                                jmp   n00128_line_mark_α
                        .size            n00122_unmark_bx, .-n00122_unmark_bx
                        .type            n00128_line_mark_bx, @function
n00128_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_568_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_568_stno
                        .long            0
                        .long            100
                        .quad            .Lstnof1
                        .popsection
n00128_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00103_bound_α
                        .size            n00128_line_mark_bx, .-n00128_line_mark_bx
                        .type            n00102_unmark_bx, @function
n00102_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_unmark_α:          mov              rsp, qword ptr [rbp + -1376];        jmp   n00129_line_mark_α
                        .size            n00102_unmark_bx, .-n00102_unmark_bx
                        .type            n00129_line_mark_bx, @function
n00129_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_572_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_572_stno
                        .long            0
                        .long            94
                        .quad            .Lstnof1
                        .popsection
n00129_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 94;             jmp   n00068_bound_α
                        .size            n00129_line_mark_bx, .-n00129_line_mark_bx
                        .type            n00107_scan_bx, @function
n00107_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_scan_α:            mov              rdi, qword ptr [rbp + -1312]
                        mov              rsi, qword ptr [rbp + -1304]
                        mov              rdx, qword ptr [rbp + -1296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
.Lgcsite_item_52:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + -1312]
                        mov              r14, qword ptr [rbp + -1304]
                        mov              r15, qword ptr [rbp + -1296];        jmp   n00102_unmark_α
n00107_scan_β:                                                                  jmp   n00102_unmark_α
                        .size            n00107_scan_bx, .-n00107_scan_bx
#-----------------------------------------------------------------------------------------------------------------------
item_res:
                        mov              rbp, rax
                        mov              rdx, rax
                        mov              rcx, qword ptr [rdx + 48]
                        test             rcx, rcx;                            je    .Litem_α_575_238
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rdx + 56]
                        test             rcx, rcx;                            je    .Litem_α_575_238
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
.Litem_α_575_238:       mov              rax, rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
#-----------------------------------------------------------------------------------------------------------------------
item_β:
                        mov              rax, qword ptr [rbp + -192];         jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
item_γ:
                        mov              rdx, rbp
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 48], rcx
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 56], rcx
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
                        .quad            6254818839898
                        .quad            249108103312
                        .quad            .Lgcmap_item_s
                        .quad            1328
                        .quad            22
                        .quad            87960930222080
                        .quad            17596481011792
                        .quad            52776558133344
                        .quad            8804682956944
                        .quad            26392574034072
                        .quad            35184372089008
                        .quad            17596481011920
                        .quad            35184372089056
                        .quad            17596481011968
                        .quad            70368744177936
                        .quad            17596481012048
                        .quad            70368744178016
                        .quad            17596481012128
                        .quad            35184372089264
                        .quad            8800387989968
                        .quad            8804682957272
                        .quad            105553116266976
                        .quad            17596481012288
                        .quad            738871813866064
                        .quad            8808977925360
                        .quad            8800387990776
                        .quad            52776558134528
.Lgcmap_item_s:         .string          "item"
.Lgcsites_item_2:       .quad            53
                        .quad            .Lgcmap_item
                        .quad            0
                        .quad            .Lgcsite_item_0
                        .quad            6253472514049
                        .quad            .Lgcsite_item_1
                        .quad            6253472514049
                        .quad            .Lgcsite_item_2
                        .quad            6253472514049
                        .quad            .Lgcsite_item_3
                        .quad            6253472514049
                        .quad            .Lgcsite_item_4
                        .quad            6253472514049
                        .quad            .Lgcsite_item_5
                        .quad            6253472514049
                        .quad            .Lgcsite_item_6
                        .quad            6253472514049
                        .quad            .Lgcsite_item_7
                        .quad            6253472514049
                        .quad            .Lgcsite_item_8
                        .quad            6253472514049
                        .quad            .Lgcsite_item_9
                        .quad            6253472514049
                        .quad            .Lgcsite_item_10
                        .quad            6253472514049
                        .quad            .Lgcsite_item_11
                        .quad            6253472514049
                        .quad            .Lgcsite_item_12
                        .quad            6253472514049
                        .quad            .Lgcsite_item_13
                        .quad            6253472514049
                        .quad            .Lgcsite_item_14
                        .quad            6253472514049
                        .quad            .Lgcsite_item_15
                        .quad            6253472514049
                        .quad            .Lgcsite_item_16
                        .quad            6253472514049
                        .quad            .Lgcsite_item_17
                        .quad            6253472514049
                        .quad            .Lgcsite_item_18
                        .quad            6253472514049
                        .quad            .Lgcsite_item_19
                        .quad            6253472514049
                        .quad            .Lgcsite_item_20
                        .quad            6253472514049
                        .quad            .Lgcsite_item_21
                        .quad            6253472514049
                        .quad            .Lgcsite_item_22
                        .quad            6253472514049
                        .quad            .Lgcsite_item_23
                        .quad            6253472514049
                        .quad            .Lgcsite_item_24
                        .quad            6253472514049
                        .quad            .Lgcsite_item_25
                        .quad            6253472514049
                        .quad            .Lgcsite_item_26
                        .quad            6253472514049
                        .quad            .Lgcsite_item_27
                        .quad            6253472514049
                        .quad            .Lgcsite_item_28
                        .quad            6253472514049
                        .quad            .Lgcsite_item_29
                        .quad            6253472514049
                        .quad            .Lgcsite_item_30
                        .quad            6253472514049
                        .quad            .Lgcsite_item_31
                        .quad            6253472514049
                        .quad            .Lgcsite_item_32
                        .quad            6253472514049
                        .quad            .Lgcsite_item_33
                        .quad            6253472514049
                        .quad            .Lgcsite_item_34
                        .quad            6253472514049
                        .quad            .Lgcsite_item_35
                        .quad            6253472514049
                        .quad            .Lgcsite_item_36
                        .quad            6253472514049
                        .quad            .Lgcsite_item_37
                        .quad            6253472514049
                        .quad            .Lgcsite_item_38
                        .quad            6253472514049
                        .quad            .Lgcsite_item_39
                        .quad            6253472514049
                        .quad            .Lgcsite_item_40
                        .quad            6253472514049
                        .quad            .Lgcsite_item_41
                        .quad            6253472514049
                        .quad            .Lgcsite_item_42
                        .quad            6253472514049
                        .quad            .Lgcsite_item_43
                        .quad            6253472514049
                        .quad            .Lgcsite_item_44
                        .quad            6253472514049
                        .quad            .Lgcsite_item_45
                        .quad            6253472514049
                        .quad            .Lgcsite_item_46
                        .quad            6253472514049
                        .quad            .Lgcsite_item_47
                        .quad            6253472514049
                        .quad            .Lgcsite_item_48
                        .quad            6253472514049
                        .quad            .Lgcsite_item_49
                        .quad            6253472514049
                        .quad            .Lgcsite_item_50
                        .quad            6253472514049
                        .quad            .Lgcsite_item_51
                        .quad            6253472514049
                        .quad            .Lgcsite_item_52
                        .quad            6253472514049
#-----------------------------------------------------------------------------------------------------------------------
FN__options:
                        sub              rsp, 3984
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 3976
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_options]
                        mov              qword ptr [rsp + 3768], rax
                        mov              dword ptr [rsp + 3760], 160
                        mov              dword ptr [rsp + 3764], 3984
                        mov              eax, 0
                        mov              qword ptr [rsp + 3976], rbp
                        mov              rbp, rsp
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
options_α_body:
                        .type            n00130_line_mark_bx, @function
n00130_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_745_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_745_stno
                        .long            0
                        .long            111
                        .quad            .Lstnof1
                        .popsection
n00130_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 111
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_746_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00131_line_mark_α
.Lline_mark_α_746_0:    .quad            .Lline_mark_α_746_0_s
.Lline_mark_α_746_0_s:  .string          "concord.icn"
                        .size            n00130_line_mark_bx, .-n00130_line_mark_bx
                        .type            n00131_line_mark_bx, @function
n00131_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_747_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_747_stno
                        .long            0
                        .long            112
                        .quad            .Lstnof1
                        .popsection
n00131_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 112;            jmp   n00132_var_ref_α
                        .size            n00131_line_mark_bx, .-n00131_line_mark_bx
                        .type            n00132_var_ref_bx, @function
n00132_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00132_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4000]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx;         jmp   n00133_nulltest_var_α
                        .size            n00132_var_ref_bx, .-n00132_var_ref_bx
                        .type            n00133_nulltest_var_bx, @function
n00133_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_nulltest_var_α:    mov              eax, dword ptr [rbp + 3472]
                        cmp              al, 104;                             je    n00134_line_mark_α
                        mov              rdi, qword ptr [rbp + 3472]
                        mov              rsi, qword ptr [rbp + 3480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_1:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00134_line_mark_α
                        cmp              eax, 0;                              jne   n00134_line_mark_α
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3496], rax
                        push             rax                                  # gc_poll bb_unop.cpp:64
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_0:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00135_lit_charset_α
                        .size            n00133_nulltest_var_bx, .-n00133_nulltest_var_bx
                        .type            n00135_lit_charset_bx, @function
n00135_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_lit_charset_α:     mov              qword ptr [rbp + 3568], 2            # result
                        mov              dword ptr [rbp + 3572], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_752_0]
                        mov              qword ptr [rbp + 3576], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_752_0]
                        mov              rsi, 52
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
.Lgcsite_options_3:     mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_2:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00136_line_mark_α
.Llit_charset_α_752_0:  .quad            .Llit_charset_α_752_0_s
.Llit_charset_α_752_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00135_lit_charset_bx, .-n00135_lit_charset_bx
                        .type            n00136_line_mark_bx, @function
n00136_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_753_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_753_stno
                        .long            0
                        .long            112
                        .quad            .Lstnof1
                        .popsection
n00136_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 112;            jmp   n00137_call_icon_α
                        .size            n00136_line_mark_bx, .-n00136_line_mark_bx
                        .type            n00137_call_icon_bx, @function
n00137_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_call_icon_α:       mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3544], rax
                        .section         .rodata
.Lcall_icon_α_rkfn756:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn756]
                        lea              rsi, [rbp + 3536]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_4:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_5:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00134_line_mark_α
                                                                              jmp   n00138_assign_var_α
n00137_call_icon_β:                                                             jmp   n00134_line_mark_α
                        .size            n00137_call_icon_bx, .-n00137_call_icon_bx
                        .type            n00138_assign_var_bx, @function
n00138_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_assign_var_α:      mov              rdi, qword ptr [rbp + 3488]
                        mov              rsi, qword ptr [rbp + 3496]
                        mov              rdx, qword ptr [rbp + 3520]
                        mov              rcx, qword ptr [rbp + 3528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_options_7:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00134_line_mark_α
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_6:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00134_line_mark_α
                        .size            n00138_assign_var_bx, .-n00138_assign_var_bx
                        .type            n00134_line_mark_bx, @function
n00134_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_758_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_758_stno
                        .long            0
                        .long            113
                        .quad            .Lstnof1
                        .popsection
n00134_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 113;            jmp   n00139_line_mark_α
                        .size            n00134_line_mark_bx, .-n00134_line_mark_bx
                        .type            n00139_line_mark_bx, @function
n00139_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_760_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_760_stno
                        .long            0
                        .long            113
                        .quad            .Lstnof1
                        .popsection
n00139_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 113;            jmp   n00140_call_icon_α
                        .size            n00139_line_mark_bx, .-n00139_line_mark_bx
                        .type            n00140_call_icon_bx, @function
n00140_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_call_icon_α:       .section         .rodata
.Lcall_icon_α_rkfn763:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn763]
                        lea              rsi, [rbp + 3440]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_8:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_9:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00141_line_mark_α
                                                                              jmp   n00142_assign_α
n00140_call_icon_β:                                                             jmp   n00141_line_mark_α
                        .size            n00140_call_icon_bx, .-n00140_call_icon_bx
                        .type            n00142_assign_bx, @function
n00142_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_assign_α:          mov              rax, qword ptr [rbp + 3424]
                        mov              rdx, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx;         jmp   n00141_line_mark_α
                        .size            n00142_assign_bx, .-n00142_assign_bx
                        .type            n00141_line_mark_bx, @function
n00141_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_765_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_765_stno
                        .long            0
                        .long            114
                        .quad            .Lstnof1
                        .popsection
n00141_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 114;            jmp   n00143_make_list_α
                        .size            n00141_line_mark_bx, .-n00141_line_mark_bx
                        .type            n00143_make_list_bx, @function
n00143_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_make_list_α:       lea              rdi, [rbp + 3408]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
.Lgcsite_options_11:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
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
.Lgcsite_options_10:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00144_assign_α
                        .size            n00143_make_list_bx, .-n00143_make_list_bx
                        .type            n00144_assign_bx, @function
n00144_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_assign_α:          mov              rax, qword ptr [rbp + 3392]
                        mov              rdx, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx;         jmp   n00145_line_mark_α
                        .size            n00144_assign_bx, .-n00144_assign_bx
                        .type            n00145_line_mark_bx, @function
n00145_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_770_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_770_stno
                        .long            0
                        .long            115
                        .quad            .Lstnof1
                        .popsection
n00145_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00146_bound_α
                        .size            n00145_line_mark_bx, .-n00145_line_mark_bx
                        .type            n00146_bound_bx, @function
n00146_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_bound_α:           mov              qword ptr [rbp + 416], rsp;          jmp   n00147_var_ref_α
                        .size            n00146_bound_bx, .-n00146_bound_bx
                        .type            n00147_var_ref_bx, @function
n00147_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3984]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n00148_deref_α
                        .size            n00147_var_ref_bx, .-n00147_var_ref_bx
                        .type            n00148_deref_bx, @function
n00148_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_deref_α:           mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_13:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00149_line_mark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_12:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00150_line_mark_α
                        .size            n00148_deref_bx, .-n00148_deref_bx
                        .type            n00150_line_mark_bx, @function
n00150_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_777_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_777_stno
                        .long            0
                        .long            115
                        .quad            .Lstnof1
                        .popsection
n00150_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00151_call_icon_α
                        .size            n00150_line_mark_bx, .-n00150_line_mark_bx
                        .type            n00151_call_icon_bx, @function
n00151_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00151_call_icon_α:       mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lcall_icon_α_rkfn780:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn780]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_14:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_15:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00149_line_mark_α
                                                                              jmp   n00152_assign_α
n00151_call_icon_β:                                                             jmp   n00149_line_mark_α
                        .size            n00151_call_icon_bx, .-n00151_call_icon_bx
                        .type            n00152_assign_bx, @function
n00152_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_assign_α:          mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx;         jmp   n00153_line_mark_α
                        .size            n00152_assign_bx, .-n00152_assign_bx
                        .type            n00153_line_mark_bx, @function
n00153_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_782_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_782_stno
                        .long            0
                        .long            116
                        .quad            .Lstnof1
                        .popsection
n00153_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 116;            jmp   n00154_var_α
                        .size            n00153_line_mark_bx, .-n00153_line_mark_bx
                        .type            n00154_var_bx, @function
n00154_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_var_α:             mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3352], rax;         jmp   n00155_scan_enter_α
                        .size            n00154_var_bx, .-n00154_var_bx
                        .type            n00155_scan_enter_bx, @function
n00155_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_scan_enter_α:      mov              qword ptr [rbp + 480], r13
                        mov              qword ptr [rbp + 488], r14
                        mov              qword ptr [rbp + 496], r15
                        mov              rdi, qword ptr [rbp + 3344]
                        mov              rsi, qword ptr [rbp + 3352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
.Lgcsite_options_17:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_16:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            je    n00156_unmark_α
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n00157_disjunction_α
                        .size            n00155_scan_enter_bx, .-n00155_scan_enter_bx
                        .type            n00157_disjunction_bx, @function
n00157_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00157_disjunction_α:     mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              dword ptr [rbp + 560], 0;            jmp   n00158_lit_string_α
.Ldisjunction_γ_601_as: mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_789_0
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00159_scan_α
.Ldisjunction_α_789_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_789_1
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00159_scan_α
.Ldisjunction_α_789_1:                                                        jmp   n00159_scan_α
n00157_disjunction_β:     mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0;                              je    n00160_disjunction_β
                                                                              jmp   n00161_scan_α
.Ldisjunction_γ_601_af:
.Ldisjunction_ω_601_af: add              dword ptr [rbp + 560], 1
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 1;                              je    n00162_line_mark_α
                                                                              jmp   n00161_scan_α
                        .size            n00157_disjunction_bx, .-n00157_disjunction_bx
                        .type            n00159_scan_bx, @function
n00159_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_scan_α:            mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
.Lgcsite_options_20:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 480]
                        mov              r14, qword ptr [rbp + 488]
                        mov              r15, qword ptr [rbp + 496];          jmp   n00156_unmark_α
n00159_scan_β:            mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_reenter@PLT
.Lgcsite_options_19:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
.Lgcsite_options_18:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax;                            jmp   n00157_disjunction_β
                                                                              jmp   n00156_unmark_α
                        .size            n00159_scan_bx, .-n00159_scan_bx
                        .type            n00163_conjunction_bx, @function
n00163_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_conjunction_α:                                                           jmp   .Ldisjunction_γ_601_as
n00163_conjunction_β:                                                           jmp   n00161_scan_α
                        .size            n00163_conjunction_bx, .-n00163_conjunction_bx
                        .type            n00162_line_mark_bx, @function
n00162_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_793_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_793_stno
                        .long            0
                        .long            136
                        .quad            .Lstnof1
                        .popsection
n00162_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 136;            jmp   n00164_var_ref_α
n00162_line_mark_β:                                                             jmp   n00164_var_ref_α
                        .size            n00162_line_mark_bx, .-n00162_line_mark_bx
                        .type            n00164_var_ref_bx, @function
n00164_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00164_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3648]
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx;         jmp   n00165_var_ref_α
                        .size            n00164_var_ref_bx, .-n00164_var_ref_bx
                        .type            n00165_var_ref_bx, @function
n00165_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3680]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx;         jmp   n00166_deref_α
                        .size            n00165_var_ref_bx, .-n00165_var_ref_bx
                        .type            n00166_deref_bx, @function
n00166_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00166_deref_α:           mov              rdi, qword ptr [rbp + 3264]
                        mov              rsi, qword ptr [rbp + 3272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_22:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00161_scan_α
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_21:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00167_deref_α
                        .size            n00166_deref_bx, .-n00166_deref_bx
                        .type            n00167_deref_bx, @function
n00167_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00167_deref_α:           mov              rdi, qword ptr [rbp + 3280]
                        mov              rsi, qword ptr [rbp + 3288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_24:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00161_scan_α
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_23:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00168_line_mark_α
                        .size            n00167_deref_bx, .-n00167_deref_bx
                        .type            n00168_line_mark_bx, @function
n00168_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_801_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_801_stno
                        .long            0
                        .long            136
                        .quad            .Lstnof1
                        .popsection
n00168_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 136;            jmp   n00169_call_icon_α
                        .size            n00168_line_mark_bx, .-n00168_line_mark_bx
                        .type            n00169_call_icon_bx, @function
n00169_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_call_icon_α:       mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3224], rax
                        .section         .rodata
.Lcall_icon_α_rkfn804:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn804]
                        lea              rsi, [rbp + 3216]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_25:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_26:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00161_scan_α
                                                                              jmp   .Ldisjunction_γ_601_as
n00169_call_icon_β:                                                             jmp   n00161_scan_α
                        .size            n00169_call_icon_bx, .-n00169_call_icon_bx
                        .type            n00158_lit_string_bx, @function
n00158_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_lit_string_α:      mov              qword ptr [rbp + 3168], 2            # result
                        mov              dword ptr [rbp + 3172], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_805_0]
                        mov              qword ptr [rbp + 3176], rax;         jmp   n00170_scan_match_α
n00158_lit_string_β:                                                            jmp   .Ldisjunction_ω_601_af
.Llit_string_α_805_0:   .quad            .Llit_string_α_805_0_s
.Llit_string_α_805_0_s: .string          "-"
                        .size            n00158_lit_string_bx, .-n00158_lit_string_bx
                        .type            n00170_scan_match_bx, @function
n00170_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00170_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_601_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_807_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
.Lgcsite_options_27:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        test             eax, eax;                            jne   .Ldisjunction_ω_601_af
                        mov              qword ptr [rbp + 3136], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 3144], rax;         jmp   n00171_scan_tab_α
.Lscan_match_α_807_0:   .quad            .Lscan_match_α_807_0_s
.Lscan_match_α_807_0_s: .string          "-"
                        .size            n00170_scan_match_bx, .-n00170_scan_match_bx
                        .type            n00171_scan_tab_bx, @function
n00171_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_scan_tab_α:        mov              rdi, qword ptr [rbp + 3136]
                        mov              rsi, qword ptr [rbp + 3144]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_options_33:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    .Ldisjunction_ω_601_af
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
.Lgcsite_options_32:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 3136]
                        mov              rsi, qword ptr [rbp + 3144]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_options_31:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_30:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_809_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_809_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_601_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_601_af
                        mov              qword ptr [rbp + 3120], r14
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
.Lgcsite_options_29:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_28:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx;         jmp   n00172_lit_integer_α
n00171_scan_tab_β:        mov              r14, qword ptr [rbp + 3120];         jmp   .Ldisjunction_ω_601_af
                        .size            n00171_scan_tab_bx, .-n00171_scan_tab_bx
                        .type            n00172_lit_integer_bx, @function
n00172_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_lit_integer_α:     mov              qword ptr [rbp + 3088], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_810_0]
                        mov              qword ptr [rbp + 3096], rax;         jmp   n00173_line_mark_α
.Llit_integer_α_810_0:  .quad            0
                        .size            n00172_lit_integer_bx, .-n00172_lit_integer_bx
                        .type            n00173_line_mark_bx, @function
n00173_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_811_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_811_stno
                        .long            0
                        .long            117
                        .quad            .Lstnof1
                        .popsection
n00173_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 117;            jmp   n00174_scan_pos_α
                        .size            n00173_line_mark_bx, .-n00173_line_mark_bx
                        .type            n00174_scan_pos_bx, @function
n00174_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00174_scan_pos_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_814_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_814_0:     cmp              rax, 1;                              jl    n00175_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00175_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00175_var_α
                        mov              qword ptr [rbp + 3056], 3
                        mov              qword ptr [rbp + 3064], rax;         jmp   n00171_scan_tab_β
                        .size            n00174_scan_pos_bx, .-n00174_scan_pos_bx
                        .type            n00175_var_bx, @function
n00175_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_var_α:             mov              qword ptr [rbp + 3040], 0
                        mov              qword ptr [rbp + 3048], 0;           jmp   n00176_conjunction_α
n00175_var_β:                                                                   jmp   n00171_scan_tab_β
                        .size            n00175_var_bx, .-n00175_var_bx
                        .type            n00176_conjunction_bx, @function
n00176_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_conjunction_α:     mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3032], rax;         jmp   n00177_line_mark_α
n00176_conjunction_β:                                                           jmp   .Ldisjunction_ω_601_af
                        .size            n00176_conjunction_bx, .-n00176_conjunction_bx
                        .type            n00177_line_mark_bx, @function
n00177_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_817_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_817_stno
                        .long            0
                        .long            118
                        .quad            .Lstnof1
                        .popsection
n00177_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00178_line_mark_α
                        .size            n00177_line_mark_bx, .-n00177_line_mark_bx
                        .type            n00178_line_mark_bx, @function
n00178_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_819_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_819_stno
                        .long            0
                        .long            118
                        .quad            .Lstnof1
                        .popsection
n00178_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00179_disjunction_α
                        .size            n00178_line_mark_bx, .-n00178_line_mark_bx
                        .type            n00179_disjunction_bx, @function
n00179_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_disjunction_α:     mov              qword ptr [rbp + 2768], 0
                        mov              qword ptr [rbp + 2776], 0
                        mov              dword ptr [rbp + 2784], 0;           jmp   n00180_lit_string_α
.Ldisjunction_γ_621_as: mov              eax, dword ptr [rbp + 2784]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_822_0
                                                                              jmp   n00181_line_mark_α
.Ldisjunction_α_822_0:                                                        jmp   n00181_line_mark_α
n00179_disjunction_β:     mov              eax, dword ptr [rbp + 2784];         jmp   n00181_line_mark_α
.Ldisjunction_γ_621_af:
.Ldisjunction_ω_621_af: add              dword ptr [rbp + 2784], 1
                        mov              eax, dword ptr [rbp + 2784];         jmp   n00181_line_mark_α
                        .size            n00179_disjunction_bx, .-n00179_disjunction_bx
                        .type            n00181_line_mark_bx, @function
n00181_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_823_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_823_stno
                        .long            0
                        .long            119
                        .quad            .Lstnof1
                        .popsection
n00181_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 119;            jmp   n00182_bound_α
                        .size            n00181_line_mark_bx, .-n00181_line_mark_bx
                        .type            n00182_bound_bx, @function
n00182_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_bound_α:           mov              qword ptr [rbp + 688], rsp;          jmp   n00183_lit_integer_α
                        .size            n00182_bound_bx, .-n00182_bound_bx
                        .type            n00183_lit_integer_bx, @function
n00183_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_lit_integer_α:     mov              qword ptr [rbp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_827_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n00184_line_mark_α
.Llit_integer_α_827_0:  .quad            1
                        .size            n00183_lit_integer_bx, .-n00183_lit_integer_bx
                        .type            n00184_line_mark_bx, @function
n00184_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_828_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_828_stno
                        .long            0
                        .long            119
                        .quad            .Lstnof1
                        .popsection
n00184_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 119;            jmp   n00185_scan_move_α
                        .size            n00184_line_mark_bx, .-n00184_line_mark_bx
                        .type            n00185_scan_move_bx, @function
n00185_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_scan_move_α:       mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n00161_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00161_scan_α
                        mov              qword ptr [rbp + 624], r14
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
.Lgcsite_options_35:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_34:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n00186_assign_α
n00185_scan_move_β:       mov              r14, qword ptr [rbp + 624];          jmp   n00161_scan_α
                        .size            n00185_scan_move_bx, .-n00185_scan_move_bx
                        .type            n00186_assign_bx, @function
n00186_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_assign_α:          mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx;         jmp   n00187_line_mark_α
                        .size            n00186_assign_bx, .-n00186_assign_bx
                        .type            n00187_line_mark_bx, @function
n00187_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_833_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_833_stno
                        .long            0
                        .long            120
                        .quad            .Lstnof1
                        .popsection
n00187_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 120;            jmp   n00160_disjunction_α
                        .size            n00187_line_mark_bx, .-n00187_line_mark_bx
                        .type            n00160_disjunction_bx, @function
n00160_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00160_disjunction_α:     mov              qword ptr [rbp + 736], 0
                        mov              qword ptr [rbp + 744], 0
                        mov              dword ptr [rbp + 752], 0;            jmp   n00188_var_ref_α
.Ldisjunction_γ_629_as: mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_836_0
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00189_unmark_α
.Ldisjunction_α_836_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_836_1
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00189_unmark_α
.Ldisjunction_α_836_1:                                                        jmp   n00189_unmark_α
n00160_disjunction_β:     mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 0;                              je    n00190_disjunction_β
                                                                              jmp   n00189_unmark_α
.Ldisjunction_γ_629_af:
.Ldisjunction_ω_629_af: add              dword ptr [rbp + 752], 1
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 1;                              je    n00191_line_mark_α
                                                                              jmp   n00189_unmark_α
                        .size            n00160_disjunction_bx, .-n00160_disjunction_bx
                        .type            n00191_line_mark_bx, @function
n00191_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_837_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_837_stno
                        .long            0
                        .long            134
                        .quad            .Lstnof1
                        .popsection
n00191_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 134;            jmp   n00192_lit_string_α
n00191_line_mark_β:                                                             jmp   n00192_lit_string_α
                        .size            n00191_line_mark_bx, .-n00191_line_mark_bx
                        .type            n00192_lit_string_bx, @function
n00192_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_lit_string_α:      mov              qword ptr [rbp + 2656], 2            # result
                        mov              dword ptr [rbp + 2660], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_839_0]
                        mov              qword ptr [rbp + 2664], rax;         jmp   n00193_var_ref_α
.Llit_string_α_839_0:   .quad            .Llit_string_α_839_0_s
.Llit_string_α_839_0_s: .string          "Unrecognized option: -"
                        .size            n00192_lit_string_bx, .-n00192_lit_string_bx
                        .type            n00193_var_ref_bx, @function
n00193_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx;         jmp   n00194_deref_α
                        .size            n00193_var_ref_bx, .-n00193_var_ref_bx
                        .type            n00194_deref_bx, @function
n00194_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_deref_α:           mov              rdi, qword ptr [rbp + 2688]
                        mov              rsi, qword ptr [rbp + 2696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_37:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00189_unmark_α
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_36:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00195_line_mark_α
                        .size            n00194_deref_bx, .-n00194_deref_bx
                        .type            n00195_line_mark_bx, @function
n00195_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_843_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_843_stno
                        .long            0
                        .long            134
                        .quad            .Lstnof1
                        .popsection
n00195_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 134;            jmp   n00196_call_icon_α
                        .size            n00195_line_mark_bx, .-n00195_line_mark_bx
                        .type            n00196_call_icon_bx, @function
n00196_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_call_icon_α:       mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2632], rax
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2616], rax
                        .section         .rodata
.Lcall_icon_α_rkfn846:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn846]
                        lea              rsi, [rbp + 2608]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_38:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_39:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00189_unmark_α
                                                                              jmp   .Ldisjunction_γ_629_as
n00196_call_icon_β:                                                             jmp   n00189_unmark_α
                        .size            n00196_call_icon_bx, .-n00196_call_icon_bx
                        .type            n00188_var_ref_bx, @function
n00188_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx;         jmp   n00197_var_ref_α
n00188_var_ref_β:                                                               jmp   .Ldisjunction_ω_629_af
                        .size            n00188_var_ref_bx, .-n00188_var_ref_bx
                        .type            n00197_var_ref_bx, @function
n00197_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4000]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx;         jmp   n00198_deref_α
                        .size            n00197_var_ref_bx, .-n00197_var_ref_bx
                        .type            n00198_deref_bx, @function
n00198_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_deref_α:           mov              rdi, qword ptr [rbp + 2512]
                        mov              rsi, qword ptr [rbp + 2520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_41:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_629_af
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_40:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00199_deref_α
                        .size            n00198_deref_bx, .-n00198_deref_bx
                        .type            n00199_deref_bx, @function
n00199_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_deref_α:           mov              rdi, qword ptr [rbp + 2528]
                        mov              rsi, qword ptr [rbp + 2536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_43:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_629_af
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_42:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00200_line_mark_α
                        .size            n00199_deref_bx, .-n00199_deref_bx
                        .type            n00200_line_mark_bx, @function
n00200_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_853_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_853_stno
                        .long            0
                        .long            120
                        .quad            .Lstnof1
                        .popsection
n00200_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 120;            jmp   n00201_call_builtin_gen_α
                        .size            n00200_line_mark_bx, .-n00200_line_mark_bx
                        .type            n00201_call_builtin_gen_bx, @function
n00201_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2456], rax
                        mov              qword ptr [rbp + 2480], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
.Lgcsite_options_44:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_builtin_gen_α_855_60:
                        .section         .rodata
.Lcall_builtin_gen_α_bynamegenfn288: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_gen_α_bynamegenfn288]
                        lea              rsi, [rbp + 2448]
                        mov              edx, 2
                        lea              rcx, [rbp + 2480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen_strict@PLT
.Lgcsite_options_45:    push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_options_46:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_629_af
                                                                              jmp   n00202_lit_integer_α
n00201_call_builtin_gen_β:
                                                                              jmp   .Lcall_builtin_gen_α_855_60
                        .size            n00201_call_builtin_gen_bx, .-n00201_call_builtin_gen_bx
                        .type            n00202_lit_integer_bx, @function
n00202_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_lit_integer_α:     mov              qword ptr [rbp + 2576], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_856_0]
                        mov              qword ptr [rbp + 2584], rax;         jmp   n00203_coerce_numeric_α
.Llit_integer_α_856_0:  .quad            1
                        .size            n00202_lit_integer_bx, .-n00202_lit_integer_bx
                        .type            n00203_coerce_numeric_bx, @function
n00203_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_coerce_numeric_α:  mov              eax, dword ptr [rbp + 2432]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_858_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_858_0
                        mov              eax, dword ptr [rbp + 2576]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_858_0
.Lcoerce_numeric_α_858_1:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2424], rax;         jmp   n00204_binop_α
.Lcoerce_numeric_α_858_0:
                        lea              rdi, [rbp + 2432]
                        lea              rsi, [rbp + 2576]
                        lea              rdx, [rbp + 2416]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_options_48:    push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_47:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 104;                             je    .Ldisjunction_ω_629_af
                                                                              jmp   n00204_binop_α
                        .size            n00203_coerce_numeric_bx, .-n00203_coerce_numeric_bx
                        .type            n00204_binop_bx, @function
n00204_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_binop_α:           mov              eax, dword ptr [rbp + 2416]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_859_2
                        mov              rax, qword ptr [rbp + 2424]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_859_0
                        mov              qword ptr [rbp + 2400], 3
                        mov              qword ptr [rbp + 2408], rax;         jmp   .Lbinop_α_859_7
.Lbinop_α_859_2:        and              edx, 1;                              jz    .Lbinop_α_859_0
                        mov              rsi, qword ptr [rbp + 2424]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_859_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_859_4
.Lbinop_α_859_3:        movq             xmm0, rsi
.Lbinop_α_859_4:        cmp              cl, 5;                               je    .Lbinop_α_859_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_859_6
.Lbinop_α_859_5:        movq             xmm1, rdi
.Lbinop_α_859_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_859_0
                        mov              qword ptr [rbp + 2400], 5
                        mov              qword ptr [rbp + 2408], rax
.Lbinop_α_859_7:                                                              jmp   n00205_assign_α
.Lbinop_α_859_0:        mov              rdi, qword ptr [rbp + 2416]
                        mov              rsi, qword ptr [rbp + 2424]
                        mov              rdx, qword ptr [rbp + 2576]
                        mov              rcx, qword ptr [rbp + 2584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
.Lgcsite_options_50:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_629_af
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
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
.Lgcsite_options_49:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00205_assign_α
                        .size            n00204_binop_bx, .-n00204_binop_bx
                        .type            n00205_assign_bx, @function
n00205_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_assign_α:          mov              rax, qword ptr [rbp + 2400]
                        mov              rdx, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx;         jmp   n00206_line_mark_α
                        .size            n00205_assign_bx, .-n00205_assign_bx
                        .type            n00206_line_mark_bx, @function
n00206_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_861_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_861_stno
                        .long            0
                        .long            121
                        .quad            .Lstnof1
                        .popsection
n00206_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 121;            jmp   n00207_var_ref_α
                        .size            n00206_line_mark_bx, .-n00206_line_mark_bx
                        .type            n00207_var_ref_bx, @function
n00207_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3632]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n00208_var_α
                        .size            n00207_var_ref_bx, .-n00207_var_ref_bx
                        .type            n00208_var_bx, @function
n00208_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_var_α:             mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00209_subscript_α
                        .size            n00208_var_bx, .-n00208_var_bx
                        .type            n00209_subscript_bx, @function
n00209_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_subscript_α:       mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 784]
                        mov              rcx, qword ptr [rbp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_options_52:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00189_unmark_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_51:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00190_disjunction_α
                        .size            n00209_subscript_bx, .-n00209_subscript_bx
                        .type            n00190_disjunction_bx, @function
n00190_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_disjunction_α:     mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 840], 0
                        mov              dword ptr [rbp + 848], 0;            jmp   n00210_lit_charset_α
.Ldisjunction_γ_650_as: mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_869_0
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00211_assign_var_α
.Ldisjunction_α_869_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_869_1
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00211_assign_var_α
.Ldisjunction_α_869_1:                                                        jmp   n00211_assign_var_α
n00190_disjunction_β:     mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0;                              je    n00212_disjunction_β
                                                                              jmp   n00189_unmark_α
.Ldisjunction_γ_650_af:
.Ldisjunction_ω_650_af: add              dword ptr [rbp + 848], 1
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 1;                              je    n00213_lit_integer_α
                                                                              jmp   n00189_unmark_α
                        .size            n00190_disjunction_bx, .-n00190_disjunction_bx
                        .type            n00211_assign_var_bx, @function
n00211_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_assign_var_α:      mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_options_54:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00189_unmark_α
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_53:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_629_as
n00211_assign_var_β:                                                            jmp   n00189_unmark_α
                        .size            n00211_assign_var_bx, .-n00211_assign_var_bx
                        .type            n00213_lit_integer_bx, @function
n00213_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_lit_integer_α:     mov              qword ptr [rbp + 2368], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_871_0]
                        mov              qword ptr [rbp + 2376], rax;         jmp   .Ldisjunction_γ_650_as
n00213_lit_integer_β:                                                           jmp   n00189_unmark_α
.Llit_integer_α_871_0:  .quad            1
                        .size            n00213_lit_integer_bx, .-n00213_lit_integer_bx
                        .type            n00210_lit_charset_bx, @function
n00210_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_lit_charset_α:     mov              qword ptr [rbp + 2240], 2            # result
                        mov              dword ptr [rbp + 2244], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_872_0]
                        mov              qword ptr [rbp + 2248], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_872_0]
                        mov              rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
.Lgcsite_options_56:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_55:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00214_var_ref_α
n00210_lit_charset_β:                                                           jmp   .Ldisjunction_ω_650_af
.Llit_charset_α_872_0:  .quad            .Llit_charset_α_872_0_s
.Llit_charset_α_872_0_s:
                        .string          "+.:"
                        .size            n00210_lit_charset_bx, .-n00210_lit_charset_bx
                        .type            n00214_var_ref_bx, @function
n00214_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4000]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx;         jmp   n00215_var_α
                        .size            n00214_var_ref_bx, .-n00214_var_ref_bx
                        .type            n00215_var_bx, @function
n00215_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_var_α:             mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 2296], rax;         jmp   n00216_subscript_α
                        .size            n00215_var_bx, .-n00215_var_bx
                        .type            n00216_subscript_bx, @function
n00216_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_subscript_α:       mov              rdi, qword ptr [rbp + 2272]
                        mov              rsi, qword ptr [rbp + 2280]
                        mov              rdx, qword ptr [rbp + 2288]
                        mov              rcx, qword ptr [rbp + 2296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_options_58:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_650_af
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_57:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00217_deref_α
                        .size            n00216_subscript_bx, .-n00216_subscript_bx
                        .type            n00217_deref_bx, @function
n00217_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_deref_α:           mov              rdi, qword ptr [rbp + 2304]
                        mov              rsi, qword ptr [rbp + 2312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_60:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_650_af
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_59:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00218_assign_α
                        .size            n00217_deref_bx, .-n00217_deref_bx
                        .type            n00218_assign_bx, @function
n00218_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_assign_α:          mov              rax, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx;         jmp   n00219_var_ref_α
                        .size            n00218_assign_bx, .-n00218_assign_bx
                        .type            n00219_var_ref_bx, @function
n00219_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00219_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3712]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx;         jmp   n00220_deref_α
                        .size            n00219_var_ref_bx, .-n00219_var_ref_bx
                        .type            n00220_deref_bx, @function
n00220_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_deref_α:           mov              rdi, qword ptr [rbp + 2336]
                        mov              rsi, qword ptr [rbp + 2344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_62:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_650_af
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_61:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00221_line_mark_α
                        .size            n00220_deref_bx, .-n00220_deref_bx
                        .type            n00221_line_mark_bx, @function
n00221_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_883_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_883_stno
                        .long            0
                        .long            122
                        .quad            .Lstnof1
                        .popsection
n00221_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 122;            jmp   n00222_call_icon_α
                        .size            n00221_line_mark_bx, .-n00221_line_mark_bx
                        .type            n00222_call_icon_bx, @function
n00222_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_call_icon_α:       mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2216], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2200], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
.Lgcsite_options_63:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lcall_icon_α_bynamefn309: .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_bynamefn309]
                        lea              rsi, [rbp + 2192]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196712
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_64:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
.Lgcsite_options_66:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_live_subj@PLT
.Lgcsite_options_65:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_call.cpp:569
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_67:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_650_af
                                                                              jmp   n00223_line_mark_α
n00222_call_icon_β:                                                             jmp   .Ldisjunction_ω_650_af
                        .size            n00222_call_icon_bx, .-n00222_call_icon_bx
                        .type            n00223_line_mark_bx, @function
n00223_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_886_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_886_stno
                        .long            0
                        .long            123
                        .quad            .Lstnof1
                        .popsection
n00223_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00224_disjunction_α
                        .size            n00223_line_mark_bx, .-n00223_line_mark_bx
                        .type            n00224_disjunction_bx, @function
n00224_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_disjunction_α:     mov              qword ptr [rbp + 1808], 0
                        mov              qword ptr [rbp + 1816], 0
                        mov              dword ptr [rbp + 1824], 0;           jmp   n00225_lit_string_α
.Ldisjunction_γ_664_as: mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_889_0
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n00226_assign_α
.Ldisjunction_α_889_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_889_1
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n00226_assign_α
.Ldisjunction_α_889_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_889_2
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n00226_assign_α
.Ldisjunction_α_889_2:                                                        jmp   n00226_assign_α
n00224_disjunction_β:     mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 0;                              je    n00227_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_664_af
                                                                              jmp   .Ldisjunction_ω_664_af
.Ldisjunction_γ_664_af:
.Ldisjunction_ω_664_af: add              dword ptr [rbp + 1824], 1
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 1;                              je    n00228_var_ref_α
                        cmp              eax, 2;                              je    n00229_lit_string_α
                                                                              jmp   n00230_line_mark_α
                        .size            n00224_disjunction_bx, .-n00224_disjunction_bx
                        .type            n00226_assign_bx, @function
n00226_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_assign_α:          mov              rax, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx;         jmp   n00230_line_mark_α
                        .size            n00226_assign_bx, .-n00226_assign_bx
                        .type            n00230_line_mark_bx, @function
n00230_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_891_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_891_stno
                        .long            0
                        .long            125
                        .quad            .Lstnof1
                        .popsection
n00230_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 125;            jmp   n00231_var_α
                        .size            n00230_line_mark_bx, .-n00230_line_mark_bx
                        .type            n00231_var_bx, @function
n00231_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00231_var_α:             mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00212_disjunction_α
                        .size            n00231_var_bx, .-n00231_var_bx
                        .type            n00212_disjunction_bx, @function
n00212_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_disjunction_α:     mov              qword ptr [rbp + 896], 0
                        mov              qword ptr [rbp + 904], 0
                        mov              dword ptr [rbp + 912], 0;            jmp   n00232_lit_string_α
.Ldisjunction_γ_668_as: mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_896_0
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00233_conjunction_α
.Ldisjunction_α_896_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_896_1
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00233_conjunction_α
.Ldisjunction_α_896_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_896_2
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00233_conjunction_α
.Ldisjunction_α_896_2:                                                        jmp   n00233_conjunction_α
n00212_disjunction_β:     mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 0;                              je    n00189_unmark_α
                        cmp              eax, 1;                              je    n00234_disjunction_β
                                                                              jmp   n00235_disjunction_β
.Ldisjunction_γ_668_af:
.Ldisjunction_ω_668_af: add              dword ptr [rbp + 912], 1
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 1;                              je    n00236_lit_string_α
                        cmp              eax, 2;                              je    n00237_lit_string_α
                                                                              jmp   n00189_unmark_α
                        .size            n00212_disjunction_bx, .-n00212_disjunction_bx
                        .type            n00233_conjunction_bx, @function
n00233_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_conjunction_α:     mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax;          jmp   .Ldisjunction_γ_650_as
n00233_conjunction_β:                                                           jmp   n00189_unmark_α
                        .size            n00233_conjunction_bx, .-n00233_conjunction_bx
                        .type            n00237_lit_string_bx, @function
n00237_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00237_lit_string_α:      mov              qword ptr [rbp + 1712], 2            # result
                        mov              dword ptr [rbp + 1716], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_898_0]
                        mov              qword ptr [rbp + 1720], rax;         jmp   n00238_call_builtin_α
n00237_lit_string_β:                                                            jmp   .Ldisjunction_ω_668_af
.Llit_string_α_898_0:   .quad            .Llit_string_α_898_0_s
.Llit_string_α_898_0_s: .string          "."
                        .size            n00237_lit_string_bx, .-n00237_lit_string_bx
                        .type            n00238_call_builtin_bx, @function
n00238_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_call_builtin_α:    mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1768], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn900: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn900]
                        lea              rsi, [rbp + 1760]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_68:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_69:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_668_af
                                                                              jmp   n00239_line_mark_α
n00238_call_builtin_β:                                                          jmp   .Ldisjunction_ω_668_af
                        .size            n00238_call_builtin_bx, .-n00238_call_builtin_bx
                        .type            n00239_line_mark_bx, @function
n00239_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_901_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_901_stno
                        .long            0
                        .long            129
                        .quad            .Lstnof1
                        .popsection
n00239_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00235_disjunction_α
                        .size            n00239_line_mark_bx, .-n00239_line_mark_bx
                        .type            n00235_disjunction_bx, @function
n00235_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00235_disjunction_α:     mov              qword ptr [rbp + 1408], 0
                        mov              qword ptr [rbp + 1416], 0
                        mov              dword ptr [rbp + 1424], 0;           jmp   n00240_var_ref_α
.Ldisjunction_γ_673_as: mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_904_0
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax;         jmp   .Ldisjunction_γ_668_as
.Ldisjunction_α_904_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_904_1
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1416], rax;         jmp   .Ldisjunction_γ_668_as
.Ldisjunction_α_904_1:                                                        jmp   .Ldisjunction_γ_668_as
n00235_disjunction_β:     mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_673_af
                                                                              jmp   .Ldisjunction_ω_673_af
.Ldisjunction_γ_673_af:
.Ldisjunction_ω_673_af: add              dword ptr [rbp + 1424], 1
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 1;                              je    n00241_lit_string_α
                                                                              jmp   n00189_unmark_α
                        .size            n00235_disjunction_bx, .-n00235_disjunction_bx
                        .type            n00241_lit_string_bx, @function
n00241_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_lit_string_α:      mov              qword ptr [rbp + 1600], 2            # result
                        mov              dword ptr [rbp + 1604], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_905_0]
                        mov              qword ptr [rbp + 1608], rax;         jmp   n00242_var_ref_α
n00241_lit_string_β:                                                            jmp   .Ldisjunction_ω_673_af
.Llit_string_α_905_0:   .quad            .Llit_string_α_905_0_s
.Llit_string_α_905_0_s: .string          "-"
                        .size            n00241_lit_string_bx, .-n00241_lit_string_bx
                        .type            n00242_var_ref_bx, @function
n00242_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx;         jmp   n00243_lit_string_α
                        .size            n00242_var_ref_bx, .-n00242_var_ref_bx
                        .type            n00243_lit_string_bx, @function
n00243_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_lit_string_α:      mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_908_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n00244_deref_α
.Llit_string_α_908_0:   .quad            .Llit_string_α_908_0_s
.Llit_string_α_908_0_s: .string          " needs numeric parameter"
                        .size            n00243_lit_string_bx, .-n00243_lit_string_bx
                        .type            n00244_deref_bx, @function
n00244_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00244_deref_α:           mov              rdi, qword ptr [rbp + 1632]
                        mov              rsi, qword ptr [rbp + 1640]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_71:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_673_af
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_70:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00245_line_mark_α
                        .size            n00244_deref_bx, .-n00244_deref_bx
                        .type            n00245_line_mark_bx, @function
n00245_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_910_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_910_stno
                        .long            0
                        .long            130
                        .quad            .Lstnof1
                        .popsection
n00245_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 130;            jmp   n00246_call_icon_α
                        .size            n00245_line_mark_bx, .-n00245_line_mark_bx
                        .type            n00246_call_icon_bx, @function
n00246_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_call_icon_α:       mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lcall_icon_α_rkfn913:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn913]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_72:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_73:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_673_af
                                                                              jmp   .Ldisjunction_γ_673_as
n00246_call_icon_β:                                                             jmp   .Ldisjunction_ω_673_af
                        .size            n00246_call_icon_bx, .-n00246_call_icon_bx
                        .type            n00240_var_ref_bx, @function
n00240_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00240_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3728]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx;         jmp   n00247_deref_α
n00240_var_ref_β:                                                               jmp   .Ldisjunction_ω_673_af
                        .size            n00240_var_ref_bx, .-n00240_var_ref_bx
                        .type            n00247_deref_bx, @function
n00247_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_deref_α:           mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_75:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_673_af
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_74:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00248_line_mark_α
                        .size            n00247_deref_bx, .-n00247_deref_bx
                        .type            n00248_line_mark_bx, @function
n00248_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_917_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_917_stno
                        .long            0
                        .long            129
                        .quad            .Lstnof1
                        .popsection
n00248_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00249_call_icon_α
                        .size            n00248_line_mark_bx, .-n00248_line_mark_bx
                        .type            n00249_call_icon_bx, @function
n00249_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00249_call_icon_α:       mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lcall_icon_α_rkfn920:  .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn920]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262297
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_76:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_77:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_673_af
                                                                              jmp   .Ldisjunction_γ_673_as
n00249_call_icon_β:                                                             jmp   .Ldisjunction_ω_673_af
                        .size            n00249_call_icon_bx, .-n00249_call_icon_bx
                        .type            n00236_lit_string_bx, @function
n00236_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_lit_string_α:      mov              qword ptr [rbp + 1328], 2            # result
                        mov              dword ptr [rbp + 1332], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_921_0]
                        mov              qword ptr [rbp + 1336], rax;         jmp   n00250_call_builtin_α
n00236_lit_string_β:                                                            jmp   .Ldisjunction_ω_668_af
.Llit_string_α_921_0:   .quad            .Llit_string_α_921_0_s
.Llit_string_α_921_0_s: .string          "+"
                        .size            n00236_lit_string_bx, .-n00236_lit_string_bx
                        .type            n00250_call_builtin_bx, @function
n00250_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_call_builtin_α:    mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1384], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn923: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn923]
                        lea              rsi, [rbp + 1376]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_78:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_79:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_668_af
                                                                              jmp   n00251_line_mark_α
n00250_call_builtin_β:                                                          jmp   .Ldisjunction_ω_668_af
                        .size            n00250_call_builtin_bx, .-n00250_call_builtin_bx
                        .type            n00251_line_mark_bx, @function
n00251_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_924_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_924_stno
                        .long            0
                        .long            127
                        .quad            .Lstnof1
                        .popsection
n00251_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 127;            jmp   n00234_disjunction_α
                        .size            n00251_line_mark_bx, .-n00251_line_mark_bx
                        .type            n00234_disjunction_bx, @function
n00234_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00234_disjunction_α:     mov              qword ptr [rbp + 1024], 0
                        mov              qword ptr [rbp + 1032], 0
                        mov              dword ptr [rbp + 1040], 0;           jmp   n00252_var_ref_α
.Ldisjunction_γ_687_as: mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_927_0
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax;         jmp   .Ldisjunction_γ_668_as
.Ldisjunction_α_927_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_927_1
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1032], rax;         jmp   .Ldisjunction_γ_668_as
.Ldisjunction_α_927_1:                                                        jmp   .Ldisjunction_γ_668_as
n00234_disjunction_β:     mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_687_af
                                                                              jmp   .Ldisjunction_ω_687_af
.Ldisjunction_γ_687_af:
.Ldisjunction_ω_687_af: add              dword ptr [rbp + 1040], 1
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 1;                              je    n00253_lit_string_α
                                                                              jmp   n00189_unmark_α
                        .size            n00234_disjunction_bx, .-n00234_disjunction_bx
                        .type            n00253_lit_string_bx, @function
n00253_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_lit_string_α:      mov              qword ptr [rbp + 1216], 2            # result
                        mov              dword ptr [rbp + 1220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_928_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n00254_var_ref_α
n00253_lit_string_β:                                                            jmp   .Ldisjunction_ω_687_af
.Llit_string_α_928_0:   .quad            .Llit_string_α_928_0_s
.Llit_string_α_928_0_s: .string          "-"
                        .size            n00253_lit_string_bx, .-n00253_lit_string_bx
                        .type            n00254_var_ref_bx, @function
n00254_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n00255_lit_string_α
                        .size            n00254_var_ref_bx, .-n00254_var_ref_bx
                        .type            n00255_lit_string_bx, @function
n00255_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00255_lit_string_α:      mov              qword ptr [rbp + 1264], 2            # result
                        mov              dword ptr [rbp + 1268], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_931_0]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n00256_deref_α
.Llit_string_α_931_0:   .quad            .Llit_string_α_931_0_s
.Llit_string_α_931_0_s: .string          " needs numeric parameter"
                        .size            n00255_lit_string_bx, .-n00255_lit_string_bx
                        .type            n00256_deref_bx, @function
n00256_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_deref_α:           mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_81:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_687_af
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_80:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00257_line_mark_α
                        .size            n00256_deref_bx, .-n00256_deref_bx
                        .type            n00257_line_mark_bx, @function
n00257_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_933_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_933_stno
                        .long            0
                        .long            128
                        .quad            .Lstnof1
                        .popsection
n00257_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 128;            jmp   n00258_call_icon_α
                        .size            n00257_line_mark_bx, .-n00257_line_mark_bx
                        .type            n00258_call_icon_bx, @function
n00258_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_call_icon_α:       mov              rax, qword ptr [rbp + 1264]
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
.Lcall_icon_α_rkfn936:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn936]
                        lea              rsi, [rbp + 1152]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_82:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_83:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_687_af
                                                                              jmp   .Ldisjunction_γ_687_as
n00258_call_icon_β:                                                             jmp   .Ldisjunction_ω_687_af
                        .size            n00258_call_icon_bx, .-n00258_call_icon_bx
                        .type            n00252_var_ref_bx, @function
n00252_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3728]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n00259_deref_α
n00252_var_ref_β:                                                               jmp   .Ldisjunction_ω_687_af
                        .size            n00252_var_ref_bx, .-n00252_var_ref_bx
                        .type            n00259_deref_bx, @function
n00259_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_deref_α:           mov              rdi, qword ptr [rbp + 1104]
                        mov              rsi, qword ptr [rbp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_85:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_687_af
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_84:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00260_line_mark_α
                        .size            n00259_deref_bx, .-n00259_deref_bx
                        .type            n00260_line_mark_bx, @function
n00260_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_940_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_940_stno
                        .long            0
                        .long            127
                        .quad            .Lstnof1
                        .popsection
n00260_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 127;            jmp   n00261_call_icon_α
                        .size            n00260_line_mark_bx, .-n00260_line_mark_bx
                        .type            n00261_call_icon_bx, @function
n00261_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00261_call_icon_α:       mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lcall_icon_α_rkfn943:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn943]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_86:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_87:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_687_af
                                                                              jmp   .Ldisjunction_γ_687_as
n00261_call_icon_β:                                                             jmp   .Ldisjunction_ω_687_af
                        .size            n00261_call_icon_bx, .-n00261_call_icon_bx
                        .type            n00232_lit_string_bx, @function
n00232_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_lit_string_α:      mov              qword ptr [rbp + 944], 2             # result
                        mov              dword ptr [rbp + 948], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_944_0]
                        mov              qword ptr [rbp + 952], rax;          jmp   n00262_call_builtin_α
n00232_lit_string_β:                                                            jmp   .Ldisjunction_ω_668_af
.Llit_string_α_944_0:   .quad            .Llit_string_α_944_0_s
.Llit_string_α_944_0_s: .string          ":"
                        .size            n00232_lit_string_bx, .-n00232_lit_string_bx
                        .type            n00262_call_builtin_bx, @function
n00262_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_call_builtin_α:    mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn946: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn946]
                        lea              rsi, [rbp + 992]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_88:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_89:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_668_af
                                                                              jmp   n00263_var_α
n00262_call_builtin_β:                                                          jmp   .Ldisjunction_ω_668_af
                        .size            n00262_call_builtin_bx, .-n00262_call_builtin_bx
                        .type            n00263_var_bx, @function
n00263_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_var_α:             mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 936], rax;          jmp   .Ldisjunction_γ_668_as
n00263_var_β:                                                                   jmp   n00189_unmark_α
                        .size            n00263_var_bx, .-n00263_var_bx
                        .type            n00229_lit_string_bx, @function
n00229_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_lit_string_α:      mov              qword ptr [rbp + 2096], 2            # result
                        mov              dword ptr [rbp + 2100], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_949_0]
                        mov              qword ptr [rbp + 2104], rax;         jmp   n00264_var_ref_α
n00229_lit_string_β:                                                            jmp   .Ldisjunction_ω_664_af
.Llit_string_α_949_0:   .quad            .Llit_string_α_949_0_s
.Llit_string_α_949_0_s: .string          "No parameter following -"
                        .size            n00229_lit_string_bx, .-n00229_lit_string_bx
                        .type            n00264_var_ref_bx, @function
n00264_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx;         jmp   n00265_deref_α
                        .size            n00264_var_ref_bx, .-n00264_var_ref_bx
                        .type            n00265_deref_bx, @function
n00265_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00265_deref_α:           mov              rdi, qword ptr [rbp + 2128]
                        mov              rsi, qword ptr [rbp + 2136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_91:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_664_af
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_90:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00266_line_mark_α
                        .size            n00265_deref_bx, .-n00265_deref_bx
                        .type            n00266_line_mark_bx, @function
n00266_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_953_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_953_stno
                        .long            0
                        .long            124
                        .quad            .Lstnof1
                        .popsection
n00266_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 124;            jmp   n00267_call_icon_α
                        .size            n00266_line_mark_bx, .-n00266_line_mark_bx
                        .type            n00267_call_icon_bx, @function
n00267_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_call_icon_α:       mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2056], rax
                        .section         .rodata
.Lcall_icon_α_rkfn956:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn956]
                        lea              rsi, [rbp + 2048]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_92:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_93:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_664_af
                                                                              jmp   .Ldisjunction_γ_664_as
n00267_call_icon_β:                                                             jmp   .Ldisjunction_ω_664_af
                        .size            n00267_call_icon_bx, .-n00267_call_icon_bx
                        .type            n00228_var_ref_bx, @function
n00228_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00228_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3984]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx;         jmp   n00268_deref_α
n00228_var_ref_β:                                                               jmp   .Ldisjunction_ω_664_af
                        .size            n00228_var_ref_bx, .-n00228_var_ref_bx
                        .type            n00268_deref_bx, @function
n00268_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00268_deref_α:           mov              rdi, qword ptr [rbp + 2000]
                        mov              rsi, qword ptr [rbp + 2008]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_95:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_664_af
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_94:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00269_line_mark_α
                        .size            n00268_deref_bx, .-n00268_deref_bx
                        .type            n00269_line_mark_bx, @function
n00269_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_960_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_960_stno
                        .long            0
                        .long            123
                        .quad            .Lstnof1
                        .popsection
n00269_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00270_call_icon_α
                        .size            n00269_line_mark_bx, .-n00269_line_mark_bx
                        .type            n00270_call_icon_bx, @function
n00270_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_call_icon_α:       mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1976], rax
                        .section         .rodata
.Lcall_icon_α_rkfn963:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn963]
                        lea              rsi, [rbp + 1968]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_96:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_97:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_664_af
                                                                              jmp   .Ldisjunction_γ_664_as
n00270_call_icon_β:                                                             jmp   .Ldisjunction_ω_664_af
                        .size            n00270_call_icon_bx, .-n00270_call_icon_bx
                        .type            n00225_lit_string_bx, @function
n00225_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_lit_string_α:      mov              qword ptr [rbp + 1856], 2            # result
                        mov              dword ptr [rbp + 1860], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_964_0]
                        mov              qword ptr [rbp + 1864], rax;         jmp   n00271_lit_integer_α
n00225_lit_string_β:                                                            jmp   .Ldisjunction_ω_664_af
.Llit_string_α_964_0:   .quad            .Llit_string_α_964_0_s
.Llit_string_α_964_0_s: .string          ""
                        .size            n00225_lit_string_bx, .-n00225_lit_string_bx
                        .type            n00271_lit_integer_bx, @function
n00271_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_lit_integer_α:     mov              qword ptr [rbp + 1936], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_965_0]
                        mov              qword ptr [rbp + 1944], rax;         jmp   n00272_line_mark_α
.Llit_integer_α_965_0:  .quad            0
                        .size            n00271_lit_integer_bx, .-n00271_lit_integer_bx
                        .type            n00272_line_mark_bx, @function
n00272_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_966_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_966_stno
                        .long            0
                        .long            123
                        .quad            .Lstnof1
                        .popsection
n00272_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00227_scan_tab_α
                        .size            n00272_line_mark_bx, .-n00272_line_mark_bx
                        .type            n00227_scan_tab_bx, @function
n00227_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_scan_tab_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_969_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_969_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_664_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_664_af
                        mov              qword ptr [rbp + 1904], r14
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
.Lgcsite_options_99:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_98:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx;         jmp   n00273_binop_test_α
n00227_scan_tab_β:        mov              r14, qword ptr [rbp + 1904];         jmp   .Ldisjunction_ω_664_af
                        .size            n00227_scan_tab_bx, .-n00227_scan_tab_bx
                        .type            n00273_binop_test_bx, @function
n00273_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_binop_test_α:      mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        mov              rdx, qword ptr [rbp + 1888]
                        mov              rcx, qword ptr [rbp + 1896]
                        mov              r8d, 17
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_options_103:   push             rax
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
.Lgcsite_options_102:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    n00227_scan_tab_β
                        mov              rdi, qword ptr [rbp + 1888]
                        mov              rsi, qword ptr [rbp + 1896]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
.Lgcsite_options_101:   mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
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
.Lgcsite_options_100:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_664_as
n00273_binop_test_β:                                                            jmp   n00227_scan_tab_β
                        .size            n00273_binop_test_bx, .-n00273_binop_test_bx
                        .type            n00189_unmark_bx, @function
n00189_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00189_unmark_α:          mov              rsp, qword ptr [rbp + 688];          jmp   n00274_line_mark_α
                        .size            n00189_unmark_bx, .-n00189_unmark_bx
                        .type            n00274_line_mark_bx, @function
n00274_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_973_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_973_stno
                        .long            0
                        .long            119
                        .quad            .Lstnof1
                        .popsection
n00274_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 119;            jmp   n00182_bound_α
                        .size            n00274_line_mark_bx, .-n00274_line_mark_bx
                        .type            n00161_scan_bx, @function
n00161_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_scan_α:            mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
.Lgcsite_options_104:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 480]
                        mov              r14, qword ptr [rbp + 488]
                        mov              r15, qword ptr [rbp + 496];          jmp   n00156_unmark_α
n00161_scan_β:                                                                  jmp   n00156_unmark_α
                        .size            n00161_scan_bx, .-n00161_scan_bx
                        .type            n00180_lit_string_bx, @function
n00180_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_lit_string_α:      mov              qword ptr [rbp + 2960], 2            # result
                        mov              dword ptr [rbp + 2964], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_977_0]
                        mov              qword ptr [rbp + 2968], rax;         jmp   n00275_scan_match_α
n00180_lit_string_β:                                                            jmp   .Ldisjunction_ω_621_af
.Llit_string_α_977_0:   .quad            .Llit_string_α_977_0_s
.Llit_string_α_977_0_s: .string          "-"
                        .size            n00180_lit_string_bx, .-n00180_lit_string_bx
                        .type            n00275_scan_match_bx, @function
n00275_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_621_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_979_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
.Lgcsite_options_105:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        test             eax, eax;                            jne   .Ldisjunction_ω_621_af
                        mov              qword ptr [rbp + 2928], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2936], rax;         jmp   n00276_scan_tab_α
.Lscan_match_α_979_0:   .quad            .Lscan_match_α_979_0_s
.Lscan_match_α_979_0_s: .string          "-"
                        .size            n00275_scan_match_bx, .-n00275_scan_match_bx
                        .type            n00276_scan_tab_bx, @function
n00276_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_scan_tab_α:        mov              rdi, qword ptr [rbp + 2928]
                        mov              rsi, qword ptr [rbp + 2936]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_options_111:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    .Ldisjunction_ω_621_af
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
.Lgcsite_options_110:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 2928]
                        mov              rsi, qword ptr [rbp + 2936]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_options_109:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_108:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_981_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_981_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_621_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_621_af
                        mov              qword ptr [rbp + 2912], r14
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
.Lgcsite_options_107:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_106:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx;         jmp   n00277_lit_integer_α
n00276_scan_tab_β:        mov              r14, qword ptr [rbp + 2912];         jmp   .Ldisjunction_ω_621_af
                        .size            n00276_scan_tab_bx, .-n00276_scan_tab_bx
                        .type            n00277_lit_integer_bx, @function
n00277_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_lit_integer_α:     mov              qword ptr [rbp + 2880], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_982_0]
                        mov              qword ptr [rbp + 2888], rax;         jmp   n00278_line_mark_α
.Llit_integer_α_982_0:  .quad            0
                        .size            n00277_lit_integer_bx, .-n00277_lit_integer_bx
                        .type            n00278_line_mark_bx, @function
n00278_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_983_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_983_stno
                        .long            0
                        .long            118
                        .quad            .Lstnof1
                        .popsection
n00278_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00279_scan_pos_α
                        .size            n00278_line_mark_bx, .-n00278_line_mark_bx
                        .type            n00279_scan_pos_bx, @function
n00279_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00279_scan_pos_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_986_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_986_0:     cmp              rax, 1;                              jl    n00276_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00276_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00276_scan_tab_β
                        mov              qword ptr [rbp + 2848], 3
                        mov              qword ptr [rbp + 2856], rax;         jmp   n00280_conjunction_α
                        .size            n00279_scan_pos_bx, .-n00279_scan_pos_bx
                        .type            n00280_conjunction_bx, @function
n00280_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00280_conjunction_α:     mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2840], rax;         jmp   n00281_scan_α
n00280_conjunction_β:                                                           jmp   .Ldisjunction_ω_621_af
                        .size            n00280_conjunction_bx, .-n00280_conjunction_bx
                        .type            n00281_scan_bx, @function
n00281_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_scan_α:            mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
.Lgcsite_options_112:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 480]
                        mov              r14, qword ptr [rbp + 488]
                        mov              r15, qword ptr [rbp + 496];          jmp   n00282_var_α
n00281_scan_β:                                                                  jmp   n00282_var_α
                        .size            n00281_scan_bx, .-n00281_scan_bx
                        .type            n00282_var_bx, @function
n00282_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_var_α:             mov              qword ptr [rbp + 2800], 0
                        mov              qword ptr [rbp + 2808], 0;           jmp   n00283_assign_α
n00282_var_β:                                                                   jmp   n00284_var_α
                        .size            n00282_var_bx, .-n00282_var_bx
                        .type            n00283_assign_bx, @function
n00283_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00283_assign_α:          mov              rax, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx;         jmp   n00284_var_α
                        .size            n00283_assign_bx, .-n00283_assign_bx
                        .type            n00284_var_bx, @function
n00284_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_var_α:             mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 296], rax;          jmp   n00149_line_mark_α
                        .size            n00284_var_bx, .-n00284_var_bx
                        .type            n00156_unmark_bx, @function
n00156_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_unmark_α:          mov              rsp, qword ptr [rbp + 416];          jmp   n00285_line_mark_α
                        .size            n00156_unmark_bx, .-n00156_unmark_bx
                        .type            n00285_line_mark_bx, @function
n00285_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_996_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_996_stno
                        .long            0
                        .long            115
                        .quad            .Lstnof1
                        .popsection
n00285_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00146_bound_α
                        .size            n00285_line_mark_bx, .-n00285_line_mark_bx
                        .type            n00149_line_mark_bx, @function
n00149_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_998_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_998_stno
                        .long            0
                        .long            138
                        .quad            .Lstnof1
                        .popsection
n00149_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 138;            jmp   n00286_bound_α
                        .size            n00149_line_mark_bx, .-n00149_line_mark_bx
                        .type            n00286_bound_bx, @function
n00286_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00286_bound_α:           mov              qword ptr [rbp + 240], rsp;          jmp   n00287_var_ref_α
                        .size            n00286_bound_bx, .-n00286_bound_bx
                        .type            n00287_var_ref_bx, @function
n00287_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3984]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n00288_var_ref_α
                        .size            n00287_var_ref_bx, .-n00287_var_ref_bx
                        .type            n00288_var_ref_bx, @function
n00288_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00288_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3648]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n00289_deref_α
                        .size            n00288_var_ref_bx, .-n00288_var_ref_bx
                        .type            n00289_deref_bx, @function
n00289_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_deref_α:           mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_114:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00290_line_mark_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_113:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00291_line_mark_α
                        .size            n00289_deref_bx, .-n00289_deref_bx
                        .type            n00291_line_mark_bx, @function
n00291_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1007_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1007_stno
                        .long            0
                        .long            138
                        .quad            .Lstnof1
                        .popsection
n00291_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 138;            jmp   n00292_call_icon_α
                        .size            n00291_line_mark_bx, .-n00291_line_mark_bx
                        .type            n00292_call_icon_bx, @function
n00292_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00292_call_icon_α:       mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1010: .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1010]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262292
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_115:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_116:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00290_line_mark_α
                                                                              jmp   n00293_deref_α
n00292_call_icon_β:                                                             jmp   n00290_line_mark_α
                        .size            n00292_call_icon_bx, .-n00292_call_icon_bx
                        .type            n00293_deref_bx, @function
n00293_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_deref_α:           mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_118:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00290_line_mark_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_117:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00294_line_mark_α
                        .size            n00293_deref_bx, .-n00293_deref_bx
                        .type            n00294_line_mark_bx, @function
n00294_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1012_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1012_stno
                        .long            0
                        .long            138
                        .quad            .Lstnof1
                        .popsection
n00294_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 138;            jmp   n00295_call_icon_α
                        .size            n00294_line_mark_bx, .-n00294_line_mark_bx
                        .type            n00295_call_icon_bx, @function
n00295_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_call_icon_α:       mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1015: .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1015]
                        lea              rsi, [rbp + 64]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262293
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_119:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_120:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00290_line_mark_α
                                                                              jmp   n00296_unmark_α
n00295_call_icon_β:                                                             jmp   n00290_line_mark_α
                        .size            n00295_call_icon_bx, .-n00295_call_icon_bx
                        .type            n00296_unmark_bx, @function
n00296_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_unmark_α:          mov              rsp, qword ptr [rbp + 240];          jmp   n00286_bound_α
                        .size            n00296_unmark_bx, .-n00296_unmark_bx
                        .type            n00290_line_mark_bx, @function
n00290_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1018_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1018_stno
                        .long            0
                        .long            139
                        .quad            .Lstnof1
                        .popsection
n00290_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 139;            jmp   n00297_var_α
                        .size            n00290_line_mark_bx, .-n00290_line_mark_bx
                        .type            n00297_var_bx, @function
n00297_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00297_var_α:             mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 24], rax;           jmp   n00298_return_α
                        .size            n00297_var_bx, .-n00297_var_bx
                        .type            n00298_return_bx, @function
n00298_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_return_α:          mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   options_γ
                        .size            n00298_return_bx, .-n00298_return_bx
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
                        lea              rsp, [rbp + 4016]
                        mov              rbp, qword ptr [rbp + 3976];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 4016]
                        mov              rbp, qword ptr [rbp + 3976];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_options:
                        .quad            17112496164186
                        .quad            515396075728
                        .quad            .Lgcmap_options_s
                        .quad            3760
                        .quad            40
                        .quad            263882790666240
                        .quad            17596481011952
                        .quad            175921860444416
                        .quad            17596481012128
                        .quad            52776558133680
                        .quad            8804682957280
                        .quad            26392574034408
                        .quad            52776558133760
                        .quad            17596481012272
                        .quad            52776558133824
                        .quad            17596481012336
                        .quad            52776558133888
                        .quad            17596481012400
                        .quad            52776558133952
                        .quad            17596481012464
                        .quad            87960930222848
                        .quad            17596481012560
                        .quad            52776558134112
                        .quad            17596481012624
                        .quad            123145302311840
                        .quad            17596481012752
                        .quad            404620279022624
                        .quad            17596481013136
                        .quad            422212465067424
                        .quad            17596481013536
                        .quad            70368744179504
                        .quad            17596481013616
                        .quad            615726511556480
                        .quad            17596481014192
                        .quad            316659348801984
                        .quad            17596481014496
                        .quad            123145302313712
                        .quad            17596481014624
                        .quad            17592186047344
                        .quad            17596481014656
                        .quad            175921860447120
                        .quad            17596481014832
                        .quad            17592186047552
                        .quad            17596481014864
                        .quad            650910883646560
.Lgcmap_options_s:      .string          "options"
.Lgcsites_options_3:    .quad            121
                        .quad            .Lgcmap_options
                        .quad            0
                        .quad            .Lgcsite_options_0
                        .quad            65537
                        .quad            .Lgcsite_options_1
                        .quad            65537
                        .quad            .Lgcsite_options_2
                        .quad            65537
                        .quad            .Lgcsite_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_4
                        .quad            65537
                        .quad            .Lgcsite_options_5
                        .quad            65537
                        .quad            .Lgcsite_options_6
                        .quad            65537
                        .quad            .Lgcsite_options_7
                        .quad            65537
                        .quad            .Lgcsite_options_8
                        .quad            65537
                        .quad            .Lgcsite_options_9
                        .quad            65537
                        .quad            .Lgcsite_options_10
                        .quad            65537
                        .quad            .Lgcsite_options_11
                        .quad            65537
                        .quad            .Lgcsite_options_12
                        .quad            65537
                        .quad            .Lgcsite_options_13
                        .quad            65537
                        .quad            .Lgcsite_options_14
                        .quad            65537
                        .quad            .Lgcsite_options_15
                        .quad            65537
                        .quad            .Lgcsite_options_16
                        .quad            65537
                        .quad            .Lgcsite_options_17
                        .quad            65537
                        .quad            .Lgcsite_options_18
                        .quad            65537
                        .quad            .Lgcsite_options_19
                        .quad            65537
                        .quad            .Lgcsite_options_20
                        .quad            65537
                        .quad            .Lgcsite_options_21
                        .quad            65537
                        .quad            .Lgcsite_options_22
                        .quad            65537
                        .quad            .Lgcsite_options_23
                        .quad            65537
                        .quad            .Lgcsite_options_24
                        .quad            65537
                        .quad            .Lgcsite_options_25
                        .quad            65537
                        .quad            .Lgcsite_options_26
                        .quad            65537
                        .quad            .Lgcsite_options_27
                        .quad            65537
                        .quad            .Lgcsite_options_28
                        .quad            65537
                        .quad            .Lgcsite_options_29
                        .quad            65537
                        .quad            .Lgcsite_options_30
                        .quad            65537
                        .quad            .Lgcsite_options_31
                        .quad            65537
                        .quad            .Lgcsite_options_32
                        .quad            65537
                        .quad            .Lgcsite_options_33
                        .quad            65537
                        .quad            .Lgcsite_options_34
                        .quad            65537
                        .quad            .Lgcsite_options_35
                        .quad            65537
                        .quad            .Lgcsite_options_36
                        .quad            65537
                        .quad            .Lgcsite_options_37
                        .quad            65537
                        .quad            .Lgcsite_options_38
                        .quad            65537
                        .quad            .Lgcsite_options_39
                        .quad            65537
                        .quad            .Lgcsite_options_40
                        .quad            65537
                        .quad            .Lgcsite_options_41
                        .quad            65537
                        .quad            .Lgcsite_options_42
                        .quad            65537
                        .quad            .Lgcsite_options_43
                        .quad            65537
                        .quad            .Lgcsite_options_44
                        .quad            65537
                        .quad            .Lgcsite_options_45
                        .quad            65537
                        .quad            .Lgcsite_options_46
                        .quad            65537
                        .quad            .Lgcsite_options_47
                        .quad            65537
                        .quad            .Lgcsite_options_48
                        .quad            65537
                        .quad            .Lgcsite_options_49
                        .quad            65537
                        .quad            .Lgcsite_options_50
                        .quad            65537
                        .quad            .Lgcsite_options_51
                        .quad            65537
                        .quad            .Lgcsite_options_52
                        .quad            65537
                        .quad            .Lgcsite_options_53
                        .quad            65537
                        .quad            .Lgcsite_options_54
                        .quad            65537
                        .quad            .Lgcsite_options_55
                        .quad            65537
                        .quad            .Lgcsite_options_56
                        .quad            65537
                        .quad            .Lgcsite_options_57
                        .quad            65537
                        .quad            .Lgcsite_options_58
                        .quad            65537
                        .quad            .Lgcsite_options_59
                        .quad            65537
                        .quad            .Lgcsite_options_60
                        .quad            65537
                        .quad            .Lgcsite_options_61
                        .quad            65537
                        .quad            .Lgcsite_options_62
                        .quad            65537
                        .quad            .Lgcsite_options_63
                        .quad            65537
                        .quad            .Lgcsite_options_64
                        .quad            65537
                        .quad            .Lgcsite_options_65
                        .quad            65537
                        .quad            .Lgcsite_options_66
                        .quad            65537
                        .quad            .Lgcsite_options_67
                        .quad            65537
                        .quad            .Lgcsite_options_68
                        .quad            65537
                        .quad            .Lgcsite_options_69
                        .quad            65537
                        .quad            .Lgcsite_options_70
                        .quad            65537
                        .quad            .Lgcsite_options_71
                        .quad            65537
                        .quad            .Lgcsite_options_72
                        .quad            65537
                        .quad            .Lgcsite_options_73
                        .quad            65537
                        .quad            .Lgcsite_options_74
                        .quad            65537
                        .quad            .Lgcsite_options_75
                        .quad            65537
                        .quad            .Lgcsite_options_76
                        .quad            65537
                        .quad            .Lgcsite_options_77
                        .quad            65537
                        .quad            .Lgcsite_options_78
                        .quad            65537
                        .quad            .Lgcsite_options_79
                        .quad            65537
                        .quad            .Lgcsite_options_80
                        .quad            65537
                        .quad            .Lgcsite_options_81
                        .quad            65537
                        .quad            .Lgcsite_options_82
                        .quad            65537
                        .quad            .Lgcsite_options_83
                        .quad            65537
                        .quad            .Lgcsite_options_84
                        .quad            65537
                        .quad            .Lgcsite_options_85
                        .quad            65537
                        .quad            .Lgcsite_options_86
                        .quad            65537
                        .quad            .Lgcsite_options_87
                        .quad            65537
                        .quad            .Lgcsite_options_88
                        .quad            65537
                        .quad            .Lgcsite_options_89
                        .quad            65537
                        .quad            .Lgcsite_options_90
                        .quad            65537
                        .quad            .Lgcsite_options_91
                        .quad            65537
                        .quad            .Lgcsite_options_92
                        .quad            65537
                        .quad            .Lgcsite_options_93
                        .quad            65537
                        .quad            .Lgcsite_options_94
                        .quad            65537
                        .quad            .Lgcsite_options_95
                        .quad            65537
                        .quad            .Lgcsite_options_96
                        .quad            65537
                        .quad            .Lgcsite_options_97
                        .quad            65537
                        .quad            .Lgcsite_options_98
                        .quad            65537
                        .quad            .Lgcsite_options_99
                        .quad            65537
                        .quad            .Lgcsite_options_100
                        .quad            65537
                        .quad            .Lgcsite_options_101
                        .quad            65537
                        .quad            .Lgcsite_options_102
                        .quad            65537
                        .quad            .Lgcsite_options_103
                        .quad            65537
                        .quad            .Lgcsite_options_104
                        .quad            65537
                        .quad            .Lgcsite_options_105
                        .quad            65537
                        .quad            .Lgcsite_options_106
                        .quad            65537
                        .quad            .Lgcsite_options_107
                        .quad            65537
                        .quad            .Lgcsite_options_108
                        .quad            65537
                        .quad            .Lgcsite_options_109
                        .quad            65537
                        .quad            .Lgcsite_options_110
                        .quad            65537
                        .quad            .Lgcsite_options_111
                        .quad            65537
                        .quad            .Lgcsite_options_112
                        .quad            65537
                        .quad            .Lgcsite_options_113
                        .quad            65537
                        .quad            .Lgcsite_options_114
                        .quad            65537
                        .quad            .Lgcsite_options_115
                        .quad            65537
                        .quad            .Lgcsite_options_116
                        .quad            65537
                        .quad            .Lgcsite_options_117
                        .quad            65537
                        .quad            .Lgcsite_options_118
                        .quad            65537
                        .quad            .Lgcsite_options_119
                        .quad            65537
                        .quad            .Lgcsite_options_120
                        .quad            65537
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
                        lea              rdi, [rip + __gc_frame_sites]
                        call             rt_gc_frame_sites_install_counted@PLT
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
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax]
                        mov              dword ptr [rax], 0
                        lea              rax, [rip + .Lmain_icn_end]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Lmain_icn_end:         and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
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
                        sub              rsp, 1584
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 1576
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 1448], rax
                        mov              dword ptr [rsp + 1440], 160
                        mov              dword ptr [rsp + 1444], 1584
                        mov              eax, 0
                        mov              qword ptr [rsp + 1576], rbp
                        mov              rbp, rsp
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              ecx, dword ptr [rax + 12]
                        mov              rax, qword ptr [rax + 0]
                        cmp              ecx, 0;                              jbe   .Lmain_α_1022_220
                        mov              rdx, qword ptr [rax + 0]
                        mov              qword ptr [rsp + 16], rdx
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rsp + 24], rdx
.Lmain_α_1022_220:
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
main_α_body:
                        .type            n00299_call_bx, @function
n00299_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_call_α:           lea              rdi, [rbp + 1392]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_quit_trap_300@PLT
.Lgcsite_main_0:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:264
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_1:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00300_line_mark_α
                                                                              jmp   n00300_line_mark_α
n00299_call_β:                                                                 jmp   n00300_line_mark_α
                        .size            n00299_call_bx, .-n00299_call_bx
                        .type            n00300_line_mark_bx, @function
n00300_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1100_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1100_stno
                        .long            0
                        .long            40
                        .quad            .Lstnof1
                        .popsection
n00300_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_1101_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00301_line_mark_α
.Lline_mark_α_1101_0:   .quad            .Lline_mark_α_1101_0_s
.Lline_mark_α_1101_0_s: .string          "concord.icn"
                        .size            n00300_line_mark_bx, .-n00300_line_mark_bx
                        .type            n00301_line_mark_bx, @function
n00301_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1102_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1102_stno
                        .long            0
                        .long            43
                        .quad            .Lstnof1
                        .popsection
n00301_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 43;             jmp   n00302_var_ref_α
                        .size            n00301_line_mark_bx, .-n00301_line_mark_bx
                        .type            n00302_var_ref_bx, @function
n00302_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx;         jmp   n00303_lit_string_α
                        .size            n00302_var_ref_bx, .-n00302_var_ref_bx
                        .type            n00303_lit_string_bx, @function
n00303_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_lit_string_α:     mov              qword ptr [rbp + 1296], 2            # result
                        mov              dword ptr [rbp + 1300], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1106_0]
                        mov              qword ptr [rbp + 1304], rax;         jmp   n00304_deref_α
.Llit_string_α_1106_0:  .quad            .Llit_string_α_1106_0_s
.Llit_string_α_1106_0_s:
                        .string          "l+w+"
                        .size            n00303_lit_string_bx, .-n00303_lit_string_bx
                        .type            n00304_deref_bx, @function
n00304_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00304_deref_α:          mov              rdi, qword ptr [rbp + 1280]
                        mov              rsi, qword ptr [rbp + 1288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_3:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00305_line_mark_α
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_2:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00306_line_mark_α
                        .size            n00304_deref_bx, .-n00304_deref_bx
                        .type            n00306_line_mark_bx, @function
n00306_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1108_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1108_stno
                        .long            0
                        .long            43
                        .quad            .Lstnof1
                        .popsection
n00306_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 43;             jmp   n00307_call_proc_staged_α
                        .size            n00306_line_mark_bx, .-n00306_line_mark_bx
                        .type            n00307_call_proc_staged_bx, @function
n00307_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00307_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1111_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1111_3]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        lea              rax, [rsp + 0]
                        mov              qword ptr [rcx + 16], rax
                        mov              qword ptr [rcx + 24], r12
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rcx + 48], rax
                        mov              rax, qword ptr [rip + g_core_errjmp_n@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        movsxd           rax, eax
                        mov              qword ptr [rcx + 32], rax
                        mov              rcx, qword ptr [rsp + 0]
                        sub              rsp, 32
                        mov              rcx, qword ptr [rbp + 1328]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rbp + 1336]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rcx, qword ptr [rbp + 1296]
                        mov              qword ptr [rsp + 16], rcx
                        mov              rcx, qword ptr [rbp + 1304]
                        mov              qword ptr [rsp + 24], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 392];          jmp   rax
.Lcall_proc_staged_α_1111_3:
.Lgcsite_main_5:        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 43
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1111_2
.Lcall_proc_staged_α_1111_4:
.Lgcsite_main_4:        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 43
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1111_2:
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              al, 104;                             je    n00305_line_mark_α
                                                                              jmp   n00308_deref_α
n00307_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 43
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11;            jmp   n00305_line_mark_α
.Lcall_proc_staged_β_1111_0:
                        .quad            .Lcall_proc_staged_β_1111_0_s
.Lcall_proc_staged_β_1111_0_s:
                        .string          "options"
                        .size            n00307_call_proc_staged_bx, .-n00307_call_proc_staged_bx
                        .type            n00308_deref_bx, @function
n00308_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00308_deref_α:          mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_7:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00305_line_mark_α
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_6:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00309_assign_α
                        .size            n00308_deref_bx, .-n00308_deref_bx
                        .type            n00309_assign_bx, @function
n00309_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00309_assign_α:         mov              rax, qword ptr [rbp + 1232]
                        mov              rdx, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n00305_line_mark_α
                        .size            n00309_assign_bx, .-n00309_assign_bx
                        .type            n00305_line_mark_bx, @function
n00305_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1114_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1114_stno
                        .long            0
                        .long            44
                        .quad            .Lstnof1
                        .popsection
n00305_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 44;             jmp   n00310_disjunction_α
                        .size            n00305_line_mark_bx, .-n00305_line_mark_bx
                        .type            n00310_disjunction_bx, @function
n00310_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00310_disjunction_α:    mov              qword ptr [rbp + 1072], 0
                        mov              qword ptr [rbp + 1080], 0
                        mov              dword ptr [rbp + 1088], 0;           jmp   n00311_var_ref_α
.Ldisjunction_γ_1034_as:
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1117_0
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n00312_assign_α
.Ldisjunction_α_1117_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1117_1
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n00312_assign_α
.Ldisjunction_α_1117_1:                                                       jmp   n00312_assign_α
n00310_disjunction_β:    mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1034_af
                                                                              jmp   .Ldisjunction_ω_1034_af
.Ldisjunction_γ_1034_af:
.Ldisjunction_ω_1034_af:
                        add              dword ptr [rbp + 1088], 1
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 1;                              je    n00313_lit_integer_α
                                                                              jmp   n00314_line_mark_α
                        .size            n00310_disjunction_bx, .-n00310_disjunction_bx
                        .type            n00312_assign_bx, @function
n00312_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_assign_α:         mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [r9 + 16], rax             # colmax
                        mov              qword ptr [r9 + 24], rdx;            jmp   n00314_line_mark_α
                        .size            n00312_assign_bx, .-n00312_assign_bx
                        .type            n00314_line_mark_bx, @function
n00314_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1119_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1119_stno
                        .long            0
                        .long            45
                        .quad            .Lstnof1
                        .popsection
n00314_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 45;             jmp   n00315_disjunction_α
                        .size            n00314_line_mark_bx, .-n00314_line_mark_bx
                        .type            n00315_disjunction_bx, @function
n00315_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00315_disjunction_α:    mov              qword ptr [rbp + 912], 0
                        mov              qword ptr [rbp + 920], 0
                        mov              dword ptr [rbp + 928], 0;            jmp   n00316_var_ref_α
.Ldisjunction_γ_1037_as:
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1122_0
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax;          jmp   n00317_assign_α
.Ldisjunction_α_1122_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1122_1
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 920], rax;          jmp   n00317_assign_α
.Ldisjunction_α_1122_1:                                                       jmp   n00317_assign_α
n00315_disjunction_β:    mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1037_af
                                                                              jmp   .Ldisjunction_ω_1037_af
.Ldisjunction_γ_1037_af:
.Ldisjunction_ω_1037_af:
                        add              dword ptr [rbp + 928], 1
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 1;                              je    n00318_lit_integer_α
                                                                              jmp   n00319_line_mark_α
                        .size            n00315_disjunction_bx, .-n00315_disjunction_bx
                        .type            n00317_assign_bx, @function
n00317_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00317_assign_α:         mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              qword ptr [r9 + 32], rax             # namewidth
                        mov              qword ptr [r9 + 40], rdx;            jmp   n00319_line_mark_α
                        .size            n00317_assign_bx, .-n00317_assign_bx
                        .type            n00319_line_mark_bx, @function
n00319_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1124_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1124_stno
                        .long            0
                        .long            46
                        .quad            .Lstnof1
                        .popsection
n00319_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 46;             jmp   n00320_lit_string_α
                        .size            n00319_line_mark_bx, .-n00319_line_mark_bx
                        .type            n00320_lit_string_bx, @function
n00320_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00320_lit_string_α:     mov              qword ptr [rbp + 864], 2             # result
                        mov              dword ptr [rbp + 868], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_1126_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n00321_line_mark_α
.Llit_string_α_1126_0:  .quad            .Llit_string_α_1126_0_s
.Llit_string_α_1126_0_s:
                        .string          ""
                        .size            n00320_lit_string_bx, .-n00320_lit_string_bx
                        .type            n00321_line_mark_bx, @function
n00321_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1127_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1127_stno
                        .long            0
                        .long            46
                        .quad            .Lstnof1
                        .popsection
n00321_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 46;             jmp   n00322_call_icon_α
                        .size            n00321_line_mark_bx, .-n00321_line_mark_bx
                        .type            n00322_call_icon_bx, @function
n00322_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00322_call_icon_α:      mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1130: .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1130]
                        lea              rsi, [rbp + 832]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_8:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_9:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00323_line_mark_α
                                                                              jmp   n00324_assign_α
n00322_call_icon_β:                                                            jmp   n00323_line_mark_α
                        .size            n00322_call_icon_bx, .-n00322_call_icon_bx
                        .type            n00324_assign_bx, @function
n00324_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_assign_α:         mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [r9 + 0], rax              # uses
                        mov              qword ptr [r9 + 8], rdx;             jmp   n00323_line_mark_α
                        .size            n00324_assign_bx, .-n00324_assign_bx
                        .type            n00323_line_mark_bx, @function
n00323_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1132_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1132_stno
                        .long            0
                        .long            47
                        .quad            .Lstnof1
                        .popsection
n00323_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 47;             jmp   n00325_lit_integer_α
                        .size            n00323_line_mark_bx, .-n00323_line_mark_bx
                        .type            n00325_lit_integer_bx, @function
n00325_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00325_lit_integer_α:    mov              qword ptr [rbp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1134_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00326_assign_α
.Llit_integer_α_1134_0: .quad            0
                        .size            n00325_lit_integer_bx, .-n00325_lit_integer_bx
                        .type            n00326_assign_bx, @function
n00326_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00326_assign_α:         mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [r9 + 48], rax             # lineno
                        mov              qword ptr [r9 + 56], rdx;            jmp   n00327_line_mark_α
                        .size            n00326_assign_bx, .-n00326_assign_bx
                        .type            n00327_line_mark_bx, @function
n00327_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1136_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1136_stno
                        .long            0
                        .long            48
                        .quad            .Lstnof1
                        .popsection
n00327_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 48;             jmp   n00328_line_mark_α
                        .size            n00327_line_mark_bx, .-n00327_line_mark_bx
                        .type            n00328_line_mark_bx, @function
n00328_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1138_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1138_stno
                        .long            0
                        .long            48
                        .quad            .Lstnof1
                        .popsection
n00328_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 48;             jmp   n00329_proc_gen_α
                        .size            n00328_line_mark_bx, .-n00328_line_mark_bx
                        .type            n00329_proc_gen_bx, @function
n00329_proc_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00329_proc_gen_α:       mov              qword ptr [rbp + 688], 152           # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              qword ptr [rcx + 16], 0
                        sub              rsp, 24
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lproc_gen_α_1141_4]
                        push             rcx
                        lea              rcx, [rip + .Lproc_gen_α_1141_3]
                        push             rcx
                        sub              rsp, 0
                        lea              rdx, [rip + .Lproc_gen_α_1141_4]
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 264];          jmp   rax
.Lproc_gen_α_1141_3:
.Lgcsite_main_14:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 48
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        cmp              al, 104;                             je    .Lproc_gen_α_1141_8
                        mov              rdi, qword ptr [rdx + -1456]
                        mov              rsi, qword ptr [rdx + -1448]
                        mov              qword ptr [rbp + 696], rdx;          jmp   .Lproc_gen_α_1141_9
.Lproc_gen_α_1141_8:    mov              edi, 104
                        mov              esi, 0
                        mov              qword ptr [rbp + 696], rsp
.Lproc_gen_α_1141_9:    mov              rax, qword ptr [rbp + 688]
                        shr              rax, 8
                        test             rax, rax;                            jne   .Lproc_gen_α_1141_5
                        mov              qword ptr [rbp + 688], 408
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], -1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lproc_gen_α_1141_2
.Lproc_gen_α_1141_5:    call             qword ptr [rip + rt_gen_spine_pass_γ@GOTPCREL]
.Lgcsite_main_13:                                                             jmp   .Lproc_gen_α_1141_2
.Lproc_gen_α_1141_4:
.Lgcsite_main_12:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 48
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 688]
                        shr              rax, 8
                        test             rax, rax;                            jne   .Lproc_gen_α_1141_6
                        mov              qword ptr [rbp + 688], 408
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], -1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              eax, 104
                        xor              edx, edx;                            jmp   .Lproc_gen_α_1141_2
.Lproc_gen_α_1141_6:    call             qword ptr [rip + rt_gen_spine_pass_ω@GOTPCREL]
.Lgcsite_main_11:                                                             jmp   .Lproc_gen_α_1141_2
.Lproc_gen_α_1141_2:    mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    n00330_line_mark_α
                                                                              jmp   n00331_var_ref_α
n00329_proc_gen_β:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 48
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        call             qword ptr [rip + rt_gen_spine_resume_enter@GOTPCREL]
.Lgcsite_main_10:       mov              rax, qword ptr [rbp + 696]
                        mov              rsp, qword ptr [rax + 40];           jmp   qword ptr [rax + 32]
.Lproc_gen_β_1141_0:    .quad            .Lproc_gen_β_1141_0_s
.Lproc_gen_β_1141_0_s:  .string          "item"
                        .size            n00329_proc_gen_bx, .-n00329_proc_gen_bx
                        .type            n00331_var_ref_bx, @function
n00331_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00331_var_ref_α:        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # lineno
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n00332_deref_α
                        .size            n00331_var_ref_bx, .-n00331_var_ref_bx
                        .type            n00332_deref_bx, @function
n00332_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00332_deref_α:          mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_16:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00329_proc_gen_β
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_15:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00333_deref_α
                        .size            n00332_deref_bx, .-n00332_deref_bx
                        .type            n00333_deref_bx, @function
n00333_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00333_deref_α:          mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_18:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00329_proc_gen_β
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_17:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00334_line_mark_α
                        .size            n00333_deref_bx, .-n00333_deref_bx
                        .type            n00334_line_mark_bx, @function
n00334_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1146_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1146_stno
                        .long            0
                        .long            48
                        .quad            .Lstnof1
                        .popsection
n00334_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 48;             jmp   n00335_call_proc_staged_α
                        .size            n00334_line_mark_bx, .-n00334_line_mark_bx
                        .type            n00335_call_proc_staged_bx, @function
n00335_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00335_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1149_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1149_3]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        lea              rax, [rsp + 0]
                        mov              qword ptr [rcx + 16], rax
                        mov              qword ptr [rcx + 24], r12
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rcx + 48], rax
                        mov              rax, qword ptr [rip + g_core_errjmp_n@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        movsxd           rax, eax
                        mov              qword ptr [rcx + 32], rax
                        mov              rcx, qword ptr [rsp + 0]
                        sub              rsp, 32
                        mov              rcx, qword ptr [rbp + 736]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rbp + 744]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rcx, qword ptr [rbp + 752]
                        mov              qword ptr [rsp + 16], rcx
                        mov              rcx, qword ptr [rbp + 760]
                        mov              qword ptr [rsp + 24], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 8];            jmp   rax
.Lcall_proc_staged_α_1149_3:
.Lgcsite_main_20:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 48
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1149_2
.Lcall_proc_staged_α_1149_4:
.Lgcsite_main_19:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 48
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1149_2:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    n00329_proc_gen_β
                                                                              jmp   n00336_deref_α
n00335_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 48
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11;            jmp   n00329_proc_gen_β
.Lcall_proc_staged_β_1149_0:
                        .quad            .Lcall_proc_staged_β_1149_0_s
.Lcall_proc_staged_β_1149_0_s:
                        .string          "tabulate"
                        .size            n00335_call_proc_staged_bx, .-n00335_call_proc_staged_bx
                        .type            n00336_deref_bx, @function
n00336_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00336_deref_α:          mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_22:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00329_proc_gen_β
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_21:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00329_proc_gen_β
                        .size            n00336_deref_bx, .-n00336_deref_bx
                        .type            n00330_line_mark_bx, @function
n00330_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1151_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1151_stno
                        .long            0
                        .long            49
                        .quad            .Lstnof1
                        .popsection
n00330_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 49;             jmp   n00337_var_ref_α
                        .size            n00330_line_mark_bx, .-n00330_line_mark_bx
                        .type            n00337_var_ref_bx, @function
n00337_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00337_var_ref_α:        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n00338_lit_integer_α
                        .size            n00337_var_ref_bx, .-n00337_var_ref_bx
                        .type            n00338_lit_integer_bx, @function
n00338_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00338_lit_integer_α:    mov              qword ptr [rbp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1155_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n00339_deref_α
.Llit_integer_α_1155_0: .quad            3
                        .size            n00338_lit_integer_bx, .-n00338_lit_integer_bx
                        .type            n00339_deref_bx, @function
n00339_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00339_deref_α:          mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_24:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00340_line_mark_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_23:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00341_line_mark_α
                        .size            n00339_deref_bx, .-n00339_deref_bx
                        .type            n00341_line_mark_bx, @function
n00341_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1157_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1157_stno
                        .long            0
                        .long            49
                        .quad            .Lstnof1
                        .popsection
n00341_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 49;             jmp   n00342_call_icon_α
                        .size            n00341_line_mark_bx, .-n00341_line_mark_bx
                        .type            n00342_call_icon_bx, @function
n00342_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00342_call_icon_α:      mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1160: .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1160]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_25:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_26:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00340_line_mark_α
                                                                              jmp   n00343_assign_α
n00342_call_icon_β:                                                            jmp   n00340_line_mark_α
                        .size            n00342_call_icon_bx, .-n00342_call_icon_bx
                        .type            n00343_assign_bx, @function
n00343_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00343_assign_α:         mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx;         jmp   n00340_line_mark_α
                        .size            n00343_assign_bx, .-n00343_assign_bx
                        .type            n00340_line_mark_bx, @function
n00340_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1162_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1162_stno
                        .long            0
                        .long            50
                        .quad            .Lstnof1
                        .popsection
n00340_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 50;             jmp   n00344_bound_α
                        .size            n00340_line_mark_bx, .-n00340_line_mark_bx
                        .type            n00344_bound_bx, @function
n00344_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00344_bound_α:          mov              qword ptr [rbp + 144], rsp;          jmp   n00345_var_ref_α
                        .size            n00344_bound_bx, .-n00344_bound_bx
                        .type            n00345_var_ref_bx, @function
n00345_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00345_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00346_deref_α
                        .size            n00345_var_ref_bx, .-n00345_var_ref_bx
                        .type            n00346_deref_bx, @function
n00346_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00346_deref_α:          mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_28:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_27:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00347_line_mark_α
                        .size            n00346_deref_bx, .-n00346_deref_bx
                        .type            n00347_line_mark_bx, @function
n00347_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1169_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1169_stno
                        .long            0
                        .long            50
                        .quad            .Lstnof1
                        .popsection
n00347_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 50;             jmp   n00348_call_icon_α
                        .size            n00347_line_mark_bx, .-n00347_line_mark_bx
                        .type            n00348_call_icon_bx, @function
n00348_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00348_call_icon_α:      mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1172: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1172]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_29:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_30:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    main_ω
                                                                              jmp   n00349_assign_α
n00348_call_icon_β:                                                            jmp   main_ω
                        .size            n00348_call_icon_bx, .-n00348_call_icon_bx
                        .type            n00349_assign_bx, @function
n00349_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00349_assign_α:         mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx;         jmp   n00350_line_mark_α
                        .size            n00349_assign_bx, .-n00349_assign_bx
                        .type            n00350_line_mark_bx, @function
n00350_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1174_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1174_stno
                        .long            0
                        .long            51
                        .quad            .Lstnof1
                        .popsection
n00350_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51;             jmp   n00351_var_ref_α
                        .size            n00350_line_mark_bx, .-n00350_line_mark_bx
                        .type            n00351_var_ref_bx, @function
n00351_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00351_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n00352_var_ref_α
                        .size            n00351_var_ref_bx, .-n00351_var_ref_bx
                        .type            n00352_var_ref_bx, @function
n00352_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00352_var_ref_α:        mov              rax, 4294967336
                        mov              rdx, 1879052320                      # namewidth
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00353_deref_α
                        .size            n00352_var_ref_bx, .-n00352_var_ref_bx
                        .type            n00353_deref_bx, @function
n00353_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00353_deref_α:          mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_32:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00354_unmark_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_31:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00355_deref_α
                        .size            n00353_deref_bx, .-n00353_deref_bx
                        .type            n00355_deref_bx, @function
n00355_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00355_deref_α:          mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_34:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00354_unmark_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_33:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00356_line_mark_α
                        .size            n00355_deref_bx, .-n00355_deref_bx
                        .type            n00356_line_mark_bx, @function
n00356_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1182_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1182_stno
                        .long            0
                        .long            51
                        .quad            .Lstnof1
                        .popsection
n00356_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51;             jmp   n00357_call_icon_α
                        .size            n00356_line_mark_bx, .-n00356_line_mark_bx
                        .type            n00357_call_icon_bx, @function
n00357_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00357_call_icon_α:      mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1185: .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1185]
                        lea              rsi, [rbp + 272]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262275
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_35:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_36:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00354_unmark_α
                                                                              jmp   n00358_var_ref_α
n00357_call_icon_β:                                                            jmp   n00354_unmark_α
                        .size            n00357_call_icon_bx, .-n00357_call_icon_bx
                        .type            n00358_var_ref_bx, @function
n00358_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00358_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n00359_deref_α
                        .size            n00358_var_ref_bx, .-n00358_var_ref_bx
                        .type            n00359_deref_bx, @function
n00359_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00359_deref_α:          mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_38:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00354_unmark_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_37:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00360_line_mark_α
                        .size            n00359_deref_bx, .-n00359_deref_bx
                        .type            n00360_line_mark_bx, @function
n00360_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1189_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1189_stno
                        .long            0
                        .long            51
                        .quad            .Lstnof1
                        .popsection
n00360_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51;             jmp   n00361_call_icon_α
                        .size            n00360_line_mark_bx, .-n00360_line_mark_bx
                        .type            n00361_call_icon_bx, @function
n00361_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00361_call_icon_α:      mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1192: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1192]
                        lea              rsi, [rbp + 400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_39:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:327
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_40:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00354_unmark_α
                                                                              jmp   n00362_binop_α
n00361_call_icon_β:                                                            jmp   n00354_unmark_α
                        .size            n00361_call_icon_bx, .-n00361_call_icon_bx
                        .type            n00362_binop_bx, @function
n00362_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00362_binop_α:          mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_main_42:       mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_41:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00363_line_mark_α
                        .size            n00362_binop_bx, .-n00362_binop_bx
                        .type            n00363_line_mark_bx, @function
n00363_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1194_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1194_stno
                        .long            0
                        .long            51
                        .quad            .Lstnof1
                        .popsection
n00363_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51;             jmp   n00364_call_proc_staged_α
                        .size            n00363_line_mark_bx, .-n00363_line_mark_bx
                        .type            n00364_call_proc_staged_bx, @function
n00364_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00364_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1197_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1197_3]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        lea              rax, [rsp + 0]
                        mov              qword ptr [rcx + 16], rax
                        mov              qword ptr [rcx + 24], r12
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rcx + 48], rax
                        mov              rax, qword ptr [rip + g_core_errjmp_n@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        movsxd           rax, eax
                        mov              qword ptr [rcx + 32], rax
                        mov              rcx, qword ptr [rsp + 0]
                        sub              rsp, 16
                        mov              rcx, qword ptr [rbp + 240]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 136];          jmp   rax
.Lcall_proc_staged_α_1197_3:
.Lgcsite_main_44:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 51
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1197_2
.Lcall_proc_staged_α_1197_4:
.Lgcsite_main_43:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 51
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1197_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    n00354_unmark_α
                                                                              jmp   n00365_deref_α
n00364_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 51
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11;            jmp   n00354_unmark_α
.Lcall_proc_staged_β_1197_0:
                        .quad            .Lcall_proc_staged_β_1197_0_s
.Lcall_proc_staged_β_1197_0_s:
                        .string          "format"
                        .size            n00364_call_proc_staged_bx, .-n00364_call_proc_staged_bx
                        .type            n00365_deref_bx, @function
n00365_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00365_deref_α:          mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_46:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00354_unmark_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_45:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00354_unmark_α
                        .size            n00365_deref_bx, .-n00365_deref_bx
                        .type            n00354_unmark_bx, @function
n00354_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00354_unmark_α:         mov              rsp, qword ptr [rbp + 144];          jmp   n00366_line_mark_α
                        .size            n00354_unmark_bx, .-n00354_unmark_bx
                        .type            n00366_line_mark_bx, @function
n00366_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1201_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1201_stno
                        .long            0
                        .long            50
                        .quad            .Lstnof1
                        .popsection
n00366_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 50;             jmp   n00344_bound_α
                        .size            n00366_line_mark_bx, .-n00366_line_mark_bx
                        .type            n00318_lit_integer_bx, @function
n00318_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00318_lit_integer_α:    mov              qword ptr [rbp + 1040], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1203_0]
                        mov              qword ptr [rbp + 1048], rax;         jmp   .Ldisjunction_γ_1037_as
n00318_lit_integer_β:                                                          jmp   .Ldisjunction_ω_1037_af
.Llit_integer_α_1203_0: .quad            15
                        .size            n00318_lit_integer_bx, .-n00318_lit_integer_bx
                        .type            n00316_var_ref_bx, @function
n00316_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00316_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n00367_lit_string_α
n00316_var_ref_β:                                                              jmp   .Ldisjunction_ω_1037_af
                        .size            n00316_var_ref_bx, .-n00316_var_ref_bx
                        .type            n00367_lit_string_bx, @function
n00367_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00367_lit_string_α:     mov              qword ptr [rbp + 976], 2             # result
                        mov              dword ptr [rbp + 980], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1206_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n00368_subscript_α
.Llit_string_α_1206_0:  .quad            .Llit_string_α_1206_0_s
.Llit_string_α_1206_0_s:
                        .string          "w"
                        .size            n00367_lit_string_bx, .-n00367_lit_string_bx
                        .type            n00368_subscript_bx, @function
n00368_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00368_subscript_α:      mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_48:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1037_af
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_47:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00369_deref_α
                        .size            n00368_subscript_bx, .-n00368_subscript_bx
                        .type            n00369_deref_bx, @function
n00369_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00369_deref_α:          mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_50:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1037_af
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_49:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00370_unop_test_α
                        .size            n00369_deref_bx, .-n00369_deref_bx
                        .type            n00370_unop_test_bx, @function
n00370_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00370_unop_test_α:      mov              eax, dword ptr [rbp + 1024]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1037_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1037_af
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 952], rax;          jmp   .Ldisjunction_γ_1037_as
n00370_unop_test_β:                                                            jmp   .Ldisjunction_ω_1037_af
                        .size            n00370_unop_test_bx, .-n00370_unop_test_bx
                        .type            n00313_lit_integer_bx, @function
n00313_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00313_lit_integer_α:    mov              qword ptr [rbp + 1200], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1210_0]
                        mov              qword ptr [rbp + 1208], rax;         jmp   .Ldisjunction_γ_1034_as
n00313_lit_integer_β:                                                          jmp   .Ldisjunction_ω_1034_af
.Llit_integer_α_1210_0: .quad            72
                        .size            n00313_lit_integer_bx, .-n00313_lit_integer_bx
                        .type            n00311_var_ref_bx, @function
n00311_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n00371_lit_string_α
n00311_var_ref_β:                                                              jmp   .Ldisjunction_ω_1034_af
                        .size            n00311_var_ref_bx, .-n00311_var_ref_bx
                        .type            n00371_lit_string_bx, @function
n00371_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00371_lit_string_α:     mov              qword ptr [rbp + 1136], 2            # result
                        mov              dword ptr [rbp + 1140], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1213_0]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n00372_subscript_α
.Llit_string_α_1213_0:  .quad            .Llit_string_α_1213_0_s
.Llit_string_α_1213_0_s:
                        .string          "l"
                        .size            n00371_lit_string_bx, .-n00371_lit_string_bx
                        .type            n00372_subscript_bx, @function
n00372_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00372_subscript_α:      mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_52:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1034_af
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_51:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00373_deref_α
                        .size            n00372_subscript_bx, .-n00372_subscript_bx
                        .type            n00373_deref_bx, @function
n00373_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00373_deref_α:          mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_54:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1034_af
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_53:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00374_unop_test_α
                        .size            n00373_deref_bx, .-n00373_deref_bx
                        .type            n00374_unop_test_bx, @function
n00374_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00374_unop_test_α:      mov              eax, dword ptr [rbp + 1184]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1034_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1034_af
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1112], rax;         jmp   .Ldisjunction_γ_1034_as
n00374_unop_test_β:                                                            jmp   .Ldisjunction_ω_1034_af
                        .size            n00374_unop_test_bx, .-n00374_unop_test_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
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
                        lea              rsp, [rbp + 1584]
                        mov              rbp, qword ptr [rbp + 1576];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
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
                        lea              rsp, [rbp + 1584]
                        mov              rbp, qword ptr [rbp + 1576];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            6804574653786
                        .quad            382252089472
                        .quad            .Lgcmap_main_s
                        .quad            1440
                        .quad            10
                        .quad            158329674399744
                        .quad            17596481011856
                        .quad            580542139465888
                        .quad            8800387990192
                        .quad            8808977924792
                        .quad            246290604622528
                        .quad            17596481012640
                        .quad            158329674400688
                        .quad            17596481012800
                        .quad            369435906933840
.Lgcmap_main_s:         .string          "main"
.Lgcsites_main_4:       .quad            55
                        .quad            .Lgcmap_main
                        .quad            0
                        .quad            .Lgcsite_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_1
                        .quad            65537
                        .quad            .Lgcsite_main_2
                        .quad            65537
                        .quad            .Lgcsite_main_3
                        .quad            65537
                        .quad            .Lgcsite_main_4
                        .quad            65538
                        .quad            .Lgcsite_main_5
                        .quad            65538
                        .quad            .Lgcsite_main_6
                        .quad            65537
                        .quad            .Lgcsite_main_7
                        .quad            65537
                        .quad            .Lgcsite_main_8
                        .quad            65537
                        .quad            .Lgcsite_main_9
                        .quad            65537
                        .quad            .Lgcsite_main_10
                        .quad            65537
                        .quad            .Lgcsite_main_11
                        .quad            65537
                        .quad            .Lgcsite_main_12
                        .quad            65538
                        .quad            .Lgcsite_main_13
                        .quad            65537
                        .quad            .Lgcsite_main_14
                        .quad            65538
                        .quad            .Lgcsite_main_15
                        .quad            65537
                        .quad            .Lgcsite_main_16
                        .quad            65537
                        .quad            .Lgcsite_main_17
                        .quad            65537
                        .quad            .Lgcsite_main_18
                        .quad            65537
                        .quad            .Lgcsite_main_19
                        .quad            65538
                        .quad            .Lgcsite_main_20
                        .quad            65538
                        .quad            .Lgcsite_main_21
                        .quad            65537
                        .quad            .Lgcsite_main_22
                        .quad            65537
                        .quad            .Lgcsite_main_23
                        .quad            65537
                        .quad            .Lgcsite_main_24
                        .quad            65537
                        .quad            .Lgcsite_main_25
                        .quad            65537
                        .quad            .Lgcsite_main_26
                        .quad            65537
                        .quad            .Lgcsite_main_27
                        .quad            65537
                        .quad            .Lgcsite_main_28
                        .quad            65537
                        .quad            .Lgcsite_main_29
                        .quad            65537
                        .quad            .Lgcsite_main_30
                        .quad            65537
                        .quad            .Lgcsite_main_31
                        .quad            65537
                        .quad            .Lgcsite_main_32
                        .quad            65537
                        .quad            .Lgcsite_main_33
                        .quad            65537
                        .quad            .Lgcsite_main_34
                        .quad            65537
                        .quad            .Lgcsite_main_35
                        .quad            65537
                        .quad            .Lgcsite_main_36
                        .quad            65537
                        .quad            .Lgcsite_main_37
                        .quad            65537
                        .quad            .Lgcsite_main_38
                        .quad            65537
                        .quad            .Lgcsite_main_39
                        .quad            65537
                        .quad            .Lgcsite_main_40
                        .quad            65537
                        .quad            .Lgcsite_main_41
                        .quad            65537
                        .quad            .Lgcsite_main_42
                        .quad            65537
                        .quad            .Lgcsite_main_43
                        .quad            65538
                        .quad            .Lgcsite_main_44
                        .quad            65538
                        .quad            .Lgcsite_main_45
                        .quad            65537
                        .quad            .Lgcsite_main_46
                        .quad            65537
                        .quad            .Lgcsite_main_47
                        .quad            65537
                        .quad            .Lgcsite_main_48
                        .quad            65537
                        .quad            .Lgcsite_main_49
                        .quad            65537
                        .quad            .Lgcsite_main_50
                        .quad            65537
                        .quad            .Lgcsite_main_51
                        .quad            65537
                        .quad            .Lgcsite_main_52
                        .quad            65537
                        .quad            .Lgcsite_main_53
                        .quad            65537
                        .quad            .Lgcsite_main_54
                        .quad            65537
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
.Lstartup_ipp00375_0:    .string          "args"
                        .align           8
.Lstartup_ipnames9000:
                        .quad            .Lstartup_ipp00375_0
                        .quad            0
.Lstartup_iln00375_0:    .string          "opts"
.Lstartup_iln00375_1:    .string          "uselist"
.Lstartup_iln00375_2:    .string          "name"
.Lstartup_iln00375_3:    .string          "line"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00375_0
                        .quad            .Lstartup_iln00375_1
                        .quad            .Lstartup_iln00375_2
                        .quad            .Lstartup_iln00375_3
                        .quad            0
                        .align           4
.Lstartup_iloffs9000:
                        .long            1424
                        .long            1408
                        .long            1392
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
                        .long            1824
                        .long            1840
                        .long            1808
                        .long            -1
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__tabulate
                        .quad            0
                        .quad            0
                        .quad            .Lstartup_ipnames0
                        .long            2
                        .long            0
                        .long            1856
                        .long            48
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
                        .long            1168
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__format
                        .quad            0
                        .quad            0
                        .quad            .Lstartup_ipnames1
                        .long            1
                        .long            0
                        .long            1184
                        .long            48
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
                        .long            1312
                        .long            1296
                        .long            1280
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
                        .long            1328
                        .long            56
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
                        mov              esi, 1456
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
                        .long            3680
                        .long            3744
                        .long            3696
                        .long            3632
                        .long            3648
                        .long            3712
                        .long            3728
                        .long            -1
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__options
                        .quad            0
                        .quad            0
                        .quad            .Lstartup_ipnames3
                        .long            2
                        .long            0
                        .long            3760
                        .long            48
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
                        .section         .rodata
.Lstartup_rootcall:     .string          "main"
                        .align           8
.Lstartup_prec_root:    .quad            .Lstartup_rootcall
                        .quad            main_α
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            0
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec_root]
                        call             rt_proc_register_rec@PLT
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
                        .align           8
__gc_frame_sites:       .quad            5
                        .quad            .Lgcsites_tabulate_0
                        .quad            .Lgcsites_format_1
                        .quad            .Lgcsites_item_2
                        .quad            .Lgcsites_options_3
                        .quad            .Lgcsites_main_4
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.S0:                    .string          "concord.icn"
                        .text
                        .section         .note.GNU-stack,"",@progbits
