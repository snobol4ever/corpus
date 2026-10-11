                        .intel_syntax    noprefix
                        .text
                        .file            1 "concord.icn"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_tabulate_0:
FN__tabulate:
                        sub              rsp, 2064
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 2056
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_tabulate]
                        mov              qword ptr [rsp + 1912], rax
                        mov              dword ptr [rsp + 1904], 160
                        mov              dword ptr [rsp + 1908], 2064
                        mov              eax, 0
                        mov              qword ptr [rsp + 2056], rbp
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
.Lline_mark_α_92_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_92_stno
                        .long            0
                        .long            59
                        .quad            .Lstnof1
                        .popsection
n0_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 59
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_93_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n1_line_mark_α
.Lline_mark_α_93_0:     .quad            .Lline_mark_α_93_0_s
.Lline_mark_α_93_0_s:   .string          "concord.icn"
                        .size            n0_line_mark_bx, .-n0_line_mark_bx
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_94_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_94_stno
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
                        lea              rdx, [rbp + 2080]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n3_deref_α
                        .size            n2_var_ref_bx, .-n2_var_ref_bx
                        .type            n3_deref_bx, @function
n3_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_deref_α:             mov              rdi, qword ptr [rbp + 1792]          # d
                        mov              rsi, qword ptr [rbp + 1800]          # d
                        call             rt_deref@PLT
.Lgcsite_tabulate_1:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n7_line_mark_α
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_0:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n4_line_mark_α
                        .size            n3_deref_bx, .-n3_deref_bx
                        .type            n4_line_mark_bx, @function
n4_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_99_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_99_stno
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
n5_call_icon_α:         mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1768], rax
                        .section         .rodata
.Lcall_icon_α_rkfn102:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn102]
                        lea              rsi, [rbp + 1760]
                        mov              edx, 1
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_tabulate_2:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_3:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n7_line_mark_α
                                                                              jmp   n6_assign_α
n5_call_icon_β:                                                               jmp   n7_line_mark_α
                        .size            n5_call_icon_bx, .-n5_call_icon_bx
                        .type            n6_assign_bx, @function
n6_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rax, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx;         jmp   n7_line_mark_α
                        .size            n6_assign_bx, .-n6_assign_bx
                        .type            n7_line_mark_bx, @function
n7_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_104_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_104_stno
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
n8_lit_string_α:        mov              qword ptr [rbp + 1696], 2            # result
                        mov              dword ptr [rbp + 1700], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_106_0]
                        mov              qword ptr [rbp + 1704], rax;         jmp   n9_assign_α
.Llit_string_α_106_0:   .quad            .Llit_string_α_106_0_s
.Llit_string_α_106_0_s: .string          ""
                        .size            n8_lit_string_bx, .-n8_lit_string_bx
                        .type            n9_assign_bx, @function
n9_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              rax, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx;         jmp   n10_line_mark_α
                        .size            n9_assign_bx, .-n9_assign_bx
                        .type            n10_line_mark_bx, @function
n10_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_108_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_108_stno
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
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx;         jmp   n12_var_α
                        .size            n11_var_ref_bx, .-n11_var_ref_bx
                        .type            n12_var_bx, @function
n12_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 1640], rax;         jmp   n13_subscript_α
                        .size            n12_var_bx, .-n12_var_bx
                        .type            n13_subscript_bx, @function
n13_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_subscript_α:        xor              eax, eax
.Lsubscript_α_114_1:    mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        mov              rdx, qword ptr [rbp + 1632]
                        mov              rcx, qword ptr [rbp + 1640]
                        test             eax, eax;                            jne   .Lsubscript_α_114_2
                        call             rt_subscript_val_strict@PLT
.Lgcsite_tabulate_7:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 255;                             jne   .Lsubscript_α_114_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_114_1
.Lsubscript_α_114_4:    push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_6:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   .Lsubscript_α_114_3
.Lsubscript_α_114_2:    call             rt_subscript_var_strict@PLT
.Lgcsite_tabulate_5:    mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_4:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:
.Lsubscript_α_114_3:    cmp              al, 104;                             je    tabulate_ω
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx;         jmp   n14_deref_α
                        .size            n13_subscript_bx, .-n13_subscript_bx
                        .type            n14_deref_bx, @function
n14_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_deref_α:            mov              rdi, qword ptr [rbp + 1648]          # d
                        mov              rsi, qword ptr [rbp + 1656]          # d
                        call             rt_deref@PLT
.Lgcsite_tabulate_9:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    tabulate_ω
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_8:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n15_scan_enter_α
                        .size            n14_deref_bx, .-n14_deref_bx
                        .type            n15_scan_enter_bx, @function
n15_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_scan_enter_α:       mov              dword ptr [rbp + 64], 2
                        mov              dword ptr [rbp + 68], 0
                        mov              qword ptr [rbp + 72], r13
                        mov              qword ptr [rbp + 80], r14
                        mov              qword ptr [rbp + 88], r15
                        mov              rdi, qword ptr [rbp + 1664]          # lo
                        mov              rsi, qword ptr [rbp + 1672]          # hi
                        call             rt_scan_enter@PLT
.Lgcsite_tabulate_11:   mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_10:   mov              r9,  qword ptr [rip + rtccb+48]
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
.Lline_mark_α_118_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_118_stno
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
n17_bound_α:            mov              qword ptr [rbp + 1344], rsp;         jmp   n18_var_α
                        .size            n17_bound_bx, .-n17_bound_bx
                        .type            n18_var_bx, @function
n18_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1192], rax;         jmp   n19_lit_charset_α
                        .size            n18_var_bx, .-n18_var_bx
                        .type            n19_lit_charset_bx, @function
n19_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_charset_α:      mov              qword ptr [rbp + 1296], 2            # result
                        mov              dword ptr [rbp + 1300], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_124_0]
                        mov              qword ptr [rbp + 1304], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_124_0]
                        mov              rsi, 10
                        call             rt_icn_cset_register@PLT
.Lgcsite_tabulate_13:   mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_12:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n20_line_mark_α
.Llit_charset_α_124_0:  .quad            .Llit_charset_α_124_0_s
.Llit_charset_α_124_0_s:
                        .string          "0123456789"
                        .size            n19_lit_charset_bx, .-n19_lit_charset_bx
                        .type            n20_line_mark_bx, @function
n20_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_125_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_125_stno
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
n21_scan_upto_α:        mov              qword ptr [rbp + 1264], r14
.Lscan_upto_α_128_0:    mov              rax, qword ptr [rbp + 1264]
                        cmp              rax, r15;                            jge   n42_line_mark_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .Lscan_upto_α_128_3]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_upto_α_128_1
                        mov              qword ptr [rbp + 1248], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 1256], rax;         jmp   n22_line_mark_α
.Lscan_upto_α_128_1:    inc              qword ptr [rbp + 1264];              jmp   .Lscan_upto_α_128_0
n21_scan_upto_β:        inc              qword ptr [rbp + 1264];              jmp   .Lscan_upto_α_128_0
.Lscan_upto_β_128_2:    .quad            .Lscan_upto_β_128_2_s
.Lscan_upto_β_128_2_s:  .string          "0123456789"
.Lscan_upto_α_128_3:    .quad            287948901175001088
.Lscan_upto_β_128_4:    .quad            0
.Lscan_upto_β_128_5:    .quad            0
.Lscan_upto_β_128_6:    .quad            0
                        .size            n21_scan_upto_bx, .-n21_scan_upto_bx
                        .type            n22_line_mark_bx, @function
n22_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_129_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_129_stno
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
n23_scan_tab_α:         mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        sub              rsp, 8
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_tabulate_19:   mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_18:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        sub              rsp, 8
                        call             core_icn_to_int_check@PLT
.Lgcsite_tabulate_17:   mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_16:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_132_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_132_0:     cmp              rax, 1;                              jl    n21_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n21_scan_upto_β
                        mov              qword ptr [rbp + 1216], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        call             rt_substr@PLT
.Lgcsite_tabulate_15:   mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_14:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx;         jmp   n24_binop_α
n23_scan_tab_β:         mov              r14, qword ptr [rbp + 1216];         jmp   n21_scan_upto_β
                        .size            n23_scan_tab_bx, .-n23_scan_tab_bx
                        .type            n24_binop_bx, @function
n24_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:            mov              rdi, qword ptr [rbp + 1872]
                        mov              rsi, qword ptr [rbp + 1880]
                        mov              rdx, qword ptr [rbp + 1200]
                        mov              rcx, qword ptr [rbp + 1208]
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_21:   mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:85
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_20:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n25_assign_α
                        .size            n24_binop_bx, .-n24_binop_bx
                        .type            n25_assign_bx, @function
n25_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx;         jmp   n26_line_mark_α
                        .size            n25_assign_bx, .-n25_assign_bx
                        .type            n26_line_mark_bx, @function
n26_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_135_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_135_stno
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
.Lline_mark_α_137_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_137_stno
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
n28_lit_charset_α:      mov              qword ptr [rbp + 1536], 2            # result
                        mov              dword ptr [rbp + 1540], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_139_0]
                        mov              qword ptr [rbp + 1544], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_139_0]
                        mov              rsi, 10
                        call             rt_icn_cset_register@PLT
.Lgcsite_tabulate_23:   mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_22:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n29_line_mark_α
.Llit_charset_α_139_0:  .quad            .Llit_charset_α_139_0_s
.Llit_charset_α_139_0_s:
                        .string          "0123456789"
                        .size            n28_lit_charset_bx, .-n28_lit_charset_bx
                        .type            n29_line_mark_bx, @function
n29_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_140_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_140_stno
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
n30_scan_many_α:        lea              rdi, [rip + .Lscan_many_α_143_3]
                        mov              eax, r14d
.Lscan_many_α_143_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_143_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_many_α_143_1
                        add              eax, 1;                              jmp   .Lscan_many_α_143_0
.Lscan_many_α_143_1:    cmp              eax, r14d;                           je    n34_line_mark_α
                        mov              qword ptr [rbp + 1504], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 1512], rcx;         jmp   n31_line_mark_α
n30_scan_many_β:                                                              jmp   n34_line_mark_α
.Lscan_many_β_143_2:    .quad            .Lscan_many_β_143_2_s
.Lscan_many_β_143_2_s:  .string          "0123456789"
.Lscan_many_α_143_3:    .quad            287948901175001088
.Lscan_many_β_143_4:    .quad            0
.Lscan_many_β_143_5:    .quad            0
.Lscan_many_β_143_6:    .quad            0
                        .size            n30_scan_many_bx, .-n30_scan_many_bx
                        .type            n31_line_mark_bx, @function
n31_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_144_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_144_stno
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
n32_scan_tab_α:         mov              rdi, qword ptr [rbp + 1504]
                        mov              rsi, qword ptr [rbp + 1512]
                        sub              rsp, 8
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_tabulate_29:   mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_28:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 1504]
                        mov              rsi, qword ptr [rbp + 1512]
                        sub              rsp, 8
                        call             core_icn_to_int_check@PLT
.Lgcsite_tabulate_27:   mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_26:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_147_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_147_0:     cmp              rax, 1;                              jl    n34_line_mark_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n34_line_mark_α
                        mov              qword ptr [rbp + 1472], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        call             rt_substr@PLT
.Lgcsite_tabulate_25:   mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_24:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n33_assign_α
n32_scan_tab_β:         mov              r14, qword ptr [rbp + 1472];         jmp   n34_line_mark_α
                        .size            n32_scan_tab_bx, .-n32_scan_tab_bx
                        .type            n33_assign_bx, @function
n33_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:           mov              rax, qword ptr [rbp + 1456]
                        mov              rdx, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx;         jmp   n34_line_mark_α
                        .size            n33_assign_bx, .-n33_assign_bx
                        .type            n34_line_mark_bx, @function
n34_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_149_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_149_stno
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
n35_var_α:              mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 24], rax;           jmp   n36_var_α
                        .size            n35_var_bx, .-n35_var_bx
                        .type            n36_var_bx, @function
n36_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 40], rax;           jmp   n37_binop_α
                        .size            n36_var_bx, .-n36_var_bx
                        .type            n37_binop_bx, @function
n37_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_α:            mov              rdi, qword ptr [rbp + 1872]
                        mov              rsi, qword ptr [rbp + 1880]
                        mov              rdx, qword ptr [rbp + 1856]
                        mov              rcx, qword ptr [rbp + 1864]
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_31:   mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:85
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_30:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n38_assign_α
                        .size            n37_binop_bx, .-n37_binop_bx
                        .type            n38_assign_bx, @function
n38_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:           mov              rax, qword ptr [rbp + 1424]
                        mov              rdx, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx;         jmp   n39_conjunction_α
                        .size            n38_assign_bx, .-n38_assign_bx
                        .type            n39_conjunction_bx, @function
n39_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_conjunction_α:      mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n40_unmark_α
n39_conjunction_β:                                                            jmp   n40_unmark_α
                        .size            n39_conjunction_bx, .-n39_conjunction_bx
                        .type            n40_unmark_bx, @function
n40_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_unmark_α:           mov              rsp, qword ptr [rbp + 1344];         jmp   n41_line_mark_α
                        .size            n40_unmark_bx, .-n40_unmark_bx
                        .type            n41_line_mark_bx, @function
n41_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_160_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_160_stno
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
.Lline_mark_α_162_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_162_stno
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
n43_disjunction_α:      mov              qword ptr [rbp + 208], 0
                        mov              qword ptr [rbp + 216], 0
                        mov              dword ptr [rbp + 224], 0;            jmp   n75_disjunction_α
.Ldisjunction_γ_43_as:  mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_165_0
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 216], rax;          jmp   n44_conjunction_α
.Ldisjunction_α_165_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_165_1
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 216], rax;          jmp   n44_conjunction_α
.Ldisjunction_α_165_1:                                                        jmp   n44_conjunction_α
n43_disjunction_β:      mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0;                              je    n86_scan_α
                                                                              jmp   n86_scan_α
.Ldisjunction_γ_43_af:
.Ldisjunction_ω_43_af:  add              dword ptr [rbp + 224], 1
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 1;                              je    n46_line_mark_α
                                                                              jmp   n86_scan_α
                        .size            n43_disjunction_bx, .-n43_disjunction_bx
                        .type            n44_conjunction_bx, @function
n44_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_conjunction_α:      mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax;          jmp   n45_scan_α
n44_conjunction_β:                                                            jmp   n86_scan_α
                        .size            n44_conjunction_bx, .-n44_conjunction_bx
                        .type            n45_scan_bx, @function
n45_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_scan_α:             mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 104], rax
                        mov              dword ptr [rbp + 128], r14d
                        mov              dword ptr [rbp + 116], r15d
                        call             rt_scan_live_subj@PLT
.Lgcsite_tabulate_36:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 120], rax
                        mov              dword ptr [rbp + 112], 2
                        mov              rdi, qword ptr [rbp + 72]            # out3
                        mov              rsi, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        call             rt_scan_leave@PLT
.Lgcsite_tabulate_35:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rbp + 72]
                        mov              r14, qword ptr [rbp + 80]
                        mov              r15, qword ptr [rbp + 88];           jmp   tabulate_ω
n45_scan_β:             call             rt_scan_sync_in@PLT
.Lgcsite_tabulate_34:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 80], rax
                        mov              rdi, qword ptr [rbp + 120]
                        mov              esi, dword ptr [rbp + 116]
                        call             rt_scan_reenter_live@PLT
.Lgcsite_tabulate_33:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14d, dword ptr [rbp + 128]
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lgcsite_tabulate_32:   mov              r9,  qword ptr [rip + rtccb+48];     jmp   n43_disjunction_β
                                                                              jmp   tabulate_ω
                        .size            n45_scan_bx, .-n45_scan_bx
                        .type            n46_line_mark_bx, @function
n46_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_169_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_169_stno
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
.Lline_mark_α_171_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_171_stno
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
n48_disjunction_α:      mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              dword ptr [rbp + 816], 0;            jmp   n66_lit_string_α
.Ldisjunction_γ_48_as:  mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_174_0
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax;          jmp   n49_line_mark_α
.Ldisjunction_α_174_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_174_1
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 808], rax;          jmp   n49_line_mark_α
.Ldisjunction_α_174_1:                                                        jmp   n49_line_mark_α
n48_disjunction_β:      mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0;                              je    n73_scan_tab_β
                                                                              jmp   n49_line_mark_α
.Ldisjunction_γ_48_af:
.Ldisjunction_ω_48_af:  add              dword ptr [rbp + 816], 1
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 1;                              je    n64_lit_integer_α
                                                                              jmp   n49_line_mark_α
                        .size            n48_disjunction_bx, .-n48_disjunction_bx
                        .type            n49_line_mark_bx, @function
n49_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_175_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_175_stno
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
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n51_var_α
                        .size            n50_var_ref_bx, .-n50_var_ref_bx
                        .type            n51_var_bx, @function
n51_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 568], rax;          jmp   n52_var_α
                        .size            n51_var_bx, .-n51_var_bx
                        .type            n52_var_bx, @function
n52_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 648], rax;          jmp   n53_lit_string_α
                        .size            n52_var_bx, .-n52_var_bx
                        .type            n53_lit_string_bx, @function
n53_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       mov              qword ptr [rbp + 656], 2             # result
                        mov              dword ptr [rbp + 660], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_183_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n54_binop_α
.Llit_string_α_183_0:   .quad            .Llit_string_α_183_0_s
.Llit_string_α_183_0_s: .string          "("
                        .size            n53_lit_string_bx, .-n53_lit_string_bx
                        .type            n54_binop_bx, @function
n54_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_binop_α:            mov              rdi, qword ptr [rbp + 1872]
                        mov              rsi, qword ptr [rbp + 1880]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_38:   mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:85
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_37:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n55_var_α
                        .size            n54_binop_bx, .-n54_binop_bx
                        .type            n55_var_bx, @function
n55_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 728], rax;          jmp   n56_lit_integer_α
                        .size            n55_var_bx, .-n55_var_bx
                        .type            n56_lit_integer_bx, @function
n56_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:      mov              qword ptr [rbp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_187_0]
                        mov              qword ptr [rbp + 744], rax;          jmp   n57_coerce_numeric_α
.Llit_integer_α_187_0:  .quad            1
                        .size            n56_lit_integer_bx, .-n56_lit_integer_bx
                        .type            n57_coerce_numeric_bx, @function
n57_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_coerce_numeric_α:   mov              eax, dword ptr [rbp + 1888]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_189_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_189_0
                        mov              eax, dword ptr [rbp + 736]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_189_0
.Lcoerce_numeric_α_189_1:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 712], rax;          jmp   n58_binop_α
.Lcoerce_numeric_α_189_0:
                        lea              rdi, [rbp + 1888]
                        lea              rsi, [rbp + 736]
                        lea              rdx, [rbp + 704]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_tabulate_40:   push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_39:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rbp + 704]
                        cmp              al, 104;                             je    n86_scan_α
                                                                              jmp   n58_binop_α
                        .size            n57_coerce_numeric_bx, .-n57_coerce_numeric_bx
                        .type            n58_binop_bx, @function
n58_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:            mov              eax, dword ptr [rbp + 704]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_190_2
                        mov              rax, qword ptr [rbp + 712]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_190_0
                        mov              qword ptr [rbp + 688], 3
                        mov              qword ptr [rbp + 696], rax;          jmp   .Lbinop_α_190_7
.Lbinop_α_190_2:        and              edx, 1;                              jz    .Lbinop_α_190_0
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_190_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_190_4
.Lbinop_α_190_3:        movq             xmm0, rsi
.Lbinop_α_190_4:        cmp              cl, 5;                               je    .Lbinop_α_190_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_190_6
.Lbinop_α_190_5:        movq             xmm1, rdi
.Lbinop_α_190_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_190_0
                        mov              qword ptr [rbp + 688], 5
                        mov              qword ptr [rbp + 696], rax
.Lbinop_α_190_7:                                                              jmp   n59_binop_α
.Lbinop_α_190_0:        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 736]
                        mov              rcx, qword ptr [rbp + 744]
                        call             rt_add_big@PLT
.Lgcsite_tabulate_42:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n86_scan_α
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_41:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n59_binop_α
                        .size            n58_binop_bx, .-n58_binop_bx
                        .type            n59_binop_bx, @function
n59_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_α:            mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_44:   mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:85
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_43:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n60_lit_string_α
                        .size            n59_binop_bx, .-n59_binop_bx
                        .type            n60_lit_string_bx, @function
n60_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              qword ptr [rbp + 752], 2             # result
                        mov              dword ptr [rbp + 756], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_192_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n61_binop_α
.Llit_string_α_192_0:   .quad            .Llit_string_α_192_0_s
.Llit_string_α_192_0_s: .string          "), "
                        .size            n60_lit_string_bx, .-n60_lit_string_bx
                        .type            n61_binop_bx, @function
n61_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_α:            mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_46:   mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:85
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_45:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n62_assign_var_α
                        .size            n61_binop_bx, .-n61_binop_bx
                        .type            n62_assign_var_bx, @function
n62_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_var_α:       mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 560]
                        mov              rcx, qword ptr [rbp + 568]
                        cmp              dil, 40;                             jne   .Lassign_var_α_195_5
                        mov              rax, rdi
                        shr              rax, 32
                        cmp              eax, 1;                              jne   .Lassign_var_α_195_0
                        test             rsi, rsi;                            je    .Lassign_var_α_195_0
                        mov              rax, qword ptr [rsi + 0]
                        mov              r10, qword ptr [rsi + 8]
                        cmp              al, 24;                              jne   .Lassign_var_α_195_0
                        mov              rdi, rax
                        mov              rsi, r10;                            jmp   .Lassign_var_α_195_1
.Lassign_var_α_195_5:   cmp              dil, 24;                             je    .Lassign_var_α_195_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_195_0
.Lassign_var_α_195_1:   test             rsi, rsi;                            je    .Lassign_var_α_195_0
                        mov              r8, qword ptr [rbp + 592]
                        mov              r9, qword ptr [rbp + 600]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_tabulate_52:   cmp              al, 104;                             je    n86_scan_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:116
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_51:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n63_conjunction_α
.Lassign_var_α_195_0:   call             rt_subscript_var_strict@PLT
.Lgcsite_tabulate_50:   mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
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
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_tabulate_49:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             je    n86_scan_α
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             rt_assign_var_strict@PLT
.Lgcsite_tabulate_48:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n86_scan_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:132
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_47:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n63_conjunction_α
                        .size            n62_assign_var_bx, .-n62_assign_var_bx
                        .type            n63_conjunction_bx, @function
n63_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_conjunction_α:      mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax;          jmp   .Ldisjunction_γ_43_as
n63_conjunction_β:                                                            jmp   n86_scan_α
                        .size            n63_conjunction_bx, .-n63_conjunction_bx
                        .type            n64_lit_integer_bx, @function
n64_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:      mov              qword ptr [rbp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_197_0]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n65_assign_α
n64_lit_integer_β:                                                            jmp   n49_line_mark_α
.Llit_integer_α_197_0:  .quad            1
                        .size            n64_lit_integer_bx, .-n64_lit_integer_bx
                        .type            n65_assign_bx, @function
n65_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:           mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   .Ldisjunction_γ_48_as
n65_assign_β:                                                                 jmp   n49_line_mark_α
                        .size            n65_assign_bx, .-n65_assign_bx
                        .type            n66_lit_string_bx, @function
n66_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              qword ptr [rbp + 1040], 2            # result
                        mov              dword ptr [rbp + 1044], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_199_0]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n67_scan_match_α
n66_lit_string_β:                                                             jmp   .Ldisjunction_ω_48_af
.Llit_string_α_199_0:   .quad            .Llit_string_α_199_0_s
.Llit_string_α_199_0_s: .string          "("
                        .size            n66_lit_string_bx, .-n66_lit_string_bx
                        .type            n67_scan_match_bx, @function
n67_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_scan_match_α:       mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_48_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_201_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        call             memcmp@PLT
.Lgcsite_tabulate_53:   mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r12
                        test             eax, eax;                            jne   .Ldisjunction_ω_48_af
                        mov              qword ptr [rbp + 1008], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 1016], rax;         jmp   n68_scan_tab_α
.Lscan_match_α_201_0:   .quad            .Lscan_match_α_201_0_s
.Lscan_match_α_201_0_s: .string          "("
                        .size            n67_scan_match_bx, .-n67_scan_match_bx
                        .type            n68_scan_tab_bx, @function
n68_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_scan_tab_α:         mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        sub              rsp, 8
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_tabulate_59:   mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_58:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        sub              rsp, 8
                        call             core_icn_to_int_check@PLT
.Lgcsite_tabulate_57:   mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_56:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_203_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_203_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_48_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_48_af
                        mov              qword ptr [rbp + 992], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        call             rt_substr@PLT
.Lgcsite_tabulate_55:   mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_54:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n69_lit_charset_α
n68_scan_tab_β:         mov              r14, qword ptr [rbp + 992];          jmp   .Ldisjunction_ω_48_af
                        .size            n68_scan_tab_bx, .-n68_scan_tab_bx
                        .type            n69_lit_charset_bx, @function
n69_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_charset_α:      mov              qword ptr [rbp + 944], 2             # result
                        mov              dword ptr [rbp + 948], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_204_0]
                        mov              qword ptr [rbp + 952], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_204_0]
                        mov              rsi, 1
                        call             rt_icn_cset_register@PLT
.Lgcsite_tabulate_61:   mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_60:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n70_line_mark_α
.Llit_charset_α_204_0:  .quad            .Llit_charset_α_204_0_s
.Llit_charset_α_204_0_s:
                        .string          ")"
                        .size            n69_lit_charset_bx, .-n69_lit_charset_bx
                        .type            n70_line_mark_bx, @function
n70_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_205_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_205_stno
                        .long            0
                        .long            70
                        .quad            .Lstnof1
                        .popsection
n70_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70;             jmp   n71_scan_upto_α
                        .size            n70_line_mark_bx, .-n70_line_mark_bx
                        .type            n71_scan_upto_bx, @function
n71_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_scan_upto_α:        mov              qword ptr [rbp + 912], r14
.Lscan_upto_α_208_0:    mov              rax, qword ptr [rbp + 912]
                        cmp              rax, r15;                            jge   n49_line_mark_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .Lscan_upto_α_208_3]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_upto_α_208_1
                        mov              qword ptr [rbp + 896], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 904], rax;          jmp   n72_line_mark_α
.Lscan_upto_α_208_1:    inc              qword ptr [rbp + 912];               jmp   .Lscan_upto_α_208_0
n71_scan_upto_β:        inc              qword ptr [rbp + 912];               jmp   .Lscan_upto_α_208_0
.Lscan_upto_β_208_2:    .quad            .Lscan_upto_β_208_2_s
.Lscan_upto_β_208_2_s:  .string          ")"
.Lscan_upto_α_208_3:    .quad            2199023255552
.Lscan_upto_β_208_4:    .quad            0
.Lscan_upto_β_208_5:    .quad            0
.Lscan_upto_β_208_6:    .quad            0
                        .size            n71_scan_upto_bx, .-n71_scan_upto_bx
                        .type            n72_line_mark_bx, @function
n72_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_209_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_209_stno
                        .long            0
                        .long            70
                        .quad            .Lstnof1
                        .popsection
n72_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70;             jmp   n73_scan_tab_α
                        .size            n72_line_mark_bx, .-n72_line_mark_bx
                        .type            n73_scan_tab_bx, @function
n73_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_scan_tab_α:         mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        sub              rsp, 8
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_tabulate_67:   mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        test             eax, eax;                            jz    n71_scan_upto_β
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_66:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        sub              rsp, 8
                        call             core_icn_to_int_check@PLT
.Lgcsite_tabulate_65:   mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_64:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_212_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_212_0:     cmp              rax, 1;                              jl    n71_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n71_scan_upto_β
                        mov              qword ptr [rbp + 864], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        call             rt_substr@PLT
.Lgcsite_tabulate_63:   mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_62:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n74_assign_α
n73_scan_tab_β:         mov              r14, qword ptr [rbp + 864];          jmp   n71_scan_upto_β
                        .size            n73_scan_tab_bx, .-n73_scan_tab_bx
                        .type            n74_assign_bx, @function
n74_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   .Ldisjunction_γ_48_as
n74_assign_β:                                                                 jmp   n49_line_mark_α
                        .size            n74_assign_bx, .-n74_assign_bx
                        .type            n75_disjunction_bx, @function
n75_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_disjunction_α:      mov              qword ptr [rbp + 416], 0
                        mov              qword ptr [rbp + 424], 0
                        mov              dword ptr [rbp + 432], 0;            jmp   n90_var_α
.Ldisjunction_γ_75_as:  mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_215_0
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax;          jmp   n76_line_mark_α
.Ldisjunction_α_215_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_215_1
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 424], rax;          jmp   n76_line_mark_α
.Ldisjunction_α_215_1:                                                        jmp   n76_line_mark_α
n75_disjunction_β:      mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_75_af
                                                                              jmp   .Ldisjunction_ω_75_af
.Ldisjunction_γ_75_af:
.Ldisjunction_ω_75_af:  add              dword ptr [rbp + 432], 1
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 1;                              je    n87_var_α
                                                                              jmp   .Ldisjunction_ω_43_af
                        .size            n75_disjunction_bx, .-n75_disjunction_bx
                        .type            n76_line_mark_bx, @function
n76_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_216_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_216_stno
                        .long            0
                        .long            68
                        .quad            .Lstnof1
                        .popsection
n76_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 68;             jmp   n77_var_ref_α
                        .size            n76_line_mark_bx, .-n76_line_mark_bx
                        .type            n77_var_ref_bx, @function
n77_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n78_var_α
                        .size            n77_var_ref_bx, .-n77_var_ref_bx
                        .type            n78_var_bx, @function
n78_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:              mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 264], rax;          jmp   n79_subscript_α
                        .size            n78_var_bx, .-n78_var_bx
                        .type            n79_subscript_bx, @function
n79_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_subscript_α:        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_subscript_var_strict@PLT
.Lgcsite_tabulate_69:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n86_scan_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:91
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_68:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n80_var_α
                        .size            n79_subscript_bx, .-n79_subscript_bx
                        .type            n80_var_bx, @function
n80_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:              mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 360], rax;          jmp   n81_lit_string_α
                        .size            n80_var_bx, .-n80_var_bx
                        .type            n81_lit_string_bx, @function
n81_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       mov              qword ptr [rbp + 368], 2             # result
                        mov              dword ptr [rbp + 372], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_225_0]
                        mov              qword ptr [rbp + 376], rax;          jmp   n82_binop_α
.Llit_string_α_225_0:   .quad            .Llit_string_α_225_0_s
.Llit_string_α_225_0_s: .string          ", "
                        .size            n81_lit_string_bx, .-n81_lit_string_bx
                        .type            n82_binop_bx, @function
n82_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_binop_α:            mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_71:   mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:85
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_70:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n83_deref_α
                        .size            n82_binop_bx, .-n82_binop_bx
                        .type            n83_deref_bx, @function
n83_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_deref_α:            mov              rdi, qword ptr [rbp + 272]           # d
                        mov              rsi, qword ptr [rbp + 280]           # d
                        call             rt_deref@PLT
.Lgcsite_tabulate_73:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n86_scan_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_72:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n84_binop_α
                        .size            n83_deref_bx, .-n83_deref_bx
                        .type            n84_binop_bx, @function
n84_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_binop_α:            mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_75:   mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:85
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_74:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n85_assign_var_α
                        .size            n84_binop_bx, .-n84_binop_bx
                        .type            n85_assign_var_bx, @function
n85_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_var_α:       mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        call             rt_assign_var_strict@PLT
.Lgcsite_tabulate_77:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n86_scan_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_76:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   .Ldisjunction_γ_43_as
n85_assign_var_β:                                                             jmp   n86_scan_α
                        .size            n85_assign_var_bx, .-n85_assign_var_bx
                        .type            n86_scan_bx, @function
n86_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_scan_α:             mov              dword ptr [rbp + 176], r14d
                        mov              dword ptr [rbp + 164], r15d
                        call             rt_scan_live_subj@PLT
.Lgcsite_tabulate_79:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 168], rax
                        mov              dword ptr [rbp + 160], 2
                        mov              rdi, qword ptr [rbp + 72]            # out3
                        mov              rsi, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        call             rt_scan_leave@PLT
.Lgcsite_tabulate_78:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rbp + 72]
                        mov              r14, qword ptr [rbp + 80]
                        mov              r15, qword ptr [rbp + 88];           jmp   tabulate_ω
n86_scan_β:                                                                   jmp   tabulate_ω
                        .size            n86_scan_bx, .-n86_scan_bx
                        .type            n87_var_bx, @function
n87_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:              mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 504], rax;          jmp   n88_var_α
n87_var_β:                                                                    jmp   .Ldisjunction_ω_75_af
                        .size            n87_var_bx, .-n87_var_bx
                        .type            n88_var_bx, @function
n88_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 520], rax;          jmp   n89_binop_test_α
                        .size            n88_var_bx, .-n88_var_bx
                        .type            n89_binop_test_bx, @function
n89_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_binop_test_α:       mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        mov              rdx, qword ptr [rbp + 2080]
                        mov              rcx, qword ptr [rbp + 2088]
                        mov              r8d, 17
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_tabulate_83:   push             rax
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_82:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    .Ldisjunction_ω_75_af
                        mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
.Lgcsite_tabulate_81:   mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        push             rax                                  # gc_poll bb_binop_relop.cpp:110
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_80:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   .Ldisjunction_γ_75_as
n89_binop_test_β:                                                             jmp   .Ldisjunction_ω_75_af
                        .size            n89_binop_test_bx, .-n89_binop_test_bx
                        .type            n90_var_bx, @function
n90_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 472], rax;          jmp   n91_unop_test_α
n90_var_β:                                                                    jmp   .Ldisjunction_ω_75_af
                        .size            n90_var_bx, .-n90_var_bx
                        .type            n91_unop_test_bx, @function
n91_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_unop_test_α:        mov              eax, dword ptr [rbp + 1856]
                        cmp              al, 104;                             je    .Ldisjunction_ω_75_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_75_af
                        mov              qword ptr [rbp + 448], 0
                        mov              qword ptr [rbp + 456], 0;            jmp   .Ldisjunction_γ_75_as
n91_unop_test_β:                                                              jmp   .Ldisjunction_ω_75_af
                        .size            n91_unop_test_bx, .-n91_unop_test_bx
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
                        lea              rsp, [rbp + 2096]
                        mov              rbp, qword ptr [rbp + 2056];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 2096]
                        mov              rbp, qword ptr [rbp + 2056];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_tabulate:
                        .quad            8866158955866
                        .quad            515396075664
                        .quad            .Lgcmap_tabulate_s
                        .quad            1904
                        .quad            29
                        .quad            87960930222080
                        .quad            17596481011792
                        .quad            35184372088928
                        .quad            17596481011840
                        .quad            35184372088976
                        .quad            17596481011888
                        .quad            35184372089024
                        .quad            17596481011936
                        .quad            211106232533232
                        .quad            17596481012144
                        .quad            404620279022016
                        .quad            17596481012528
                        .quad            35184372089664
                        .quad            17596481012576
                        .quad            35184372089712
                        .quad            17596481012624
                        .quad            70368744178592
                        .quad            17596481012704
                        .quad            17592186045424
                        .quad            17596481012736
                        .quad            193514046489616
                        .quad            17596481012928
                        .quad            35184372090064
                        .quad            17596481012976
                        .quad            70368744178944
                        .quad            17596481013056
                        .quad            123145302312272
                        .quad            17596481013184
                        .quad            457396837156304
.Lgcmap_tabulate_s:     .string          "tabulate"
.Lgcsites_tabulate_0:   .quad            84
                        .quad            .Lgcmap_tabulate
                        .quad            9223653340032796720
                        .quad            .Lgccode_tabulate_0
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
                        .quad            .Lgcsite_tabulate_77
                        .quad            65537
                        .quad            .Lgcsite_tabulate_78
                        .quad            65537
                        .quad            .Lgcsite_tabulate_79
                        .quad            65537
                        .quad            .Lgcsite_tabulate_80
                        .quad            65537
                        .quad            .Lgcsite_tabulate_81
                        .quad            65537
                        .quad            .Lgcsite_tabulate_82
                        .quad            65537
                        .quad            .Lgcsite_tabulate_83
                        .quad            65537
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_format_1:
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
.Lline_mark_α_304_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_304_stno
                        .long            0
                        .long            79
                        .quad            .Lstnof1
                        .popsection
n00001_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 79
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_305_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00002_line_mark_α
.Lline_mark_α_305_0:    .quad            .Lline_mark_α_305_0_s
.Lline_mark_α_305_0_s:  .string          "concord.icn"
                        .size            n00001_line_mark_bx, .-n00001_line_mark_bx
                        .type            n00002_line_mark_bx, @function
n00002_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_306_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_306_stno
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
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_0:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00006_lit_integer_α
                        .size            n00005_unop_bx, .-n00005_unop_bx
                        .type            n00006_lit_integer_bx, @function
n00006_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_lit_integer_α:     mov              qword ptr [rbp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_313_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00007_var_α
.Llit_integer_α_313_0:  .quad            2
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
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_316_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_316_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_316_0
.Lcoerce_numeric_α_316_1:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax;          jmp   n00009_binop_α
.Lcoerce_numeric_α_316_0:
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
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_2:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              dl, 3;                               jne   .Lbinop_α_317_2
                        mov              rax, qword ptr [rbp + 232]
                        mov              rdx, 2
                        add              rax, rdx;                            jo    .Lbinop_α_317_0
                        mov              qword ptr [rbp + 208], 3
                        mov              qword ptr [rbp + 216], rax;          jmp   .Lbinop_α_317_7
.Lbinop_α_317_2:        and              edx, 1;                              jz    .Lbinop_α_317_0
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_317_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_317_4
.Lbinop_α_317_3:        movq             xmm0, rsi
.Lbinop_α_317_4:        cmp              cl, 5;                               je    .Lbinop_α_317_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_317_6
.Lbinop_α_317_5:        movq             xmm1, rdi
.Lbinop_α_317_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_317_0
                        mov              qword ptr [rbp + 208], 5
                        mov              qword ptr [rbp + 216], rax
.Lbinop_α_317_7:                                                              jmp   n00011_binop_test_α
.Lbinop_α_317_0:        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_add_big@PLT
.Lgcsite_format_5:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00010_line_mark_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_4:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00011_binop_test_α
                        .size            n00009_binop_bx, .-n00009_binop_bx
                        .type            n00011_binop_test_bx, @function
n00011_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_binop_test_α:      mov              eax, dword ptr [rbp + 176]
                        cmp              al, 112;                             je    .Lbinop_test_α_318_0
                        mov              eax, dword ptr [rbp + 208]
                        cmp              al, 112;                             je    .Lbinop_test_α_318_0
                        mov              eax, dword ptr [rbp + 176]
                        cmp              al, 3;                               jne   .Lbinop_test_α_318_2
                        mov              eax, dword ptr [rbp + 208]
                        cmp              al, 3;                               jne   .Lbinop_test_α_318_2
.Lbinop_test_α_318_1:   mov              rax, qword ptr [rbp + 184]
                        mov              rcx, qword ptr [rbp + 216]
                        cmp              rax, rcx;                            jle   n00010_line_mark_α
                        mov              rcx, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rcx
                        mov              rcx, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rcx;          jmp   n00012_line_mark_α
.Lbinop_test_α_318_0:   mov              rdi, qword ptr [rbp + 176]           # a
                        mov              rsi, qword ptr [rbp + 184]           # a
                        mov              rdx, qword ptr [rbp + 208]           # b
                        mov              rcx, qword ptr [rbp + 216]           # b
                        mov              r8d, 7                               # op
                        lea              r9, [rbp + 160]                      # out
                        call             rt_relop_overload@PLT
.Lgcsite_format_11:     mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lbinop_test_α_318_2
                        cmp              eax, 1;                              je    n00010_line_mark_α
                        push             rax                                  # gc_poll bb_binop_relop.cpp:56
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_10:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00012_line_mark_α
.Lbinop_test_α_318_2:   mov              rdi, qword ptr [rbp + 176]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_8:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    n00010_line_mark_α
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        lea              r8, [rbp + 160]
                        call             rt_relop_val_coerce@PLT
.Lgcsite_format_7:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_binop_relop.cpp:79
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_6:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00012_line_mark_α
                        .size            n00011_binop_test_bx, .-n00011_binop_test_bx
                        .type            n00012_line_mark_bx, @function
n00012_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_319_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_319_stno
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
.Lline_mark_α_321_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_321_stno
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_323_0]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n00015_var_α
.Llit_integer_α_323_0:  .quad            2
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
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_326_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_326_0
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_326_0
.Lcoerce_numeric_α_326_1:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n00017_binop_α
.Lcoerce_numeric_α_326_0:
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
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_12:     mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              dl, 3;                               jne   .Lbinop_α_327_2
                        mov              rax, qword ptr [rbp + 1064]
                        mov              rdx, 2
                        add              rax, rdx;                            jo    .Lbinop_α_327_0
                        mov              qword ptr [rbp + 1040], 3
                        mov              qword ptr [rbp + 1048], rax;         jmp   .Lbinop_α_327_7
.Lbinop_α_327_2:        and              edx, 1;                              jz    .Lbinop_α_327_0
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_327_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_327_4
.Lbinop_α_327_3:        movq             xmm0, rsi
.Lbinop_α_327_4:        cmp              cl, 5;                               je    .Lbinop_α_327_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_327_6
.Lbinop_α_327_5:        movq             xmm1, rdi
.Lbinop_α_327_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_327_0
                        mov              qword ptr [rbp + 1040], 5
                        mov              qword ptr [rbp + 1048], rax
.Lbinop_α_327_7:                                                              jmp   n00019_assign_α
.Lbinop_α_327_0:        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        call             rt_add_big@PLT
.Lgcsite_format_15:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00018_line_mark_α
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_14:     mov              r9,  qword ptr [rip + rtccb+48]
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
.Lline_mark_α_329_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_329_stno
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_337_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00024_coerce_numeric_α
.Llit_integer_α_337_0:  .quad            1
                        .size            n00023_lit_integer_bx, .-n00023_lit_integer_bx
                        .type            n00024_coerce_numeric_bx, @function
n00024_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_coerce_numeric_α:  mov              eax, dword ptr [rbp + 1168]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_339_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_339_0
                        mov              eax, dword ptr [rbp + 880]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_339_0
.Lcoerce_numeric_α_339_1:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 856], rax;          jmp   n00025_binop_α
.Lcoerce_numeric_α_339_0:
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
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_16:     mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              dl, 3;                               jne   .Lbinop_α_340_2
                        mov              rax, qword ptr [rbp + 856]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_340_0
                        mov              qword ptr [rbp + 832], 3
                        mov              qword ptr [rbp + 840], rax;          jmp   .Lbinop_α_340_7
.Lbinop_α_340_2:        and              edx, 1;                              jz    .Lbinop_α_340_0
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_340_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_340_4
.Lbinop_α_340_3:        movq             xmm0, rsi
.Lbinop_α_340_4:        cmp              cl, 5;                               je    .Lbinop_α_340_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_340_6
.Lbinop_α_340_5:        movq             xmm1, rdi
.Lbinop_α_340_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_340_0
                        mov              qword ptr [rbp + 832], 5
                        mov              qword ptr [rbp + 840], rax
.Lbinop_α_340_7:                                                              jmp   n00027_assign_α
.Lbinop_α_340_0:        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 880]
                        mov              rcx, qword ptr [rbp + 888]
                        call             rt_sub_big@PLT
.Lgcsite_format_19:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00026_unmark_α
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_18:     mov              r9,  qword ptr [rip + rtccb+48]
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
n00028_subscript_α:       xor              eax, eax
.Lsubscript_α_342_1:    mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        test             eax, eax;                            jne   .Lsubscript_α_342_2
                        call             rt_subscript_val_strict@PLT
.Lgcsite_format_23:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 255;                             jne   .Lsubscript_α_342_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_342_1
.Lsubscript_α_342_4:    push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_22:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   .Lsubscript_α_342_3
.Lsubscript_α_342_2:    call             rt_subscript_var_strict@PLT
.Lgcsite_format_21:     mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_20:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:
.Lsubscript_α_342_3:    cmp              al, 104;                             je    n00026_unmark_α
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n00029_deref_α
                        .size            n00028_subscript_bx, .-n00028_subscript_bx
                        .type            n00029_deref_bx, @function
n00029_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_deref_α:           mov              rdi, qword ptr [rbp + 896]           # d
                        mov              rsi, qword ptr [rbp + 904]           # d
                        call             rt_deref@PLT
.Lgcsite_format_25:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00026_unmark_α
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_24:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00030_lit_string_α
                        .size            n00029_deref_bx, .-n00029_deref_bx
                        .type            n00030_lit_string_bx, @function
n00030_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_lit_string_α:      mov              qword ptr [rbp + 928], 2             # result
                        mov              dword ptr [rbp + 932], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_344_0]
                        mov              qword ptr [rbp + 936], rax;          jmp   n00031_binop_test_α
.Llit_string_α_344_0:   .quad            .Llit_string_α_344_0_s
.Llit_string_α_344_0_s: .string          " "
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
.Lgcsite_format_29:     push             rax
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_28:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    n00026_unmark_α
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
.Lgcsite_format_27:     mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        push             rax                                  # gc_poll bb_binop_relop.cpp:110
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_26:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00032_line_mark_α
                        .size            n00031_binop_test_bx, .-n00031_binop_test_bx
                        .type            n00032_line_mark_bx, @function
n00032_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_346_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_346_stno
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_350_0]
                        mov              qword ptr [rbp + 728], rax;          jmp   n00035_var_α
.Llit_integer_α_350_0:  .quad            1
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
                        call             rt_section_var_strict@PLT
.Lgcsite_format_31:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00037_line_mark_α
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        push             rax                                  # gc_poll bb_section.cpp:33
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_30:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00038_deref_α
                        .size            n00036_subscript_bx, .-n00036_subscript_bx
                        .type            n00038_deref_bx, @function
n00038_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_deref_α:           mov              rdi, qword ptr [rbp + 688]           # d
                        mov              rsi, qword ptr [rbp + 696]           # d
                        call             rt_deref@PLT
.Lgcsite_format_33:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00037_line_mark_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_32:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00039_line_mark_α
                        .size            n00038_deref_bx, .-n00038_deref_bx
                        .type            n00039_line_mark_bx, @function
n00039_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_355_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_355_stno
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
.Lcall_icon_α_rkfn358:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn358]
                        lea              rsi, [rbp + 656]
                        mov              edx, 1
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_format_34:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_35:     mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n00037_line_mark_α
                                                                              jmp   n00037_line_mark_α
n00040_call_icon_β:                                                             jmp   n00037_line_mark_α
                        .size            n00040_call_icon_bx, .-n00040_call_icon_bx
                        .type            n00037_line_mark_bx, @function
n00037_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_359_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_359_stno
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
                        mov              rax, qword ptr [rip + .Llit_string_α_361_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n00042_var_ref_α
.Llit_string_α_361_0:   .quad            .Llit_string_α_361_0_s
.Llit_string_α_361_0_s: .string          " "
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
n00043_deref_α:           mov              rdi, qword ptr [rbp + 480]           # d
                        mov              rsi, qword ptr [rbp + 488]           # d
                        call             rt_deref@PLT
.Lgcsite_format_37:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00044_unmark_α
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_36:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00045_line_mark_α
                        .size            n00043_deref_bx, .-n00043_deref_bx
                        .type            n00045_line_mark_bx, @function
n00045_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_365_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_365_stno
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
.Lcall_icon_α_rkfn368:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn368]
                        lea              rsi, [rbp + 400]
                        mov              edx, 2
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_format_38:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_39:     mov              r9,  qword ptr [rip + rtccb+48]
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_373_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00050_coerce_numeric_α
.Llit_integer_α_373_0:  .quad            1
                        .size            n00049_lit_integer_bx, .-n00049_lit_integer_bx
                        .type            n00050_coerce_numeric_bx, @function
n00050_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_coerce_numeric_α:  mov              eax, dword ptr [rbp + 1168]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_375_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_375_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_375_0
.Lcoerce_numeric_α_375_1:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 568], rax;          jmp   n00051_binop_α
.Lcoerce_numeric_α_375_0:
                        lea              rdi, [rbp + 1168]
                        lea              rsi, [rbp + 592]
                        lea              rdx, [rbp + 560]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_format_41:     push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_40:     mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              dl, 3;                               jne   .Lbinop_α_376_2
                        mov              rax, qword ptr [rbp + 568]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_376_0
                        mov              qword ptr [rbp + 544], 3
                        mov              qword ptr [rbp + 552], rax;          jmp   .Lbinop_α_376_7
.Lbinop_α_376_2:        and              edx, 1;                              jz    .Lbinop_α_376_0
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_376_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_376_4
.Lbinop_α_376_3:        movq             xmm0, rsi
.Lbinop_α_376_4:        cmp              cl, 5;                               je    .Lbinop_α_376_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_376_6
.Lbinop_α_376_5:        movq             xmm1, rdi
.Lbinop_α_376_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_376_0
                        mov              qword ptr [rbp + 544], 5
                        mov              qword ptr [rbp + 552], rax
.Lbinop_α_376_7:                                                              jmp   n00052_lit_integer_α
.Lbinop_α_376_0:        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             rt_add_big@PLT
.Lgcsite_format_43:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00044_unmark_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_42:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00052_lit_integer_α
                        .size            n00051_binop_bx, .-n00051_binop_bx
                        .type            n00052_lit_integer_bx, @function
n00052_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_lit_integer_α:     mov              qword ptr [rbp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_377_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00053_subscript_α
.Llit_integer_α_377_0:  .quad            0
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
                        call             subscript_get2_strict@PLT
.Lgcsite_format_45:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00044_unmark_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        push             rax                                  # gc_poll bb_section.cpp:66
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_44:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00054_binop_α
                        .size            n00053_subscript_bx, .-n00053_subscript_bx
                        .type            n00054_binop_bx, @function
n00054_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_binop_α:           mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_format_47:     mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:85
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_46:     mov              r9,  qword ptr [rip + rtccb+48]
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
.Lline_mark_α_384_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_384_stno
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
.Lline_mark_α_388_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_388_stno
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_392_0]
                        mov              qword ptr [rbp + 104], rax;          jmp   n00060_lit_integer_α
.Llit_integer_α_392_0:  .quad            1
                        .size            n00059_lit_integer_bx, .-n00059_lit_integer_bx
                        .type            n00060_lit_integer_bx, @function
n00060_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_lit_integer_α:     mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_393_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n00061_subscript_α
.Llit_integer_α_393_0:  .quad            18446744073709551614
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
                        call             rt_section_var_strict@PLT
.Lgcsite_format_49:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    format_ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        push             rax                                  # gc_poll bb_section.cpp:33
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_48:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00062_deref_α
                        .size            n00061_subscript_bx, .-n00061_subscript_bx
                        .type            n00062_deref_bx, @function
n00062_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_deref_α:           mov              rdi, qword ptr [rbp + 64]            # d
                        mov              rsi, qword ptr [rbp + 72]            # d
                        call             rt_deref@PLT
.Lgcsite_format_51:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    format_ω
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_50:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00063_line_mark_α
                        .size            n00062_deref_bx, .-n00062_deref_bx
                        .type            n00063_line_mark_bx, @function
n00063_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_396_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_396_stno
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
.Lcall_icon_α_rkfn399:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn399]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_format_52:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_53:     mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsites_format_1:     .quad            54
                        .quad            .Lgcmap_format
                        .quad            9223653408752272656
                        .quad            .Lgccode_format_1
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
                        .quad            .Lgcsite_format_52
                        .quad            65537
                        .quad            .Lgcsite_format_53
                        .quad            65537
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_item_2:
FN__item:
                        lea              rax, [rsp + -1576]
                        mov              qword ptr [rax + 1504], rbp
                        mov              rcx, qword ptr [rsp + 0]
                        mov              qword ptr [rax + 1512], rcx
                        mov              rcx, qword ptr [rsp + 8]
                        mov              qword ptr [rax + 1520], rcx
                        lea              rcx, [rsp + 40]
                        mov              qword ptr [rax + 1528], rcx
                        lea              rbp, [rax + 1504]
                        mov              rsp, rax
                        lea              rax, [rip + .Lgcmap_item]
                        mov              qword ptr [rsp + 1384], rax
                        mov              dword ptr [rsp + 1376], 160
                        mov              dword ptr [rsp + 1380], 1504
                        mov              eax, 0
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 1376
                        rep              stosb
                        mov              r9,  qword ptr [rip + rtccb+48]
item_α_body:
                        lea              rax, [rip + n00065_suspend_β]
                        mov              qword ptr [rbp + -192], rax
                        .type            n00066_line_mark_bx, @function
n00066_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_465_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_465_stno
                        .long            0
                        .long            93
                        .quad            .Lstnof1
                        .popsection
n00066_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 93
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_466_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00067_line_mark_α
.Lline_mark_α_466_0:    .quad            .Lline_mark_α_466_0_s
.Lline_mark_α_466_0_s:  .string          "concord.icn"
                        .size            n00066_line_mark_bx, .-n00066_line_mark_bx
                        .type            n00067_line_mark_bx, @function
n00067_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_467_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_467_stno
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
n00068_bound_α:           mov              qword ptr [rbp + -1424], rsp;        jmp   n00069_line_mark_α
                        .size            n00068_bound_bx, .-n00068_bound_bx
                        .type            n00069_line_mark_bx, @function
n00069_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_471_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_471_stno
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
.Lcall_icon_α_rkfn474:  .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn474]
                        lea              rsi, [rbp + -1456]
                        mov              edx, 0
                        mov              ecx, 262295
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_item_0:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + -1472], rax
                        mov              qword ptr [rbp + -1464], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_1:        mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    item_ω
                                                                              jmp   n00071_assign_α
n00070_call_icon_β:                                                             jmp   item_ω
                        .size            n00070_call_icon_bx, .-n00070_call_icon_bx
                        .type            n00071_assign_bx, @function
n00071_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_assign_α:          mov              rax, qword ptr [rbp + -1472]
                        mov              rdx, qword ptr [rbp + -1464]
                        mov              qword ptr [rbp + -176], rax
                        mov              qword ptr [rbp + -168], rdx;         jmp   n00072_line_mark_α
                        .size            n00071_assign_bx, .-n00071_assign_bx
                        .type            n00072_line_mark_bx, @function
n00072_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_476_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_476_stno
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
.Lline_mark_α_478_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_478_stno
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_480_0]
                        mov              qword ptr [rbp + -280], rax;         jmp   n00075_var_α
.Llit_integer_α_480_0:  .quad            1
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
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_483_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_483_0
                        mov              eax, dword ptr [rbp + -288]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_483_0
.Lcoerce_numeric_α_483_1:
                        mov              rax, qword ptr [rbp + -272]
                        mov              qword ptr [rbp + -304], rax
                        mov              rax, qword ptr [rbp + -264]
                        mov              qword ptr [rbp + -296], rax;         jmp   n00077_binop_α
.Lcoerce_numeric_α_483_0:
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
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_2:        mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              dl, 3;                               jne   .Lbinop_α_484_2
                        mov              rax, qword ptr [rbp + -296]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_484_0
                        mov              qword ptr [rbp + -320], 3
                        mov              qword ptr [rbp + -312], rax;         jmp   .Lbinop_α_484_7
.Lbinop_α_484_2:        and              edx, 1;                              jz    .Lbinop_α_484_0
                        mov              rsi, qword ptr [rbp + -296]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_484_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_484_4
.Lbinop_α_484_3:        movq             xmm0, rsi
.Lbinop_α_484_4:        cmp              cl, 5;                               je    .Lbinop_α_484_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_484_6
.Lbinop_α_484_5:        movq             xmm1, rdi
.Lbinop_α_484_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_484_0
                        mov              qword ptr [rbp + -320], 5
                        mov              qword ptr [rbp + -312], rax
.Lbinop_α_484_7:                                                              jmp   n00079_assign_α
.Lbinop_α_484_0:        mov              rdi, qword ptr [rbp + -304]
                        mov              rsi, qword ptr [rbp + -296]
                        mov              rdx, qword ptr [rbp + -288]
                        mov              rcx, qword ptr [rbp + -280]
                        call             rt_add_big@PLT
.Lgcsite_item_5:        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00078_line_mark_α
                        mov              qword ptr [rbp + -320], rax
                        mov              qword ptr [rbp + -312], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_4:        mov              r9,  qword ptr [rip + rtccb+48]
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
.Lline_mark_α_486_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_486_stno
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_490_0]
                        mov              qword ptr [rbp + -424], rax;         jmp   n00082_deref_α
.Llit_integer_α_490_0:  .quad            6
                        .size            n00081_lit_integer_bx, .-n00081_lit_integer_bx
                        .type            n00082_deref_bx, @function
n00082_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_deref_α:           mov              rdi, qword ptr [rbp + -448]          # d
                        mov              rsi, qword ptr [rbp + -440]          # d
                        call             rt_deref@PLT
.Lgcsite_item_7:        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00083_line_mark_α
                        mov              qword ptr [rbp + -416], rax
                        mov              qword ptr [rbp + -408], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_6:        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00084_line_mark_α
                        .size            n00082_deref_bx, .-n00082_deref_bx
                        .type            n00084_line_mark_bx, @function
n00084_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_492_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_492_stno
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
.Lcall_icon_α_rkfn495:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn495]
                        lea              rsi, [rbp + -496]
                        mov              edx, 2
                        mov              ecx, 327837
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_item_8:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + -512], rax
                        mov              qword ptr [rbp + -504], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_9:        mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n00083_line_mark_α
                                                                              jmp   n00086_lit_string_α
n00085_call_icon_β:                                                             jmp   n00083_line_mark_α
                        .size            n00085_call_icon_bx, .-n00085_call_icon_bx
                        .type            n00086_lit_string_bx, @function
n00086_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_lit_string_α:      mov              qword ptr [rbp + -400], 2            # result
                        mov              dword ptr [rbp + -396], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_496_0]
                        mov              qword ptr [rbp + -392], rax;         jmp   n00087_var_ref_α
.Llit_string_α_496_0:   .quad            .Llit_string_α_496_0_s
.Llit_string_α_496_0_s: .string          "  "
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
n00088_deref_α:           mov              rdi, qword ptr [rbp + -368]          # d
                        mov              rsi, qword ptr [rbp + -360]          # d
                        call             rt_deref@PLT
.Lgcsite_item_11:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00083_line_mark_α
                        mov              qword ptr [rbp + -352], rax
                        mov              qword ptr [rbp + -344], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_10:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00089_line_mark_α
                        .size            n00088_deref_bx, .-n00088_deref_bx
                        .type            n00089_line_mark_bx, @function
n00089_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_500_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_500_stno
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
.Lcall_icon_α_rkfn503:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn503]
                        lea              rsi, [rbp + -576]
                        mov              edx, 3
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_item_12:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + -592], rax
                        mov              qword ptr [rbp + -584], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_13:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n00083_line_mark_α
                                                                              jmp   n00083_line_mark_α
n00090_call_icon_β:                                                             jmp   n00083_line_mark_α
                        .size            n00090_call_icon_bx, .-n00090_call_icon_bx
                        .type            n00083_line_mark_bx, @function
n00083_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_504_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_504_stno
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
n00092_deref_α:           mov              rdi, qword ptr [rbp + -640]          # d
                        mov              rsi, qword ptr [rbp + -632]          # d
                        call             rt_deref@PLT
.Lgcsite_item_15:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00093_line_mark_α
                        mov              qword ptr [rbp + -624], rax
                        mov              qword ptr [rbp + -616], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_14:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00094_line_mark_α
                        .size            n00092_deref_bx, .-n00092_deref_bx
                        .type            n00094_line_mark_bx, @function
n00094_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_509_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_509_stno
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
.Lcall_icon_α_rkfn512:  .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn512]
                        lea              rsi, [rbp + -672]
                        mov              edx, 1
                        mov              ecx, 196743
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_item_16:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + -688], rax
                        mov              qword ptr [rbp + -680], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_17:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lline_mark_α_514_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_514_stno
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_516_0]
                        mov              qword ptr [rbp + -712], rax;         jmp   n00098_assign_α
.Llit_integer_α_516_0:  .quad            1
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
.Lline_mark_α_518_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_518_stno
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
n00101_scan_enter_α:      mov              dword ptr [rbp + -1360], 2
                        mov              dword ptr [rbp + -1356], 0
                        mov              qword ptr [rbp + -1352], r13
                        mov              qword ptr [rbp + -1344], r14
                        mov              qword ptr [rbp + -1336], r15
                        mov              rdi, qword ptr [rbp + -752]          # lo
                        mov              rsi, qword ptr [rbp + -744]          # hi
                        call             rt_scan_enter@PLT
.Lgcsite_item_19:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_item_18:       mov              r9,  qword ptr [rip + rtccb+48]
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
n00103_bound_α:           mov              qword ptr [rbp + -1136], rsp;        jmp   n00104_lit_charset_α
                        .size            n00103_bound_bx, .-n00103_bound_bx
                        .type            n00104_lit_charset_bx, @function
n00104_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_lit_charset_α:     mov              qword ptr [rbp + -1184], 2           # result
                        mov              dword ptr [rbp + -1180], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_526_0]
                        mov              qword ptr [rbp + -1176], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_526_0]
                        mov              rsi, 52
                        call             rt_icn_cset_register@PLT
.Lgcsite_item_21:       mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_20:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00105_line_mark_α
.Llit_charset_α_526_0:  .quad            .Llit_charset_α_526_0_s
.Llit_charset_α_526_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00104_lit_charset_bx, .-n00104_lit_charset_bx
                        .type            n00105_line_mark_bx, @function
n00105_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_527_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_527_stno
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
n00106_scan_upto_α:       mov              qword ptr [rbp + -1216], r14
.Lscan_upto_α_530_0:    mov              rax, qword ptr [rbp + -1216]
                        cmp              rax, r15;                            jge   n00107_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .Lscan_upto_α_530_3]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_upto_α_530_1
                        mov              qword ptr [rbp + -1232], 3
                        add              rax, 1
                        mov              qword ptr [rbp + -1224], rax;        jmp   n00108_line_mark_α
.Lscan_upto_α_530_1:    inc              qword ptr [rbp + -1216];             jmp   .Lscan_upto_α_530_0
n00106_scan_upto_β:       inc              qword ptr [rbp + -1216];             jmp   .Lscan_upto_α_530_0
.Lscan_upto_β_530_2:    .quad            .Lscan_upto_β_530_2_s
.Lscan_upto_β_530_2_s:  .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.Lscan_upto_α_530_3:    .quad            0
.Lscan_upto_β_530_4:    .quad            576460743847706622
.Lscan_upto_β_530_5:    .quad            0
.Lscan_upto_β_530_6:    .quad            0
                        .size            n00106_scan_upto_bx, .-n00106_scan_upto_bx
                        .type            n00108_line_mark_bx, @function
n00108_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_531_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_531_stno
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
n00109_scan_tab_α:        mov              rdi, qword ptr [rbp + -1232]
                        mov              rsi, qword ptr [rbp + -1224]
                        sub              rsp, 8
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_item_27:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_item_26:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + -1232]
                        mov              rsi, qword ptr [rbp + -1224]
                        sub              rsp, 8
                        call             core_icn_to_int_check@PLT
.Lgcsite_item_25:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_item_24:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_534_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_534_0:     cmp              rax, 1;                              jl    n00106_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00106_scan_upto_β
                        mov              qword ptr [rbp + -1264], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        call             rt_substr@PLT
.Lgcsite_item_23:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_item_22:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + -1280], rax
                        mov              qword ptr [rbp + -1272], rdx;        jmp   n00110_line_mark_α
n00109_scan_tab_β:        mov              r14, qword ptr [rbp + -1264];        jmp   n00106_scan_upto_β
                        .size            n00109_scan_tab_bx, .-n00109_scan_tab_bx
                        .type            n00110_line_mark_bx, @function
n00110_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_535_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_535_stno
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
.Lline_mark_α_537_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_537_stno
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
                        mov              rax, qword ptr [rip + .Llit_charset_α_539_0]
                        mov              qword ptr [rbp + -808], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_539_0]
                        mov              rsi, 52
                        call             rt_icn_cset_register@PLT
.Lgcsite_item_29:       mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_28:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00113_line_mark_α
.Llit_charset_α_539_0:  .quad            .Llit_charset_α_539_0_s
.Llit_charset_α_539_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00112_lit_charset_bx, .-n00112_lit_charset_bx
                        .type            n00113_line_mark_bx, @function
n00113_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_540_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_540_stno
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
n00114_scan_many_α:       lea              rdi, [rip + .Lscan_many_α_543_3]
                        mov              eax, r14d
.Lscan_many_α_543_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_543_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_many_α_543_1
                        add              eax, 1;                              jmp   .Lscan_many_α_543_0
.Lscan_many_α_543_1:    cmp              eax, r14d;                           je    n00115_line_mark_α
                        mov              qword ptr [rbp + -848], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + -840], rcx;         jmp   n00116_line_mark_α
n00114_scan_many_β:                                                             jmp   n00115_line_mark_α
.Lscan_many_β_543_2:    .quad            .Lscan_many_β_543_2_s
.Lscan_many_β_543_2_s:  .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.Lscan_many_α_543_3:    .quad            0
.Lscan_many_β_543_4:    .quad            576460743847706622
.Lscan_many_β_543_5:    .quad            0
.Lscan_many_β_543_6:    .quad            0
                        .size            n00114_scan_many_bx, .-n00114_scan_many_bx
                        .type            n00116_line_mark_bx, @function
n00116_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_544_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_544_stno
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
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_item_35:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_item_34:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + -848]
                        mov              rsi, qword ptr [rbp + -840]
                        sub              rsp, 8
                        call             core_icn_to_int_check@PLT
.Lgcsite_item_33:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_item_32:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_547_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_547_0:     cmp              rax, 1;                              jl    n00115_line_mark_α
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
                        call             rt_substr@PLT
.Lgcsite_item_31:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_item_30:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lline_mark_α_549_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_549_stno
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
n00119_disjunction_α:     mov              qword ptr [rbp + -1072], 0
                        mov              qword ptr [rbp + -1064], 0
                        mov              dword ptr [rbp + -1056], 0;          jmp   n00120_var_α
.Ldisjunction_γ_451_as: mov              eax, dword ptr [rbp + -1056]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_552_0
                                                                              jmp   n00121_conjunction_α
.Ldisjunction_α_552_0:                                                        jmp   n00121_conjunction_α
n00119_disjunction_β:     mov              eax, dword ptr [rbp + -1056];        jmp   n00122_unmark_α
.Ldisjunction_γ_451_af:
.Ldisjunction_ω_451_af: add              dword ptr [rbp + -1056], 1
                        mov              eax, dword ptr [rbp + -1056];        jmp   n00122_unmark_α
                        .size            n00119_disjunction_bx, .-n00119_disjunction_bx
                        .type            n00121_conjunction_bx, @function
n00121_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_conjunction_α:     mov              rax, qword ptr [rbp + -1072]
                        mov              qword ptr [rbp + -1088], rax
                        mov              rax, qword ptr [rbp + -1064]
                        mov              qword ptr [rbp + -1080], rax;        jmp   n00122_unmark_α
n00121_conjunction_β:                                                           jmp   n00122_unmark_α
                        .size            n00121_conjunction_bx, .-n00121_conjunction_bx
                        .type            n00120_var_bx, @function
n00120_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_var_α:             mov              rax, qword ptr [rbp + -160]
                        mov              qword ptr [rbp + -944], rax
                        mov              rax, qword ptr [rbp + -152]
                        mov              qword ptr [rbp + -936], rax;         jmp   n00123_unop_α
n00120_var_β:                                                                   jmp   .Ldisjunction_ω_451_af
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
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_36:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00124_lit_integer_α
                        .size            n00123_unop_bx, .-n00123_unop_bx
                        .type            n00124_lit_integer_bx, @function
n00124_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_lit_integer_α:     mov              qword ptr [rbp + -928], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_557_0]
                        mov              qword ptr [rbp + -920], rax;         jmp   n00125_binop_test_α
.Llit_integer_α_557_0:  .quad            3
                        .size            n00124_lit_integer_bx, .-n00124_lit_integer_bx
                        .type            n00125_binop_test_bx, @function
n00125_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_binop_test_α:      mov              eax, dword ptr [rbp + -960]
                        cmp              al, 112;                             je    .Lbinop_test_α_558_0
                        mov              eax, dword ptr [rbp + -928]
                        cmp              al, 112;                             je    .Lbinop_test_α_558_0
                        mov              eax, dword ptr [rbp + -960]
                        cmp              al, 3;                               jne   .Lbinop_test_α_558_2
                        mov              eax, dword ptr [rbp + -928]
                        cmp              al, 3;                               jne   .Lbinop_test_α_558_2
.Lbinop_test_α_558_1:   mov              rax, qword ptr [rbp + -952]
                        mov              rcx, qword ptr [rbp + -920]
                        cmp              rax, rcx;                            jl    .Ldisjunction_ω_451_af
                        mov              rcx, qword ptr [rbp + -928]
                        mov              qword ptr [rbp + -976], rcx
                        mov              rcx, qword ptr [rbp + -920]
                        mov              qword ptr [rbp + -968], rcx;         jmp   n00126_var_α
.Lbinop_test_α_558_0:   mov              rdi, qword ptr [rbp + -960]          # a
                        mov              rsi, qword ptr [rbp + -952]          # a
                        mov              rdx, qword ptr [rbp + -928]          # b
                        mov              rcx, qword ptr [rbp + -920]          # b
                        mov              r8d, 8                               # op
                        lea              r9, [rbp + -976]                     # out
                        call             rt_relop_overload@PLT
.Lgcsite_item_43:       mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lbinop_test_α_558_2
                        cmp              eax, 1;                              je    .Ldisjunction_ω_451_af
                        push             rax                                  # gc_poll bb_binop_relop.cpp:56
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_42:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00126_var_α
.Lbinop_test_α_558_2:   mov              rdi, qword ptr [rbp + -960]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_item_40:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    .Ldisjunction_ω_451_af
                        mov              rdi, qword ptr [rbp + -960]
                        mov              rsi, qword ptr [rbp + -952]
                        mov              rdx, qword ptr [rbp + -928]
                        mov              rcx, qword ptr [rbp + -920]
                        lea              r8, [rbp + -976]
                        call             rt_relop_val_coerce@PLT
.Lgcsite_item_39:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_binop_relop.cpp:79
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_38:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00126_var_α
                        .size            n00125_binop_test_bx, .-n00125_binop_test_bx
                        .type            n00126_var_bx, @function
n00126_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_var_α:             mov              rax, qword ptr [rbp + -160]
                        mov              qword ptr [rbp + -1040], rax
                        mov              rax, qword ptr [rbp + -152]
                        mov              qword ptr [rbp + -1032], rax;        jmp   n00065_suspend_α
                        .size            n00126_var_bx, .-n00126_var_bx
                        .type            n00065_suspend_bx, @function
n00065_suspend_bx:
#=======================================================================================================================
# suspend
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 102 0
n00065_suspend_α:         lea              rax, [rip + n00065_suspend_β]
                        mov              qword ptr [rbp + -192], rax
                        mov              rax, qword ptr [rbp + -1040]
                        mov              qword ptr [rbp + -1504], rax
                        mov              rax, qword ptr [rbp + -1032]
                        mov              qword ptr [rbp + -1496], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lgcsite_item_46:       mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00127_scan_α
n00065_suspend_β:         push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
.Lgcsite_item_45:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        call             rt_scan_live_subj@PLT
.Lgcsite_item_44:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        pop              rdx
                        pop              rax;                                 jmp   n00127_scan_β
                        .size            n00065_suspend_bx, .-n00065_suspend_bx
                        .type            n00127_scan_bx, @function
n00127_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_scan_α:            mov              dword ptr [rbp + -992], r14d
                        mov              dword ptr [rbp + -1004], r15d
                        call             rt_scan_live_subj@PLT
.Lgcsite_item_51:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + -1000], rax
                        mov              dword ptr [rbp + -1008], 2
                        mov              rdi, qword ptr [rbp + -1352]         # out3
                        mov              rsi, qword ptr [rbp + -1344]
                        mov              rdx, qword ptr [rbp + -1336]
                        call             rt_scan_leave@PLT
.Lgcsite_item_50:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rbp + -1352]
                        mov              r14, qword ptr [rbp + -1344]
                        mov              r15, qword ptr [rbp + -1336];        jmp   item_γ
n00127_scan_β:            call             rt_scan_sync_in@PLT
.Lgcsite_item_49:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + -1344], rax
                        mov              rdi, qword ptr [rbp + -1000]
                        mov              esi, dword ptr [rbp + -1004]
                        call             rt_scan_reenter_live@PLT
.Lgcsite_item_48:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14d, dword ptr [rbp + -992]
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lgcsite_item_47:       mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00122_unmark_α
                                                                              jmp   n00122_unmark_α
                        .size            n00127_scan_bx, .-n00127_scan_bx
                        .type            n00122_unmark_bx, @function
n00122_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_unmark_α:          mov              rsp, qword ptr [rbp + -1136];        jmp   n00128_line_mark_α
n00122_unmark_β:                                                                jmp   n00128_line_mark_α
                        .size            n00122_unmark_bx, .-n00122_unmark_bx
                        .type            n00128_line_mark_bx, @function
n00128_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_567_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_567_stno
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
n00102_unmark_α:          mov              rsp, qword ptr [rbp + -1424];        jmp   n00129_line_mark_α
                        .size            n00102_unmark_bx, .-n00102_unmark_bx
                        .type            n00129_line_mark_bx, @function
n00129_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_571_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_571_stno
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
n00107_scan_α:            mov              dword ptr [rbp + -1296], r14d
                        mov              dword ptr [rbp + -1308], r15d
                        call             rt_scan_live_subj@PLT
.Lgcsite_item_53:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + -1304], rax
                        mov              dword ptr [rbp + -1312], 2
                        mov              rdi, qword ptr [rbp + -1352]         # out3
                        mov              rsi, qword ptr [rbp + -1344]
                        mov              rdx, qword ptr [rbp + -1336]
                        call             rt_scan_leave@PLT
.Lgcsite_item_52:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rbp + -1352]
                        mov              r14, qword ptr [rbp + -1344]
                        mov              r15, qword ptr [rbp + -1336];        jmp   n00102_unmark_α
n00107_scan_β:                                                                  jmp   n00102_unmark_α
                        .size            n00107_scan_bx, .-n00107_scan_bx
#-----------------------------------------------------------------------------------------------------------------------
item_res:
                        mov              rbp, rax
                        mov              rdx, rax
                        mov              rcx, qword ptr [rdx + 48]
                        test             rcx, rcx;                            je    .Litem_α_574_238
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rdx + 56]
                        test             rcx, rcx;                            je    .Litem_α_574_238
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
.Litem_α_574_238:       mov              rax, rdx
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
                        .quad            6460977270106
                        .quad            249108103312
                        .quad            .Lgcmap_item_s
                        .quad            1376
                        .quad            22
                        .quad            87960930222080
                        .quad            17596481011792
                        .quad            70368744177760
                        .quad            17596481011872
                        .quad            35184372089008
                        .quad            17596481011920
                        .quad            17592186044640
                        .quad            17596481011952
                        .quad            35184372089088
                        .quad            17596481012000
                        .quad            70368744177968
                        .quad            17596481012080
                        .quad            70368744178048
                        .quad            17596481012160
                        .quad            52776558133712
                        .quad            17596481012224
                        .quad            105553116267024
                        .quad            17596481012336
                        .quad            738871813866112
                        .quad            8808977925408
                        .quad            8800387990824
                        .quad            52776558134576
.Lgcmap_item_s:         .string          "item"
.Lgcsites_item_2:       .quad            54
                        .quad            .Lgcmap_item
                        .quad            9372272265174975976
                        .quad            .Lgccode_item_2
                        .quad            .Lgcsite_item_0
                        .quad            6459630944257
                        .quad            .Lgcsite_item_1
                        .quad            6459630944257
                        .quad            .Lgcsite_item_2
                        .quad            6459630944257
                        .quad            .Lgcsite_item_3
                        .quad            6459630944257
                        .quad            .Lgcsite_item_4
                        .quad            6459630944257
                        .quad            .Lgcsite_item_5
                        .quad            6459630944257
                        .quad            .Lgcsite_item_6
                        .quad            6459630944257
                        .quad            .Lgcsite_item_7
                        .quad            6459630944257
                        .quad            .Lgcsite_item_8
                        .quad            6459630944257
                        .quad            .Lgcsite_item_9
                        .quad            6459630944257
                        .quad            .Lgcsite_item_10
                        .quad            6459630944257
                        .quad            .Lgcsite_item_11
                        .quad            6459630944257
                        .quad            .Lgcsite_item_12
                        .quad            6459630944257
                        .quad            .Lgcsite_item_13
                        .quad            6459630944257
                        .quad            .Lgcsite_item_14
                        .quad            6459630944257
                        .quad            .Lgcsite_item_15
                        .quad            6459630944257
                        .quad            .Lgcsite_item_16
                        .quad            6459630944257
                        .quad            .Lgcsite_item_17
                        .quad            6459630944257
                        .quad            .Lgcsite_item_18
                        .quad            6459630944257
                        .quad            .Lgcsite_item_19
                        .quad            6459630944257
                        .quad            .Lgcsite_item_20
                        .quad            6459630944257
                        .quad            .Lgcsite_item_21
                        .quad            6459630944257
                        .quad            .Lgcsite_item_22
                        .quad            6459630944257
                        .quad            .Lgcsite_item_23
                        .quad            6459630944257
                        .quad            .Lgcsite_item_24
                        .quad            6459630944257
                        .quad            .Lgcsite_item_25
                        .quad            6459630944257
                        .quad            .Lgcsite_item_26
                        .quad            6459630944257
                        .quad            .Lgcsite_item_27
                        .quad            6459630944257
                        .quad            .Lgcsite_item_28
                        .quad            6459630944257
                        .quad            .Lgcsite_item_29
                        .quad            6459630944257
                        .quad            .Lgcsite_item_30
                        .quad            6459630944257
                        .quad            .Lgcsite_item_31
                        .quad            6459630944257
                        .quad            .Lgcsite_item_32
                        .quad            6459630944257
                        .quad            .Lgcsite_item_33
                        .quad            6459630944257
                        .quad            .Lgcsite_item_34
                        .quad            6459630944257
                        .quad            .Lgcsite_item_35
                        .quad            6459630944257
                        .quad            .Lgcsite_item_36
                        .quad            6459630944257
                        .quad            .Lgcsite_item_37
                        .quad            6459630944257
                        .quad            .Lgcsite_item_38
                        .quad            6459630944257
                        .quad            .Lgcsite_item_39
                        .quad            6459630944257
                        .quad            .Lgcsite_item_40
                        .quad            6459630944257
                        .quad            .Lgcsite_item_41
                        .quad            6459630944257
                        .quad            .Lgcsite_item_42
                        .quad            6459630944257
                        .quad            .Lgcsite_item_43
                        .quad            6459630944257
                        .quad            .Lgcsite_item_44
                        .quad            6459630944257
                        .quad            .Lgcsite_item_45
                        .quad            6459630944257
                        .quad            .Lgcsite_item_46
                        .quad            6459630944257
                        .quad            .Lgcsite_item_47
                        .quad            6459630944257
                        .quad            .Lgcsite_item_48
                        .quad            6459630944257
                        .quad            .Lgcsite_item_49
                        .quad            6459630944257
                        .quad            .Lgcsite_item_50
                        .quad            6459630944257
                        .quad            .Lgcsite_item_51
                        .quad            6459630944257
                        .quad            .Lgcsite_item_52
                        .quad            6459630944257
                        .quad            .Lgcsite_item_53
                        .quad            6459630944257
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_options_3:
FN__options:
                        sub              rsp, 4064
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 4056
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_options]
                        mov              qword ptr [rsp + 3848], rax
                        mov              dword ptr [rsp + 3840], 160
                        mov              dword ptr [rsp + 3844], 4064
                        mov              eax, 0
                        mov              qword ptr [rsp + 4056], rbp
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
.Lline_mark_α_743_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_743_stno
                        .long            0
                        .long            111
                        .quad            .Lstnof1
                        .popsection
n00130_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 111
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_744_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00131_line_mark_α
.Lline_mark_α_744_0:    .quad            .Lline_mark_α_744_0_s
.Lline_mark_α_744_0_s:  .string          "concord.icn"
                        .size            n00130_line_mark_bx, .-n00130_line_mark_bx
                        .type            n00131_line_mark_bx, @function
n00131_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_745_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_745_stno
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
                        lea              rdx, [rbp + 4080]
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx;         jmp   n00133_nulltest_var_α
                        .size            n00132_var_ref_bx, .-n00132_var_ref_bx
                        .type            n00133_nulltest_var_bx, @function
n00133_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_nulltest_var_α:    mov              eax, dword ptr [rbp + 3552]
                        cmp              al, 104;                             je    n00134_line_mark_α
                        mov              rdi, qword ptr [rbp + 3552]          # d
                        mov              rsi, qword ptr [rbp + 3560]          # d
                        call             rt_deref@PLT
.Lgcsite_options_1:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00134_line_mark_α
                        cmp              eax, 0;                              jne   n00134_line_mark_α
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3576], rax
                        push             rax                                  # gc_poll bb_unop.cpp:64
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_0:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00135_lit_charset_α
                        .size            n00133_nulltest_var_bx, .-n00133_nulltest_var_bx
                        .type            n00135_lit_charset_bx, @function
n00135_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_lit_charset_α:     mov              qword ptr [rbp + 3648], 2            # result
                        mov              dword ptr [rbp + 3652], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_750_0]
                        mov              qword ptr [rbp + 3656], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_750_0]
                        mov              rsi, 52
                        call             rt_icn_cset_register@PLT
.Lgcsite_options_3:     mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_2:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00136_line_mark_α
.Llit_charset_α_750_0:  .quad            .Llit_charset_α_750_0_s
.Llit_charset_α_750_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00135_lit_charset_bx, .-n00135_lit_charset_bx
                        .type            n00136_line_mark_bx, @function
n00136_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_751_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_751_stno
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
n00137_call_icon_α:       mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3624], rax
                        .section         .rodata
.Lcall_icon_α_rkfn754:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn754]
                        lea              rsi, [rbp + 3616]
                        mov              edx, 1
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_4:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_5:     mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n00134_line_mark_α
                                                                              jmp   n00138_assign_var_α
n00137_call_icon_β:                                                             jmp   n00134_line_mark_α
                        .size            n00137_call_icon_bx, .-n00137_call_icon_bx
                        .type            n00138_assign_var_bx, @function
n00138_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_assign_var_α:      mov              rdi, qword ptr [rbp + 3568]
                        mov              rsi, qword ptr [rbp + 3576]
                        mov              rdx, qword ptr [rbp + 3600]
                        mov              rcx, qword ptr [rbp + 3608]
                        call             rt_assign_var_strict@PLT
.Lgcsite_options_7:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00134_line_mark_α
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_6:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00134_line_mark_α
                        .size            n00138_assign_var_bx, .-n00138_assign_var_bx
                        .type            n00134_line_mark_bx, @function
n00134_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_756_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_756_stno
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
.Lline_mark_α_758_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_758_stno
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
.Lcall_icon_α_rkfn761:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn761]
                        lea              rsi, [rbp + 3520]
                        mov              edx, 0
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_8:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_9:     mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n00141_line_mark_α
                                                                              jmp   n00142_assign_α
n00140_call_icon_β:                                                             jmp   n00141_line_mark_α
                        .size            n00140_call_icon_bx, .-n00140_call_icon_bx
                        .type            n00142_assign_bx, @function
n00142_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_assign_α:          mov              rax, qword ptr [rbp + 3504]
                        mov              rdx, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx;         jmp   n00141_line_mark_α
                        .size            n00142_assign_bx, .-n00142_assign_bx
                        .type            n00141_line_mark_bx, @function
n00141_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_763_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_763_stno
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
n00143_make_list_α:       lea              rdi, [rbp + 3488]
                        mov              esi, 0
                        call             rt_make_list@PLT
.Lgcsite_options_11:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx
                        push             rax                                  # gc_poll bb_make_list.cpp:53
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_10:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00144_assign_α
                        .size            n00143_make_list_bx, .-n00143_make_list_bx
                        .type            n00144_assign_bx, @function
n00144_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_assign_α:          mov              rax, qword ptr [rbp + 3472]
                        mov              rdx, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx;         jmp   n00145_line_mark_α
                        .size            n00144_assign_bx, .-n00144_assign_bx
                        .type            n00145_line_mark_bx, @function
n00145_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_768_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_768_stno
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
                        lea              rdx, [rbp + 4064]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n00148_deref_α
                        .size            n00147_var_ref_bx, .-n00147_var_ref_bx
                        .type            n00148_deref_bx, @function
n00148_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_deref_α:           mov              rdi, qword ptr [rbp + 368]           # d
                        mov              rsi, qword ptr [rbp + 376]           # d
                        call             rt_deref@PLT
.Lgcsite_options_13:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00149_line_mark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_12:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00150_line_mark_α
                        .size            n00148_deref_bx, .-n00148_deref_bx
                        .type            n00150_line_mark_bx, @function
n00150_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_775_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_775_stno
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
.Lcall_icon_α_rkfn778:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn778]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_14:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_15:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n00149_line_mark_α
                                                                              jmp   n00152_assign_α
n00151_call_icon_β:                                                             jmp   n00149_line_mark_α
                        .size            n00151_call_icon_bx, .-n00151_call_icon_bx
                        .type            n00152_assign_bx, @function
n00152_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_assign_α:          mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx;         jmp   n00153_line_mark_α
                        .size            n00152_assign_bx, .-n00152_assign_bx
                        .type            n00153_line_mark_bx, @function
n00153_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_780_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_780_stno
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
n00154_var_α:             mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3432], rax;         jmp   n00155_scan_enter_α
                        .size            n00154_var_bx, .-n00154_var_bx
                        .type            n00155_scan_enter_bx, @function
n00155_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_scan_enter_α:      mov              dword ptr [rbp + 480], 2
                        mov              dword ptr [rbp + 484], 0
                        mov              qword ptr [rbp + 488], r13
                        mov              qword ptr [rbp + 496], r14
                        mov              qword ptr [rbp + 504], r15
                        mov              rdi, qword ptr [rbp + 3424]          # lo
                        mov              rsi, qword ptr [rbp + 3432]          # hi
                        call             rt_scan_enter@PLT
.Lgcsite_options_17:    mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_16:    mov              r9,  qword ptr [rip + rtccb+48]
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
n00157_disjunction_α:     mov              qword ptr [rbp + 608], 0
                        mov              qword ptr [rbp + 616], 0
                        mov              dword ptr [rbp + 624], 0;            jmp   n00158_lit_string_α
.Ldisjunction_γ_600_as: mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_787_0
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00159_scan_α
.Ldisjunction_α_787_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_787_1
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00159_scan_α
.Ldisjunction_α_787_1:                                                        jmp   n00159_scan_α
n00157_disjunction_β:     mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 0;                              je    n00160_disjunction_β
                                                                              jmp   n00161_scan_α
.Ldisjunction_γ_600_af:
.Ldisjunction_ω_600_af: add              dword ptr [rbp + 624], 1
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 1;                              je    n00162_line_mark_α
                                                                              jmp   n00161_scan_α
                        .size            n00157_disjunction_bx, .-n00157_disjunction_bx
                        .type            n00159_scan_bx, @function
n00159_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_scan_α:            mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 520], rax
                        mov              dword ptr [rbp + 544], r14d
                        mov              dword ptr [rbp + 532], r15d
                        call             rt_scan_live_subj@PLT
.Lgcsite_options_22:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 536], rax
                        mov              dword ptr [rbp + 528], 2
                        mov              rdi, qword ptr [rbp + 488]           # out3
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        call             rt_scan_leave@PLT
.Lgcsite_options_21:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rbp + 488]
                        mov              r14, qword ptr [rbp + 496]
                        mov              r15, qword ptr [rbp + 504];          jmp   n00156_unmark_α
n00159_scan_β:            call             rt_scan_sync_in@PLT
.Lgcsite_options_20:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 496], rax
                        mov              rdi, qword ptr [rbp + 536]
                        mov              esi, dword ptr [rbp + 532]
                        call             rt_scan_reenter_live@PLT
.Lgcsite_options_19:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14d, dword ptr [rbp + 544]
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lgcsite_options_18:    mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00157_disjunction_β
                                                                              jmp   n00156_unmark_α
                        .size            n00159_scan_bx, .-n00159_scan_bx
                        .type            n00163_conjunction_bx, @function
n00163_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_conjunction_α:                                                           jmp   .Ldisjunction_γ_600_as
n00163_conjunction_β:                                                           jmp   n00161_scan_α
                        .size            n00163_conjunction_bx, .-n00163_conjunction_bx
                        .type            n00162_line_mark_bx, @function
n00162_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_791_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_791_stno
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
                        lea              rdx, [rbp + 3728]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx;         jmp   n00165_var_ref_α
                        .size            n00164_var_ref_bx, .-n00164_var_ref_bx
                        .type            n00165_var_ref_bx, @function
n00165_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3760]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx;         jmp   n00166_deref_α
                        .size            n00165_var_ref_bx, .-n00165_var_ref_bx
                        .type            n00166_deref_bx, @function
n00166_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00166_deref_α:           mov              rdi, qword ptr [rbp + 3344]          # d
                        mov              rsi, qword ptr [rbp + 3352]          # d
                        call             rt_deref@PLT
.Lgcsite_options_24:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00161_scan_α
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_23:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00167_deref_α
                        .size            n00166_deref_bx, .-n00166_deref_bx
                        .type            n00167_deref_bx, @function
n00167_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00167_deref_α:           mov              rdi, qword ptr [rbp + 3360]          # d
                        mov              rsi, qword ptr [rbp + 3368]          # d
                        call             rt_deref@PLT
.Lgcsite_options_26:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00161_scan_α
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_25:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00168_line_mark_α
                        .size            n00167_deref_bx, .-n00167_deref_bx
                        .type            n00168_line_mark_bx, @function
n00168_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_799_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_799_stno
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
n00169_call_icon_α:       mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3320], rax
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3304], rax
                        .section         .rodata
.Lcall_icon_α_rkfn802:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn802]
                        lea              rsi, [rbp + 3296]
                        mov              edx, 2
                        mov              ecx, 196758
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_27:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_28:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n00161_scan_α
                                                                              jmp   .Ldisjunction_γ_600_as
n00169_call_icon_β:                                                             jmp   n00161_scan_α
                        .size            n00169_call_icon_bx, .-n00169_call_icon_bx
                        .type            n00158_lit_string_bx, @function
n00158_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_lit_string_α:      mov              qword ptr [rbp + 3248], 2            # result
                        mov              dword ptr [rbp + 3252], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_803_0]
                        mov              qword ptr [rbp + 3256], rax;         jmp   n00170_scan_match_α
n00158_lit_string_β:                                                            jmp   .Ldisjunction_ω_600_af
.Llit_string_α_803_0:   .quad            .Llit_string_α_803_0_s
.Llit_string_α_803_0_s: .string          "-"
                        .size            n00158_lit_string_bx, .-n00158_lit_string_bx
                        .type            n00170_scan_match_bx, @function
n00170_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00170_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_600_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_805_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        call             memcmp@PLT
.Lgcsite_options_29:    mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r12
                        test             eax, eax;                            jne   .Ldisjunction_ω_600_af
                        mov              qword ptr [rbp + 3216], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 3224], rax;         jmp   n00171_scan_tab_α
.Lscan_match_α_805_0:   .quad            .Lscan_match_α_805_0_s
.Lscan_match_α_805_0_s: .string          "-"
                        .size            n00170_scan_match_bx, .-n00170_scan_match_bx
                        .type            n00171_scan_tab_bx, @function
n00171_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_scan_tab_α:        mov              rdi, qword ptr [rbp + 3216]
                        mov              rsi, qword ptr [rbp + 3224]
                        sub              rsp, 8
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_options_35:    mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        test             eax, eax;                            jz    .Ldisjunction_ω_600_af
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_34:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 3216]
                        mov              rsi, qword ptr [rbp + 3224]
                        sub              rsp, 8
                        call             core_icn_to_int_check@PLT
.Lgcsite_options_33:    mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_32:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_807_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_807_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_600_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_600_af
                        mov              qword ptr [rbp + 3200], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        call             rt_substr@PLT
.Lgcsite_options_31:    mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_30:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n00172_lit_integer_α
n00171_scan_tab_β:        mov              r14, qword ptr [rbp + 3200];         jmp   .Ldisjunction_ω_600_af
                        .size            n00171_scan_tab_bx, .-n00171_scan_tab_bx
                        .type            n00172_lit_integer_bx, @function
n00172_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_lit_integer_α:     mov              qword ptr [rbp + 3168], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_808_0]
                        mov              qword ptr [rbp + 3176], rax;         jmp   n00173_line_mark_α
.Llit_integer_α_808_0:  .quad            0
                        .size            n00172_lit_integer_bx, .-n00172_lit_integer_bx
                        .type            n00173_line_mark_bx, @function
n00173_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_809_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_809_stno
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
                        cmp              rax, 1;                              jge   .Lscan_pos_α_812_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_812_0:     cmp              rax, 1;                              jl    n00175_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00175_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00175_var_α
                        mov              qword ptr [rbp + 3136], 3
                        mov              qword ptr [rbp + 3144], rax;         jmp   n00171_scan_tab_β
                        .size            n00174_scan_pos_bx, .-n00174_scan_pos_bx
                        .type            n00175_var_bx, @function
n00175_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_var_α:             mov              qword ptr [rbp + 3120], 0
                        mov              qword ptr [rbp + 3128], 0;           jmp   n00176_conjunction_α
n00175_var_β:                                                                   jmp   n00171_scan_tab_β
                        .size            n00175_var_bx, .-n00175_var_bx
                        .type            n00176_conjunction_bx, @function
n00176_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_conjunction_α:     mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3112], rax;         jmp   n00177_line_mark_α
n00176_conjunction_β:                                                           jmp   .Ldisjunction_ω_600_af
                        .size            n00176_conjunction_bx, .-n00176_conjunction_bx
                        .type            n00177_line_mark_bx, @function
n00177_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_815_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_815_stno
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
.Lline_mark_α_817_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_817_stno
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
n00179_disjunction_α:     mov              qword ptr [rbp + 2816], 0
                        mov              qword ptr [rbp + 2824], 0
                        mov              dword ptr [rbp + 2832], 0;           jmp   n00180_lit_string_α
.Ldisjunction_γ_620_as: mov              eax, dword ptr [rbp + 2832]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_820_0
                                                                              jmp   n00181_line_mark_α
.Ldisjunction_α_820_0:                                                        jmp   n00181_line_mark_α
n00179_disjunction_β:     mov              eax, dword ptr [rbp + 2832];         jmp   n00181_line_mark_α
.Ldisjunction_γ_620_af:
.Ldisjunction_ω_620_af: add              dword ptr [rbp + 2832], 1
                        mov              eax, dword ptr [rbp + 2832];         jmp   n00181_line_mark_α
                        .size            n00179_disjunction_bx, .-n00179_disjunction_bx
                        .type            n00181_line_mark_bx, @function
n00181_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_821_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_821_stno
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
n00182_bound_α:           mov              qword ptr [rbp + 752], rsp;          jmp   n00183_lit_integer_α
                        .size            n00182_bound_bx, .-n00182_bound_bx
                        .type            n00183_lit_integer_bx, @function
n00183_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_lit_integer_α:     mov              qword ptr [rbp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_825_0]
                        mov              qword ptr [rbp + 728], rax;          jmp   n00184_line_mark_α
.Llit_integer_α_825_0:  .quad            1
                        .size            n00183_lit_integer_bx, .-n00183_lit_integer_bx
                        .type            n00184_line_mark_bx, @function
n00184_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_826_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_826_stno
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
                        mov              qword ptr [rbp + 688], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        call             rt_substr@PLT
.Lgcsite_options_37:    mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_36:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n00186_assign_α
n00185_scan_move_β:       mov              r14, qword ptr [rbp + 688];          jmp   n00161_scan_α
                        .size            n00185_scan_move_bx, .-n00185_scan_move_bx
                        .type            n00186_assign_bx, @function
n00186_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_assign_α:          mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx;         jmp   n00187_line_mark_α
                        .size            n00186_assign_bx, .-n00186_assign_bx
                        .type            n00187_line_mark_bx, @function
n00187_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_831_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_831_stno
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
n00160_disjunction_α:     mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              dword ptr [rbp + 816], 0;            jmp   n00188_var_ref_α
.Ldisjunction_γ_628_as: mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_834_0
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00189_unmark_α
.Ldisjunction_α_834_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_834_1
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00189_unmark_α
.Ldisjunction_α_834_1:                                                        jmp   n00189_unmark_α
n00160_disjunction_β:     mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0;                              je    n00190_disjunction_β
                                                                              jmp   n00189_unmark_α
.Ldisjunction_γ_628_af:
.Ldisjunction_ω_628_af: add              dword ptr [rbp + 816], 1
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 1;                              je    n00191_line_mark_α
                                                                              jmp   n00189_unmark_α
                        .size            n00160_disjunction_bx, .-n00160_disjunction_bx
                        .type            n00191_line_mark_bx, @function
n00191_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_835_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_835_stno
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
n00192_lit_string_α:      mov              qword ptr [rbp + 2704], 2            # result
                        mov              dword ptr [rbp + 2708], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_837_0]
                        mov              qword ptr [rbp + 2712], rax;         jmp   n00193_var_ref_α
.Llit_string_α_837_0:   .quad            .Llit_string_α_837_0_s
.Llit_string_α_837_0_s: .string          "Unrecognized option: -"
                        .size            n00192_lit_string_bx, .-n00192_lit_string_bx
                        .type            n00193_var_ref_bx, @function
n00193_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx;         jmp   n00194_deref_α
                        .size            n00193_var_ref_bx, .-n00193_var_ref_bx
                        .type            n00194_deref_bx, @function
n00194_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_deref_α:           mov              rdi, qword ptr [rbp + 2736]          # d
                        mov              rsi, qword ptr [rbp + 2744]          # d
                        call             rt_deref@PLT
.Lgcsite_options_39:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00189_unmark_α
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_38:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00195_line_mark_α
                        .size            n00194_deref_bx, .-n00194_deref_bx
                        .type            n00195_line_mark_bx, @function
n00195_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_841_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_841_stno
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
n00196_call_icon_α:       mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2680], rax
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2664], rax
                        .section         .rodata
.Lcall_icon_α_rkfn844:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn844]
                        lea              rsi, [rbp + 2656]
                        mov              edx, 2
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_40:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_41:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n00189_unmark_α
                                                                              jmp   .Ldisjunction_γ_628_as
n00196_call_icon_β:                                                             jmp   n00189_unmark_α
                        .size            n00196_call_icon_bx, .-n00196_call_icon_bx
                        .type            n00188_var_ref_bx, @function
n00188_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx;         jmp   n00197_var_ref_α
n00188_var_ref_β:                                                               jmp   .Ldisjunction_ω_628_af
                        .size            n00188_var_ref_bx, .-n00188_var_ref_bx
                        .type            n00197_var_ref_bx, @function
n00197_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4080]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx;         jmp   n00198_deref_α
                        .size            n00197_var_ref_bx, .-n00197_var_ref_bx
                        .type            n00198_deref_bx, @function
n00198_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_deref_α:           mov              rdi, qword ptr [rbp + 2560]          # d
                        mov              rsi, qword ptr [rbp + 2568]          # d
                        call             rt_deref@PLT
.Lgcsite_options_43:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    .Ldisjunction_ω_628_af
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_42:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00199_deref_α
                        .size            n00198_deref_bx, .-n00198_deref_bx
                        .type            n00199_deref_bx, @function
n00199_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_deref_α:           mov              rdi, qword ptr [rbp + 2576]          # d
                        mov              rsi, qword ptr [rbp + 2584]          # d
                        call             rt_deref@PLT
.Lgcsite_options_45:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    .Ldisjunction_ω_628_af
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_44:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00200_line_mark_α
                        .size            n00199_deref_bx, .-n00199_deref_bx
                        .type            n00200_line_mark_bx, @function
n00200_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_851_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_851_stno
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
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2520], rax
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2504], rax
                        mov              qword ptr [rbp + 2528], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lgcsite_options_46:    mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_builtin_gen_α_853_60:
                        .section         .rodata
.Lcall_builtin_gen_α_bynamegenfn287: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_gen_α_bynamegenfn287]
                        lea              rsi, [rbp + 2496]
                        mov              edx, 2
                        lea              rcx, [rbp + 2528]
                        call             rt_call_arr_gen_strict@PLT
.Lgcsite_options_47:    push             rax
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
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_options_48:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_628_af
                                                                              jmp   n00202_lit_integer_α
n00201_call_builtin_gen_β:
                                                                              jmp   .Lcall_builtin_gen_α_853_60
                        .size            n00201_call_builtin_gen_bx, .-n00201_call_builtin_gen_bx
                        .type            n00202_lit_integer_bx, @function
n00202_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_lit_integer_α:     mov              qword ptr [rbp + 2624], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_854_0]
                        mov              qword ptr [rbp + 2632], rax;         jmp   n00203_coerce_numeric_α
.Llit_integer_α_854_0:  .quad            1
                        .size            n00202_lit_integer_bx, .-n00202_lit_integer_bx
                        .type            n00203_coerce_numeric_bx, @function
n00203_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_coerce_numeric_α:  mov              eax, dword ptr [rbp + 2480]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_856_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_856_0
                        mov              eax, dword ptr [rbp + 2624]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_856_0
.Lcoerce_numeric_α_856_1:
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2472], rax;         jmp   n00204_binop_α
.Lcoerce_numeric_α_856_0:
                        lea              rdi, [rbp + 2480]
                        lea              rsi, [rbp + 2624]
                        lea              rdx, [rbp + 2464]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_options_50:    push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_49:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rbp + 2464]
                        cmp              al, 104;                             je    .Ldisjunction_ω_628_af
                                                                              jmp   n00204_binop_α
                        .size            n00203_coerce_numeric_bx, .-n00203_coerce_numeric_bx
                        .type            n00204_binop_bx, @function
n00204_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_binop_α:           mov              eax, dword ptr [rbp + 2464]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_857_2
                        mov              rax, qword ptr [rbp + 2472]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_857_0
                        mov              qword ptr [rbp + 2448], 3
                        mov              qword ptr [rbp + 2456], rax;         jmp   .Lbinop_α_857_7
.Lbinop_α_857_2:        and              edx, 1;                              jz    .Lbinop_α_857_0
                        mov              rsi, qword ptr [rbp + 2472]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_857_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_857_4
.Lbinop_α_857_3:        movq             xmm0, rsi
.Lbinop_α_857_4:        cmp              cl, 5;                               je    .Lbinop_α_857_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_857_6
.Lbinop_α_857_5:        movq             xmm1, rdi
.Lbinop_α_857_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_857_0
                        mov              qword ptr [rbp + 2448], 5
                        mov              qword ptr [rbp + 2456], rax
.Lbinop_α_857_7:                                                              jmp   n00205_assign_α
.Lbinop_α_857_0:        mov              rdi, qword ptr [rbp + 2464]
                        mov              rsi, qword ptr [rbp + 2472]
                        mov              rdx, qword ptr [rbp + 2624]
                        mov              rcx, qword ptr [rbp + 2632]
                        call             rt_add_big@PLT
.Lgcsite_options_52:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    .Ldisjunction_ω_628_af
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_51:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00205_assign_α
                        .size            n00204_binop_bx, .-n00204_binop_bx
                        .type            n00205_assign_bx, @function
n00205_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_assign_α:          mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx;         jmp   n00206_line_mark_α
                        .size            n00205_assign_bx, .-n00205_assign_bx
                        .type            n00206_line_mark_bx, @function
n00206_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_859_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_859_stno
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
                        lea              rdx, [rbp + 3712]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n00208_var_α
                        .size            n00207_var_ref_bx, .-n00207_var_ref_bx
                        .type            n00208_var_bx, @function
n00208_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_var_α:             mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 856], rax;          jmp   n00190_disjunction_α
                        .size            n00208_var_bx, .-n00208_var_bx
                        .type            n00190_disjunction_bx, @function
n00190_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_disjunction_α:     mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              dword ptr [rbp + 896], 0;            jmp   n00209_lit_charset_α
.Ldisjunction_γ_648_as: mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_866_0
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00210_assign_var_α
.Ldisjunction_α_866_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_866_1
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00210_assign_var_α
.Ldisjunction_α_866_1:                                                        jmp   n00210_assign_var_α
n00190_disjunction_β:     mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0;                              je    n00211_disjunction_β
                                                                              jmp   n00189_unmark_α
.Ldisjunction_γ_648_af:
.Ldisjunction_ω_648_af: add              dword ptr [rbp + 896], 1
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 1;                              je    n00212_lit_integer_α
                                                                              jmp   n00189_unmark_α
                        .size            n00190_disjunction_bx, .-n00190_disjunction_bx
                        .type            n00210_assign_var_bx, @function
n00210_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_assign_var_α:      mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        cmp              dil, 40;                             jne   .Lassign_var_α_868_5
                        mov              rax, rdi
                        shr              rax, 32
                        cmp              eax, 1;                              jne   .Lassign_var_α_868_0
                        test             rsi, rsi;                            je    .Lassign_var_α_868_0
                        mov              rax, qword ptr [rsi + 0]
                        mov              r10, qword ptr [rsi + 8]
                        cmp              al, 24;                              jne   .Lassign_var_α_868_0
                        mov              rdi, rax
                        mov              rsi, r10;                            jmp   .Lassign_var_α_868_1
.Lassign_var_α_868_5:   cmp              dil, 24;                             je    .Lassign_var_α_868_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_868_0
.Lassign_var_α_868_1:   test             rsi, rsi;                            je    .Lassign_var_α_868_0
                        mov              r8, qword ptr [rbp + 880]
                        mov              r9, qword ptr [rbp + 888]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_options_58:    cmp              al, 104;                             je    n00189_unmark_α
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:116
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_57:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   .Ldisjunction_γ_628_as
.Lassign_var_α_868_0:   call             rt_subscript_var_strict@PLT
.Lgcsite_options_56:    mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
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
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_options_55:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             je    n00189_unmark_α
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rbp + 880]
                        mov              rcx, qword ptr [rbp + 888]
                        call             rt_assign_var_strict@PLT
.Lgcsite_options_54:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00189_unmark_α
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:132
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_53:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   .Ldisjunction_γ_628_as
n00210_assign_var_β:                                                            jmp   n00189_unmark_α
                        .size            n00210_assign_var_bx, .-n00210_assign_var_bx
                        .type            n00212_lit_integer_bx, @function
n00212_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_lit_integer_α:     mov              qword ptr [rbp + 2416], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_869_0]
                        mov              qword ptr [rbp + 2424], rax;         jmp   .Ldisjunction_γ_648_as
n00212_lit_integer_β:                                                           jmp   n00189_unmark_α
.Llit_integer_α_869_0:  .quad            1
                        .size            n00212_lit_integer_bx, .-n00212_lit_integer_bx
                        .type            n00209_lit_charset_bx, @function
n00209_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_lit_charset_α:     mov              qword ptr [rbp + 2288], 2            # result
                        mov              dword ptr [rbp + 2292], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_870_0]
                        mov              qword ptr [rbp + 2296], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_870_0]
                        mov              rsi, 3
                        call             rt_icn_cset_register@PLT
.Lgcsite_options_60:    mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_59:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00213_var_ref_α
n00209_lit_charset_β:                                                           jmp   .Ldisjunction_ω_648_af
.Llit_charset_α_870_0:  .quad            .Llit_charset_α_870_0_s
.Llit_charset_α_870_0_s:
                        .string          "+.:"
                        .size            n00209_lit_charset_bx, .-n00209_lit_charset_bx
                        .type            n00213_var_ref_bx, @function
n00213_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4080]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx;         jmp   n00214_var_α
                        .size            n00213_var_ref_bx, .-n00213_var_ref_bx
                        .type            n00214_var_bx, @function
n00214_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_var_α:             mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 2344], rax;         jmp   n00215_subscript_α
                        .size            n00214_var_bx, .-n00214_var_bx
                        .type            n00215_subscript_bx, @function
n00215_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_subscript_α:       xor              eax, eax
.Lsubscript_α_875_1:    mov              rdi, qword ptr [rbp + 2320]
                        mov              rsi, qword ptr [rbp + 2328]
                        mov              rdx, qword ptr [rbp + 2336]
                        mov              rcx, qword ptr [rbp + 2344]
                        test             eax, eax;                            jne   .Lsubscript_α_875_2
                        call             rt_subscript_val_strict@PLT
.Lgcsite_options_64:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 255;                             jne   .Lsubscript_α_875_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_875_1
.Lsubscript_α_875_4:    push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_63:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   .Lsubscript_α_875_3
.Lsubscript_α_875_2:    call             rt_subscript_var_strict@PLT
.Lgcsite_options_62:    mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_61:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:
.Lsubscript_α_875_3:    cmp              al, 104;                             je    .Ldisjunction_ω_648_af
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx;         jmp   n00216_deref_α
                        .size            n00215_subscript_bx, .-n00215_subscript_bx
                        .type            n00216_deref_bx, @function
n00216_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_deref_α:           mov              rdi, qword ptr [rbp + 2352]          # d
                        mov              rsi, qword ptr [rbp + 2360]          # d
                        call             rt_deref@PLT
.Lgcsite_options_66:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    .Ldisjunction_ω_648_af
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_65:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00217_assign_α
                        .size            n00216_deref_bx, .-n00216_deref_bx
                        .type            n00217_assign_bx, @function
n00217_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_assign_α:          mov              rax, qword ptr [rbp + 2368]
                        mov              rdx, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx;         jmp   n00218_var_ref_α
                        .size            n00217_assign_bx, .-n00217_assign_bx
                        .type            n00218_var_ref_bx, @function
n00218_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3792]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx;         jmp   n00219_deref_α
                        .size            n00218_var_ref_bx, .-n00218_var_ref_bx
                        .type            n00219_deref_bx, @function
n00219_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00219_deref_α:           mov              rdi, qword ptr [rbp + 2384]          # d
                        mov              rsi, qword ptr [rbp + 2392]          # d
                        call             rt_deref@PLT
.Lgcsite_options_68:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    .Ldisjunction_ω_648_af
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_67:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00220_line_mark_α
                        .size            n00219_deref_bx, .-n00219_deref_bx
                        .type            n00220_line_mark_bx, @function
n00220_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_881_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_881_stno
                        .long            0
                        .long            122
                        .quad            .Lstnof1
                        .popsection
n00220_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 122;            jmp   n00221_call_icon_α
                        .size            n00220_line_mark_bx, .-n00220_line_mark_bx
                        .type            n00221_call_icon_bx, @function
n00221_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_call_icon_α:       mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lgcsite_options_69:    mov              r9,  qword ptr [rip + rtccb+48]
                        .section         .rodata
.Lcall_icon_α_bynamefn307: .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_bynamefn307]
                        lea              rsi, [rbp + 2240]
                        mov              edx, 2
                        mov              ecx, 196712
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_70:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
.Lgcsite_options_72:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        call             rt_scan_live_subj@PLT
.Lgcsite_options_71:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_call.cpp:335
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_73:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_648_af
                                                                              jmp   n00222_line_mark_α
n00221_call_icon_β:                                                             jmp   .Ldisjunction_ω_648_af
                        .size            n00221_call_icon_bx, .-n00221_call_icon_bx
                        .type            n00222_line_mark_bx, @function
n00222_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_884_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_884_stno
                        .long            0
                        .long            123
                        .quad            .Lstnof1
                        .popsection
n00222_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00223_disjunction_α
                        .size            n00222_line_mark_bx, .-n00222_line_mark_bx
                        .type            n00223_disjunction_bx, @function
n00223_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_disjunction_α:     mov              qword ptr [rbp + 1856], 0
                        mov              qword ptr [rbp + 1864], 0
                        mov              dword ptr [rbp + 1872], 0;           jmp   n00224_lit_string_α
.Ldisjunction_γ_662_as: mov              eax, dword ptr [rbp + 1872]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_887_0
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1864], rax;         jmp   n00225_assign_α
.Ldisjunction_α_887_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_887_1
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1864], rax;         jmp   n00225_assign_α
.Ldisjunction_α_887_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_887_2
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 1864], rax;         jmp   n00225_assign_α
.Ldisjunction_α_887_2:                                                        jmp   n00225_assign_α
n00223_disjunction_β:     mov              eax, dword ptr [rbp + 1872]
                        cmp              eax, 0;                              je    n00226_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_662_af
                                                                              jmp   .Ldisjunction_ω_662_af
.Ldisjunction_γ_662_af:
.Ldisjunction_ω_662_af: add              dword ptr [rbp + 1872], 1
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              eax, 1;                              je    n00227_var_ref_α
                        cmp              eax, 2;                              je    n00228_lit_string_α
                                                                              jmp   n00229_line_mark_α
                        .size            n00223_disjunction_bx, .-n00223_disjunction_bx
                        .type            n00225_assign_bx, @function
n00225_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_assign_α:          mov              rax, qword ptr [rbp + 1856]
                        mov              rdx, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx;         jmp   n00229_line_mark_α
                        .size            n00225_assign_bx, .-n00225_assign_bx
                        .type            n00229_line_mark_bx, @function
n00229_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_889_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_889_stno
                        .long            0
                        .long            125
                        .quad            .Lstnof1
                        .popsection
n00229_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 125;            jmp   n00230_var_α
                        .size            n00229_line_mark_bx, .-n00229_line_mark_bx
                        .type            n00230_var_bx, @function
n00230_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_var_α:             mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 936], rax;          jmp   n00211_disjunction_α
                        .size            n00230_var_bx, .-n00230_var_bx
                        .type            n00211_disjunction_bx, @function
n00211_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_disjunction_α:     mov              qword ptr [rbp + 944], 0
                        mov              qword ptr [rbp + 952], 0
                        mov              dword ptr [rbp + 960], 0;            jmp   n00231_lit_string_α
.Ldisjunction_γ_666_as: mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_894_0
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 952], rax;          jmp   n00232_conjunction_α
.Ldisjunction_α_894_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_894_1
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 952], rax;          jmp   n00232_conjunction_α
.Ldisjunction_α_894_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_894_2
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 952], rax;          jmp   n00232_conjunction_α
.Ldisjunction_α_894_2:                                                        jmp   n00232_conjunction_α
n00211_disjunction_β:     mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 0;                              je    n00189_unmark_α
                        cmp              eax, 1;                              je    n00233_disjunction_β
                                                                              jmp   n00234_disjunction_β
.Ldisjunction_γ_666_af:
.Ldisjunction_ω_666_af: add              dword ptr [rbp + 960], 1
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 1;                              je    n00235_lit_string_α
                        cmp              eax, 2;                              je    n00236_lit_string_α
                                                                              jmp   n00189_unmark_α
                        .size            n00211_disjunction_bx, .-n00211_disjunction_bx
                        .type            n00232_conjunction_bx, @function
n00232_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_conjunction_α:     mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax;          jmp   .Ldisjunction_γ_648_as
n00232_conjunction_β:                                                           jmp   n00189_unmark_α
                        .size            n00232_conjunction_bx, .-n00232_conjunction_bx
                        .type            n00236_lit_string_bx, @function
n00236_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_lit_string_α:      mov              qword ptr [rbp + 1760], 2            # result
                        mov              dword ptr [rbp + 1764], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_896_0]
                        mov              qword ptr [rbp + 1768], rax;         jmp   n00237_call_builtin_α
n00236_lit_string_β:                                                            jmp   .Ldisjunction_ω_666_af
.Llit_string_α_896_0:   .quad            .Llit_string_α_896_0_s
.Llit_string_α_896_0_s: .string          "."
                        .size            n00236_lit_string_bx, .-n00236_lit_string_bx
                        .type            n00237_call_builtin_bx, @function
n00237_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00237_call_builtin_α:    mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1816], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn898: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn898]
                        lea              rsi, [rbp + 1808]
                        mov              edx, 2
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_74:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_75:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_666_af
                                                                              jmp   n00238_line_mark_α
n00237_call_builtin_β:                                                          jmp   .Ldisjunction_ω_666_af
                        .size            n00237_call_builtin_bx, .-n00237_call_builtin_bx
                        .type            n00238_line_mark_bx, @function
n00238_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_899_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_899_stno
                        .long            0
                        .long            129
                        .quad            .Lstnof1
                        .popsection
n00238_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00234_disjunction_α
                        .size            n00238_line_mark_bx, .-n00238_line_mark_bx
                        .type            n00234_disjunction_bx, @function
n00234_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00234_disjunction_α:     mov              qword ptr [rbp + 1456], 0
                        mov              qword ptr [rbp + 1464], 0
                        mov              dword ptr [rbp + 1472], 0;           jmp   n00239_var_ref_α
.Ldisjunction_γ_671_as: mov              eax, dword ptr [rbp + 1472]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_902_0
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax;         jmp   .Ldisjunction_γ_666_as
.Ldisjunction_α_902_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_902_1
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1464], rax;         jmp   .Ldisjunction_γ_666_as
.Ldisjunction_α_902_1:                                                        jmp   .Ldisjunction_γ_666_as
n00234_disjunction_β:     mov              eax, dword ptr [rbp + 1472]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_671_af
                                                                              jmp   .Ldisjunction_ω_671_af
.Ldisjunction_γ_671_af:
.Ldisjunction_ω_671_af: add              dword ptr [rbp + 1472], 1
                        mov              eax, dword ptr [rbp + 1472]
                        cmp              eax, 1;                              je    n00240_lit_string_α
                                                                              jmp   n00189_unmark_α
                        .size            n00234_disjunction_bx, .-n00234_disjunction_bx
                        .type            n00240_lit_string_bx, @function
n00240_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00240_lit_string_α:      mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_903_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n00241_var_ref_α
n00240_lit_string_β:                                                            jmp   .Ldisjunction_ω_671_af
.Llit_string_α_903_0:   .quad            .Llit_string_α_903_0_s
.Llit_string_α_903_0_s: .string          "-"
                        .size            n00240_lit_string_bx, .-n00240_lit_string_bx
                        .type            n00241_var_ref_bx, @function
n00241_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx;         jmp   n00242_lit_string_α
                        .size            n00241_var_ref_bx, .-n00241_var_ref_bx
                        .type            n00242_lit_string_bx, @function
n00242_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_lit_string_α:      mov              qword ptr [rbp + 1696], 2            # result
                        mov              dword ptr [rbp + 1700], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_906_0]
                        mov              qword ptr [rbp + 1704], rax;         jmp   n00243_deref_α
.Llit_string_α_906_0:   .quad            .Llit_string_α_906_0_s
.Llit_string_α_906_0_s: .string          " needs numeric parameter"
                        .size            n00242_lit_string_bx, .-n00242_lit_string_bx
                        .type            n00243_deref_bx, @function
n00243_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_deref_α:           mov              rdi, qword ptr [rbp + 1680]          # d
                        mov              rsi, qword ptr [rbp + 1688]          # d
                        call             rt_deref@PLT
.Lgcsite_options_77:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    .Ldisjunction_ω_671_af
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_76:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00244_line_mark_α
                        .size            n00243_deref_bx, .-n00243_deref_bx
                        .type            n00244_line_mark_bx, @function
n00244_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_908_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_908_stno
                        .long            0
                        .long            130
                        .quad            .Lstnof1
                        .popsection
n00244_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 130;            jmp   n00245_call_icon_α
                        .size            n00244_line_mark_bx, .-n00244_line_mark_bx
                        .type            n00245_call_icon_bx, @function
n00245_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_call_icon_α:       mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1592], rax
                        .section         .rodata
.Lcall_icon_α_rkfn911:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn911]
                        lea              rsi, [rbp + 1584]
                        mov              edx, 3
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_78:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_79:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_671_af
                                                                              jmp   .Ldisjunction_γ_671_as
n00245_call_icon_β:                                                             jmp   .Ldisjunction_ω_671_af
                        .size            n00245_call_icon_bx, .-n00245_call_icon_bx
                        .type            n00239_var_ref_bx, @function
n00239_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3808]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx;         jmp   n00246_deref_α
n00239_var_ref_β:                                                               jmp   .Ldisjunction_ω_671_af
                        .size            n00239_var_ref_bx, .-n00239_var_ref_bx
                        .type            n00246_deref_bx, @function
n00246_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_deref_α:           mov              rdi, qword ptr [rbp + 1536]          # d
                        mov              rsi, qword ptr [rbp + 1544]          # d
                        call             rt_deref@PLT
.Lgcsite_options_81:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    .Ldisjunction_ω_671_af
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_80:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00247_line_mark_α
                        .size            n00246_deref_bx, .-n00246_deref_bx
                        .type            n00247_line_mark_bx, @function
n00247_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_915_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_915_stno
                        .long            0
                        .long            129
                        .quad            .Lstnof1
                        .popsection
n00247_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00248_call_icon_α
                        .size            n00247_line_mark_bx, .-n00247_line_mark_bx
                        .type            n00248_call_icon_bx, @function
n00248_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_call_icon_α:       mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1512], rax
                        .section         .rodata
.Lcall_icon_α_rkfn918:  .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn918]
                        lea              rsi, [rbp + 1504]
                        mov              edx, 1
                        mov              ecx, 262297
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_82:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_83:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_671_af
                                                                              jmp   .Ldisjunction_γ_671_as
n00248_call_icon_β:                                                             jmp   .Ldisjunction_ω_671_af
                        .size            n00248_call_icon_bx, .-n00248_call_icon_bx
                        .type            n00235_lit_string_bx, @function
n00235_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00235_lit_string_α:      mov              qword ptr [rbp + 1376], 2            # result
                        mov              dword ptr [rbp + 1380], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_919_0]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n00249_call_builtin_α
n00235_lit_string_β:                                                            jmp   .Ldisjunction_ω_666_af
.Llit_string_α_919_0:   .quad            .Llit_string_α_919_0_s
.Llit_string_α_919_0_s: .string          "+"
                        .size            n00235_lit_string_bx, .-n00235_lit_string_bx
                        .type            n00249_call_builtin_bx, @function
n00249_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00249_call_builtin_α:    mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1432], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn921: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn921]
                        lea              rsi, [rbp + 1424]
                        mov              edx, 2
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_84:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_85:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_666_af
                                                                              jmp   n00250_line_mark_α
n00249_call_builtin_β:                                                          jmp   .Ldisjunction_ω_666_af
                        .size            n00249_call_builtin_bx, .-n00249_call_builtin_bx
                        .type            n00250_line_mark_bx, @function
n00250_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_922_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_922_stno
                        .long            0
                        .long            127
                        .quad            .Lstnof1
                        .popsection
n00250_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 127;            jmp   n00233_disjunction_α
                        .size            n00250_line_mark_bx, .-n00250_line_mark_bx
                        .type            n00233_disjunction_bx, @function
n00233_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_disjunction_α:     mov              qword ptr [rbp + 1072], 0
                        mov              qword ptr [rbp + 1080], 0
                        mov              dword ptr [rbp + 1088], 0;           jmp   n00251_var_ref_α
.Ldisjunction_γ_685_as: mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_925_0
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax;         jmp   .Ldisjunction_γ_666_as
.Ldisjunction_α_925_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_925_1
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1080], rax;         jmp   .Ldisjunction_γ_666_as
.Ldisjunction_α_925_1:                                                        jmp   .Ldisjunction_γ_666_as
n00233_disjunction_β:     mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_685_af
                                                                              jmp   .Ldisjunction_ω_685_af
.Ldisjunction_γ_685_af:
.Ldisjunction_ω_685_af: add              dword ptr [rbp + 1088], 1
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 1;                              je    n00252_lit_string_α
                                                                              jmp   n00189_unmark_α
                        .size            n00233_disjunction_bx, .-n00233_disjunction_bx
                        .type            n00252_lit_string_bx, @function
n00252_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_lit_string_α:      mov              qword ptr [rbp + 1264], 2            # result
                        mov              dword ptr [rbp + 1268], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_926_0]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n00253_var_ref_α
n00252_lit_string_β:                                                            jmp   .Ldisjunction_ω_685_af
.Llit_string_α_926_0:   .quad            .Llit_string_α_926_0_s
.Llit_string_α_926_0_s: .string          "-"
                        .size            n00252_lit_string_bx, .-n00252_lit_string_bx
                        .type            n00253_var_ref_bx, @function
n00253_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx;         jmp   n00254_lit_string_α
                        .size            n00253_var_ref_bx, .-n00253_var_ref_bx
                        .type            n00254_lit_string_bx, @function
n00254_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_lit_string_α:      mov              qword ptr [rbp + 1312], 2            # result
                        mov              dword ptr [rbp + 1316], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_929_0]
                        mov              qword ptr [rbp + 1320], rax;         jmp   n00255_deref_α
.Llit_string_α_929_0:   .quad            .Llit_string_α_929_0_s
.Llit_string_α_929_0_s: .string          " needs numeric parameter"
                        .size            n00254_lit_string_bx, .-n00254_lit_string_bx
                        .type            n00255_deref_bx, @function
n00255_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00255_deref_α:           mov              rdi, qword ptr [rbp + 1296]          # d
                        mov              rsi, qword ptr [rbp + 1304]          # d
                        call             rt_deref@PLT
.Lgcsite_options_87:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    .Ldisjunction_ω_685_af
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_86:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00256_line_mark_α
                        .size            n00255_deref_bx, .-n00255_deref_bx
                        .type            n00256_line_mark_bx, @function
n00256_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_931_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_931_stno
                        .long            0
                        .long            128
                        .quad            .Lstnof1
                        .popsection
n00256_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 128;            jmp   n00257_call_icon_α
                        .size            n00256_line_mark_bx, .-n00256_line_mark_bx
                        .type            n00257_call_icon_bx, @function
n00257_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00257_call_icon_α:       mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lcall_icon_α_rkfn934:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn934]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 3
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_88:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_89:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_685_af
                                                                              jmp   .Ldisjunction_γ_685_as
n00257_call_icon_β:                                                             jmp   .Ldisjunction_ω_685_af
                        .size            n00257_call_icon_bx, .-n00257_call_icon_bx
                        .type            n00251_var_ref_bx, @function
n00251_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3808]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx;         jmp   n00258_deref_α
n00251_var_ref_β:                                                               jmp   .Ldisjunction_ω_685_af
                        .size            n00251_var_ref_bx, .-n00251_var_ref_bx
                        .type            n00258_deref_bx, @function
n00258_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_deref_α:           mov              rdi, qword ptr [rbp + 1152]          # d
                        mov              rsi, qword ptr [rbp + 1160]          # d
                        call             rt_deref@PLT
.Lgcsite_options_91:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    .Ldisjunction_ω_685_af
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_90:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00259_line_mark_α
                        .size            n00258_deref_bx, .-n00258_deref_bx
                        .type            n00259_line_mark_bx, @function
n00259_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_938_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_938_stno
                        .long            0
                        .long            127
                        .quad            .Lstnof1
                        .popsection
n00259_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 127;            jmp   n00260_call_icon_α
                        .size            n00259_line_mark_bx, .-n00259_line_mark_bx
                        .type            n00260_call_icon_bx, @function
n00260_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_call_icon_α:       mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        .section         .rodata
.Lcall_icon_α_rkfn941:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn941]
                        lea              rsi, [rbp + 1120]
                        mov              edx, 1
                        mov              ecx, 458878
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_92:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_93:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_685_af
                                                                              jmp   .Ldisjunction_γ_685_as
n00260_call_icon_β:                                                             jmp   .Ldisjunction_ω_685_af
                        .size            n00260_call_icon_bx, .-n00260_call_icon_bx
                        .type            n00231_lit_string_bx, @function
n00231_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00231_lit_string_α:      mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_942_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n00261_call_builtin_α
n00231_lit_string_β:                                                            jmp   .Ldisjunction_ω_666_af
.Llit_string_α_942_0:   .quad            .Llit_string_α_942_0_s
.Llit_string_α_942_0_s: .string          ":"
                        .size            n00231_lit_string_bx, .-n00231_lit_string_bx
                        .type            n00261_call_builtin_bx, @function
n00261_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00261_call_builtin_α:    mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1048], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn944: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn944]
                        lea              rsi, [rbp + 1040]
                        mov              edx, 2
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_94:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_95:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_666_af
                                                                              jmp   n00262_var_α
n00261_call_builtin_β:                                                          jmp   .Ldisjunction_ω_666_af
                        .size            n00261_call_builtin_bx, .-n00261_call_builtin_bx
                        .type            n00262_var_bx, @function
n00262_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_var_α:             mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 984], rax;          jmp   .Ldisjunction_γ_666_as
n00262_var_β:                                                                   jmp   n00189_unmark_α
                        .size            n00262_var_bx, .-n00262_var_bx
                        .type            n00228_lit_string_bx, @function
n00228_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00228_lit_string_α:      mov              qword ptr [rbp + 2144], 2            # result
                        mov              dword ptr [rbp + 2148], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_947_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n00263_var_ref_α
n00228_lit_string_β:                                                            jmp   .Ldisjunction_ω_662_af
.Llit_string_α_947_0:   .quad            .Llit_string_α_947_0_s
.Llit_string_α_947_0_s: .string          "No parameter following -"
                        .size            n00228_lit_string_bx, .-n00228_lit_string_bx
                        .type            n00263_var_ref_bx, @function
n00263_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx;         jmp   n00264_deref_α
                        .size            n00263_var_ref_bx, .-n00263_var_ref_bx
                        .type            n00264_deref_bx, @function
n00264_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_deref_α:           mov              rdi, qword ptr [rbp + 2176]          # d
                        mov              rsi, qword ptr [rbp + 2184]          # d
                        call             rt_deref@PLT
.Lgcsite_options_97:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    .Ldisjunction_ω_662_af
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_96:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00265_line_mark_α
                        .size            n00264_deref_bx, .-n00264_deref_bx
                        .type            n00265_line_mark_bx, @function
n00265_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_951_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_951_stno
                        .long            0
                        .long            124
                        .quad            .Lstnof1
                        .popsection
n00265_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 124;            jmp   n00266_call_icon_α
                        .size            n00265_line_mark_bx, .-n00265_line_mark_bx
                        .type            n00266_call_icon_bx, @function
n00266_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_call_icon_α:       mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2104], rax
                        .section         .rodata
.Lcall_icon_α_rkfn954:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn954]
                        lea              rsi, [rbp + 2096]
                        mov              edx, 2
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_98:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_99:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_662_af
                                                                              jmp   .Ldisjunction_γ_662_as
n00266_call_icon_β:                                                             jmp   .Ldisjunction_ω_662_af
                        .size            n00266_call_icon_bx, .-n00266_call_icon_bx
                        .type            n00227_var_ref_bx, @function
n00227_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4064]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx;         jmp   n00267_deref_α
n00227_var_ref_β:                                                               jmp   .Ldisjunction_ω_662_af
                        .size            n00227_var_ref_bx, .-n00227_var_ref_bx
                        .type            n00267_deref_bx, @function
n00267_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_deref_α:           mov              rdi, qword ptr [rbp + 2048]          # d
                        mov              rsi, qword ptr [rbp + 2056]          # d
                        call             rt_deref@PLT
.Lgcsite_options_101:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    .Ldisjunction_ω_662_af
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_100:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00268_line_mark_α
                        .size            n00267_deref_bx, .-n00267_deref_bx
                        .type            n00268_line_mark_bx, @function
n00268_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_958_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_958_stno
                        .long            0
                        .long            123
                        .quad            .Lstnof1
                        .popsection
n00268_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00269_call_icon_α
                        .size            n00268_line_mark_bx, .-n00268_line_mark_bx
                        .type            n00269_call_icon_bx, @function
n00269_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_call_icon_α:       mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2024], rax
                        .section         .rodata
.Lcall_icon_α_rkfn961:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn961]
                        lea              rsi, [rbp + 2016]
                        mov              edx, 1
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_102:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_103:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_662_af
                                                                              jmp   .Ldisjunction_γ_662_as
n00269_call_icon_β:                                                             jmp   .Ldisjunction_ω_662_af
                        .size            n00269_call_icon_bx, .-n00269_call_icon_bx
                        .type            n00224_lit_string_bx, @function
n00224_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_lit_string_α:      mov              qword ptr [rbp + 1904], 2            # result
                        mov              dword ptr [rbp + 1908], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_962_0]
                        mov              qword ptr [rbp + 1912], rax;         jmp   n00270_lit_integer_α
n00224_lit_string_β:                                                            jmp   .Ldisjunction_ω_662_af
.Llit_string_α_962_0:   .quad            .Llit_string_α_962_0_s
.Llit_string_α_962_0_s: .string          ""
                        .size            n00224_lit_string_bx, .-n00224_lit_string_bx
                        .type            n00270_lit_integer_bx, @function
n00270_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_lit_integer_α:     mov              qword ptr [rbp + 1984], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_963_0]
                        mov              qword ptr [rbp + 1992], rax;         jmp   n00271_line_mark_α
.Llit_integer_α_963_0:  .quad            0
                        .size            n00270_lit_integer_bx, .-n00270_lit_integer_bx
                        .type            n00271_line_mark_bx, @function
n00271_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_964_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_964_stno
                        .long            0
                        .long            123
                        .quad            .Lstnof1
                        .popsection
n00271_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00226_scan_tab_α
                        .size            n00271_line_mark_bx, .-n00271_line_mark_bx
                        .type            n00226_scan_tab_bx, @function
n00226_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_scan_tab_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_967_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_967_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_662_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_662_af
                        mov              qword ptr [rbp + 1952], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        call             rt_substr@PLT
.Lgcsite_options_105:   mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_104:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n00272_binop_test_α
n00226_scan_tab_β:        mov              r14, qword ptr [rbp + 1952];         jmp   .Ldisjunction_ω_662_af
                        .size            n00226_scan_tab_bx, .-n00226_scan_tab_bx
                        .type            n00272_binop_test_bx, @function
n00272_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_binop_test_α:      mov              rdi, qword ptr [rbp + 1904]
                        mov              rsi, qword ptr [rbp + 1912]
                        mov              rdx, qword ptr [rbp + 1936]
                        mov              rcx, qword ptr [rbp + 1944]
                        mov              r8d, 17
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_options_109:   push             rax
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_108:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    n00226_scan_tab_β
                        mov              rdi, qword ptr [rbp + 1936]
                        mov              rsi, qword ptr [rbp + 1944]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
.Lgcsite_options_107:   mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        push             rax                                  # gc_poll bb_binop_relop.cpp:110
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_106:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   .Ldisjunction_γ_662_as
n00272_binop_test_β:                                                            jmp   n00226_scan_tab_β
                        .size            n00272_binop_test_bx, .-n00272_binop_test_bx
                        .type            n00189_unmark_bx, @function
n00189_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00189_unmark_α:          mov              rsp, qword ptr [rbp + 752];          jmp   n00273_line_mark_α
                        .size            n00189_unmark_bx, .-n00189_unmark_bx
                        .type            n00273_line_mark_bx, @function
n00273_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_971_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_971_stno
                        .long            0
                        .long            119
                        .quad            .Lstnof1
                        .popsection
n00273_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 119;            jmp   n00182_bound_α
                        .size            n00273_line_mark_bx, .-n00273_line_mark_bx
                        .type            n00161_scan_bx, @function
n00161_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_scan_α:            mov              dword ptr [rbp + 592], r14d
                        mov              dword ptr [rbp + 580], r15d
                        call             rt_scan_live_subj@PLT
.Lgcsite_options_111:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 584], rax
                        mov              dword ptr [rbp + 576], 2
                        mov              rdi, qword ptr [rbp + 488]           # out3
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        call             rt_scan_leave@PLT
.Lgcsite_options_110:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rbp + 488]
                        mov              r14, qword ptr [rbp + 496]
                        mov              r15, qword ptr [rbp + 504];          jmp   n00156_unmark_α
n00161_scan_β:                                                                  jmp   n00156_unmark_α
                        .size            n00161_scan_bx, .-n00161_scan_bx
                        .type            n00180_lit_string_bx, @function
n00180_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_lit_string_α:      mov              qword ptr [rbp + 3040], 2            # result
                        mov              dword ptr [rbp + 3044], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_975_0]
                        mov              qword ptr [rbp + 3048], rax;         jmp   n00274_scan_match_α
n00180_lit_string_β:                                                            jmp   .Ldisjunction_ω_620_af
.Llit_string_α_975_0:   .quad            .Llit_string_α_975_0_s
.Llit_string_α_975_0_s: .string          "-"
                        .size            n00180_lit_string_bx, .-n00180_lit_string_bx
                        .type            n00274_scan_match_bx, @function
n00274_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00274_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_620_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_977_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        call             memcmp@PLT
.Lgcsite_options_112:   mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r12
                        test             eax, eax;                            jne   .Ldisjunction_ω_620_af
                        mov              qword ptr [rbp + 3008], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 3016], rax;         jmp   n00275_scan_tab_α
.Lscan_match_α_977_0:   .quad            .Lscan_match_α_977_0_s
.Lscan_match_α_977_0_s: .string          "-"
                        .size            n00274_scan_match_bx, .-n00274_scan_match_bx
                        .type            n00275_scan_tab_bx, @function
n00275_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_scan_tab_α:        mov              rdi, qword ptr [rbp + 3008]
                        mov              rsi, qword ptr [rbp + 3016]
                        sub              rsp, 8
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_options_118:   mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        test             eax, eax;                            jz    .Ldisjunction_ω_620_af
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_117:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 3008]
                        mov              rsi, qword ptr [rbp + 3016]
                        sub              rsp, 8
                        call             core_icn_to_int_check@PLT
.Lgcsite_options_116:   mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_115:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_979_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_979_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_620_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_620_af
                        mov              qword ptr [rbp + 2992], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        call             rt_substr@PLT
.Lgcsite_options_114:   mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_113:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx;         jmp   n00276_lit_integer_α
n00275_scan_tab_β:        mov              r14, qword ptr [rbp + 2992];         jmp   .Ldisjunction_ω_620_af
                        .size            n00275_scan_tab_bx, .-n00275_scan_tab_bx
                        .type            n00276_lit_integer_bx, @function
n00276_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_lit_integer_α:     mov              qword ptr [rbp + 2960], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_980_0]
                        mov              qword ptr [rbp + 2968], rax;         jmp   n00277_line_mark_α
.Llit_integer_α_980_0:  .quad            0
                        .size            n00276_lit_integer_bx, .-n00276_lit_integer_bx
                        .type            n00277_line_mark_bx, @function
n00277_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_981_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_981_stno
                        .long            0
                        .long            118
                        .quad            .Lstnof1
                        .popsection
n00277_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00278_scan_pos_α
                        .size            n00277_line_mark_bx, .-n00277_line_mark_bx
                        .type            n00278_scan_pos_bx, @function
n00278_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_scan_pos_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_984_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_984_0:     cmp              rax, 1;                              jl    n00275_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00275_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00275_scan_tab_β
                        mov              qword ptr [rbp + 2928], 3
                        mov              qword ptr [rbp + 2936], rax;         jmp   n00279_conjunction_α
                        .size            n00278_scan_pos_bx, .-n00278_scan_pos_bx
                        .type            n00279_conjunction_bx, @function
n00279_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00279_conjunction_α:     mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2920], rax;         jmp   n00280_scan_α
n00279_conjunction_β:                                                           jmp   .Ldisjunction_ω_620_af
                        .size            n00279_conjunction_bx, .-n00279_conjunction_bx
                        .type            n00280_scan_bx, @function
n00280_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00280_scan_α:            mov              dword ptr [rbp + 2896], r14d
                        mov              dword ptr [rbp + 2884], r15d
                        call             rt_scan_live_subj@PLT
.Lgcsite_options_120:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 2888], rax
                        mov              dword ptr [rbp + 2880], 2
                        mov              rdi, qword ptr [rbp + 488]           # out3
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        call             rt_scan_leave@PLT
.Lgcsite_options_119:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rbp + 488]
                        mov              r14, qword ptr [rbp + 496]
                        mov              r15, qword ptr [rbp + 504];          jmp   n00281_var_α
n00280_scan_β:                                                                  jmp   n00281_var_α
                        .size            n00280_scan_bx, .-n00280_scan_bx
                        .type            n00281_var_bx, @function
n00281_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_var_α:             mov              qword ptr [rbp + 2848], 0
                        mov              qword ptr [rbp + 2856], 0;           jmp   n00282_assign_α
n00281_var_β:                                                                   jmp   n00283_var_α
                        .size            n00281_var_bx, .-n00281_var_bx
                        .type            n00282_assign_bx, @function
n00282_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_assign_α:          mov              rax, qword ptr [rbp + 2848]
                        mov              rdx, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx;         jmp   n00283_var_α
                        .size            n00282_assign_bx, .-n00282_assign_bx
                        .type            n00283_var_bx, @function
n00283_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00283_var_α:             mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 296], rax;          jmp   n00149_line_mark_α
                        .size            n00283_var_bx, .-n00283_var_bx
                        .type            n00156_unmark_bx, @function
n00156_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_unmark_α:          mov              rsp, qword ptr [rbp + 416];          jmp   n00284_line_mark_α
                        .size            n00156_unmark_bx, .-n00156_unmark_bx
                        .type            n00284_line_mark_bx, @function
n00284_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_994_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_994_stno
                        .long            0
                        .long            115
                        .quad            .Lstnof1
                        .popsection
n00284_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00146_bound_α
                        .size            n00284_line_mark_bx, .-n00284_line_mark_bx
                        .type            n00149_line_mark_bx, @function
n00149_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_996_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_996_stno
                        .long            0
                        .long            138
                        .quad            .Lstnof1
                        .popsection
n00149_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 138;            jmp   n00285_bound_α
                        .size            n00149_line_mark_bx, .-n00149_line_mark_bx
                        .type            n00285_bound_bx, @function
n00285_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_bound_α:           mov              qword ptr [rbp + 240], rsp;          jmp   n00286_var_ref_α
                        .size            n00285_bound_bx, .-n00285_bound_bx
                        .type            n00286_var_ref_bx, @function
n00286_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00286_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4064]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n00287_var_ref_α
                        .size            n00286_var_ref_bx, .-n00286_var_ref_bx
                        .type            n00287_var_ref_bx, @function
n00287_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3728]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n00288_deref_α
                        .size            n00287_var_ref_bx, .-n00287_var_ref_bx
                        .type            n00288_deref_bx, @function
n00288_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00288_deref_α:           mov              rdi, qword ptr [rbp + 176]           # d
                        mov              rsi, qword ptr [rbp + 184]           # d
                        call             rt_deref@PLT
.Lgcsite_options_122:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00289_line_mark_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_121:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00290_line_mark_α
                        .size            n00288_deref_bx, .-n00288_deref_bx
                        .type            n00290_line_mark_bx, @function
n00290_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1005_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1005_stno
                        .long            0
                        .long            138
                        .quad            .Lstnof1
                        .popsection
n00290_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 138;            jmp   n00291_call_icon_α
                        .size            n00290_line_mark_bx, .-n00290_line_mark_bx
                        .type            n00291_call_icon_bx, @function
n00291_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00291_call_icon_α:       mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1008: .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1008]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        mov              ecx, 262292
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_123:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_124:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n00289_line_mark_α
                                                                              jmp   n00292_deref_α
n00291_call_icon_β:                                                             jmp   n00289_line_mark_α
                        .size            n00291_call_icon_bx, .-n00291_call_icon_bx
                        .type            n00292_deref_bx, @function
n00292_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00292_deref_α:           mov              rdi, qword ptr [rbp + 112]           # d
                        mov              rsi, qword ptr [rbp + 120]           # d
                        call             rt_deref@PLT
.Lgcsite_options_126:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00289_line_mark_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_125:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00293_line_mark_α
                        .size            n00292_deref_bx, .-n00292_deref_bx
                        .type            n00293_line_mark_bx, @function
n00293_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1010_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1010_stno
                        .long            0
                        .long            138
                        .quad            .Lstnof1
                        .popsection
n00293_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 138;            jmp   n00294_call_icon_α
                        .size            n00293_line_mark_bx, .-n00293_line_mark_bx
                        .type            n00294_call_icon_bx, @function
n00294_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_call_icon_α:       mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1013: .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1013]
                        lea              rsi, [rbp + 64]
                        mov              edx, 2
                        mov              ecx, 262293
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_127:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_128:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n00289_line_mark_α
                                                                              jmp   n00295_unmark_α
n00294_call_icon_β:                                                             jmp   n00289_line_mark_α
                        .size            n00294_call_icon_bx, .-n00294_call_icon_bx
                        .type            n00295_unmark_bx, @function
n00295_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_unmark_α:          mov              rsp, qword ptr [rbp + 240];          jmp   n00285_bound_α
                        .size            n00295_unmark_bx, .-n00295_unmark_bx
                        .type            n00289_line_mark_bx, @function
n00289_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1016_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1016_stno
                        .long            0
                        .long            139
                        .quad            .Lstnof1
                        .popsection
n00289_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 139;            jmp   n00296_var_α
                        .size            n00289_line_mark_bx, .-n00289_line_mark_bx
                        .type            n00296_var_bx, @function
n00296_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_var_α:             mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 24], rax;           jmp   n00297_return_α
                        .size            n00296_var_bx, .-n00296_var_bx
                        .type            n00297_return_bx, @function
n00297_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00297_return_α:          mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   options_γ
                        .size            n00297_return_bx, .-n00297_return_bx
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
                        lea              rsp, [rbp + 4096]
                        mov              rbp, qword ptr [rbp + 4056];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 4096]
                        mov              rbp, qword ptr [rbp + 4056];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_options:
                        .quad            17456093547866
                        .quad            515396075728
                        .quad            .Lgcmap_options_s
                        .quad            3840
                        .quad            45
                        .quad            263882790666240
                        .quad            17596481011952
                        .quad            175921860444416
                        .quad            17596481012128
                        .quad            70368744178096
                        .quad            17596481012208
                        .quad            35184372089344
                        .quad            17596481012256
                        .quad            35184372089392
                        .quad            17596481012304
                        .quad            17592186045024
                        .quad            17596481012336
                        .quad            52776558133888
                        .quad            17596481012400
                        .quad            52776558133952
                        .quad            17596481012464
                        .quad            52776558134016
                        .quad            17596481012528
                        .quad            70368744178496
                        .quad            17596481012608
                        .quad            52776558134160
                        .quad            17596481012672
                        .quad            123145302311888
                        .quad            17596481012800
                        .quad            404620279022672
                        .quad            17596481013184
                        .quad            422212465067472
                        .quad            17596481013584
                        .quad            70368744179552
                        .quad            17596481013664
                        .quad            615726511556528
                        .quad            17596481014240
                        .quad            316659348802032
                        .quad            17596481014544
                        .quad            52776558136096
                        .quad            17596481014608
                        .quad            87960930224992
                        .quad            17596481014704
                        .quad            17592186047424
                        .quad            17596481014736
                        .quad            175921860447200
                        .quad            17596481014912
                        .quad            17592186047632
                        .quad            17596481014944
                        .quad            650910883646640
.Lgcmap_options_s:      .string          "options"
.Lgcsites_options_3:    .quad            129
                        .quad            .Lgcmap_options
                        .quad            9223653340032798720
                        .quad            .Lgccode_options_3
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
                        .quad            .Lgcsite_options_121
                        .quad            65537
                        .quad            .Lgcsite_options_122
                        .quad            65537
                        .quad            .Lgcsite_options_123
                        .quad            65537
                        .quad            .Lgcsite_options_124
                        .quad            65537
                        .quad            .Lgcsite_options_125
                        .quad            65537
                        .quad            .Lgcsite_options_126
                        .quad            65537
                        .quad            .Lgcsite_options_127
                        .quad            65537
                        .quad            .Lgcsite_options_128
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
                        lea              rdi, [rip + __alpha_cellp_tab]
                        call             rt_ab_cell_bind_table@PLT
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
.Lgccode_main_4:
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
                        cmp              ecx, 0;                              jbe   .Lmain_α_1020_220
                        mov              rdx, qword ptr [rax + 0]
                        mov              qword ptr [rsp + 16], rdx
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rsp + 24], rdx
.Lmain_α_1020_220:
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
main_α_body:
                        .type            n00298_call_bx, @function
n00298_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_call_α:           lea              rdi, [rbp + 1392]
                        mov              esi, 0
                        call             rt_quit_trap_300@PLT
.Lgcsite_main_0:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:280
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_1:        mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n00299_line_mark_α
                                                                              jmp   n00299_line_mark_α
n00298_call_β:                                                                 jmp   n00299_line_mark_α
                        .size            n00298_call_bx, .-n00298_call_bx
                        .type            n00299_line_mark_bx, @function
n00299_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1098_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1098_stno
                        .long            0
                        .long            40
                        .quad            .Lstnof1
                        .popsection
n00299_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_1099_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00300_line_mark_α
.Lline_mark_α_1099_0:   .quad            .Lline_mark_α_1099_0_s
.Lline_mark_α_1099_0_s: .string          "concord.icn"
                        .size            n00299_line_mark_bx, .-n00299_line_mark_bx
                        .type            n00300_line_mark_bx, @function
n00300_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1100_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1100_stno
                        .long            0
                        .long            43
                        .quad            .Lstnof1
                        .popsection
n00300_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 43;             jmp   n00301_var_ref_α
                        .size            n00300_line_mark_bx, .-n00300_line_mark_bx
                        .type            n00301_var_ref_bx, @function
n00301_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00301_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx;         jmp   n00302_lit_string_α
                        .size            n00301_var_ref_bx, .-n00301_var_ref_bx
                        .type            n00302_lit_string_bx, @function
n00302_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_lit_string_α:     mov              qword ptr [rbp + 1296], 2            # result
                        mov              dword ptr [rbp + 1300], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1104_0]
                        mov              qword ptr [rbp + 1304], rax;         jmp   n00303_deref_α
.Llit_string_α_1104_0:  .quad            .Llit_string_α_1104_0_s
.Llit_string_α_1104_0_s:
                        .string          "l+w+"
                        .size            n00302_lit_string_bx, .-n00302_lit_string_bx
                        .type            n00303_deref_bx, @function
n00303_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_deref_α:          mov              rdi, qword ptr [rbp + 1280]          # d
                        mov              rsi, qword ptr [rbp + 1288]          # d
                        call             rt_deref@PLT
.Lgcsite_main_3:        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00304_line_mark_α
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_2:        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00305_line_mark_α
                        .size            n00303_deref_bx, .-n00303_deref_bx
                        .type            n00305_line_mark_bx, @function
n00305_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1106_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1106_stno
                        .long            0
                        .long            43
                        .quad            .Lstnof1
                        .popsection
n00305_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 43;             jmp   n00306_call_proc_staged_α
                        .size            n00305_line_mark_bx, .-n00305_line_mark_bx
                        .type            n00306_call_proc_staged_bx, @function
n00306_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00306_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1109_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1109_3]
                        push             rcx
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
.Lcall_proc_staged_α_1109_3:
.Lgcsite_main_5:        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 43
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1109_2
.Lcall_proc_staged_α_1109_4:
.Lgcsite_main_4:        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 43
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1109_2:
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              al, 104;                             je    n00304_line_mark_α
                                                                              jmp   n00307_deref_α
n00306_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 43
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11;            jmp   n00304_line_mark_α
.Lcall_proc_staged_β_1109_0:
                        .quad            .Lcall_proc_staged_β_1109_0_s
.Lcall_proc_staged_β_1109_0_s:
                        .string          "options"
                        .size            n00306_call_proc_staged_bx, .-n00306_call_proc_staged_bx
                        .type            n00307_deref_bx, @function
n00307_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00307_deref_α:          mov              rdi, qword ptr [rbp + 1248]          # d
                        mov              rsi, qword ptr [rbp + 1256]          # d
                        call             rt_deref@PLT
.Lgcsite_main_7:        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00304_line_mark_α
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_6:        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00308_assign_α
                        .size            n00307_deref_bx, .-n00307_deref_bx
                        .type            n00308_assign_bx, @function
n00308_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00308_assign_α:         mov              rax, qword ptr [rbp + 1232]
                        mov              rdx, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n00304_line_mark_α
                        .size            n00308_assign_bx, .-n00308_assign_bx
                        .type            n00304_line_mark_bx, @function
n00304_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1112_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1112_stno
                        .long            0
                        .long            44
                        .quad            .Lstnof1
                        .popsection
n00304_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 44;             jmp   n00309_disjunction_α
                        .size            n00304_line_mark_bx, .-n00304_line_mark_bx
                        .type            n00309_disjunction_bx, @function
n00309_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00309_disjunction_α:    mov              qword ptr [rbp + 1072], 0
                        mov              qword ptr [rbp + 1080], 0
                        mov              dword ptr [rbp + 1088], 0;           jmp   n00310_var_ref_α
.Ldisjunction_γ_1032_as:
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1115_0
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n00311_assign_α
.Ldisjunction_α_1115_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1115_1
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n00311_assign_α
.Ldisjunction_α_1115_1:                                                       jmp   n00311_assign_α
n00309_disjunction_β:    mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1032_af
                                                                              jmp   .Ldisjunction_ω_1032_af
.Ldisjunction_γ_1032_af:
.Ldisjunction_ω_1032_af:
                        add              dword ptr [rbp + 1088], 1
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 1;                              je    n00312_lit_integer_α
                                                                              jmp   n00313_line_mark_α
                        .size            n00309_disjunction_bx, .-n00309_disjunction_bx
                        .type            n00311_assign_bx, @function
n00311_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_assign_α:         mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [r9 + 16], rax             # colmax
                        mov              qword ptr [r9 + 24], rdx;            jmp   n00313_line_mark_α
                        .size            n00311_assign_bx, .-n00311_assign_bx
                        .type            n00313_line_mark_bx, @function
n00313_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1117_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1117_stno
                        .long            0
                        .long            45
                        .quad            .Lstnof1
                        .popsection
n00313_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 45;             jmp   n00314_disjunction_α
                        .size            n00313_line_mark_bx, .-n00313_line_mark_bx
                        .type            n00314_disjunction_bx, @function
n00314_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00314_disjunction_α:    mov              qword ptr [rbp + 912], 0
                        mov              qword ptr [rbp + 920], 0
                        mov              dword ptr [rbp + 928], 0;            jmp   n00315_var_ref_α
.Ldisjunction_γ_1035_as:
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1120_0
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax;          jmp   n00316_assign_α
.Ldisjunction_α_1120_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1120_1
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 920], rax;          jmp   n00316_assign_α
.Ldisjunction_α_1120_1:                                                       jmp   n00316_assign_α
n00314_disjunction_β:    mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1035_af
                                                                              jmp   .Ldisjunction_ω_1035_af
.Ldisjunction_γ_1035_af:
.Ldisjunction_ω_1035_af:
                        add              dword ptr [rbp + 928], 1
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 1;                              je    n00317_lit_integer_α
                                                                              jmp   n00318_line_mark_α
                        .size            n00314_disjunction_bx, .-n00314_disjunction_bx
                        .type            n00316_assign_bx, @function
n00316_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00316_assign_α:         mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              qword ptr [r9 + 32], rax             # namewidth
                        mov              qword ptr [r9 + 40], rdx;            jmp   n00318_line_mark_α
                        .size            n00316_assign_bx, .-n00316_assign_bx
                        .type            n00318_line_mark_bx, @function
n00318_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1122_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1122_stno
                        .long            0
                        .long            46
                        .quad            .Lstnof1
                        .popsection
n00318_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 46;             jmp   n00319_lit_string_α
                        .size            n00318_line_mark_bx, .-n00318_line_mark_bx
                        .type            n00319_lit_string_bx, @function
n00319_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00319_lit_string_α:     mov              qword ptr [rbp + 864], 2             # result
                        mov              dword ptr [rbp + 868], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_1124_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n00320_line_mark_α
.Llit_string_α_1124_0:  .quad            .Llit_string_α_1124_0_s
.Llit_string_α_1124_0_s:
                        .string          ""
                        .size            n00319_lit_string_bx, .-n00319_lit_string_bx
                        .type            n00320_line_mark_bx, @function
n00320_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1125_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1125_stno
                        .long            0
                        .long            46
                        .quad            .Lstnof1
                        .popsection
n00320_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 46;             jmp   n00321_call_icon_α
                        .size            n00320_line_mark_bx, .-n00320_line_mark_bx
                        .type            n00321_call_icon_bx, @function
n00321_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00321_call_icon_α:      mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1128: .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1128]
                        lea              rsi, [rbp + 832]
                        mov              edx, 1
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_8:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_9:        mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n00322_line_mark_α
                                                                              jmp   n00323_assign_α
n00321_call_icon_β:                                                            jmp   n00322_line_mark_α
                        .size            n00321_call_icon_bx, .-n00321_call_icon_bx
                        .type            n00323_assign_bx, @function
n00323_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00323_assign_α:         mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [r9 + 0], rax              # uses
                        mov              qword ptr [r9 + 8], rdx;             jmp   n00322_line_mark_α
                        .size            n00323_assign_bx, .-n00323_assign_bx
                        .type            n00322_line_mark_bx, @function
n00322_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1130_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1130_stno
                        .long            0
                        .long            47
                        .quad            .Lstnof1
                        .popsection
n00322_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 47;             jmp   n00324_lit_integer_α
                        .size            n00322_line_mark_bx, .-n00322_line_mark_bx
                        .type            n00324_lit_integer_bx, @function
n00324_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_lit_integer_α:    mov              qword ptr [rbp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1132_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00325_assign_α
.Llit_integer_α_1132_0: .quad            0
                        .size            n00324_lit_integer_bx, .-n00324_lit_integer_bx
                        .type            n00325_assign_bx, @function
n00325_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00325_assign_α:         mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [r9 + 48], rax             # lineno
                        mov              qword ptr [r9 + 56], rdx;            jmp   n00326_line_mark_α
                        .size            n00325_assign_bx, .-n00325_assign_bx
                        .type            n00326_line_mark_bx, @function
n00326_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1134_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1134_stno
                        .long            0
                        .long            48
                        .quad            .Lstnof1
                        .popsection
n00326_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 48;             jmp   n00327_line_mark_α
                        .size            n00326_line_mark_bx, .-n00326_line_mark_bx
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
                        mov              qword ptr [rax + 0], 48;             jmp   n00328_proc_gen_α
                        .size            n00327_line_mark_bx, .-n00327_line_mark_bx
                        .type            n00328_proc_gen_bx, @function
n00328_proc_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00328_proc_gen_α:       mov              qword ptr [rbp + 688], 152           # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        sub              rsp, 24
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lproc_gen_α_1139_4]
                        push             rcx
                        lea              rcx, [rip + .Lproc_gen_α_1139_3]
                        push             rcx
                        sub              rsp, 0
                        lea              rdx, [rip + .Lproc_gen_α_1139_4]
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 264];          jmp   rax
.Lproc_gen_α_1139_3:
.Lgcsite_main_14:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 48
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        cmp              al, 104;                             je    .Lproc_gen_α_1139_8
                        mov              rdi, qword ptr [rdx + -1504]
                        mov              rsi, qword ptr [rdx + -1496]
                        mov              qword ptr [rbp + 696], rdx;          jmp   .Lproc_gen_α_1139_9
.Lproc_gen_α_1139_8:    mov              edi, 104
                        mov              esi, 0
                        mov              qword ptr [rbp + 696], rsp
.Lproc_gen_α_1139_9:    mov              rax, qword ptr [rbp + 688]
                        shr              rax, 8
                        test             rax, rax;                            jne   .Lproc_gen_α_1139_5
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
                        mov              rdx, rsi;                            jmp   .Lproc_gen_α_1139_2
.Lproc_gen_α_1139_5:    call             qword ptr [rip + rt_gen_spine_pass_γ@GOTPCREL]
.Lgcsite_main_13:                                                             jmp   .Lproc_gen_α_1139_2
.Lproc_gen_α_1139_4:
.Lgcsite_main_12:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 48
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 688]
                        shr              rax, 8
                        test             rax, rax;                            jne   .Lproc_gen_α_1139_6
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
                        xor              edx, edx;                            jmp   .Lproc_gen_α_1139_2
.Lproc_gen_α_1139_6:    call             qword ptr [rip + rt_gen_spine_pass_ω@GOTPCREL]
.Lgcsite_main_11:                                                             jmp   .Lproc_gen_α_1139_2
.Lproc_gen_α_1139_2:    mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    n00329_line_mark_α
                                                                              jmp   n00330_var_ref_α
n00328_proc_gen_β:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 48
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        call             qword ptr [rip + rt_gen_spine_resume_enter@GOTPCREL]
.Lgcsite_main_10:       mov              rax, qword ptr [rbp + 696]
                        mov              rsp, qword ptr [rax + 40];           jmp   qword ptr [rax + 32]
.Lproc_gen_β_1139_0:    .quad            .Lproc_gen_β_1139_0_s
.Lproc_gen_β_1139_0_s:  .string          "item"
                        .size            n00328_proc_gen_bx, .-n00328_proc_gen_bx
                        .type            n00330_var_ref_bx, @function
n00330_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00330_var_ref_α:        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # lineno
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n00331_deref_α
                        .size            n00330_var_ref_bx, .-n00330_var_ref_bx
                        .type            n00331_deref_bx, @function
n00331_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00331_deref_α:          mov              rdi, qword ptr [rbp + 672]           # d
                        mov              rsi, qword ptr [rbp + 680]           # d
                        call             rt_deref@PLT
.Lgcsite_main_16:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00328_proc_gen_β
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_15:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00332_deref_α
                        .size            n00331_deref_bx, .-n00331_deref_bx
                        .type            n00332_deref_bx, @function
n00332_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00332_deref_α:          mov              rdi, qword ptr [rbp + 720]           # d
                        mov              rsi, qword ptr [rbp + 728]           # d
                        call             rt_deref@PLT
.Lgcsite_main_18:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00328_proc_gen_β
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_17:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00333_line_mark_α
                        .size            n00332_deref_bx, .-n00332_deref_bx
                        .type            n00333_line_mark_bx, @function
n00333_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1144_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1144_stno
                        .long            0
                        .long            48
                        .quad            .Lstnof1
                        .popsection
n00333_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 48;             jmp   n00334_call_proc_staged_α
                        .size            n00333_line_mark_bx, .-n00333_line_mark_bx
                        .type            n00334_call_proc_staged_bx, @function
n00334_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00334_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1147_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1147_3]
                        push             rcx
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
.Lcall_proc_staged_α_1147_3:
.Lgcsite_main_20:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 48
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1147_2
.Lcall_proc_staged_α_1147_4:
.Lgcsite_main_19:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 48
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1147_2:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    n00328_proc_gen_β
                                                                              jmp   n00335_deref_α
n00334_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 48
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11;            jmp   n00328_proc_gen_β
.Lcall_proc_staged_β_1147_0:
                        .quad            .Lcall_proc_staged_β_1147_0_s
.Lcall_proc_staged_β_1147_0_s:
                        .string          "tabulate"
                        .size            n00334_call_proc_staged_bx, .-n00334_call_proc_staged_bx
                        .type            n00335_deref_bx, @function
n00335_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00335_deref_α:          mov              rdi, qword ptr [rbp + 640]           # d
                        mov              rsi, qword ptr [rbp + 648]           # d
                        call             rt_deref@PLT
.Lgcsite_main_22:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00328_proc_gen_β
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_21:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00328_proc_gen_β
                        .size            n00335_deref_bx, .-n00335_deref_bx
                        .type            n00329_line_mark_bx, @function
n00329_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1149_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1149_stno
                        .long            0
                        .long            49
                        .quad            .Lstnof1
                        .popsection
n00329_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 49;             jmp   n00336_var_ref_α
                        .size            n00329_line_mark_bx, .-n00329_line_mark_bx
                        .type            n00336_var_ref_bx, @function
n00336_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00336_var_ref_α:        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n00337_lit_integer_α
                        .size            n00336_var_ref_bx, .-n00336_var_ref_bx
                        .type            n00337_lit_integer_bx, @function
n00337_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00337_lit_integer_α:    mov              qword ptr [rbp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1153_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n00338_deref_α
.Llit_integer_α_1153_0: .quad            3
                        .size            n00337_lit_integer_bx, .-n00337_lit_integer_bx
                        .type            n00338_deref_bx, @function
n00338_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00338_deref_α:          mov              rdi, qword ptr [rbp + 560]           # d
                        mov              rsi, qword ptr [rbp + 568]           # d
                        call             rt_deref@PLT
.Lgcsite_main_24:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00339_line_mark_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_23:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00340_line_mark_α
                        .size            n00338_deref_bx, .-n00338_deref_bx
                        .type            n00340_line_mark_bx, @function
n00340_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1155_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1155_stno
                        .long            0
                        .long            49
                        .quad            .Lstnof1
                        .popsection
n00340_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 49;             jmp   n00341_call_icon_α
                        .size            n00340_line_mark_bx, .-n00340_line_mark_bx
                        .type            n00341_call_icon_bx, @function
n00341_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00341_call_icon_α:      mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1158: .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1158]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        mov              ecx, 262305
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_25:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_26:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n00339_line_mark_α
                                                                              jmp   n00342_assign_α
n00341_call_icon_β:                                                            jmp   n00339_line_mark_α
                        .size            n00341_call_icon_bx, .-n00341_call_icon_bx
                        .type            n00342_assign_bx, @function
n00342_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00342_assign_α:         mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx;         jmp   n00339_line_mark_α
                        .size            n00342_assign_bx, .-n00342_assign_bx
                        .type            n00339_line_mark_bx, @function
n00339_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1160_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1160_stno
                        .long            0
                        .long            50
                        .quad            .Lstnof1
                        .popsection
n00339_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 50;             jmp   n00343_bound_α
                        .size            n00339_line_mark_bx, .-n00339_line_mark_bx
                        .type            n00343_bound_bx, @function
n00343_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00343_bound_α:          mov              qword ptr [rbp + 144], rsp;          jmp   n00344_var_ref_α
                        .size            n00343_bound_bx, .-n00343_bound_bx
                        .type            n00344_var_ref_bx, @function
n00344_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00344_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00345_deref_α
                        .size            n00344_var_ref_bx, .-n00344_var_ref_bx
                        .type            n00345_deref_bx, @function
n00345_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00345_deref_α:          mov              rdi, qword ptr [rbp + 96]            # d
                        mov              rsi, qword ptr [rbp + 104]           # d
                        call             rt_deref@PLT
.Lgcsite_main_28:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_27:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00346_line_mark_α
                        .size            n00345_deref_bx, .-n00345_deref_bx
                        .type            n00346_line_mark_bx, @function
n00346_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1167_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1167_stno
                        .long            0
                        .long            50
                        .quad            .Lstnof1
                        .popsection
n00346_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 50;             jmp   n00347_call_icon_α
                        .size            n00346_line_mark_bx, .-n00346_line_mark_bx
                        .type            n00347_call_icon_bx, @function
n00347_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00347_call_icon_α:      mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1170: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1170]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_29:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_30:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    main_ω
                                                                              jmp   n00348_assign_α
n00347_call_icon_β:                                                            jmp   main_ω
                        .size            n00347_call_icon_bx, .-n00347_call_icon_bx
                        .type            n00348_assign_bx, @function
n00348_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00348_assign_α:         mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx;         jmp   n00349_line_mark_α
                        .size            n00348_assign_bx, .-n00348_assign_bx
                        .type            n00349_line_mark_bx, @function
n00349_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1172_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1172_stno
                        .long            0
                        .long            51
                        .quad            .Lstnof1
                        .popsection
n00349_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51;             jmp   n00350_var_ref_α
                        .size            n00349_line_mark_bx, .-n00349_line_mark_bx
                        .type            n00350_var_ref_bx, @function
n00350_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00350_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n00351_var_ref_α
                        .size            n00350_var_ref_bx, .-n00350_var_ref_bx
                        .type            n00351_var_ref_bx, @function
n00351_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00351_var_ref_α:        mov              rax, 4294967336
                        mov              rdx, 1879052320                      # namewidth
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00352_deref_α
                        .size            n00351_var_ref_bx, .-n00351_var_ref_bx
                        .type            n00352_deref_bx, @function
n00352_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00352_deref_α:          mov              rdi, qword ptr [rbp + 320]           # d
                        mov              rsi, qword ptr [rbp + 328]           # d
                        call             rt_deref@PLT
.Lgcsite_main_32:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00353_unmark_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_31:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00354_deref_α
                        .size            n00352_deref_bx, .-n00352_deref_bx
                        .type            n00354_deref_bx, @function
n00354_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00354_deref_α:          mov              rdi, qword ptr [rbp + 336]           # d
                        mov              rsi, qword ptr [rbp + 344]           # d
                        call             rt_deref@PLT
.Lgcsite_main_34:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00353_unmark_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_33:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00355_line_mark_α
                        .size            n00354_deref_bx, .-n00354_deref_bx
                        .type            n00355_line_mark_bx, @function
n00355_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1180_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1180_stno
                        .long            0
                        .long            51
                        .quad            .Lstnof1
                        .popsection
n00355_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51;             jmp   n00356_call_icon_α
                        .size            n00355_line_mark_bx, .-n00355_line_mark_bx
                        .type            n00356_call_icon_bx, @function
n00356_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00356_call_icon_α:      mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1183: .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1183]
                        lea              rsi, [rbp + 272]
                        mov              edx, 2
                        mov              ecx, 262275
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_35:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_36:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n00353_unmark_α
                                                                              jmp   n00357_var_ref_α
n00356_call_icon_β:                                                            jmp   n00353_unmark_α
                        .size            n00356_call_icon_bx, .-n00356_call_icon_bx
                        .type            n00357_var_ref_bx, @function
n00357_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00357_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n00358_deref_α
                        .size            n00357_var_ref_bx, .-n00357_var_ref_bx
                        .type            n00358_deref_bx, @function
n00358_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00358_deref_α:          mov              rdi, qword ptr [rbp + 432]           # d
                        mov              rsi, qword ptr [rbp + 440]           # d
                        call             rt_deref@PLT
.Lgcsite_main_38:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00353_unmark_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_37:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00359_line_mark_α
                        .size            n00358_deref_bx, .-n00358_deref_bx
                        .type            n00359_line_mark_bx, @function
n00359_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1187_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1187_stno
                        .long            0
                        .long            51
                        .quad            .Lstnof1
                        .popsection
n00359_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51;             jmp   n00360_call_icon_α
                        .size            n00359_line_mark_bx, .-n00359_line_mark_bx
                        .type            n00360_call_icon_bx, @function
n00360_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00360_call_icon_α:      mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1190: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1190]
                        lea              rsi, [rbp + 400]
                        mov              edx, 1
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_39:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_40:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n00353_unmark_α
                                                                              jmp   n00361_binop_α
n00360_call_icon_β:                                                            jmp   n00353_unmark_α
                        .size            n00360_call_icon_bx, .-n00360_call_icon_bx
                        .type            n00361_binop_bx, @function
n00361_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00361_binop_α:          mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_main_42:       mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:85
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_41:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00362_line_mark_α
                        .size            n00361_binop_bx, .-n00361_binop_bx
                        .type            n00362_line_mark_bx, @function
n00362_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1192_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1192_stno
                        .long            0
                        .long            51
                        .quad            .Lstnof1
                        .popsection
n00362_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51;             jmp   n00363_call_proc_staged_α
                        .size            n00362_line_mark_bx, .-n00362_line_mark_bx
                        .type            n00363_call_proc_staged_bx, @function
n00363_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00363_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1195_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1195_3]
                        push             rcx
                        sub              rsp, 16
                        mov              rcx, qword ptr [rbp + 240]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 136];          jmp   rax
.Lcall_proc_staged_α_1195_3:
.Lgcsite_main_44:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 51
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1195_2
.Lcall_proc_staged_α_1195_4:
.Lgcsite_main_43:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 51
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1195_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    n00353_unmark_α
                                                                              jmp   n00364_deref_α
n00363_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 51
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11;            jmp   n00353_unmark_α
.Lcall_proc_staged_β_1195_0:
                        .quad            .Lcall_proc_staged_β_1195_0_s
.Lcall_proc_staged_β_1195_0_s:
                        .string          "format"
                        .size            n00363_call_proc_staged_bx, .-n00363_call_proc_staged_bx
                        .type            n00364_deref_bx, @function
n00364_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00364_deref_α:          mov              rdi, qword ptr [rbp + 208]           # d
                        mov              rsi, qword ptr [rbp + 216]           # d
                        call             rt_deref@PLT
.Lgcsite_main_46:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00353_unmark_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_45:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00353_unmark_α
                        .size            n00364_deref_bx, .-n00364_deref_bx
                        .type            n00353_unmark_bx, @function
n00353_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00353_unmark_α:         mov              rsp, qword ptr [rbp + 144];          jmp   n00365_line_mark_α
                        .size            n00353_unmark_bx, .-n00353_unmark_bx
                        .type            n00365_line_mark_bx, @function
n00365_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1199_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1199_stno
                        .long            0
                        .long            50
                        .quad            .Lstnof1
                        .popsection
n00365_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 50;             jmp   n00343_bound_α
                        .size            n00365_line_mark_bx, .-n00365_line_mark_bx
                        .type            n00317_lit_integer_bx, @function
n00317_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00317_lit_integer_α:    mov              qword ptr [rbp + 1040], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1201_0]
                        mov              qword ptr [rbp + 1048], rax;         jmp   .Ldisjunction_γ_1035_as
n00317_lit_integer_β:                                                          jmp   .Ldisjunction_ω_1035_af
.Llit_integer_α_1201_0: .quad            15
                        .size            n00317_lit_integer_bx, .-n00317_lit_integer_bx
                        .type            n00315_var_ref_bx, @function
n00315_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00315_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n00366_lit_string_α
n00315_var_ref_β:                                                              jmp   .Ldisjunction_ω_1035_af
                        .size            n00315_var_ref_bx, .-n00315_var_ref_bx
                        .type            n00366_lit_string_bx, @function
n00366_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00366_lit_string_α:     mov              qword ptr [rbp + 976], 2             # result
                        mov              dword ptr [rbp + 980], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1204_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n00367_subscript_α
.Llit_string_α_1204_0:  .quad            .Llit_string_α_1204_0_s
.Llit_string_α_1204_0_s:
                        .string          "w"
                        .size            n00366_lit_string_bx, .-n00366_lit_string_bx
                        .type            n00367_subscript_bx, @function
n00367_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00367_subscript_α:      xor              eax, eax
.Lsubscript_α_1205_1:   mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        test             eax, eax;                            jne   .Lsubscript_α_1205_2
                        call             rt_subscript_val_strict@PLT
.Lgcsite_main_50:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 255;                             jne   .Lsubscript_α_1205_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_1205_1
.Lsubscript_α_1205_4:   push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_49:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   .Lsubscript_α_1205_3
.Lsubscript_α_1205_2:   call             rt_subscript_var_strict@PLT
.Lgcsite_main_48:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_47:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:
.Lsubscript_α_1205_3:   cmp              al, 104;                             je    .Ldisjunction_ω_1035_af
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n00368_deref_α
                        .size            n00367_subscript_bx, .-n00367_subscript_bx
                        .type            n00368_deref_bx, @function
n00368_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00368_deref_α:          mov              rdi, qword ptr [rbp + 1008]          # d
                        mov              rsi, qword ptr [rbp + 1016]          # d
                        call             rt_deref@PLT
.Lgcsite_main_52:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1035_af
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_51:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00369_unop_test_α
                        .size            n00368_deref_bx, .-n00368_deref_bx
                        .type            n00369_unop_test_bx, @function
n00369_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00369_unop_test_α:      mov              eax, dword ptr [rbp + 1024]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1035_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1035_af
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 952], rax;          jmp   .Ldisjunction_γ_1035_as
n00369_unop_test_β:                                                            jmp   .Ldisjunction_ω_1035_af
                        .size            n00369_unop_test_bx, .-n00369_unop_test_bx
                        .type            n00312_lit_integer_bx, @function
n00312_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_lit_integer_α:    mov              qword ptr [rbp + 1200], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1208_0]
                        mov              qword ptr [rbp + 1208], rax;         jmp   .Ldisjunction_γ_1032_as
n00312_lit_integer_β:                                                          jmp   .Ldisjunction_ω_1032_af
.Llit_integer_α_1208_0: .quad            72
                        .size            n00312_lit_integer_bx, .-n00312_lit_integer_bx
                        .type            n00310_var_ref_bx, @function
n00310_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00310_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n00370_lit_string_α
n00310_var_ref_β:                                                              jmp   .Ldisjunction_ω_1032_af
                        .size            n00310_var_ref_bx, .-n00310_var_ref_bx
                        .type            n00370_lit_string_bx, @function
n00370_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00370_lit_string_α:     mov              qword ptr [rbp + 1136], 2            # result
                        mov              dword ptr [rbp + 1140], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1211_0]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n00371_subscript_α
.Llit_string_α_1211_0:  .quad            .Llit_string_α_1211_0_s
.Llit_string_α_1211_0_s:
                        .string          "l"
                        .size            n00370_lit_string_bx, .-n00370_lit_string_bx
                        .type            n00371_subscript_bx, @function
n00371_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00371_subscript_α:      xor              eax, eax
.Lsubscript_α_1212_1:   mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        test             eax, eax;                            jne   .Lsubscript_α_1212_2
                        call             rt_subscript_val_strict@PLT
.Lgcsite_main_56:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 255;                             jne   .Lsubscript_α_1212_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_1212_1
.Lsubscript_α_1212_4:   push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_55:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   .Lsubscript_α_1212_3
.Lsubscript_α_1212_2:   call             rt_subscript_var_strict@PLT
.Lgcsite_main_54:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_53:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:
.Lsubscript_α_1212_3:   cmp              al, 104;                             je    .Ldisjunction_ω_1032_af
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n00372_deref_α
                        .size            n00371_subscript_bx, .-n00371_subscript_bx
                        .type            n00372_deref_bx, @function
n00372_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00372_deref_α:          mov              rdi, qword ptr [rbp + 1168]          # d
                        mov              rsi, qword ptr [rbp + 1176]          # d
                        call             rt_deref@PLT
.Lgcsite_main_58:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1032_af
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_57:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00373_unop_test_α
                        .size            n00372_deref_bx, .-n00372_deref_bx
                        .type            n00373_unop_test_bx, @function
n00373_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00373_unop_test_α:      mov              eax, dword ptr [rbp + 1184]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1032_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1032_af
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1112], rax;         jmp   .Ldisjunction_γ_1032_as
n00373_unop_test_β:                                                            jmp   .Ldisjunction_ω_1032_af
                        .size            n00373_unop_test_bx, .-n00373_unop_test_bx
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
.Lgcsites_main_4:       .quad            59
                        .quad            .Lgcmap_main
                        .quad            9223653477471749680
                        .quad            .Lgccode_main_4
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
                        .quad            .Lgcsite_main_55
                        .quad            65537
                        .quad            .Lgcsite_main_56
                        .quad            65537
                        .quad            .Lgcsite_main_57
                        .quad            65537
                        .quad            .Lgcsite_main_58
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
.Lstartup_ipp00374_0:    .string          "args"
                        .align           8
.Lstartup_ipnames9000:
                        .quad            .Lstartup_ipp00374_0
                        .quad            0
.Lstartup_iln00374_0:    .string          "opts"
.Lstartup_iln00374_1:    .string          "uselist"
.Lstartup_iln00374_2:    .string          "name"
.Lstartup_iln00374_3:    .string          "line"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00374_0
                        .quad            .Lstartup_iln00374_1
                        .quad            .Lstartup_iln00374_2
                        .quad            .Lstartup_iln00374_3
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
                        .long            1872
                        .long            1888
                        .long            1856
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
                        .long            1904
                        .long            48
                        .long            0
                        .long            0
                        .quad            0
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
                        .quad            0
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
                        .long            1360
                        .long            1344
                        .long            1328
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
                        .long            1376
                        .long            56
                        .long            0
                        .long            0
                        .quad            0
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
                        mov              esi, 1504
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
                        .long            3760
                        .long            3824
                        .long            3776
                        .long            3712
                        .long            3728
                        .long            3792
                        .long            3808
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
                        .long            3840
                        .long            48
                        .long            0
                        .long            0
                        .quad            0
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
                        .quad            0
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
                        .section         .data
                        .align           8
__alpha_cellp_tab:      .quad            0
                        .section         .rodata
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
