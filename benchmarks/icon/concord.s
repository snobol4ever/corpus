                        .intel_syntax    noprefix
                        .text
                        .file            1 "concord.icn"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__tabulate:
                        sub              rsp, 1920
                        lea              rax, [rip + .Lgcmap_tabulate]
                        mov              qword ptr [rsp + 1768], rax
                        mov              dword ptr [rsp + 1760], 160
                        mov              dword ptr [rsp + 1764], 1920
                        mov              qword ptr [rsp + 1912], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 1760
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
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        .section         .rodata
.Licn_trace_nm0:        .string          "tabulate"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm0]
                        mov              esi, 2
                        lea              rdx, [r11 + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll emit.cpp:2921
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ltabulate_α_0_247:     mov              rsp, qword ptr [rsp + 0]
                        pop              rdx
                        pop              rax
tabulate_α_body:
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_line_mark_α:         mov              r11, 1
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 59
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_88_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n2_line_mark_α
.Lline_mark_α_88_0:     .quad            .Lline_mark_α_88_0_s
.Lline_mark_α_88_0_s:   .string          "concord.icn"
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
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx;         jmp   n4_deref_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_deref_bx, @function
n4_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_deref_α:             mov              r11, 4
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n8_line_mark_α
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n5_line_mark_α
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
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1624], rax
                        .section         .rodata
.Lcall_icon_α_rkfn97:   .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn97]
                        lea              rsi, [rbp + 1616]
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
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              al, 104;                             je    n8_line_mark_α
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_assign_α
n6_call_icon_β:         mov              r11, 6;                              jmp   n8_line_mark_α
                        .size            n6_call_icon_bx, .-n6_call_icon_bx
                        .type            n7_assign_bx, @function
n7_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              r11, 7
                        mov              rax, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
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
                        mov              qword ptr [rbp + 1552], 2            # result
                        mov              dword ptr [rbp + 1556], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_101_0]
                        mov              qword ptr [rbp + 1560], rax;         jmp   n10_assign_α
.Llit_string_α_101_0:   .quad            .Llit_string_α_101_0_s
.Llit_string_α_101_0_s: .string          ""
                        .size            n9_lit_string_bx, .-n9_lit_string_bx
                        .type            n10_assign_bx, @function
n10_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              r11, 10
                        mov              rax, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx;         jmp   n11_line_mark_α
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
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n13_var_α
                        .size            n12_var_ref_bx, .-n12_var_ref_bx
                        .type            n13_var_bx, @function
n13_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              mov              r11, 13
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n14_subscript_α
                        .size            n13_var_bx, .-n13_var_bx
                        .type            n14_subscript_bx, @function
n14_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_subscript_α:        mov              r11, 14
                        mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        mov              rdx, qword ptr [rbp + 1488]
                        mov              rcx, qword ptr [rbp + 1496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    tabulate_ω
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:52
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n15_deref_α
                        .size            n14_subscript_bx, .-n14_subscript_bx
                        .type            n15_deref_bx, @function
n15_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_deref_α:            mov              r11, 15
                        mov              rdi, qword ptr [rbp + 1504]
                        mov              rsi, qword ptr [rbp + 1512]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    tabulate_ω
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_scan_enter_α
                        .size            n15_deref_bx, .-n15_deref_bx
                        .type            n16_scan_enter_bx, @function
n16_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_scan_enter_α:       mov              r11, 16
                        mov              qword ptr [rbp + 96], r13
                        mov              qword ptr [rbp + 104], r14
                        mov              qword ptr [rbp + 112], r15
                        mov              rdi, qword ptr [rbp + 1520]
                        mov              rsi, qword ptr [rbp + 1528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        test             rax, rax;                            je    tabulate_ω
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
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1128], rax;         jmp   n19_lit_charset_α
                        .size            n18_var_bx, .-n18_var_bx
                        .type            n19_lit_charset_bx, @function
n19_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_charset_α:      mov              r11, 19
                        mov              qword ptr [rbp + 1232], 2            # result
                        mov              dword ptr [rbp + 1236], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_117_0]
                        mov              qword ptr [rbp + 1240], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_117_0]
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_lit_scalar.cpp:90
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n20_line_mark_α
.Llit_charset_α_117_0:  .quad            .Llit_charset_α_117_0_s
.Llit_charset_α_117_0_s:
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
                        mov              qword ptr [rbp + 1200], r14
.Lscan_upto_α_121_0:    mov              rax, qword ptr [rbp + 1200]
                        cmp              rax, r15;                            jge   n39_disjunction_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .Lscan_upto_α_121_3]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_upto_α_121_1
                        mov              qword ptr [rbp + 1184], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 1192], rax;         jmp   n22_line_mark_α
.Lscan_upto_α_121_1:    inc              qword ptr [rbp + 1200];              jmp   .Lscan_upto_α_121_0
n21_scan_upto_β:        mov              r11, 21
                        inc              qword ptr [rbp + 1200];              jmp   .Lscan_upto_α_121_0
.Lscan_upto_β_121_2:    .quad            .Lscan_upto_β_121_2_s
.Lscan_upto_β_121_2_s:  .string          "0123456789"
.Lscan_upto_α_121_3:    .quad            287948901175001088
.Lscan_upto_β_121_4:    .quad            0
.Lscan_upto_β_121_5:    .quad            0
.Lscan_upto_β_121_6:    .quad            0
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
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
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
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
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
                        cmp              rax, 1;                              jge   .Lscan_tab_α_125_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_125_0:     cmp              rax, 1;                              jl    n21_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n21_scan_upto_β
                        mov              qword ptr [rbp + 1152], r14
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
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n24_binop_α
n23_scan_tab_β:         mov              r11, 23
                        mov              r14, qword ptr [rbp + 1152];         jmp   n21_scan_upto_β
                        .size            n23_scan_tab_bx, .-n23_scan_tab_bx
                        .type            n24_binop_bx, @function
n24_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:            mov              r11, 24
                        mov              rdi, qword ptr [rbp + 1728]
                        mov              rsi, qword ptr [rbp + 1736]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:85
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n25_assign_α
                        .size            n24_binop_bx, .-n24_binop_bx
                        .type            n25_assign_bx, @function
n25_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              r11, 25
                        mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx;         jmp   n26_line_mark_α
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
                        mov              qword ptr [rbp + 1408], 2            # result
                        mov              dword ptr [rbp + 1412], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_130_0]
                        mov              qword ptr [rbp + 1416], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_130_0]
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_lit_scalar.cpp:90
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n28_line_mark_α
.Llit_charset_α_130_0:  .quad            .Llit_charset_α_130_0_s
.Llit_charset_α_130_0_s:
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
                        lea              rdi, [rip + .Lscan_many_α_134_3]
                        mov              eax, r14d
.Lscan_many_α_134_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_134_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_many_α_134_1
                        add              eax, 1;                              jmp   .Lscan_many_α_134_0
.Lscan_many_α_134_1:    cmp              eax, r14d;                           je    n33_line_mark_α
                        mov              qword ptr [rbp + 1376], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 1384], rcx;         jmp   n30_line_mark_α
n29_scan_many_β:        mov              r11, 29;                             jmp   n33_line_mark_α
.Lscan_many_β_134_2:    .quad            .Lscan_many_β_134_2_s
.Lscan_many_β_134_2_s:  .string          "0123456789"
.Lscan_many_α_134_3:    .quad            287948901175001088
.Lscan_many_β_134_4:    .quad            0
.Lscan_many_β_134_5:    .quad            0
.Lscan_many_β_134_6:    .quad            0
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
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
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
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
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
                        cmp              rax, 1;                              jge   .Lscan_tab_α_138_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_138_0:     cmp              rax, 1;                              jl    n33_line_mark_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n33_line_mark_α
                        mov              qword ptr [rbp + 1344], r14
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
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n32_assign_α
n31_scan_tab_β:         mov              r11, 31
                        mov              r14, qword ptr [rbp + 1344];         jmp   n33_line_mark_α
                        .size            n31_scan_tab_bx, .-n31_scan_tab_bx
                        .type            n32_assign_bx, @function
n32_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              r11, 32
                        mov              rax, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx;         jmp   n33_line_mark_α
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
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 56], rax;           jmp   n35_var_α
                        .size            n34_var_bx, .-n34_var_bx
                        .type            n35_var_bx, @function
n35_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:              mov              r11, 35
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 72], rax;           jmp   n36_binop_α
                        .size            n35_var_bx, .-n35_var_bx
                        .type            n36_binop_bx, @function
n36_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_binop_α:            mov              r11, 36
                        mov              rdi, qword ptr [rbp + 1728]
                        mov              rsi, qword ptr [rbp + 1736]
                        mov              rdx, qword ptr [rbp + 1712]
                        mov              rcx, qword ptr [rbp + 1720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:85
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_assign_α
                        .size            n36_binop_bx, .-n36_binop_bx
                        .type            n37_assign_bx, @function
n37_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:           mov              r11, 37
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx;         jmp   n38_conjunction_α
                        .size            n37_assign_bx, .-n37_assign_bx
                        .type            n38_conjunction_bx, @function
n38_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_conjunction_α:      mov              r11, 38
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n18_var_α
n38_conjunction_β:      mov              r11, 38;                             jmp   n18_var_α
                        .size            n38_conjunction_bx, .-n38_conjunction_bx
                        .type            n39_disjunction_bx, @function
n39_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_disjunction_α:      mov              r11, 39
                        mov              qword ptr [rbp + 176], 0
                        mov              qword ptr [rbp + 184], 0
                        mov              dword ptr [rbp + 192], 0;            jmp   n71_disjunction_α
.Ldisjunction_γ_39_as:  mov              r11, 39
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_150_0
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 184], rax;          jmp   n40_conjunction_α
.Ldisjunction_α_150_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_150_1
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 184], rax;          jmp   n40_conjunction_α
.Ldisjunction_α_150_1:                                                        jmp   n40_conjunction_α
n39_disjunction_β:      mov              r11, 39
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 0;                              je    n81_scan_α
                                                                              jmp   n81_scan_α
.Ldisjunction_γ_39_af:  mov              r11, 39
.Ldisjunction_ω_39_af:  mov              r11, 39
                        add              dword ptr [rbp + 192], 1
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 1;                              je    n42_line_mark_α
                                                                              jmp   n81_scan_α
                        .size            n39_disjunction_bx, .-n39_disjunction_bx
                        .type            n40_conjunction_bx, @function
n40_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_conjunction_α:      mov              r11, 40
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax;          jmp   n41_scan_α
n40_conjunction_β:      mov              r11, 40;                             jmp   n81_scan_α
                        .size            n40_conjunction_bx, .-n40_conjunction_bx
                        .type            n41_scan_bx, @function
n41_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_scan_α:             mov              r11, 41
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
n41_scan_β:             mov              r11, 41
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
                        mov              r14, rax;                            jmp   n39_disjunction_β
                                                                              jmp   tabulate_ω
                        .size            n41_scan_bx, .-n41_scan_bx
                        .type            n42_line_mark_bx, @function
n42_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_line_mark_α:        mov              r11, 42
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70;             jmp   n43_disjunction_α
n42_line_mark_β:        mov              r11, 42;                             jmp   n43_disjunction_α
                        .size            n42_line_mark_bx, .-n42_line_mark_bx
                        .type            n43_disjunction_bx, @function
n43_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_disjunction_α:      mov              r11, 43
                        mov              qword ptr [rbp + 768], 0
                        mov              qword ptr [rbp + 776], 0
                        mov              dword ptr [rbp + 784], 0;            jmp   n62_lit_string_α
.Ldisjunction_γ_43_as:  mov              r11, 43
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_157_0
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax;          jmp   n44_line_mark_α
.Ldisjunction_α_157_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_157_1
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 776], rax;          jmp   n44_line_mark_α
.Ldisjunction_α_157_1:                                                        jmp   n44_line_mark_α
n43_disjunction_β:      mov              r11, 43
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0;                              je    n69_scan_tab_β
                                                                              jmp   n44_line_mark_α
.Ldisjunction_γ_43_af:  mov              r11, 43
.Ldisjunction_ω_43_af:  mov              r11, 43
                        add              dword ptr [rbp + 784], 1
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 1;                              je    n60_lit_integer_α
                                                                              jmp   n44_line_mark_α
                        .size            n43_disjunction_bx, .-n43_disjunction_bx
                        .type            n44_line_mark_bx, @function
n44_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_line_mark_α:        mov              r11, 44
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 71;             jmp   n45_var_ref_α
                        .size            n44_line_mark_bx, .-n44_line_mark_bx
                        .type            n45_var_ref_bx, @function
n45_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n46_var_α
                        .size            n45_var_ref_bx, .-n45_var_ref_bx
                        .type            n46_var_bx, @function
n46_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              mov              r11, 46
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 520], rax;          jmp   n47_subscript_α
                        .size            n46_var_bx, .-n46_var_bx
                        .type            n47_subscript_bx, @function
n47_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_subscript_α:        mov              r11, 47
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
                        cmp              al, 104;                             je    n81_scan_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:52
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n48_var_α
                        .size            n47_subscript_bx, .-n47_subscript_bx
                        .type            n48_var_bx, @function
n48_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:              mov              r11, 48
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 616], rax;          jmp   n49_lit_string_α
                        .size            n48_var_bx, .-n48_var_bx
                        .type            n49_lit_string_bx, @function
n49_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       mov              r11, 49
                        mov              qword ptr [rbp + 624], 2             # result
                        mov              dword ptr [rbp + 628], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_167_0]
                        mov              qword ptr [rbp + 632], rax;          jmp   n50_binop_α
.Llit_string_α_167_0:   .quad            .Llit_string_α_167_0_s
.Llit_string_α_167_0_s: .string          "("
                        .size            n49_lit_string_bx, .-n49_lit_string_bx
                        .type            n50_binop_bx, @function
n50_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_binop_α:            mov              r11, 50
                        mov              rdi, qword ptr [rbp + 1728]
                        mov              rsi, qword ptr [rbp + 1736]
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:85
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n51_var_α
                        .size            n50_binop_bx, .-n50_binop_bx
                        .type            n51_var_bx, @function
n51_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              mov              r11, 51
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 696], rax;          jmp   n52_lit_integer_α
                        .size            n51_var_bx, .-n51_var_bx
                        .type            n52_lit_integer_bx, @function
n52_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      mov              r11, 52
                        mov              qword ptr [rbp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_171_0]
                        mov              qword ptr [rbp + 712], rax;          jmp   n53_coerce_numeric_α
.Llit_integer_α_171_0:  .quad            1
                        .size            n52_lit_integer_bx, .-n52_lit_integer_bx
                        .type            n53_coerce_numeric_bx, @function
n53_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_coerce_numeric_α:   mov              r11, 53
                        mov              eax, dword ptr [rbp + 1744]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_173_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_173_0
                        mov              eax, dword ptr [rbp + 704]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_173_0
.Lcoerce_numeric_α_173_1:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 680], rax;          jmp   n54_binop_α
.Lcoerce_numeric_α_173_0:
                        lea              rdi, [rbp + 1744]
                        lea              rsi, [rbp + 704]
                        lea              rdx, [rbp + 672]
                        mov              rcx, 4311744614
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:76
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 672]
                        cmp              al, 104;                             je    n81_scan_α
                                                                              jmp   n54_binop_α
                        .size            n53_coerce_numeric_bx, .-n53_coerce_numeric_bx
                        .type            n54_binop_bx, @function
n54_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_binop_α:            mov              r11, 54
                        mov              eax, dword ptr [rbp + 672]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_174_2
                        mov              rax, qword ptr [rbp + 680]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_174_0
                        mov              qword ptr [rbp + 656], 3
                        mov              qword ptr [rbp + 664], rax;          jmp   .Lbinop_α_174_7
.Lbinop_α_174_2:        and              edx, 1;                              jz    .Lbinop_α_174_0
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_174_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_174_4
.Lbinop_α_174_3:        movq             xmm0, rsi
.Lbinop_α_174_4:        cmp              cl, 5;                               je    .Lbinop_α_174_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_174_6
.Lbinop_α_174_5:        movq             xmm1, rdi
.Lbinop_α_174_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_174_0
                        mov              qword ptr [rbp + 656], 5
                        mov              qword ptr [rbp + 664], rax
.Lbinop_α_174_7:                                                              jmp   n55_binop_α
.Lbinop_α_174_0:        mov              rdi, qword ptr [rbp + 672]
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
                        cmp              al, 104;                             je    n81_scan_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:301
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n55_binop_α
                        .size            n54_binop_bx, .-n54_binop_bx
                        .type            n55_binop_bx, @function
n55_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_binop_α:            mov              r11, 55
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:85
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n56_lit_string_α
                        .size            n55_binop_bx, .-n55_binop_bx
                        .type            n56_lit_string_bx, @function
n56_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:       mov              r11, 56
                        mov              qword ptr [rbp + 720], 2             # result
                        mov              dword ptr [rbp + 724], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_176_0]
                        mov              qword ptr [rbp + 728], rax;          jmp   n57_binop_α
.Llit_string_α_176_0:   .quad            .Llit_string_α_176_0_s
.Llit_string_α_176_0_s: .string          "), "
                        .size            n56_lit_string_bx, .-n56_lit_string_bx
                        .type            n57_binop_bx, @function
n57_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_binop_α:            mov              r11, 57
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:85
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n58_assign_var_α
                        .size            n57_binop_bx, .-n57_binop_bx
                        .type            n58_assign_var_bx, @function
n58_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_var_α:       mov              r11, 58
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
                        cmp              al, 104;                             je    n81_scan_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var.cpp:47
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n59_conjunction_α
                        .size            n58_assign_var_bx, .-n58_assign_var_bx
                        .type            n59_conjunction_bx, @function
n59_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_conjunction_α:      mov              r11, 59
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax;          jmp   .Ldisjunction_γ_39_as
n59_conjunction_β:      mov              r11, 59;                             jmp   n81_scan_α
                        .size            n59_conjunction_bx, .-n59_conjunction_bx
                        .type            n60_lit_integer_bx, @function
n60_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:      mov              r11, 60
                        mov              qword ptr [rbp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_180_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n61_assign_α
n60_lit_integer_β:      mov              r11, 60;                             jmp   n44_line_mark_α
.Llit_integer_α_180_0:  .quad            1
                        .size            n60_lit_integer_bx, .-n60_lit_integer_bx
                        .type            n61_assign_bx, @function
n61_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:           mov              r11, 61
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   .Ldisjunction_γ_43_as
n61_assign_β:           mov              r11, 61;                             jmp   n44_line_mark_α
                        .size            n61_assign_bx, .-n61_assign_bx
                        .type            n62_lit_string_bx, @function
n62_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              r11, 62
                        mov              qword ptr [rbp + 1008], 2            # result
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_182_0]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n63_scan_match_α
n62_lit_string_β:       mov              r11, 62;                             jmp   .Ldisjunction_ω_43_af
.Llit_string_α_182_0:   .quad            .Llit_string_α_182_0_s
.Llit_string_α_182_0_s: .string          "("
                        .size            n62_lit_string_bx, .-n62_lit_string_bx
                        .type            n63_scan_match_bx, @function
n63_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_scan_match_α:       mov              r11, 63
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_43_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_184_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_43_af
                        mov              qword ptr [rbp + 976], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 984], rax;          jmp   n64_scan_tab_α
.Lscan_match_α_184_0:   .quad            .Lscan_match_α_184_0_s
.Lscan_match_α_184_0_s: .string          "("
                        .size            n63_scan_match_bx, .-n63_scan_match_bx
                        .type            n64_scan_tab_bx, @function
n64_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_scan_tab_α:         mov              r11, 64
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
                        test             eax, eax;                            jz    .Ldisjunction_ω_43_af
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
                        mov              rdi, qword ptr [rbp + 976]
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
                        cmp              rax, 1;                              jge   .Lscan_tab_α_186_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_186_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_43_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_43_af
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
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n65_lit_charset_α
n64_scan_tab_β:         mov              r11, 64
                        mov              r14, qword ptr [rbp + 960];          jmp   .Ldisjunction_ω_43_af
                        .size            n64_scan_tab_bx, .-n64_scan_tab_bx
                        .type            n65_lit_charset_bx, @function
n65_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_charset_α:      mov              r11, 65
                        mov              qword ptr [rbp + 912], 2             # result
                        mov              dword ptr [rbp + 916], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_187_0]
                        mov              qword ptr [rbp + 920], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_187_0]
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_lit_scalar.cpp:90
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n66_line_mark_α
.Llit_charset_α_187_0:  .quad            .Llit_charset_α_187_0_s
.Llit_charset_α_187_0_s:
                        .string          ")"
                        .size            n65_lit_charset_bx, .-n65_lit_charset_bx
                        .type            n66_line_mark_bx, @function
n66_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_line_mark_α:        mov              r11, 66
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70;             jmp   n67_scan_upto_α
                        .size            n66_line_mark_bx, .-n66_line_mark_bx
                        .type            n67_scan_upto_bx, @function
n67_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_scan_upto_α:        mov              r11, 67
                        mov              qword ptr [rbp + 880], r14
.Lscan_upto_α_191_0:    mov              rax, qword ptr [rbp + 880]
                        cmp              rax, r15;                            jge   n44_line_mark_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .Lscan_upto_α_191_3]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_upto_α_191_1
                        mov              qword ptr [rbp + 864], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 872], rax;          jmp   n68_line_mark_α
.Lscan_upto_α_191_1:    inc              qword ptr [rbp + 880];               jmp   .Lscan_upto_α_191_0
n67_scan_upto_β:        mov              r11, 67
                        inc              qword ptr [rbp + 880];               jmp   .Lscan_upto_α_191_0
.Lscan_upto_β_191_2:    .quad            .Lscan_upto_β_191_2_s
.Lscan_upto_β_191_2_s:  .string          ")"
.Lscan_upto_α_191_3:    .quad            2199023255552
.Lscan_upto_β_191_4:    .quad            0
.Lscan_upto_β_191_5:    .quad            0
.Lscan_upto_β_191_6:    .quad            0
                        .size            n67_scan_upto_bx, .-n67_scan_upto_bx
                        .type            n68_line_mark_bx, @function
n68_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_line_mark_α:        mov              r11, 68
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70;             jmp   n69_scan_tab_α
                        .size            n68_line_mark_bx, .-n68_line_mark_bx
                        .type            n69_scan_tab_bx, @function
n69_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_scan_tab_α:         mov              r11, 69
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
                        test             eax, eax;                            jz    n67_scan_upto_β
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
                        mov              rdi, qword ptr [rbp + 864]
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
                        cmp              rax, 1;                              jge   .Lscan_tab_α_195_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_195_0:     cmp              rax, 1;                              jl    n67_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n67_scan_upto_β
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
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n70_assign_α
n69_scan_tab_β:         mov              r11, 69
                        mov              r14, qword ptr [rbp + 832];          jmp   n67_scan_upto_β
                        .size            n69_scan_tab_bx, .-n69_scan_tab_bx
                        .type            n70_assign_bx, @function
n70_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:           mov              r11, 70
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   .Ldisjunction_γ_43_as
n70_assign_β:           mov              r11, 70;                             jmp   n44_line_mark_α
                        .size            n70_assign_bx, .-n70_assign_bx
                        .type            n71_disjunction_bx, @function
n71_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_disjunction_α:      mov              r11, 71
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0;            jmp   n85_var_α
.Ldisjunction_γ_71_as:  mov              r11, 71
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_198_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax;          jmp   n72_var_ref_α
.Ldisjunction_α_198_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_198_1
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 376], rax;          jmp   n72_var_ref_α
.Ldisjunction_α_198_1:                                                        jmp   n72_var_ref_α
n71_disjunction_β:      mov              r11, 71
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_71_af
                                                                              jmp   .Ldisjunction_ω_71_af
.Ldisjunction_γ_71_af:  mov              r11, 71
.Ldisjunction_ω_71_af:  mov              r11, 71
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1;                              je    n82_var_α
                                                                              jmp   .Ldisjunction_ω_39_af
                        .size            n71_disjunction_bx, .-n71_disjunction_bx
                        .type            n72_var_ref_bx, @function
n72_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              r11, 72
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n73_var_α
                        .size            n72_var_ref_bx, .-n72_var_ref_bx
                        .type            n73_var_bx, @function
n73_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              mov              r11, 73
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 232], rax;          jmp   n74_subscript_α
                        .size            n73_var_bx, .-n73_var_bx
                        .type            n74_subscript_bx, @function
n74_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_subscript_α:        mov              r11, 74
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
                        cmp              al, 104;                             je    n81_scan_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:52
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n75_deref_α
                        .size            n74_subscript_bx, .-n74_subscript_bx
                        .type            n75_deref_bx, @function
n75_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_deref_α:            mov              r11, 75
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
                        cmp              al, 104;                             je    n81_scan_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n76_var_α
                        .size            n75_deref_bx, .-n75_deref_bx
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
                        mov              rax, qword ptr [rip + .Llit_string_α_207_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n78_binop_α
.Llit_string_α_207_0:   .quad            .Llit_string_α_207_0_s
.Llit_string_α_207_0_s: .string          ", "
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:85
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n79_binop_α
                        .size            n78_binop_bx, .-n78_binop_bx
                        .type            n79_binop_bx, @function
n79_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_binop_α:            mov              r11, 79
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:85
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n80_assign_var_α
                        .size            n79_binop_bx, .-n79_binop_bx
                        .type            n80_assign_var_bx, @function
n80_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_var_α:       mov              r11, 80
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
                        cmp              al, 104;                             je    n81_scan_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var.cpp:47
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldisjunction_γ_39_as
n80_assign_var_β:       mov              r11, 80;                             jmp   n81_scan_α
                        .size            n80_assign_var_bx, .-n80_assign_var_bx
                        .type            n81_scan_bx, @function
n81_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_scan_α:             mov              r11, 81
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
n81_scan_β:             mov              r11, 81;                             jmp   tabulate_ω
                        .size            n81_scan_bx, .-n81_scan_bx
                        .type            n82_var_bx, @function
n82_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              mov              r11, 82
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 456], rax;          jmp   n83_var_α
n82_var_β:              mov              r11, 82;                             jmp   .Ldisjunction_ω_71_af
                        .size            n82_var_bx, .-n82_var_bx
                        .type            n83_var_bx, @function
n83_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              mov              r11, 83
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 472], rax;          jmp   n84_binop_test_α
                        .size            n83_var_bx, .-n83_var_bx
                        .type            n84_binop_test_bx, @function
n84_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_binop_test_α:       mov              r11, 84
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
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
                        test             eax, eax;                            jz    .Ldisjunction_ω_71_af
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_relop.cpp:110
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldisjunction_γ_71_as
n84_binop_test_β:       mov              r11, 84;                             jmp   .Ldisjunction_ω_71_af
                        .size            n84_binop_test_bx, .-n84_binop_test_bx
                        .type            n85_var_bx, @function
n85_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:              mov              r11, 85
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 424], rax;          jmp   n86_unop_test_α
n85_var_β:              mov              r11, 85;                             jmp   .Ldisjunction_ω_71_af
                        .size            n85_var_bx, .-n85_var_bx
                        .type            n86_unop_test_bx, @function
n86_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_unop_test_α:        mov              r11, 86
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              al, 104;                             je    .Ldisjunction_ω_71_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_71_af
                        mov              qword ptr [rbp + 400], 0
                        mov              qword ptr [rbp + 408], 0;            jmp   .Ldisjunction_γ_71_as
n86_unop_test_β:        mov              r11, 86;                             jmp   .Ldisjunction_ω_71_af
                        .size            n86_unop_test_bx, .-n86_unop_test_bx
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
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Ltabulate_α_220_248
                        .section         .rodata
.Licn_trace_nm221:      .string          "tabulate"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm221]
                        mov              rsi, qword ptr [r11 + 8]
                        mov              rdx, qword ptr [r11 + 0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll xa_flat.cpp:456
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ltabulate_α_220_248:   mov              rsp, qword ptr [rsp + 0]
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
                        lea              rsp, [rbp + 1920]
                        mov              rbp, qword ptr [rbp + 1912];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
tabulate_ω:
                        push             rax
                        push             rdx
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Ltabulate_α_220_249
                        .section         .rodata
.Licn_trace_nm222:      .string          "tabulate"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm222]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll xa_flat.cpp:456
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ltabulate_α_220_249:   mov              rsp, qword ptr [rsp + 0]
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
                        lea              rsp, [rbp + 1920]
                        mov              rbp, qword ptr [rbp + 1912];         jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Ltabulate_α_223_3]
                        push             rcx
                        lea              rcx, [rip + .Ltabulate_α_223_2]
                        push             rcx;                                 jmp   FN__tabulate
.Ltabulate_α_223_2:     add              rsp, 24
                        pop              r12;                                 jmp   r12
.Ltabulate_α_223_3:     add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_tabulate:
                        .quad            8247683665242
                        .quad            34359738512
                        .quad            .Lgcmap_tabulate_s
                        .quad            1760
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
                        .quad            158329674400752
                        .quad            17596481012864
                        .quad            35184372090000
                        .quad            17596481012912
                        .quad            140737488356544
                        .quad            17596481013056
                        .quad            439804651111760
.Lgcmap_tabulate_s:     .string          "tabulate"
#-----------------------------------------------------------------------------------------------------------------------
FN__format:
                        sub              rsp, 1168
                        lea              rax, [rip + .Lgcmap_format]
                        mov              qword ptr [rsp + 1080], rax
                        mov              dword ptr [rsp + 1072], 160
                        mov              dword ptr [rsp + 1076], 1168
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
                        push             rax
                        push             rdx
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        .section         .rodata
.Licn_trace_nm224:      .string          "format"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm224]
                        mov              esi, 1
                        lea              rdx, [r11 + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll emit.cpp:2921
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lformat_α_223_247:     mov              rsp, qword ptr [rsp + 0]
                        pop              rdx
                        pop              rax
format_α_body:
                        .type            n00001_line_mark_bx, @function
n00001_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_line_mark_α:       mov              r11, 87
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 79
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_284_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00002_line_mark_α
.Lline_mark_α_284_0:    .quad            .Lline_mark_α_284_0_s
.Lline_mark_α_284_0_s:  .string          "concord.icn"
                        .size            n00001_line_mark_bx, .-n00001_line_mark_bx
                        .type            n00002_line_mark_bx, @function
n00002_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_line_mark_α:       mov              r11, 88
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 80;             jmp   n00003_var_α
                        .size            n00002_line_mark_bx, .-n00002_line_mark_bx
                        .type            n00003_var_bx, @function
n00003_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_var_α:             mov              r11, 89
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax;          jmp   n00004_unop_α
                        .size            n00003_var_bx, .-n00003_var_bx
                        .type            n00004_unop_bx, @function
n00004_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_unop_α:            mov              r11, 90
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
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n00005_lit_integer_α
                        .size            n00004_unop_bx, .-n00004_unop_bx
                        .type            n00005_lit_integer_bx, @function
n00005_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_lit_integer_α:     mov              r11, 91
                        mov              qword ptr [rbp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_290_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n00006_var_α
.Llit_integer_α_290_0:  .quad            2
                        .size            n00005_lit_integer_bx, .-n00005_lit_integer_bx
                        .type            n00006_var_bx, @function
n00006_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_var_α:             mov              r11, 92
                        mov              rax, qword ptr [r9 + 16]             # colmax
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rbp + 272], rax           # result
                        mov              qword ptr [rbp + 280], rdx;          jmp   n00007_coerce_numeric_α
                        .size            n00006_var_bx, .-n00006_var_bx
                        .type            n00007_coerce_numeric_bx, @function
n00007_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_coerce_numeric_α:  mov              r11, 93
                        mov              eax, dword ptr [rbp + 272]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_293_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_293_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_293_0
.Lcoerce_numeric_α_293_1:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00008_binop_α
.Lcoerce_numeric_α_293_0:
                        lea              rdi, [rbp + 272]
                        lea              rsi, [rbp + 256]
                        lea              rdx, [rbp + 240]
                        mov              rcx, 4311744614
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:76
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 104;                             je    n00009_line_mark_α
                                                                              jmp   n00008_binop_α
                        .size            n00007_coerce_numeric_bx, .-n00007_coerce_numeric_bx
                        .type            n00008_binop_bx, @function
n00008_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_binop_α:           mov              r11, 94
                        mov              eax, dword ptr [rbp + 240]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_294_2
                        mov              rax, qword ptr [rbp + 248]
                        mov              rdx, 2
                        add              rax, rdx;                            jo    .Lbinop_α_294_0
                        mov              qword ptr [rbp + 224], 3
                        mov              qword ptr [rbp + 232], rax;          jmp   .Lbinop_α_294_7
.Lbinop_α_294_2:        and              edx, 1;                              jz    .Lbinop_α_294_0
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_294_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_294_4
.Lbinop_α_294_3:        movq             xmm0, rsi
.Lbinop_α_294_4:        cmp              cl, 5;                               je    .Lbinop_α_294_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_294_6
.Lbinop_α_294_5:        movq             xmm1, rdi
.Lbinop_α_294_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_294_0
                        mov              qword ptr [rbp + 224], 5
                        mov              qword ptr [rbp + 232], rax
.Lbinop_α_294_7:                                                              jmp   n00010_binop_test_α
.Lbinop_α_294_0:        mov              rdi, qword ptr [rbp + 240]
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:301
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00010_binop_test_α
                        .size            n00008_binop_bx, .-n00008_binop_bx
                        .type            n00010_binop_test_bx, @function
n00010_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_binop_test_α:      mov              r11, 95
                        mov              eax, dword ptr [rbp + 192]
                        cmp              al, 112;                             je    .Lbinop_test_α_295_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              al, 112;                             je    .Lbinop_test_α_295_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              al, 3;                               jne   .Lbinop_test_α_295_2
                        mov              eax, dword ptr [rbp + 224]
                        cmp              al, 3;                               jne   .Lbinop_test_α_295_2
.Lbinop_test_α_295_1:   mov              rax, qword ptr [rbp + 200]
                        mov              rcx, qword ptr [rbp + 232]
                        cmp              rax, rcx;                            jle   n00009_line_mark_α
                        mov              rcx, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rcx
                        mov              rcx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rcx;          jmp   n00011_line_mark_α
.Lbinop_test_α_295_0:   mov              rdi, qword ptr [rbp + 192]
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
                        test             eax, eax;                            je    .Lbinop_test_α_295_2
                        cmp              eax, 1;                              je    n00009_line_mark_α
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_relop.cpp:56
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00011_line_mark_α
.Lbinop_test_α_295_2:   mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        test             eax, eax;                            jz    n00009_line_mark_α
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_relop.cpp:79
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00011_line_mark_α
                        .size            n00010_binop_test_bx, .-n00010_binop_test_bx
                        .type            n00011_line_mark_bx, @function
n00011_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_line_mark_α:       mov              r11, 96
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 81;             jmp   n00012_lit_integer_α
                        .size            n00011_line_mark_bx, .-n00011_line_mark_bx
                        .type            n00012_lit_integer_bx, @function
n00012_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_lit_integer_α:     mov              r11, 97
                        mov              qword ptr [rbp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_298_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n00013_var_α
.Llit_integer_α_298_0:  .quad            2
                        .size            n00012_lit_integer_bx, .-n00012_lit_integer_bx
                        .type            n00013_var_bx, @function
n00013_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_var_α:             mov              r11, 98
                        mov              rax, qword ptr [r9 + 16]             # colmax
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rbp + 992], rax           # result
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n00014_coerce_numeric_α
                        .size            n00013_var_bx, .-n00013_var_bx
                        .type            n00014_coerce_numeric_bx, @function
n00014_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_coerce_numeric_α:  mov              r11, 99
                        mov              eax, dword ptr [rbp + 992]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_301_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_301_0
                        mov              eax, dword ptr [rbp + 976]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_301_0
.Lcoerce_numeric_α_301_1:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax;          jmp   n00015_binop_α
.Lcoerce_numeric_α_301_0:
                        lea              rdi, [rbp + 992]
                        lea              rsi, [rbp + 976]
                        lea              rdx, [rbp + 960]
                        mov              rcx, 4311744614
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:76
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 960]
                        cmp              al, 104;                             je    n00016_line_mark_α
                                                                              jmp   n00015_binop_α
                        .size            n00014_coerce_numeric_bx, .-n00014_coerce_numeric_bx
                        .type            n00015_binop_bx, @function
n00015_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_binop_α:           mov              r11, 100
                        mov              eax, dword ptr [rbp + 960]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_302_2
                        mov              rax, qword ptr [rbp + 968]
                        mov              rdx, 2
                        add              rax, rdx;                            jo    .Lbinop_α_302_0
                        mov              qword ptr [rbp + 944], 3
                        mov              qword ptr [rbp + 952], rax;          jmp   .Lbinop_α_302_7
.Lbinop_α_302_2:        and              edx, 1;                              jz    .Lbinop_α_302_0
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_302_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_302_4
.Lbinop_α_302_3:        movq             xmm0, rsi
.Lbinop_α_302_4:        cmp              cl, 5;                               je    .Lbinop_α_302_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_302_6
.Lbinop_α_302_5:        movq             xmm1, rdi
.Lbinop_α_302_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_302_0
                        mov              qword ptr [rbp + 944], 5
                        mov              qword ptr [rbp + 952], rax
.Lbinop_α_302_7:                                                              jmp   n00017_assign_α
.Lbinop_α_302_0:        mov              rdi, qword ptr [rbp + 960]
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:301
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00017_assign_α
                        .size            n00015_binop_bx, .-n00015_binop_bx
                        .type            n00017_assign_bx, @function
n00017_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_assign_α:          mov              r11, 101
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n00016_line_mark_α
                        .size            n00017_assign_bx, .-n00017_assign_bx
                        .type            n00016_line_mark_bx, @function
n00016_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_line_mark_α:       mov              r11, 102
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 82;             jmp   n00018_var_ref_α
                        .size            n00016_line_mark_bx, .-n00016_line_mark_bx
                        .type            n00018_var_ref_bx, @function
n00018_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n00019_var_α
                        .size            n00018_var_ref_bx, .-n00018_var_ref_bx
                        .type            n00019_var_bx, @function
n00019_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_var_α:             mov              r11, 104
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 824], rax;          jmp   n00020_lit_integer_α
                        .size            n00019_var_bx, .-n00019_var_bx
                        .type            n00020_lit_integer_bx, @function
n00020_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_lit_integer_α:     mov              r11, 105
                        mov              qword ptr [rbp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_310_0]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00021_coerce_numeric_α
.Llit_integer_α_310_0:  .quad            1
                        .size            n00020_lit_integer_bx, .-n00020_lit_integer_bx
                        .type            n00021_coerce_numeric_bx, @function
n00021_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_coerce_numeric_α:  mov              r11, 106
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_312_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_312_0
                        mov              eax, dword ptr [rbp + 832]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_312_0
.Lcoerce_numeric_α_312_1:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00022_binop_α
.Lcoerce_numeric_α_312_0:
                        lea              rdi, [rbp + 1056]
                        lea              rsi, [rbp + 832]
                        lea              rdx, [rbp + 800]
                        mov              rcx, 8606711910
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:76
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 800]
                        cmp              al, 104;                             je    n00018_var_ref_α
                                                                              jmp   n00022_binop_α
                        .size            n00021_coerce_numeric_bx, .-n00021_coerce_numeric_bx
                        .type            n00022_binop_bx, @function
n00022_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_binop_α:           mov              r11, 107
                        mov              eax, dword ptr [rbp + 800]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_313_2
                        mov              rax, qword ptr [rbp + 808]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_313_0
                        mov              qword ptr [rbp + 784], 3
                        mov              qword ptr [rbp + 792], rax;          jmp   .Lbinop_α_313_7
.Lbinop_α_313_2:        and              edx, 1;                              jz    .Lbinop_α_313_0
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_313_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_313_4
.Lbinop_α_313_3:        movq             xmm0, rsi
.Lbinop_α_313_4:        cmp              cl, 5;                               je    .Lbinop_α_313_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_313_6
.Lbinop_α_313_5:        movq             xmm1, rdi
.Lbinop_α_313_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_313_0
                        mov              qword ptr [rbp + 784], 5
                        mov              qword ptr [rbp + 792], rax
.Lbinop_α_313_7:                                                              jmp   n00023_assign_α
.Lbinop_α_313_0:        mov              rdi, qword ptr [rbp + 800]
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:301
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00023_assign_α
                        .size            n00022_binop_bx, .-n00022_binop_bx
                        .type            n00023_assign_bx, @function
n00023_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_assign_α:          mov              r11, 108
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
n00024_subscript_α:       mov              r11, 109
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:52
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00025_deref_α
                        .size            n00024_subscript_bx, .-n00024_subscript_bx
                        .type            n00025_deref_bx, @function
n00025_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_deref_α:           mov              r11, 110
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00026_lit_string_α
                        .size            n00025_deref_bx, .-n00025_deref_bx
                        .type            n00026_lit_string_bx, @function
n00026_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_lit_string_α:      mov              r11, 111
                        mov              qword ptr [rbp + 880], 2             # result
                        mov              dword ptr [rbp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_317_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00027_binop_test_α
.Llit_string_α_317_0:   .quad            .Llit_string_α_317_0_s
.Llit_string_α_317_0_s: .string          " "
                        .size            n00026_lit_string_bx, .-n00026_lit_string_bx
                        .type            n00027_binop_test_bx, @function
n00027_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_binop_test_α:      mov              r11, 112
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 880]
                        mov              rcx, qword ptr [rbp + 888]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        test             eax, eax;                            jz    n00018_var_ref_α
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_relop.cpp:110
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00028_line_mark_α
                        .size            n00027_binop_test_bx, .-n00027_binop_test_bx
                        .type            n00028_line_mark_bx, @function
n00028_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_line_mark_α:       mov              r11, 113
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 83;             jmp   n00029_var_ref_α
                        .size            n00028_line_mark_bx, .-n00028_line_mark_bx
                        .type            n00029_var_ref_bx, @function
n00029_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n00030_lit_integer_α
                        .size            n00029_var_ref_bx, .-n00029_var_ref_bx
                        .type            n00030_lit_integer_bx, @function
n00030_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_lit_integer_α:     mov              r11, 115
                        mov              qword ptr [rbp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_323_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n00031_var_α
.Llit_integer_α_323_0:  .quad            1
                        .size            n00030_lit_integer_bx, .-n00030_lit_integer_bx
                        .type            n00031_var_bx, @function
n00031_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_var_α:             mov              r11, 116
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 696], rax;          jmp   n00032_subscript_α
                        .size            n00031_var_bx, .-n00031_var_bx
                        .type            n00032_subscript_bx, @function
n00032_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_subscript_α:       mov              r11, 117
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_section.cpp:33
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00034_deref_α
                        .size            n00032_subscript_bx, .-n00032_subscript_bx
                        .type            n00034_deref_bx, @function
n00034_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_deref_α:           mov              r11, 118
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00035_line_mark_α
                        .size            n00034_deref_bx, .-n00034_deref_bx
                        .type            n00035_line_mark_bx, @function
n00035_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_line_mark_α:       mov              r11, 119
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 83;             jmp   n00036_call_icon_α
                        .size            n00035_line_mark_bx, .-n00035_line_mark_bx
                        .type            n00036_call_icon_bx, @function
n00036_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_call_icon_α:       mov              r11, 120
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lcall_icon_α_rkfn331:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn331]
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00033_line_mark_α
n00036_call_icon_β:       mov              r11, 120;                            jmp   n00033_line_mark_α
                        .size            n00036_call_icon_bx, .-n00036_call_icon_bx
                        .type            n00033_line_mark_bx, @function
n00033_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_line_mark_α:       mov              r11, 121
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 84;             jmp   n00037_lit_string_α
                        .size            n00033_line_mark_bx, .-n00033_line_mark_bx
                        .type            n00037_lit_string_bx, @function
n00037_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_lit_string_α:      mov              r11, 122
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_334_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n00038_var_ref_α
.Llit_string_α_334_0:   .quad            .Llit_string_α_334_0_s
.Llit_string_α_334_0_s: .string          " "
                        .size            n00037_lit_string_bx, .-n00037_lit_string_bx
                        .type            n00038_var_ref_bx, @function
n00038_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_var_ref_α:         mov              r11, 123
                        mov              rax, 4294967336
                        mov              rdx, 1879052320                      # namewidth
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n00039_deref_α
                        .size            n00038_var_ref_bx, .-n00038_var_ref_bx
                        .type            n00039_deref_bx, @function
n00039_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_deref_α:           mov              r11, 124
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00040_line_mark_α
                        .size            n00039_deref_bx, .-n00039_deref_bx
                        .type            n00040_line_mark_bx, @function
n00040_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_line_mark_α:       mov              r11, 125
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 84;             jmp   n00041_call_icon_α
                        .size            n00040_line_mark_bx, .-n00040_line_mark_bx
                        .type            n00041_call_icon_bx, @function
n00041_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_call_icon_α:       mov              r11, 126
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lcall_icon_α_rkfn341:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn341]
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00042_var_α
n00041_call_icon_β:       mov              r11, 126;                            jmp   n00003_var_α
                        .size            n00041_call_icon_bx, .-n00041_call_icon_bx
                        .type            n00042_var_bx, @function
n00042_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_var_α:             mov              r11, 127
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 488], rax;          jmp   n00043_var_α
                        .size            n00042_var_bx, .-n00042_var_bx
                        .type            n00043_var_bx, @function
n00043_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_var_α:             mov              r11, 128
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 536], rax;          jmp   n00044_lit_integer_α
                        .size            n00043_var_bx, .-n00043_var_bx
                        .type            n00044_lit_integer_bx, @function
n00044_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_lit_integer_α:     mov              r11, 129
                        mov              qword ptr [rbp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_346_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00045_coerce_numeric_α
.Llit_integer_α_346_0:  .quad            1
                        .size            n00044_lit_integer_bx, .-n00044_lit_integer_bx
                        .type            n00045_coerce_numeric_bx, @function
n00045_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_coerce_numeric_α:  mov              r11, 130
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_348_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_348_0
                        mov              eax, dword ptr [rbp + 544]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_348_0
.Lcoerce_numeric_α_348_1:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 520], rax;          jmp   n00046_binop_α
.Lcoerce_numeric_α_348_0:
                        lea              rdi, [rbp + 1056]
                        lea              rsi, [rbp + 544]
                        lea              rdx, [rbp + 512]
                        mov              rcx, 4311744614
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:76
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 512]
                        cmp              al, 104;                             je    n00003_var_α
                                                                              jmp   n00046_binop_α
                        .size            n00045_coerce_numeric_bx, .-n00045_coerce_numeric_bx
                        .type            n00046_binop_bx, @function
n00046_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_binop_α:           mov              r11, 131
                        mov              eax, dword ptr [rbp + 512]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_349_2
                        mov              rax, qword ptr [rbp + 520]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_349_0
                        mov              qword ptr [rbp + 496], 3
                        mov              qword ptr [rbp + 504], rax;          jmp   .Lbinop_α_349_7
.Lbinop_α_349_2:        and              edx, 1;                              jz    .Lbinop_α_349_0
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_349_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_349_4
.Lbinop_α_349_3:        movq             xmm0, rsi
.Lbinop_α_349_4:        cmp              cl, 5;                               je    .Lbinop_α_349_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_349_6
.Lbinop_α_349_5:        movq             xmm1, rdi
.Lbinop_α_349_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_349_0
                        mov              qword ptr [rbp + 496], 5
                        mov              qword ptr [rbp + 504], rax
.Lbinop_α_349_7:                                                              jmp   n00047_lit_integer_α
.Lbinop_α_349_0:        mov              rdi, qword ptr [rbp + 512]
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:301
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00047_lit_integer_α
                        .size            n00046_binop_bx, .-n00046_binop_bx
                        .type            n00047_lit_integer_bx, @function
n00047_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_lit_integer_α:     mov              r11, 132
                        mov              qword ptr [rbp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_350_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n00048_subscript_α
.Llit_integer_α_350_0:  .quad            0
                        .size            n00047_lit_integer_bx, .-n00047_lit_integer_bx
                        .type            n00048_subscript_bx, @function
n00048_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_subscript_α:       mov              r11, 133
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_section.cpp:66
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00049_binop_α
                        .size            n00048_subscript_bx, .-n00048_subscript_bx
                        .type            n00049_binop_bx, @function
n00049_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_binop_α:           mov              r11, 134
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:85
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00050_assign_α
                        .size            n00049_binop_bx, .-n00049_binop_bx
                        .type            n00050_assign_bx, @function
n00050_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_assign_α:          mov              r11, 135
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
n00051_conjunction_α:     mov              r11, 136
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax;          jmp   n00003_var_α
n00051_conjunction_β:     mov              r11, 136;                            jmp   n00003_var_α
                        .size            n00051_conjunction_bx, .-n00051_conjunction_bx
                        .type            n00009_line_mark_bx, @function
n00009_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_line_mark_α:       mov              r11, 137
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 86;             jmp   n00052_var_ref_α
                        .size            n00009_line_mark_bx, .-n00009_line_mark_bx
                        .type            n00052_var_ref_bx, @function
n00052_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00053_lit_integer_α
                        .size            n00052_var_ref_bx, .-n00052_var_ref_bx
                        .type            n00053_lit_integer_bx, @function
n00053_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_lit_integer_α:     mov              r11, 139
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_359_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n00054_lit_integer_α
.Llit_integer_α_359_0:  .quad            1
                        .size            n00053_lit_integer_bx, .-n00053_lit_integer_bx
                        .type            n00054_lit_integer_bx, @function
n00054_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_lit_integer_α:     mov              r11, 140
                        mov              qword ptr [rbp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_360_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n00055_subscript_α
.Llit_integer_α_360_0:  .quad            18446744073709551614
                        .size            n00054_lit_integer_bx, .-n00054_lit_integer_bx
                        .type            n00055_subscript_bx, @function
n00055_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_subscript_α:       mov              r11, 141
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_section.cpp:33
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00056_deref_α
                        .size            n00055_subscript_bx, .-n00055_subscript_bx
                        .type            n00056_deref_bx, @function
n00056_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_deref_α:           mov              r11, 142
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00057_line_mark_α
                        .size            n00056_deref_bx, .-n00056_deref_bx
                        .type            n00057_line_mark_bx, @function
n00057_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_line_mark_α:       mov              r11, 143
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 86;             jmp   n00058_call_icon_α
                        .size            n00057_line_mark_bx, .-n00057_line_mark_bx
                        .type            n00058_call_icon_bx, @function
n00058_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_call_icon_α:       mov              r11, 144
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lcall_icon_α_rkfn366:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn366]
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   format_ω
n00058_call_icon_β:       mov              r11, 144;                            jmp   format_ω
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
                        push             rax
                        push             rdx
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lformat_α_365_248
                        .section         .rodata
.Licn_trace_nm367:      .string          "format"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm367]
                        mov              rsi, qword ptr [r11 + 8]
                        mov              rdx, qword ptr [r11 + 0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll xa_flat.cpp:456
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lformat_α_365_248:     mov              rsp, qword ptr [rsp + 0]
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
                        lea              rsp, [rbp + 1168]
                        mov              rbp, qword ptr [rbp + 1160];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
format_ω:
                        push             rax
                        push             rdx
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lformat_α_365_249
                        .section         .rodata
.Licn_trace_nm368:      .string          "format"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll xa_flat.cpp:456
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lformat_α_365_249:     mov              rsp, qword ptr [rsp + 0]
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
                        lea              rcx, [rip + .Lformat_α_369_3]
                        push             rcx
                        lea              rcx, [rip + .Lformat_α_369_2]
                        push             rcx;                                 jmp   FN__format
.Lformat_α_369_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lformat_α_369_3:       add              rsp, 24
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
                        lea              rax, [rsp + -1336]
                        mov              qword ptr [rax + 1280], rbp
                        mov              rcx, qword ptr [rsp + 0]
                        mov              qword ptr [rax + 1288], rcx
                        mov              rcx, qword ptr [rsp + 8]
                        mov              qword ptr [rax + 1296], rcx
                        lea              rcx, [rsp + 40]
                        mov              qword ptr [rax + 1304], rcx
                        lea              rbp, [rax + 1280]
                        mov              rsp, rax
                        lea              rax, [rip + .Lgcmap_item]
                        mov              qword ptr [rsp + 1160], rax
                        mov              dword ptr [rsp + 1152], 160
                        mov              dword ptr [rsp + 1156], 1280
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 1152
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
                        push             rax
                        push             rdx
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        .section         .rodata
.Licn_trace_nm370:      .string          "item"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm370]
                        mov              esi, 0
                        lea              rdx, [r11 + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_act_record@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll emit.cpp:2921
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Litem_α_369_246:       mov              rsp, qword ptr [rsp + 0]
                        pop              rdx
                        pop              rax
item_α_body:
                        lea              rax, [rip + n00059_suspend_β]
                        mov              qword ptr [rbp + -192], rax
                        .type            n00060_line_mark_bx, @function
n00060_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_line_mark_α:       mov              r11, 145
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 93
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_428_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00061_line_mark_α
.Lline_mark_α_428_0:    .quad            .Lline_mark_α_428_0_s
.Lline_mark_α_428_0_s:  .string          "concord.icn"
                        .size            n00060_line_mark_bx, .-n00060_line_mark_bx
                        .type            n00061_line_mark_bx, @function
n00061_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_line_mark_α:       mov              r11, 146
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 94;             jmp   n00062_line_mark_α
                        .size            n00061_line_mark_bx, .-n00061_line_mark_bx
                        .type            n00062_line_mark_bx, @function
n00062_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_line_mark_α:       mov              r11, 147
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 94;             jmp   n00063_call_icon_α
                        .size            n00062_line_mark_bx, .-n00062_line_mark_bx
                        .type            n00063_call_icon_bx, @function
n00063_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_call_icon_α:       mov              r11, 148
                        .section         .rodata
.Lcall_icon_α_rkfn434:  .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn434]
                        lea              rsi, [rbp + -1232]
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
                        mov              qword ptr [rbp + -1248], rax
                        mov              qword ptr [rbp + -1240], rdx
                        cmp              al, 104;                             je    item_ω
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00064_assign_α
n00063_call_icon_β:       mov              r11, 148;                            jmp   item_ω
                        .size            n00063_call_icon_bx, .-n00063_call_icon_bx
                        .type            n00064_assign_bx, @function
n00064_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_assign_α:          mov              r11, 149
                        mov              rax, qword ptr [rbp + -1248]
                        mov              rdx, qword ptr [rbp + -1240]
                        mov              qword ptr [rbp + -176], rax
                        mov              qword ptr [rbp + -168], rdx;         jmp   n00065_line_mark_α
                        .size            n00064_assign_bx, .-n00064_assign_bx
                        .type            n00065_line_mark_bx, @function
n00065_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_line_mark_α:       mov              r11, 150
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 95;             jmp   n00066_lit_integer_α
                        .size            n00065_line_mark_bx, .-n00065_line_mark_bx
                        .type            n00066_lit_integer_bx, @function
n00066_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_lit_integer_α:     mov              r11, 151
                        mov              qword ptr [rbp + -272], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_438_0]
                        mov              qword ptr [rbp + -264], rax;         jmp   n00067_var_α
.Llit_integer_α_438_0:  .quad            1
                        .size            n00066_lit_integer_bx, .-n00066_lit_integer_bx
                        .type            n00067_var_bx, @function
n00067_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_var_α:             mov              r11, 152
                        mov              rax, qword ptr [r9 + 48]             # lineno
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rbp + -256], rax          # result
                        mov              qword ptr [rbp + -248], rdx;         jmp   n00068_coerce_numeric_α
                        .size            n00067_var_bx, .-n00067_var_bx
                        .type            n00068_coerce_numeric_bx, @function
n00068_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_coerce_numeric_α:  mov              r11, 153
                        mov              eax, dword ptr [rbp + -256]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_441_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_441_0
                        mov              eax, dword ptr [rbp + -272]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_441_0
.Lcoerce_numeric_α_441_1:
                        mov              rax, qword ptr [rbp + -256]
                        mov              qword ptr [rbp + -288], rax
                        mov              rax, qword ptr [rbp + -248]
                        mov              qword ptr [rbp + -280], rax;         jmp   n00069_binop_α
.Lcoerce_numeric_α_441_0:
                        lea              rdi, [rbp + -256]
                        lea              rsi, [rbp + -272]
                        lea              rdx, [rbp + -288]
                        mov              rcx, 4311744614
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:76
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + -288]
                        cmp              al, 104;                             je    n00070_line_mark_α
                                                                              jmp   n00069_binop_α
                        .size            n00068_coerce_numeric_bx, .-n00068_coerce_numeric_bx
                        .type            n00069_binop_bx, @function
n00069_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_binop_α:           mov              r11, 154
                        mov              eax, dword ptr [rbp + -288]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_442_2
                        mov              rax, qword ptr [rbp + -280]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_442_0
                        mov              qword ptr [rbp + -304], 3
                        mov              qword ptr [rbp + -296], rax;         jmp   .Lbinop_α_442_7
.Lbinop_α_442_2:        and              edx, 1;                              jz    .Lbinop_α_442_0
                        mov              rsi, qword ptr [rbp + -280]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_442_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_442_4
.Lbinop_α_442_3:        movq             xmm0, rsi
.Lbinop_α_442_4:        cmp              cl, 5;                               je    .Lbinop_α_442_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_442_6
.Lbinop_α_442_5:        movq             xmm1, rdi
.Lbinop_α_442_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_442_0
                        mov              qword ptr [rbp + -304], 5
                        mov              qword ptr [rbp + -296], rax
.Lbinop_α_442_7:                                                              jmp   n00071_assign_α
.Lbinop_α_442_0:        mov              rdi, qword ptr [rbp + -288]
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:301
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00071_assign_α
                        .size            n00069_binop_bx, .-n00069_binop_bx
                        .type            n00071_assign_bx, @function
n00071_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_assign_α:          mov              r11, 155
                        mov              rax, qword ptr [rbp + -304]
                        mov              rdx, qword ptr [rbp + -296]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_443_0]
                        .section         .rodata
.Lassign_α_443_1_s:     .string          "concord.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_443_1_s]
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
                        add              rsp, 16;                             jmp   n00070_line_mark_α
.Lassign_α_443_0:       .quad            .Lassign_α_443_0_s
.Lassign_α_443_0_s:     .string          "lineno"
                        .size            n00071_assign_bx, .-n00071_assign_bx
                        .type            n00070_line_mark_bx, @function
n00070_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_line_mark_α:       mov              r11, 156
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 96;             jmp   n00072_var_ref_α
                        .size            n00070_line_mark_bx, .-n00070_line_mark_bx
                        .type            n00072_var_ref_bx, @function
n00072_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_var_ref_α:         mov              r11, 157
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # lineno
                        mov              qword ptr [rbp + -432], rax
                        mov              qword ptr [rbp + -424], rdx;         jmp   n00073_lit_integer_α
                        .size            n00072_var_ref_bx, .-n00072_var_ref_bx
                        .type            n00073_lit_integer_bx, @function
n00073_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_lit_integer_α:     mov              r11, 158
                        mov              qword ptr [rbp + -416], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_448_0]
                        mov              qword ptr [rbp + -408], rax;         jmp   n00074_deref_α
.Llit_integer_α_448_0:  .quad            6
                        .size            n00073_lit_integer_bx, .-n00073_lit_integer_bx
                        .type            n00074_deref_bx, @function
n00074_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_deref_α:           mov              r11, 159
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00076_line_mark_α
                        .size            n00074_deref_bx, .-n00074_deref_bx
                        .type            n00076_line_mark_bx, @function
n00076_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_line_mark_α:       mov              r11, 160
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 96;             jmp   n00077_call_icon_α
                        .size            n00076_line_mark_bx, .-n00076_line_mark_bx
                        .type            n00077_call_icon_bx, @function
n00077_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_call_icon_α:       mov              r11, 161
                        mov              rax, qword ptr [rbp + -416]
                        mov              qword ptr [rbp + -464], rax
                        mov              rax, qword ptr [rbp + -408]
                        mov              qword ptr [rbp + -456], rax
                        mov              rax, qword ptr [rbp + -400]
                        mov              qword ptr [rbp + -480], rax
                        mov              rax, qword ptr [rbp + -392]
                        mov              qword ptr [rbp + -472], rax
                        .section         .rodata
.Lcall_icon_α_rkfn453:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn453]
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00078_lit_string_α
n00077_call_icon_β:       mov              r11, 161;                            jmp   n00075_line_mark_α
                        .size            n00077_call_icon_bx, .-n00077_call_icon_bx
                        .type            n00078_lit_string_bx, @function
n00078_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_lit_string_α:      mov              r11, 162
                        mov              qword ptr [rbp + -384], 2            # result
                        mov              dword ptr [rbp + -380], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_454_0]
                        mov              qword ptr [rbp + -376], rax;         jmp   n00079_var_ref_α
.Llit_string_α_454_0:   .quad            .Llit_string_α_454_0_s
.Llit_string_α_454_0_s: .string          "  "
                        .size            n00078_lit_string_bx, .-n00078_lit_string_bx
                        .type            n00079_var_ref_bx, @function
n00079_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_var_ref_α:         mov              r11, 163
                        mov              rax, 4294967336
                        lea              rdx, [rbp + -176]
                        mov              qword ptr [rbp + -352], rax
                        mov              qword ptr [rbp + -344], rdx;         jmp   n00080_deref_α
                        .size            n00079_var_ref_bx, .-n00079_var_ref_bx
                        .type            n00080_deref_bx, @function
n00080_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_deref_α:           mov              r11, 164
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00081_line_mark_α
                        .size            n00080_deref_bx, .-n00080_deref_bx
                        .type            n00081_line_mark_bx, @function
n00081_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_line_mark_α:       mov              r11, 165
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 96;             jmp   n00082_call_icon_α
                        .size            n00081_line_mark_bx, .-n00081_line_mark_bx
                        .type            n00082_call_icon_bx, @function
n00082_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_call_icon_α:       mov              r11, 166
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
.Lcall_icon_α_rkfn461:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn461]
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00075_line_mark_α
n00082_call_icon_β:       mov              r11, 166;                            jmp   n00075_line_mark_α
                        .size            n00082_call_icon_bx, .-n00082_call_icon_bx
                        .type            n00075_line_mark_bx, @function
n00075_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_line_mark_α:       mov              r11, 167
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97;             jmp   n00083_var_ref_α
                        .size            n00075_line_mark_bx, .-n00075_line_mark_bx
                        .type            n00083_var_ref_bx, @function
n00083_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00083_var_ref_α:         mov              r11, 168
                        mov              rax, 4294967336
                        lea              rdx, [rbp + -176]
                        mov              qword ptr [rbp + -624], rax
                        mov              qword ptr [rbp + -616], rdx;         jmp   n00084_deref_α
                        .size            n00083_var_ref_bx, .-n00083_var_ref_bx
                        .type            n00084_deref_bx, @function
n00084_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00084_deref_α:           mov              r11, 169
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00086_line_mark_α
                        .size            n00084_deref_bx, .-n00084_deref_bx
                        .type            n00086_line_mark_bx, @function
n00086_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_line_mark_α:       mov              r11, 170
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97;             jmp   n00087_call_icon_α
                        .size            n00086_line_mark_bx, .-n00086_line_mark_bx
                        .type            n00087_call_icon_bx, @function
n00087_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_call_icon_α:       mov              r11, 171
                        mov              rax, qword ptr [rbp + -608]
                        mov              qword ptr [rbp + -656], rax
                        mov              rax, qword ptr [rbp + -600]
                        mov              qword ptr [rbp + -648], rax
                        .section         .rodata
.Lcall_icon_α_rkfn470:  .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn470]
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00088_assign_α
n00087_call_icon_β:       mov              r11, 171;                            jmp   n00085_line_mark_α
                        .size            n00087_call_icon_bx, .-n00087_call_icon_bx
                        .type            n00088_assign_bx, @function
n00088_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_assign_α:          mov              r11, 172
                        mov              rax, qword ptr [rbp + -672]
                        mov              rdx, qword ptr [rbp + -664]
                        mov              qword ptr [rbp + -176], rax
                        mov              qword ptr [rbp + -168], rdx;         jmp   n00085_line_mark_α
                        .size            n00088_assign_bx, .-n00088_assign_bx
                        .type            n00085_line_mark_bx, @function
n00085_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_line_mark_α:       mov              r11, 173
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 98;             jmp   n00089_lit_integer_α
                        .size            n00085_line_mark_bx, .-n00085_line_mark_bx
                        .type            n00089_lit_integer_bx, @function
n00089_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_lit_integer_α:     mov              r11, 174
                        mov              qword ptr [rbp + -704], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_474_0]
                        mov              qword ptr [rbp + -696], rax;         jmp   n00090_assign_α
.Llit_integer_α_474_0:  .quad            1
                        .size            n00089_lit_integer_bx, .-n00089_lit_integer_bx
                        .type            n00090_assign_bx, @function
n00090_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_assign_α:          mov              r11, 175
                        mov              rax, qword ptr [rbp + -704]
                        mov              rdx, qword ptr [rbp + -696]
                        mov              qword ptr [rbp + -144], rax
                        mov              qword ptr [rbp + -136], rdx;         jmp   n00091_line_mark_α
                        .size            n00090_assign_bx, .-n00090_assign_bx
                        .type            n00091_line_mark_bx, @function
n00091_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_line_mark_α:       mov              r11, 176
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 99;             jmp   n00092_var_α
                        .size            n00091_line_mark_bx, .-n00091_line_mark_bx
                        .type            n00092_var_bx, @function
n00092_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_var_α:             mov              r11, 177
                        mov              rax, qword ptr [rbp + -176]
                        mov              qword ptr [rbp + -736], rax
                        mov              rax, qword ptr [rbp + -168]
                        mov              qword ptr [rbp + -728], rax;         jmp   n00093_scan_enter_α
                        .size            n00092_var_bx, .-n00092_var_bx
                        .type            n00093_scan_enter_bx, @function
n00093_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_scan_enter_α:      mov              r11, 178
                        mov              qword ptr [rbp + -1200], r13
                        mov              qword ptr [rbp + -1192], r14
                        mov              qword ptr [rbp + -1184], r15
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
                        test             rax, rax;                            je    n00062_line_mark_α
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n00094_lit_charset_α
                        .size            n00093_scan_enter_bx, .-n00093_scan_enter_bx
                        .type            n00094_lit_charset_bx, @function
n00094_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_lit_charset_α:     mov              r11, 179
                        mov              qword ptr [rbp + -1056], 2           # result
                        mov              dword ptr [rbp + -1052], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_482_0]
                        mov              qword ptr [rbp + -1048], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_482_0]
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_lit_scalar.cpp:90
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00095_line_mark_α
.Llit_charset_α_482_0:  .quad            .Llit_charset_α_482_0_s
.Llit_charset_α_482_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00094_lit_charset_bx, .-n00094_lit_charset_bx
                        .type            n00095_line_mark_bx, @function
n00095_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_line_mark_α:       mov              r11, 180
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00096_scan_upto_α
                        .size            n00095_line_mark_bx, .-n00095_line_mark_bx
                        .type            n00096_scan_upto_bx, @function
n00096_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_scan_upto_α:       mov              r11, 181
                        mov              qword ptr [rbp + -1088], r14
.Lscan_upto_α_486_0:    mov              rax, qword ptr [rbp + -1088]
                        cmp              rax, r15;                            jge   n00097_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .Lscan_upto_α_486_3]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_upto_α_486_1
                        mov              qword ptr [rbp + -1104], 3
                        add              rax, 1
                        mov              qword ptr [rbp + -1096], rax;        jmp   n00098_line_mark_α
.Lscan_upto_α_486_1:    inc              qword ptr [rbp + -1088];             jmp   .Lscan_upto_α_486_0
n00096_scan_upto_β:       mov              r11, 181
                        inc              qword ptr [rbp + -1088];             jmp   .Lscan_upto_α_486_0
.Lscan_upto_β_486_2:    .quad            .Lscan_upto_β_486_2_s
.Lscan_upto_β_486_2_s:  .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.Lscan_upto_α_486_3:    .quad            0
.Lscan_upto_β_486_4:    .quad            576460743847706622
.Lscan_upto_β_486_5:    .quad            0
.Lscan_upto_β_486_6:    .quad            0
                        .size            n00096_scan_upto_bx, .-n00096_scan_upto_bx
                        .type            n00098_line_mark_bx, @function
n00098_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_line_mark_α:       mov              r11, 182
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00099_scan_tab_α
                        .size            n00098_line_mark_bx, .-n00098_line_mark_bx
                        .type            n00099_scan_tab_bx, @function
n00099_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_scan_tab_α:        mov              r11, 183
                        mov              rdi, qword ptr [rbp + -1104]
                        mov              rsi, qword ptr [rbp + -1096]
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
                        mov              rdi, qword ptr [rbp + -1104]
                        mov              rsi, qword ptr [rbp + -1096]
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
                        cmp              rax, 1;                              jge   .Lscan_tab_α_490_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_490_0:     cmp              rax, 1;                              jl    n00096_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00096_scan_upto_β
                        mov              qword ptr [rbp + -1136], r14
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
                        mov              qword ptr [rbp + -1152], rax
                        mov              qword ptr [rbp + -1144], rdx;        jmp   n00100_line_mark_α
n00099_scan_tab_β:        mov              r11, 183
                        mov              r14, qword ptr [rbp + -1136];        jmp   n00096_scan_upto_β
                        .size            n00099_scan_tab_bx, .-n00099_scan_tab_bx
                        .type            n00100_line_mark_bx, @function
n00100_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00100_line_mark_α:       mov              r11, 184
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 101;            jmp   n00101_lit_charset_α
                        .size            n00100_line_mark_bx, .-n00100_line_mark_bx
                        .type            n00101_lit_charset_bx, @function
n00101_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_lit_charset_α:     mov              r11, 185
                        mov              qword ptr [rbp + -784], 2            # result
                        mov              dword ptr [rbp + -780], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_493_0]
                        mov              qword ptr [rbp + -776], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_493_0]
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_lit_scalar.cpp:90
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00102_line_mark_α
.Llit_charset_α_493_0:  .quad            .Llit_charset_α_493_0_s
.Llit_charset_α_493_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00101_lit_charset_bx, .-n00101_lit_charset_bx
                        .type            n00102_line_mark_bx, @function
n00102_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_line_mark_α:       mov              r11, 186
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 101;            jmp   n00103_scan_many_α
                        .size            n00102_line_mark_bx, .-n00102_line_mark_bx
                        .type            n00103_scan_many_bx, @function
n00103_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_scan_many_α:       mov              r11, 187
                        lea              rdi, [rip + .Lscan_many_α_497_3]
                        mov              eax, r14d
.Lscan_many_α_497_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_497_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_many_α_497_1
                        add              eax, 1;                              jmp   .Lscan_many_α_497_0
.Lscan_many_α_497_1:    cmp              eax, r14d;                           je    n00104_disjunction_α
                        mov              qword ptr [rbp + -816], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + -808], rcx;         jmp   n00105_line_mark_α
n00103_scan_many_β:       mov              r11, 187;                            jmp   n00104_disjunction_α
.Lscan_many_β_497_2:    .quad            .Lscan_many_β_497_2_s
.Lscan_many_β_497_2_s:  .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.Lscan_many_α_497_3:    .quad            0
.Lscan_many_β_497_4:    .quad            576460743847706622
.Lscan_many_β_497_5:    .quad            0
.Lscan_many_β_497_6:    .quad            0
                        .size            n00103_scan_many_bx, .-n00103_scan_many_bx
                        .type            n00105_line_mark_bx, @function
n00105_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00105_line_mark_α:       mov              r11, 188
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 101;            jmp   n00106_scan_tab_α
                        .size            n00105_line_mark_bx, .-n00105_line_mark_bx
                        .type            n00106_scan_tab_bx, @function
n00106_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_scan_tab_α:        mov              r11, 189
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
                        test             eax, eax;                            jz    n00104_disjunction_α
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
                        mov              rdi, qword ptr [rbp + -816]
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
                        cmp              rax, 1;                              jge   .Lscan_tab_α_501_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_501_0:     cmp              rax, 1;                              jl    n00104_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00104_disjunction_α
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
                        mov              qword ptr [rbp + -864], rax
                        mov              qword ptr [rbp + -856], rdx;         jmp   n00107_assign_α
n00106_scan_tab_β:        mov              r11, 189
                        mov              r14, qword ptr [rbp + -848];         jmp   n00104_disjunction_α
                        .size            n00106_scan_tab_bx, .-n00106_scan_tab_bx
                        .type            n00107_assign_bx, @function
n00107_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_assign_α:          mov              r11, 190
                        mov              rax, qword ptr [rbp + -864]
                        mov              rdx, qword ptr [rbp + -856]
                        mov              qword ptr [rbp + -160], rax
                        mov              qword ptr [rbp + -152], rdx;         jmp   n00104_disjunction_α
                        .size            n00107_assign_bx, .-n00107_assign_bx
                        .type            n00104_disjunction_bx, @function
n00104_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_disjunction_α:     mov              r11, 191
                        mov              qword ptr [rbp + -1008], 0
                        mov              qword ptr [rbp + -1000], 0
                        mov              dword ptr [rbp + -992], 0;           jmp   n00108_var_α
.Ldisjunction_γ_417_as: mov              r11, 191
                        mov              eax, dword ptr [rbp + -992]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_504_0
                                                                              jmp   n00109_conjunction_α
.Ldisjunction_α_504_0:                                                        jmp   n00109_conjunction_α
n00104_disjunction_β:     mov              r11, 191
                        mov              eax, dword ptr [rbp + -992];         jmp   n00094_lit_charset_α
.Ldisjunction_γ_417_af: mov              r11, 191
.Ldisjunction_ω_417_af: mov              r11, 191
                        add              dword ptr [rbp + -992], 1
                        mov              eax, dword ptr [rbp + -992];         jmp   n00094_lit_charset_α
                        .size            n00104_disjunction_bx, .-n00104_disjunction_bx
                        .type            n00109_conjunction_bx, @function
n00109_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_conjunction_α:     mov              r11, 192
                        mov              rax, qword ptr [rbp + -1008]
                        mov              qword ptr [rbp + -1024], rax
                        mov              rax, qword ptr [rbp + -1000]
                        mov              qword ptr [rbp + -1016], rax;        jmp   n00094_lit_charset_α
n00109_conjunction_β:     mov              r11, 192;                            jmp   n00094_lit_charset_α
                        .size            n00109_conjunction_bx, .-n00109_conjunction_bx
                        .type            n00108_var_bx, @function
n00108_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00108_var_α:             mov              r11, 193
                        mov              rax, qword ptr [rbp + -160]
                        mov              qword ptr [rbp + -896], rax
                        mov              rax, qword ptr [rbp + -152]
                        mov              qword ptr [rbp + -888], rax;         jmp   n00110_unop_α
n00108_var_β:             mov              r11, 193;                            jmp   .Ldisjunction_ω_417_af
                        .size            n00108_var_bx, .-n00108_var_bx
                        .type            n00110_unop_bx, @function
n00110_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00110_unop_α:            mov              r11, 194
                        mov              rdi, qword ptr [rbp + -160]
                        mov              rsi, qword ptr [rbp + -152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -912], rax
                        mov              qword ptr [rbp + -904], rdx;         jmp   n00111_lit_integer_α
                        .size            n00110_unop_bx, .-n00110_unop_bx
                        .type            n00111_lit_integer_bx, @function
n00111_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00111_lit_integer_α:     mov              r11, 195
                        mov              qword ptr [rbp + -880], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_509_0]
                        mov              qword ptr [rbp + -872], rax;         jmp   n00112_binop_test_α
.Llit_integer_α_509_0:  .quad            3
                        .size            n00111_lit_integer_bx, .-n00111_lit_integer_bx
                        .type            n00112_binop_test_bx, @function
n00112_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_binop_test_α:      mov              r11, 196
                        mov              eax, dword ptr [rbp + -912]
                        cmp              al, 112;                             je    .Lbinop_test_α_510_0
                        mov              eax, dword ptr [rbp + -880]
                        cmp              al, 112;                             je    .Lbinop_test_α_510_0
                        mov              eax, dword ptr [rbp + -912]
                        cmp              al, 3;                               jne   .Lbinop_test_α_510_2
                        mov              eax, dword ptr [rbp + -880]
                        cmp              al, 3;                               jne   .Lbinop_test_α_510_2
.Lbinop_test_α_510_1:   mov              rax, qword ptr [rbp + -904]
                        mov              rcx, qword ptr [rbp + -872]
                        cmp              rax, rcx;                            jl    .Ldisjunction_ω_417_af
                        mov              rcx, qword ptr [rbp + -880]
                        mov              qword ptr [rbp + -928], rcx
                        mov              rcx, qword ptr [rbp + -872]
                        mov              qword ptr [rbp + -920], rcx;         jmp   n00113_var_α
.Lbinop_test_α_510_0:   mov              rdi, qword ptr [rbp + -912]
                        mov              rsi, qword ptr [rbp + -904]
                        mov              rdx, qword ptr [rbp + -880]
                        mov              rcx, qword ptr [rbp + -872]
                        mov              r8d, 8
                        lea              r9, [rbp + -928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_510_2
                        cmp              eax, 1;                              je    .Ldisjunction_ω_417_af
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_relop.cpp:56
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00113_var_α
.Lbinop_test_α_510_2:   mov              rdi, qword ptr [rbp + -912]
                        mov              rsi, qword ptr [rbp + -904]
                        mov              rdx, qword ptr [rbp + -880]
                        mov              rcx, qword ptr [rbp + -872]
                        mov              r8d, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        test             eax, eax;                            jz    .Ldisjunction_ω_417_af
                        mov              rdi, qword ptr [rbp + -912]
                        mov              rsi, qword ptr [rbp + -904]
                        mov              rdx, qword ptr [rbp + -880]
                        mov              rcx, qword ptr [rbp + -872]
                        lea              r8, [rbp + -928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_relop.cpp:79
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00113_var_α
                        .size            n00112_binop_test_bx, .-n00112_binop_test_bx
                        .type            n00113_var_bx, @function
n00113_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00113_var_α:             mov              r11, 197
                        mov              rax, qword ptr [rbp + -160]
                        mov              qword ptr [rbp + -976], rax
                        mov              rax, qword ptr [rbp + -152]
                        mov              qword ptr [rbp + -968], rax;         jmp   n00059_suspend_α
                        .size            n00113_var_bx, .-n00113_var_bx
                        .type            n00059_suspend_bx, @function
n00059_suspend_bx:
#=======================================================================================================================
# suspend
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 102 0
n00059_suspend_α:         mov              r11, 198
                        lea              rax, [rip + n00059_suspend_β]
                        mov              qword ptr [rbp + -192], rax
                        mov              rax, qword ptr [rbp + -976]
                        mov              qword ptr [rbp + -1280], rax
                        mov              rax, qword ptr [rbp + -968]
                        mov              qword ptr [rbp + -1272], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        push             rdx
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        lea              rdi, [rip + .S0]
                        mov              rsi, qword ptr [rbp + -1280]
                        mov              rdx, qword ptr [rbp + -1272]
                        mov              rcx, 102
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_suspend_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rsp, qword ptr [rsp + 0]
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_suspend.cpp:36
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00114_scan_α
n00059_suspend_β:         mov              r11, 198
                        push             rax
                        push             rdx
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        lea              rdi, [rip + .S0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_resume_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_suspend.cpp:42
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rsp, qword ptr [rsp + 0]
                        pop              rdx
                        pop              rax
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
                        pop              rax;                                 jmp   n00114_scan_β
                        .size            n00059_suspend_bx, .-n00059_suspend_bx
                        .type            n00114_scan_bx, @function
n00114_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00114_scan_α:            mov              r11, 199
                        mov              qword ptr [rbp + -944], r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_live_subj@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -936], rax
                        mov              rdi, qword ptr [rbp + -1200]
                        mov              rsi, qword ptr [rbp + -1192]
                        mov              rdx, qword ptr [rbp + -1184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + -1200]
                        mov              r14, qword ptr [rbp + -1192]
                        mov              r15, qword ptr [rbp + -1184];        jmp   item_γ
n00114_scan_β:            mov              r11, 199
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -1192], rax
                        mov              rdi, qword ptr [rbp + -936]
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
                        mov              r14, qword ptr [rbp + -944]
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00104_disjunction_β
                                                                              jmp   .Ldisjunction_ω_417_af
                        .size            n00114_scan_bx, .-n00114_scan_bx
                        .type            n00097_scan_bx, @function
n00097_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00097_scan_α:            mov              r11, 200
                        mov              rdi, qword ptr [rbp + -1200]
                        mov              rsi, qword ptr [rbp + -1192]
                        mov              rdx, qword ptr [rbp + -1184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + -1200]
                        mov              r14, qword ptr [rbp + -1192]
                        mov              r15, qword ptr [rbp + -1184];        jmp   n00062_line_mark_α
n00097_scan_β:            mov              r11, 200;                            jmp   n00062_line_mark_α
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
                        push             rax
                        push             rdx
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Litem_α_518_240
                        .section         .rodata
.Licn_trace_nm519:      .string          "item"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm519]
                        mov              rsi, rbp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_gen_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll emit.cpp:2921
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Litem_α_518_240:       mov              rsp, qword ptr [rsp + 0]
                        pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rbp + 8]
                        mov              rsp, qword ptr [rbp + 24]
                        mov              rbp, qword ptr [rbp + 0]
                        mov              eax, 104;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_item:
                        .quad            5498904595802
                        .quad            42949673104
                        .quad            .Lgcmap_item_s
                        .quad            1152
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
                        .quad            87960930222432
                        .quad            17596481012144
                        .quad            703687441777088
                        .quad            8808977925184
                        .quad            8800387990600
                        .quad            52776558134352
.Lgcmap_item_s:         .string          "item"
#-----------------------------------------------------------------------------------------------------------------------
FN__options:
                        sub              rsp, 3712
                        lea              rax, [rip + .Lgcmap_options]
                        mov              qword ptr [rsp + 3496], rax
                        mov              dword ptr [rsp + 3488], 160
                        mov              dword ptr [rsp + 3492], 3712
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
                        push             rax
                        push             rdx
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        .section         .rodata
.Licn_trace_nm520:      .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm520]
                        mov              esi, 2
                        lea              rdx, [r11 + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll emit.cpp:2921
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Loptions_α_518_247:    mov              rsp, qword ptr [rsp + 0]
                        pop              rdx
                        pop              rax
options_α_body:
                        .type            n00115_line_mark_bx, @function
n00115_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00115_line_mark_α:       mov              r11, 201
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 111
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_678_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00116_line_mark_α
.Lline_mark_α_678_0:    .quad            .Lline_mark_α_678_0_s
.Lline_mark_α_678_0_s:  .string          "concord.icn"
                        .size            n00115_line_mark_bx, .-n00115_line_mark_bx
                        .type            n00116_line_mark_bx, @function
n00116_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00116_line_mark_α:       mov              r11, 202
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 112;            jmp   n00117_var_ref_α
                        .size            n00116_line_mark_bx, .-n00116_line_mark_bx
                        .type            n00117_var_ref_bx, @function
n00117_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n00118_nulltest_var_α
                        .size            n00117_var_ref_bx, .-n00117_var_ref_bx
                        .type            n00118_nulltest_var_bx, @function
n00118_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_nulltest_var_α:    mov              r11, 204
                        mov              eax, dword ptr [rbp + 3184]
                        cmp              al, 104;                             je    n00119_line_mark_α
                        mov              rdi, qword ptr [rbp + 3184]
                        mov              rsi, qword ptr [rbp + 3192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00119_line_mark_α
                        cmp              eax, 0;                              jne   n00119_line_mark_α
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3208], rax
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_unop.cpp:55
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00120_lit_charset_α
                        .size            n00118_nulltest_var_bx, .-n00118_nulltest_var_bx
                        .type            n00120_lit_charset_bx, @function
n00120_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_lit_charset_α:     mov              r11, 205
                        mov              qword ptr [rbp + 3280], 2            # result
                        mov              dword ptr [rbp + 3284], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_684_0]
                        mov              qword ptr [rbp + 3288], rax
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_lit_scalar.cpp:90
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00121_line_mark_α
.Llit_charset_α_684_0:  .quad            .Llit_charset_α_684_0_s
.Llit_charset_α_684_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00120_lit_charset_bx, .-n00120_lit_charset_bx
                        .type            n00121_line_mark_bx, @function
n00121_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_line_mark_α:       mov              r11, 206
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 112;            jmp   n00122_call_icon_α
                        .size            n00121_line_mark_bx, .-n00121_line_mark_bx
                        .type            n00122_call_icon_bx, @function
n00122_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_call_icon_α:       mov              r11, 207
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3256], rax
                        .section         .rodata
.Lcall_icon_α_rkfn688:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn688]
                        lea              rsi, [rbp + 3248]
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
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              al, 104;                             je    n00119_line_mark_α
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00123_assign_var_α
n00122_call_icon_β:       mov              r11, 207;                            jmp   n00119_line_mark_α
                        .size            n00122_call_icon_bx, .-n00122_call_icon_bx
                        .type            n00123_assign_var_bx, @function
n00123_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00123_assign_var_α:      mov              r11, 208
                        mov              rdi, qword ptr [rbp + 3200]
                        mov              rsi, qword ptr [rbp + 3208]
                        mov              rdx, qword ptr [rbp + 3232]
                        mov              rcx, qword ptr [rbp + 3240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00119_line_mark_α
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var.cpp:47
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00119_line_mark_α
                        .size            n00123_assign_var_bx, .-n00123_assign_var_bx
                        .type            n00119_line_mark_bx, @function
n00119_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00119_line_mark_α:       mov              r11, 209
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 113;            jmp   n00124_line_mark_α
                        .size            n00119_line_mark_bx, .-n00119_line_mark_bx
                        .type            n00124_line_mark_bx, @function
n00124_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_line_mark_α:       mov              r11, 210
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 113;            jmp   n00125_call_icon_α
                        .size            n00124_line_mark_bx, .-n00124_line_mark_bx
                        .type            n00125_call_icon_bx, @function
n00125_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_call_icon_α:       mov              r11, 211
                        .section         .rodata
.Lcall_icon_α_rkfn695:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn695]
                        lea              rsi, [rbp + 3152]
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
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                        cmp              al, 104;                             je    n00126_line_mark_α
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00127_assign_α
n00125_call_icon_β:       mov              r11, 211;                            jmp   n00126_line_mark_α
                        .size            n00125_call_icon_bx, .-n00125_call_icon_bx
                        .type            n00127_assign_bx, @function
n00127_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_assign_α:          mov              r11, 212
                        mov              rax, qword ptr [rbp + 3136]
                        mov              rdx, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx;         jmp   n00126_line_mark_α
                        .size            n00127_assign_bx, .-n00127_assign_bx
                        .type            n00126_line_mark_bx, @function
n00126_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_line_mark_α:       mov              r11, 213
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 114;            jmp   n00128_make_list_α
                        .size            n00126_line_mark_bx, .-n00126_line_mark_bx
                        .type            n00128_make_list_bx, @function
n00128_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00128_make_list_α:       mov              r11, 214
                        lea              rdi, [rbp + 3120]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_make_list.cpp:57
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00129_assign_α
                        .size            n00128_make_list_bx, .-n00128_make_list_bx
                        .type            n00129_assign_bx, @function
n00129_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00129_assign_α:          mov              r11, 215
                        mov              rax, qword ptr [rbp + 3104]
                        mov              rdx, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx;         jmp   n00130_line_mark_α
                        .size            n00129_assign_bx, .-n00129_assign_bx
                        .type            n00130_line_mark_bx, @function
n00130_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00130_line_mark_α:       mov              r11, 216
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00131_var_ref_α
                        .size            n00130_line_mark_bx, .-n00130_line_mark_bx
                        .type            n00131_var_ref_bx, @function
n00131_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00131_var_ref_α:         mov              r11, 217
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00132_deref_α
                        .size            n00131_var_ref_bx, .-n00131_var_ref_bx
                        .type            n00132_deref_bx, @function
n00132_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00132_deref_α:           mov              r11, 218
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
                        cmp              al, 104;                             je    n00133_line_mark_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00134_line_mark_α
                        .size            n00132_deref_bx, .-n00132_deref_bx
                        .type            n00134_line_mark_bx, @function
n00134_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00134_line_mark_α:       mov              r11, 219
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00135_call_icon_α
                        .size            n00134_line_mark_bx, .-n00134_line_mark_bx
                        .type            n00135_call_icon_bx, @function
n00135_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_call_icon_α:       mov              r11, 220
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
                        cmp              al, 104;                             je    n00133_line_mark_α
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00136_assign_α
n00135_call_icon_β:       mov              r11, 220;                            jmp   n00133_line_mark_α
                        .size            n00135_call_icon_bx, .-n00135_call_icon_bx
                        .type            n00136_assign_bx, @function
n00136_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00136_assign_α:          mov              r11, 221
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx;         jmp   n00137_var_α
                        .size            n00136_assign_bx, .-n00136_assign_bx
                        .type            n00137_var_bx, @function
n00137_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_var_α:             mov              r11, 222
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3080], rax;         jmp   n00138_scan_enter_α
                        .size            n00137_var_bx, .-n00137_var_bx
                        .type            n00138_scan_enter_bx, @function
n00138_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_scan_enter_α:      mov              r11, 223
                        mov              qword ptr [rbp + 400], r13
                        mov              qword ptr [rbp + 408], r14
                        mov              qword ptr [rbp + 416], r15
                        mov              rdi, qword ptr [rbp + 3072]
                        mov              rsi, qword ptr [rbp + 3080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        test             rax, rax;                            je    n00131_var_ref_α
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n00139_disjunction_α
                        .size            n00138_scan_enter_bx, .-n00138_scan_enter_bx
                        .type            n00139_disjunction_bx, @function
n00139_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00139_disjunction_α:     mov              r11, 224
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              dword ptr [rbp + 480], 0;            jmp   n00140_lit_string_α
.Ldisjunction_γ_544_as: mov              r11, 224
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_717_0
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 472], rax;          jmp   n00141_scan_α
.Ldisjunction_α_717_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_717_1
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 472], rax;          jmp   n00141_scan_α
.Ldisjunction_α_717_1:                                                        jmp   n00141_scan_α
n00139_disjunction_β:     mov              r11, 224
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0;                              je    n00142_disjunction_β
                                                                              jmp   n00143_scan_α
.Ldisjunction_γ_544_af: mov              r11, 224
.Ldisjunction_ω_544_af: mov              r11, 224
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 1;                              je    n00144_var_ref_α
                                                                              jmp   n00143_scan_α
                        .size            n00139_disjunction_bx, .-n00139_disjunction_bx
                        .type            n00141_scan_bx, @function
n00141_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00141_scan_α:            mov              r11, 225
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
                        mov              r15, qword ptr [rbp + 416];          jmp   n00131_var_ref_α
n00141_scan_β:            mov              r11, 225
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
                        mov              r14, rax;                            jmp   n00139_disjunction_β
                                                                              jmp   n00131_var_ref_α
                        .size            n00141_scan_bx, .-n00141_scan_bx
                        .type            n00145_conjunction_bx, @function
n00145_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00145_conjunction_α:     mov              r11, 226;                            jmp   .Ldisjunction_γ_544_as
n00145_conjunction_β:     mov              r11, 226;                            jmp   n00143_scan_α
                        .size            n00145_conjunction_bx, .-n00145_conjunction_bx
                        .type            n00144_var_ref_bx, @function
n00144_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx;         jmp   n00146_var_ref_α
n00144_var_ref_β:         mov              r11, 227;                            jmp   n00143_scan_α
                        .size            n00144_var_ref_bx, .-n00144_var_ref_bx
                        .type            n00146_var_ref_bx, @function
n00146_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_var_ref_α:         mov              r11, 228
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3392]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx;         jmp   n00147_deref_α
                        .size            n00146_var_ref_bx, .-n00146_var_ref_bx
                        .type            n00147_deref_bx, @function
n00147_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_deref_α:           mov              r11, 229
                        mov              rdi, qword ptr [rbp + 3008]
                        mov              rsi, qword ptr [rbp + 3016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00143_scan_α
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00148_deref_α
                        .size            n00147_deref_bx, .-n00147_deref_bx
                        .type            n00148_deref_bx, @function
n00148_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_deref_α:           mov              r11, 230
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
                        cmp              al, 104;                             je    n00143_scan_α
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00149_line_mark_α
                        .size            n00148_deref_bx, .-n00148_deref_bx
                        .type            n00149_line_mark_bx, @function
n00149_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00149_line_mark_α:       mov              r11, 231
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 136;            jmp   n00150_call_icon_α
                        .size            n00149_line_mark_bx, .-n00149_line_mark_bx
                        .type            n00150_call_icon_bx, @function
n00150_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00150_call_icon_α:       mov              r11, 232
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 2984], rax
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 2968], rax
                        .section         .rodata
.Lcall_icon_α_rkfn730:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn730]
                        lea              rsi, [rbp + 2960]
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
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              al, 104;                             je    n00143_scan_α
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldisjunction_γ_544_as
n00150_call_icon_β:       mov              r11, 232;                            jmp   n00143_scan_α
                        .size            n00150_call_icon_bx, .-n00150_call_icon_bx
                        .type            n00140_lit_string_bx, @function
n00140_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_lit_string_α:      mov              r11, 233
                        mov              qword ptr [rbp + 2912], 2            # result
                        mov              dword ptr [rbp + 2916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_731_0]
                        mov              qword ptr [rbp + 2920], rax;         jmp   n00151_scan_match_α
n00140_lit_string_β:      mov              r11, 233;                            jmp   .Ldisjunction_ω_544_af
.Llit_string_α_731_0:   .quad            .Llit_string_α_731_0_s
.Llit_string_α_731_0_s: .string          "-"
                        .size            n00140_lit_string_bx, .-n00140_lit_string_bx
                        .type            n00151_scan_match_bx, @function
n00151_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00151_scan_match_α:      mov              r11, 234
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_544_af
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_544_af
                        mov              qword ptr [rbp + 2880], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2888], rax;         jmp   n00152_scan_tab_α
.Lscan_match_α_733_0:   .quad            .Lscan_match_α_733_0_s
.Lscan_match_α_733_0_s: .string          "-"
                        .size            n00151_scan_match_bx, .-n00151_scan_match_bx
                        .type            n00152_scan_tab_bx, @function
n00152_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_scan_tab_α:        mov              r11, 235
                        mov              rdi, qword ptr [rbp + 2880]
                        mov              rsi, qword ptr [rbp + 2888]
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
                        test             eax, eax;                            jz    .Ldisjunction_ω_544_af
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
                        mov              rdi, qword ptr [rbp + 2880]
                        mov              rsi, qword ptr [rbp + 2888]
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
                        cmp              rax, 1;                              jge   .Lscan_tab_α_735_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_735_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_544_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_544_af
                        mov              qword ptr [rbp + 2864], r14
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
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx;         jmp   n00153_lit_integer_α
n00152_scan_tab_β:        mov              r11, 235
                        mov              r14, qword ptr [rbp + 2864];         jmp   .Ldisjunction_ω_544_af
                        .size            n00152_scan_tab_bx, .-n00152_scan_tab_bx
                        .type            n00153_lit_integer_bx, @function
n00153_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00153_lit_integer_α:     mov              r11, 236
                        mov              qword ptr [rbp + 2832], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_736_0]
                        mov              qword ptr [rbp + 2840], rax;         jmp   n00154_line_mark_α
.Llit_integer_α_736_0:  .quad            0
                        .size            n00153_lit_integer_bx, .-n00153_lit_integer_bx
                        .type            n00154_line_mark_bx, @function
n00154_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_line_mark_α:       mov              r11, 237
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 117;            jmp   n00155_scan_pos_α
                        .size            n00154_line_mark_bx, .-n00154_line_mark_bx
                        .type            n00155_scan_pos_bx, @function
n00155_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_scan_pos_α:        mov              r11, 238
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_740_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_740_0:     cmp              rax, 1;                              jl    n00156_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00156_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00156_var_α
                        mov              qword ptr [rbp + 2800], 3
                        mov              qword ptr [rbp + 2808], rax;         jmp   n00152_scan_tab_β
                        .size            n00155_scan_pos_bx, .-n00155_scan_pos_bx
                        .type            n00156_var_bx, @function
n00156_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_var_α:             mov              r11, 239
                        mov              qword ptr [rbp + 2784], 0
                        mov              qword ptr [rbp + 2792], 0;           jmp   n00157_conjunction_α
n00156_var_β:             mov              r11, 239;                            jmp   n00152_scan_tab_β
                        .size            n00156_var_bx, .-n00156_var_bx
                        .type            n00157_conjunction_bx, @function
n00157_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00157_conjunction_α:     mov              r11, 240
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2776], rax;         jmp   n00158_line_mark_α
n00157_conjunction_β:     mov              r11, 240;                            jmp   .Ldisjunction_ω_544_af
                        .size            n00157_conjunction_bx, .-n00157_conjunction_bx
                        .type            n00158_line_mark_bx, @function
n00158_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_line_mark_α:       mov              r11, 241
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00159_disjunction_α
                        .size            n00158_line_mark_bx, .-n00158_line_mark_bx
                        .type            n00159_disjunction_bx, @function
n00159_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_disjunction_α:     mov              r11, 242
                        mov              qword ptr [rbp + 2528], 0
                        mov              qword ptr [rbp + 2536], 0
                        mov              dword ptr [rbp + 2544], 0;           jmp   n00160_lit_string_α
.Ldisjunction_γ_562_as: mov              r11, 242
                        mov              eax, dword ptr [rbp + 2544]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_746_0
                                                                              jmp   n00161_line_mark_α
.Ldisjunction_α_746_0:                                                        jmp   n00161_line_mark_α
n00159_disjunction_β:     mov              r11, 242
                        mov              eax, dword ptr [rbp + 2544];         jmp   n00161_line_mark_α
.Ldisjunction_γ_562_af: mov              r11, 242
.Ldisjunction_ω_562_af: mov              r11, 242
                        add              dword ptr [rbp + 2544], 1
                        mov              eax, dword ptr [rbp + 2544];         jmp   n00161_line_mark_α
                        .size            n00159_disjunction_bx, .-n00159_disjunction_bx
                        .type            n00161_line_mark_bx, @function
n00161_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_line_mark_α:       mov              r11, 243
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 119;            jmp   n00162_lit_integer_α
                        .size            n00161_line_mark_bx, .-n00161_line_mark_bx
                        .type            n00162_lit_integer_bx, @function
n00162_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00162_lit_integer_α:     mov              r11, 244
                        mov              qword ptr [rbp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_749_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n00163_line_mark_α
.Llit_integer_α_749_0:  .quad            1
                        .size            n00162_lit_integer_bx, .-n00162_lit_integer_bx
                        .type            n00163_line_mark_bx, @function
n00163_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_line_mark_α:       mov              r11, 245
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 119;            jmp   n00164_scan_move_α
                        .size            n00163_line_mark_bx, .-n00163_line_mark_bx
                        .type            n00164_scan_move_bx, @function
n00164_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00164_scan_move_α:       mov              r11, 246
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n00143_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00143_scan_α
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
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n00165_assign_α
n00164_scan_move_β:       mov              r11, 246
                        mov              r14, qword ptr [rbp + 544];          jmp   n00143_scan_α
                        .size            n00164_scan_move_bx, .-n00164_scan_move_bx
                        .type            n00165_assign_bx, @function
n00165_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_assign_α:          mov              r11, 247
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx;         jmp   n00142_disjunction_α
                        .size            n00165_assign_bx, .-n00165_assign_bx
                        .type            n00142_disjunction_bx, @function
n00142_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_disjunction_α:     mov              r11, 248
                        mov              qword ptr [rbp + 592], 0
                        mov              qword ptr [rbp + 600], 0
                        mov              dword ptr [rbp + 608], 0;            jmp   n00166_var_ref_α
.Ldisjunction_γ_568_as: mov              r11, 248
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_756_0
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00162_lit_integer_α
.Ldisjunction_α_756_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_756_1
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00162_lit_integer_α
.Ldisjunction_α_756_1:                                                        jmp   n00162_lit_integer_α
n00142_disjunction_β:     mov              r11, 248
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0;                              je    n00167_disjunction_β
                                                                              jmp   n00162_lit_integer_α
.Ldisjunction_γ_568_af: mov              r11, 248
.Ldisjunction_ω_568_af: mov              r11, 248
                        add              dword ptr [rbp + 608], 1
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 1;                              je    n00168_lit_string_α
                                                                              jmp   n00162_lit_integer_α
                        .size            n00142_disjunction_bx, .-n00142_disjunction_bx
                        .type            n00168_lit_string_bx, @function
n00168_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00168_lit_string_α:      mov              r11, 249
                        mov              qword ptr [rbp + 2448], 2            # result
                        mov              dword ptr [rbp + 2452], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_757_0]
                        mov              qword ptr [rbp + 2456], rax;         jmp   n00169_var_ref_α
n00168_lit_string_β:      mov              r11, 249;                            jmp   n00162_lit_integer_α
.Llit_string_α_757_0:   .quad            .Llit_string_α_757_0_s
.Llit_string_α_757_0_s: .string          "Unrecognized option: -"
                        .size            n00168_lit_string_bx, .-n00168_lit_string_bx
                        .type            n00169_var_ref_bx, @function
n00169_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_var_ref_α:         mov              r11, 250
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx;         jmp   n00170_deref_α
                        .size            n00169_var_ref_bx, .-n00169_var_ref_bx
                        .type            n00170_deref_bx, @function
n00170_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00170_deref_α:           mov              r11, 251
                        mov              rdi, qword ptr [rbp + 2480]
                        mov              rsi, qword ptr [rbp + 2488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00162_lit_integer_α
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00171_line_mark_α
                        .size            n00170_deref_bx, .-n00170_deref_bx
                        .type            n00171_line_mark_bx, @function
n00171_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_line_mark_α:       mov              r11, 252
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 134;            jmp   n00172_call_icon_α
                        .size            n00171_line_mark_bx, .-n00171_line_mark_bx
                        .type            n00172_call_icon_bx, @function
n00172_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_call_icon_α:       mov              r11, 253
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2408], rax
                        .section         .rodata
.Lcall_icon_α_rkfn764:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn764]
                        lea              rsi, [rbp + 2400]
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
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              al, 104;                             je    n00162_lit_integer_α
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldisjunction_γ_568_as
n00172_call_icon_β:       mov              r11, 253;                            jmp   n00162_lit_integer_α
                        .size            n00172_call_icon_bx, .-n00172_call_icon_bx
                        .type            n00166_var_ref_bx, @function
n00166_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00166_var_ref_α:         mov              r11, 254
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n00173_var_ref_α
n00166_var_ref_β:         mov              r11, 254;                            jmp   .Ldisjunction_ω_568_af
                        .size            n00166_var_ref_bx, .-n00166_var_ref_bx
                        .type            n00173_var_ref_bx, @function
n00173_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00173_var_ref_α:         mov              r11, 255
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx;         jmp   n00174_deref_α
                        .size            n00173_var_ref_bx, .-n00173_var_ref_bx
                        .type            n00174_deref_bx, @function
n00174_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00174_deref_α:           mov              r11, 256
                        mov              rdi, qword ptr [rbp + 2304]
                        mov              rsi, qword ptr [rbp + 2312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_568_af
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00175_deref_α
                        .size            n00174_deref_bx, .-n00174_deref_bx
                        .type            n00175_deref_bx, @function
n00175_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_deref_α:           mov              r11, 257
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_568_af
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00176_line_mark_α
                        .size            n00175_deref_bx, .-n00175_deref_bx
                        .type            n00176_line_mark_bx, @function
n00176_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_line_mark_α:       mov              r11, 258
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 120;            jmp   n00177_call_builtin_gen_α
                        .size            n00176_line_mark_bx, .-n00176_line_mark_bx
                        .type            n00177_call_builtin_gen_bx, @function
n00177_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00177_call_builtin_gen_α:
                        mov              r11, 259
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2248], rax
                        mov              qword ptr [rbp + 2272], 0
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
.Lcall_builtin_gen_α_bynamegenfn259: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_gen_α_bynamegenfn259]
                        lea              rsi, [rbp + 2240]
                        mov              edx, 2
                        lea              rcx, [rbp + 2272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen_strict@PLT
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_568_af
                                                                              jmp   n00178_lit_integer_α
n00177_call_builtin_gen_β:
                        mov              r11, 259;                            jmp   .Lcall_builtin_gen_α_773_60
                        .size            n00177_call_builtin_gen_bx, .-n00177_call_builtin_gen_bx
                        .type            n00178_lit_integer_bx, @function
n00178_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00178_lit_integer_α:     mov              r11, 260
                        mov              qword ptr [rbp + 2368], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_774_0]
                        mov              qword ptr [rbp + 2376], rax;         jmp   n00179_coerce_numeric_α
.Llit_integer_α_774_0:  .quad            1
                        .size            n00178_lit_integer_bx, .-n00178_lit_integer_bx
                        .type            n00179_coerce_numeric_bx, @function
n00179_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_coerce_numeric_α:  mov              r11, 261
                        mov              eax, dword ptr [rbp + 2224]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_776_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_776_0
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_776_0
.Lcoerce_numeric_α_776_1:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2216], rax;         jmp   n00180_binop_α
.Lcoerce_numeric_α_776_0:
                        lea              rdi, [rbp + 2224]
                        lea              rsi, [rbp + 2368]
                        lea              rdx, [rbp + 2208]
                        mov              rcx, 4311744614
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:76
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 2208]
                        cmp              al, 104;                             je    .Ldisjunction_ω_568_af
                                                                              jmp   n00180_binop_α
                        .size            n00179_coerce_numeric_bx, .-n00179_coerce_numeric_bx
                        .type            n00180_binop_bx, @function
n00180_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_binop_α:           mov              r11, 262
                        mov              eax, dword ptr [rbp + 2208]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_777_2
                        mov              rax, qword ptr [rbp + 2216]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_777_0
                        mov              qword ptr [rbp + 2192], 3
                        mov              qword ptr [rbp + 2200], rax;         jmp   .Lbinop_α_777_7
.Lbinop_α_777_2:        and              edx, 1;                              jz    .Lbinop_α_777_0
                        mov              rsi, qword ptr [rbp + 2216]
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
                        mov              qword ptr [rbp + 2192], 5
                        mov              qword ptr [rbp + 2200], rax
.Lbinop_α_777_7:                                                              jmp   n00181_assign_α
.Lbinop_α_777_0:        mov              rdi, qword ptr [rbp + 2208]
                        mov              rsi, qword ptr [rbp + 2216]
                        mov              rdx, qword ptr [rbp + 2368]
                        mov              rcx, qword ptr [rbp + 2376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_568_af
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:301
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00181_assign_α
                        .size            n00180_binop_bx, .-n00180_binop_bx
                        .type            n00181_assign_bx, @function
n00181_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00181_assign_α:          mov              r11, 263
                        mov              rax, qword ptr [rbp + 2192]
                        mov              rdx, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx;         jmp   n00182_var_ref_α
                        .size            n00181_assign_bx, .-n00181_assign_bx
                        .type            n00182_var_ref_bx, @function
n00182_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_var_ref_α:         mov              r11, 264
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3344]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00183_var_α
                        .size            n00182_var_ref_bx, .-n00182_var_ref_bx
                        .type            n00183_var_bx, @function
n00183_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_var_α:             mov              r11, 265
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 648], rax;          jmp   n00184_subscript_α
                        .size            n00183_var_bx, .-n00183_var_bx
                        .type            n00184_subscript_bx, @function
n00184_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00184_subscript_α:       mov              r11, 266
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
                        cmp              al, 104;                             je    n00162_lit_integer_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:52
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00167_disjunction_α
                        .size            n00184_subscript_bx, .-n00184_subscript_bx
                        .type            n00167_disjunction_bx, @function
n00167_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00167_disjunction_α:     mov              r11, 267
                        mov              qword ptr [rbp + 688], 0
                        mov              qword ptr [rbp + 696], 0
                        mov              dword ptr [rbp + 704], 0;            jmp   n00185_lit_charset_α
.Ldisjunction_γ_587_as: mov              r11, 267
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_785_0
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 696], rax;          jmp   n00186_assign_var_α
.Ldisjunction_α_785_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_785_1
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 696], rax;          jmp   n00186_assign_var_α
.Ldisjunction_α_785_1:                                                        jmp   n00186_assign_var_α
n00167_disjunction_β:     mov              r11, 267
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 0;                              je    n00162_lit_integer_α
                                                                              jmp   n00162_lit_integer_α
.Ldisjunction_γ_587_af: mov              r11, 267
.Ldisjunction_ω_587_af: mov              r11, 267
                        add              dword ptr [rbp + 704], 1
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 1;                              je    n00187_lit_integer_α
                                                                              jmp   n00162_lit_integer_α
                        .size            n00167_disjunction_bx, .-n00167_disjunction_bx
                        .type            n00186_assign_var_bx, @function
n00186_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_assign_var_α:      mov              r11, 268
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
                        cmp              al, 104;                             je    n00162_lit_integer_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var.cpp:47
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldisjunction_γ_568_as
n00186_assign_var_β:      mov              r11, 268;                            jmp   n00162_lit_integer_α
                        .size            n00186_assign_var_bx, .-n00186_assign_var_bx
                        .type            n00187_lit_integer_bx, @function
n00187_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00187_lit_integer_α:     mov              r11, 269
                        mov              qword ptr [rbp + 2176], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_787_0]
                        mov              qword ptr [rbp + 2184], rax;         jmp   .Ldisjunction_γ_587_as
n00187_lit_integer_β:     mov              r11, 269;                            jmp   n00162_lit_integer_α
.Llit_integer_α_787_0:  .quad            1
                        .size            n00187_lit_integer_bx, .-n00187_lit_integer_bx
                        .type            n00185_lit_charset_bx, @function
n00185_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_lit_charset_α:     mov              r11, 270
                        mov              qword ptr [rbp + 2048], 2            # result
                        mov              dword ptr [rbp + 2052], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_788_0]
                        mov              qword ptr [rbp + 2056], rax
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_lit_scalar.cpp:90
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00188_var_ref_α
n00185_lit_charset_β:     mov              r11, 270;                            jmp   .Ldisjunction_ω_587_af
.Llit_charset_α_788_0:  .quad            .Llit_charset_α_788_0_s
.Llit_charset_α_788_0_s:
                        .string          "+.:"
                        .size            n00185_lit_charset_bx, .-n00185_lit_charset_bx
                        .type            n00188_var_ref_bx, @function
n00188_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_var_ref_α:         mov              r11, 271
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx;         jmp   n00189_var_α
                        .size            n00188_var_ref_bx, .-n00188_var_ref_bx
                        .type            n00189_var_bx, @function
n00189_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00189_var_α:             mov              r11, 272
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 2104], rax;         jmp   n00190_subscript_α
                        .size            n00189_var_bx, .-n00189_var_bx
                        .type            n00190_subscript_bx, @function
n00190_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_subscript_α:       mov              r11, 273
                        mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              rdx, qword ptr [rbp + 2096]
                        mov              rcx, qword ptr [rbp + 2104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_587_af
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:52
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00191_deref_α
                        .size            n00190_subscript_bx, .-n00190_subscript_bx
                        .type            n00191_deref_bx, @function
n00191_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00191_deref_α:           mov              r11, 274
                        mov              rdi, qword ptr [rbp + 2112]
                        mov              rsi, qword ptr [rbp + 2120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_587_af
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00192_assign_α
                        .size            n00191_deref_bx, .-n00191_deref_bx
                        .type            n00192_assign_bx, @function
n00192_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_assign_α:          mov              r11, 275
                        mov              rax, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx;         jmp   n00193_var_ref_α
                        .size            n00192_assign_bx, .-n00192_assign_bx
                        .type            n00193_var_ref_bx, @function
n00193_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_var_ref_α:         mov              r11, 276
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx;         jmp   n00194_deref_α
                        .size            n00193_var_ref_bx, .-n00193_var_ref_bx
                        .type            n00194_deref_bx, @function
n00194_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_deref_α:           mov              r11, 277
                        mov              rdi, qword ptr [rbp + 2144]
                        mov              rsi, qword ptr [rbp + 2152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_587_af
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00195_line_mark_α
                        .size            n00194_deref_bx, .-n00194_deref_bx
                        .type            n00195_line_mark_bx, @function
n00195_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00195_line_mark_α:       mov              r11, 278
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 122;            jmp   n00196_call_icon_α
                        .size            n00195_line_mark_bx, .-n00195_line_mark_bx
                        .type            n00196_call_icon_bx, @function
n00196_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_call_icon_α:       mov              r11, 279
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2008], rax
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
.Lcall_icon_α_bynamefn279: .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_bynamefn279]
                        lea              rsi, [rbp + 2000]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196712
                        call             rt_call_arr_bl_strict@PLT
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_587_af
                                                                              jmp   n00197_line_mark_α
n00196_call_icon_β:       mov              r11, 279;                            jmp   .Ldisjunction_ω_587_af
                        .size            n00196_call_icon_bx, .-n00196_call_icon_bx
                        .type            n00197_line_mark_bx, @function
n00197_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_line_mark_α:       mov              r11, 280
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00198_disjunction_α
                        .size            n00197_line_mark_bx, .-n00197_line_mark_bx
                        .type            n00198_disjunction_bx, @function
n00198_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_disjunction_α:     mov              r11, 281
                        mov              qword ptr [rbp + 1616], 0
                        mov              qword ptr [rbp + 1624], 0
                        mov              dword ptr [rbp + 1632], 0;           jmp   n00199_lit_string_α
.Ldisjunction_γ_601_as: mov              r11, 281
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_805_0
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n00200_assign_α
.Ldisjunction_α_805_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_805_1
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n00200_assign_α
.Ldisjunction_α_805_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_805_2
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n00200_assign_α
.Ldisjunction_α_805_2:                                                        jmp   n00200_assign_α
n00198_disjunction_β:     mov              r11, 281
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 0;                              je    n00201_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_601_af
                                                                              jmp   .Ldisjunction_ω_601_af
.Ldisjunction_γ_601_af: mov              r11, 281
.Ldisjunction_ω_601_af: mov              r11, 281
                        add              dword ptr [rbp + 1632], 1
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 1;                              je    n00202_var_ref_α
                        cmp              eax, 2;                              je    n00203_lit_string_α
                                                                              jmp   n00204_line_mark_α
                        .size            n00198_disjunction_bx, .-n00198_disjunction_bx
                        .type            n00200_assign_bx, @function
n00200_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00200_assign_α:          mov              r11, 282
                        mov              rax, qword ptr [rbp + 1616]
                        mov              rdx, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx;         jmp   n00204_line_mark_α
                        .size            n00200_assign_bx, .-n00200_assign_bx
                        .type            n00204_line_mark_bx, @function
n00204_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_line_mark_α:       mov              r11, 283
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 125;            jmp   n00205_var_α
                        .size            n00204_line_mark_bx, .-n00204_line_mark_bx
                        .type            n00205_var_bx, @function
n00205_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_var_α:             mov              r11, 284
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 760], rax;          jmp   n00206_lit_string_α
                        .size            n00205_var_bx, .-n00205_var_bx
                        .type            n00206_lit_string_bx, @function
n00206_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00206_lit_string_α:      mov              r11, 285
                        mov              qword ptr [rbp + 1504], 2            # result
                        mov              dword ptr [rbp + 1508], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_811_0]
                        mov              qword ptr [rbp + 1512], rax;         jmp   n00207_call_builtin_α
.Llit_string_α_811_0:   .quad            .Llit_string_α_811_0_s
.Llit_string_α_811_0_s: .string          ":"
                        .size            n00206_lit_string_bx, .-n00206_lit_string_bx
                        .type            n00207_call_builtin_bx, @function
n00207_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_call_builtin_α:    mov              r11, 286
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 1576], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn813: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn813]
                        lea              rsi, [rbp + 1568]
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
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              al, 104;                             je    n00208_lit_string_α
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00209_var_α
n00207_call_builtin_β:    mov              r11, 286;                            jmp   n00208_lit_string_α
                        .size            n00207_call_builtin_bx, .-n00207_call_builtin_bx
                        .type            n00209_var_bx, @function
n00209_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_var_α:             mov              r11, 287
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n00210_assign_α
                        .size            n00209_var_bx, .-n00209_var_bx
                        .type            n00210_assign_bx, @function
n00210_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_assign_α:          mov              r11, 288
                        mov              rax, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx;         jmp   n00211_var_α
                        .size            n00210_assign_bx, .-n00210_assign_bx
                        .type            n00208_lit_string_bx, @function
n00208_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_lit_string_α:      mov              r11, 289
                        mov              qword ptr [rbp + 1136], 2            # result
                        mov              dword ptr [rbp + 1140], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_817_0]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n00212_call_builtin_α
.Llit_string_α_817_0:   .quad            .Llit_string_α_817_0_s
.Llit_string_α_817_0_s: .string          "+"
                        .size            n00208_lit_string_bx, .-n00208_lit_string_bx
                        .type            n00212_call_builtin_bx, @function
n00212_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_call_builtin_α:    mov              r11, 290
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn819: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn819]
                        lea              rsi, [rbp + 1472]
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
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              al, 104;                             je    n00213_lit_string_α
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00214_disjunction_α
n00212_call_builtin_β:    mov              r11, 290;                            jmp   n00213_lit_string_α
                        .size            n00212_call_builtin_bx, .-n00212_call_builtin_bx
                        .type            n00214_disjunction_bx, @function
n00214_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_disjunction_α:     mov              r11, 291
                        mov              qword ptr [rbp + 1168], 0
                        mov              qword ptr [rbp + 1176], 0
                        mov              dword ptr [rbp + 1184], 0;           jmp   n00215_var_ref_α
.Ldisjunction_γ_611_as: mov              r11, 291
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_821_0
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n00216_assign_α
.Ldisjunction_α_821_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_821_1
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n00216_assign_α
.Ldisjunction_α_821_1:                                                        jmp   n00216_assign_α
n00214_disjunction_β:     mov              r11, 291
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_611_af
                                                                              jmp   .Ldisjunction_ω_611_af
.Ldisjunction_γ_611_af: mov              r11, 291
.Ldisjunction_ω_611_af: mov              r11, 291
                        add              dword ptr [rbp + 1184], 1
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 1;                              je    n00217_lit_string_α
                                                                              jmp   n00162_lit_integer_α
                        .size            n00214_disjunction_bx, .-n00214_disjunction_bx
                        .type            n00216_assign_bx, @function
n00216_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_assign_α:          mov              r11, 292
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx;         jmp   n00211_var_α
                        .size            n00216_assign_bx, .-n00216_assign_bx
                        .type            n00217_lit_string_bx, @function
n00217_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_lit_string_α:      mov              r11, 293
                        mov              qword ptr [rbp + 1360], 2            # result
                        mov              dword ptr [rbp + 1364], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_823_0]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n00218_var_ref_α
n00217_lit_string_β:      mov              r11, 293;                            jmp   .Ldisjunction_ω_611_af
.Llit_string_α_823_0:   .quad            .Llit_string_α_823_0_s
.Llit_string_α_823_0_s: .string          "-"
                        .size            n00217_lit_string_bx, .-n00217_lit_string_bx
                        .type            n00218_var_ref_bx, @function
n00218_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_var_ref_α:         mov              r11, 294
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx;         jmp   n00219_lit_string_α
                        .size            n00218_var_ref_bx, .-n00218_var_ref_bx
                        .type            n00219_lit_string_bx, @function
n00219_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00219_lit_string_α:      mov              r11, 295
                        mov              qword ptr [rbp + 1408], 2            # result
                        mov              dword ptr [rbp + 1412], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_826_0]
                        mov              qword ptr [rbp + 1416], rax;         jmp   n00220_deref_α
.Llit_string_α_826_0:   .quad            .Llit_string_α_826_0_s
.Llit_string_α_826_0_s: .string          " needs numeric parameter"
                        .size            n00219_lit_string_bx, .-n00219_lit_string_bx
                        .type            n00220_deref_bx, @function
n00220_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_deref_α:           mov              r11, 296
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_611_af
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00221_line_mark_α
                        .size            n00220_deref_bx, .-n00220_deref_bx
                        .type            n00221_line_mark_bx, @function
n00221_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_line_mark_α:       mov              r11, 297
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 128;            jmp   n00222_call_icon_α
                        .size            n00221_line_mark_bx, .-n00221_line_mark_bx
                        .type            n00222_call_icon_bx, @function
n00222_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_call_icon_α:       mov              r11, 298
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lcall_icon_α_rkfn831:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn831]
                        lea              rsi, [rbp + 1296]
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
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_611_af
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldisjunction_γ_611_as
n00222_call_icon_β:       mov              r11, 298;                            jmp   .Ldisjunction_ω_611_af
                        .size            n00222_call_icon_bx, .-n00222_call_icon_bx
                        .type            n00215_var_ref_bx, @function
n00215_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_var_ref_α:         mov              r11, 299
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n00223_deref_α
n00215_var_ref_β:         mov              r11, 299;                            jmp   .Ldisjunction_ω_611_af
                        .size            n00215_var_ref_bx, .-n00215_var_ref_bx
                        .type            n00223_deref_bx, @function
n00223_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_deref_α:           mov              r11, 300
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_611_af
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00224_line_mark_α
                        .size            n00223_deref_bx, .-n00223_deref_bx
                        .type            n00224_line_mark_bx, @function
n00224_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_line_mark_α:       mov              r11, 301
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 127;            jmp   n00225_call_icon_α
                        .size            n00224_line_mark_bx, .-n00224_line_mark_bx
                        .type            n00225_call_icon_bx, @function
n00225_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_call_icon_α:       mov              r11, 302
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lcall_icon_α_rkfn838:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn838]
                        lea              rsi, [rbp + 1216]
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
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_611_af
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldisjunction_γ_611_as
n00225_call_icon_β:       mov              r11, 302;                            jmp   .Ldisjunction_ω_611_af
                        .size            n00225_call_icon_bx, .-n00225_call_icon_bx
                        .type            n00213_lit_string_bx, @function
n00213_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_lit_string_α:      mov              r11, 303
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_839_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n00226_call_builtin_α
.Llit_string_α_839_0:   .quad            .Llit_string_α_839_0_s
.Llit_string_α_839_0_s: .string          "."
                        .size            n00213_lit_string_bx, .-n00213_lit_string_bx
                        .type            n00226_call_builtin_bx, @function
n00226_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_call_builtin_α:    mov              r11, 304
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn841: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn841]
                        lea              rsi, [rbp + 1104]
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
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              al, 104;                             je    n00162_lit_integer_α
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00227_disjunction_α
n00226_call_builtin_β:    mov              r11, 304;                            jmp   n00162_lit_integer_α
                        .size            n00226_call_builtin_bx, .-n00226_call_builtin_bx
                        .type            n00227_disjunction_bx, @function
n00227_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_disjunction_α:     mov              r11, 305
                        mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              dword ptr [rbp + 816], 0;            jmp   n00228_var_ref_α
.Ldisjunction_γ_625_as: mov              r11, 305
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_843_0
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00229_assign_α
.Ldisjunction_α_843_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_843_1
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00229_assign_α
.Ldisjunction_α_843_1:                                                        jmp   n00229_assign_α
n00227_disjunction_β:     mov              r11, 305
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_625_af
                                                                              jmp   .Ldisjunction_ω_625_af
.Ldisjunction_γ_625_af: mov              r11, 305
.Ldisjunction_ω_625_af: mov              r11, 305
                        add              dword ptr [rbp + 816], 1
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 1;                              je    n00230_lit_string_α
                                                                              jmp   n00162_lit_integer_α
                        .size            n00227_disjunction_bx, .-n00227_disjunction_bx
                        .type            n00229_assign_bx, @function
n00229_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_assign_α:          mov              r11, 306
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx;         jmp   n00211_var_α
                        .size            n00229_assign_bx, .-n00229_assign_bx
                        .type            n00211_var_bx, @function
n00211_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_var_α:             mov              r11, 307
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00231_conjunction_α
                        .size            n00211_var_bx, .-n00211_var_bx
                        .type            n00231_conjunction_bx, @function
n00231_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00231_conjunction_α:     mov              r11, 308
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 728], rax;          jmp   .Ldisjunction_γ_587_as
n00231_conjunction_β:     mov              r11, 308;                            jmp   n00162_lit_integer_α
                        .size            n00231_conjunction_bx, .-n00231_conjunction_bx
                        .type            n00230_lit_string_bx, @function
n00230_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_lit_string_α:      mov              r11, 309
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_848_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n00232_var_ref_α
n00230_lit_string_β:      mov              r11, 309;                            jmp   .Ldisjunction_ω_625_af
.Llit_string_α_848_0:   .quad            .Llit_string_α_848_0_s
.Llit_string_α_848_0_s: .string          "-"
                        .size            n00230_lit_string_bx, .-n00230_lit_string_bx
                        .type            n00232_var_ref_bx, @function
n00232_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_var_ref_α:         mov              r11, 310
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx;         jmp   n00233_lit_string_α
                        .size            n00232_var_ref_bx, .-n00232_var_ref_bx
                        .type            n00233_lit_string_bx, @function
n00233_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_lit_string_α:      mov              r11, 311
                        mov              qword ptr [rbp + 1040], 2            # result
                        mov              dword ptr [rbp + 1044], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_851_0]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n00234_deref_α
.Llit_string_α_851_0:   .quad            .Llit_string_α_851_0_s
.Llit_string_α_851_0_s: .string          " needs numeric parameter"
                        .size            n00233_lit_string_bx, .-n00233_lit_string_bx
                        .type            n00234_deref_bx, @function
n00234_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00234_deref_α:           mov              r11, 312
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_625_af
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00235_line_mark_α
                        .size            n00234_deref_bx, .-n00234_deref_bx
                        .type            n00235_line_mark_bx, @function
n00235_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00235_line_mark_α:       mov              r11, 313
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 130;            jmp   n00236_call_icon_α
                        .size            n00235_line_mark_bx, .-n00235_line_mark_bx
                        .type            n00236_call_icon_bx, @function
n00236_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_call_icon_α:       mov              r11, 314
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lcall_icon_α_rkfn856:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn856]
                        lea              rsi, [rbp + 928]
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
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_625_af
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldisjunction_γ_625_as
n00236_call_icon_β:       mov              r11, 314;                            jmp   .Ldisjunction_ω_625_af
                        .size            n00236_call_icon_bx, .-n00236_call_icon_bx
                        .type            n00228_var_ref_bx, @function
n00228_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00228_var_ref_α:         mov              r11, 315
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n00237_deref_α
n00228_var_ref_β:         mov              r11, 315;                            jmp   .Ldisjunction_ω_625_af
                        .size            n00228_var_ref_bx, .-n00228_var_ref_bx
                        .type            n00237_deref_bx, @function
n00237_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00237_deref_α:           mov              r11, 316
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_625_af
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00238_line_mark_α
                        .size            n00237_deref_bx, .-n00237_deref_bx
                        .type            n00238_line_mark_bx, @function
n00238_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_line_mark_α:       mov              r11, 317
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00239_call_icon_α
                        .size            n00238_line_mark_bx, .-n00238_line_mark_bx
                        .type            n00239_call_icon_bx, @function
n00239_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_call_icon_α:       mov              r11, 318
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lcall_icon_α_rkfn863:  .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn863]
                        lea              rsi, [rbp + 848]
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
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_625_af
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldisjunction_γ_625_as
n00239_call_icon_β:       mov              r11, 318;                            jmp   .Ldisjunction_ω_625_af
                        .size            n00239_call_icon_bx, .-n00239_call_icon_bx
                        .type            n00203_lit_string_bx, @function
n00203_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_lit_string_α:      mov              r11, 319
                        mov              qword ptr [rbp + 1904], 2            # result
                        mov              dword ptr [rbp + 1908], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_864_0]
                        mov              qword ptr [rbp + 1912], rax;         jmp   n00240_var_ref_α
n00203_lit_string_β:      mov              r11, 319;                            jmp   .Ldisjunction_ω_601_af
.Llit_string_α_864_0:   .quad            .Llit_string_α_864_0_s
.Llit_string_α_864_0_s: .string          "No parameter following -"
                        .size            n00203_lit_string_bx, .-n00203_lit_string_bx
                        .type            n00240_var_ref_bx, @function
n00240_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00240_var_ref_α:         mov              r11, 320
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n00241_deref_α
                        .size            n00240_var_ref_bx, .-n00240_var_ref_bx
                        .type            n00241_deref_bx, @function
n00241_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_deref_α:           mov              r11, 321
                        mov              rdi, qword ptr [rbp + 1936]
                        mov              rsi, qword ptr [rbp + 1944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_601_af
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00242_line_mark_α
                        .size            n00241_deref_bx, .-n00241_deref_bx
                        .type            n00242_line_mark_bx, @function
n00242_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_line_mark_α:       mov              r11, 322
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 124;            jmp   n00243_call_icon_α
                        .size            n00242_line_mark_bx, .-n00242_line_mark_bx
                        .type            n00243_call_icon_bx, @function
n00243_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_call_icon_α:       mov              r11, 323
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1864], rax
                        .section         .rodata
.Lcall_icon_α_rkfn871:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn871]
                        lea              rsi, [rbp + 1856]
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
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_601_af
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldisjunction_γ_601_as
n00243_call_icon_β:       mov              r11, 323;                            jmp   .Ldisjunction_ω_601_af
                        .size            n00243_call_icon_bx, .-n00243_call_icon_bx
                        .type            n00202_var_ref_bx, @function
n00202_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_var_ref_α:         mov              r11, 324
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx;         jmp   n00244_deref_α
n00202_var_ref_β:         mov              r11, 324;                            jmp   .Ldisjunction_ω_601_af
                        .size            n00202_var_ref_bx, .-n00202_var_ref_bx
                        .type            n00244_deref_bx, @function
n00244_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00244_deref_α:           mov              r11, 325
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_601_af
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00245_line_mark_α
                        .size            n00244_deref_bx, .-n00244_deref_bx
                        .type            n00245_line_mark_bx, @function
n00245_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_line_mark_α:       mov              r11, 326
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00246_call_icon_α
                        .size            n00245_line_mark_bx, .-n00245_line_mark_bx
                        .type            n00246_call_icon_bx, @function
n00246_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_call_icon_α:       mov              r11, 327
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1784], rax
                        .section         .rodata
.Lcall_icon_α_rkfn878:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn878]
                        lea              rsi, [rbp + 1776]
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
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_601_af
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldisjunction_γ_601_as
n00246_call_icon_β:       mov              r11, 327;                            jmp   .Ldisjunction_ω_601_af
                        .size            n00246_call_icon_bx, .-n00246_call_icon_bx
                        .type            n00199_lit_string_bx, @function
n00199_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_lit_string_α:      mov              r11, 328
                        mov              qword ptr [rbp + 1664], 2            # result
                        mov              dword ptr [rbp + 1668], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_879_0]
                        mov              qword ptr [rbp + 1672], rax;         jmp   n00247_lit_integer_α
n00199_lit_string_β:      mov              r11, 328;                            jmp   .Ldisjunction_ω_601_af
.Llit_string_α_879_0:   .quad            .Llit_string_α_879_0_s
.Llit_string_α_879_0_s: .string          ""
                        .size            n00199_lit_string_bx, .-n00199_lit_string_bx
                        .type            n00247_lit_integer_bx, @function
n00247_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_lit_integer_α:     mov              r11, 329
                        mov              qword ptr [rbp + 1744], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_880_0]
                        mov              qword ptr [rbp + 1752], rax;         jmp   n00248_line_mark_α
.Llit_integer_α_880_0:  .quad            0
                        .size            n00247_lit_integer_bx, .-n00247_lit_integer_bx
                        .type            n00248_line_mark_bx, @function
n00248_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_line_mark_α:       mov              r11, 330
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00201_scan_tab_α
                        .size            n00248_line_mark_bx, .-n00248_line_mark_bx
                        .type            n00201_scan_tab_bx, @function
n00201_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_scan_tab_α:        mov              r11, 331
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_884_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_884_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_601_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_601_af
                        mov              qword ptr [rbp + 1712], r14
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
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx;         jmp   n00249_binop_test_α
n00201_scan_tab_β:        mov              r11, 331
                        mov              r14, qword ptr [rbp + 1712];         jmp   .Ldisjunction_ω_601_af
                        .size            n00201_scan_tab_bx, .-n00201_scan_tab_bx
                        .type            n00249_binop_test_bx, @function
n00249_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00249_binop_test_α:      mov              r11, 332
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1696]
                        mov              rcx, qword ptr [rbp + 1704]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        test             eax, eax;                            jz    n00201_scan_tab_β
                        mov              rdi, qword ptr [rbp + 1696]
                        mov              rsi, qword ptr [rbp + 1704]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_relop.cpp:110
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldisjunction_γ_601_as
n00249_binop_test_β:      mov              r11, 332;                            jmp   n00201_scan_tab_β
                        .size            n00249_binop_test_bx, .-n00249_binop_test_bx
                        .type            n00143_scan_bx, @function
n00143_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_scan_α:            mov              r11, 333
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
                        mov              r15, qword ptr [rbp + 416];          jmp   n00131_var_ref_α
n00143_scan_β:            mov              r11, 333;                            jmp   n00131_var_ref_α
                        .size            n00143_scan_bx, .-n00143_scan_bx
                        .type            n00160_lit_string_bx, @function
n00160_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00160_lit_string_α:      mov              r11, 334
                        mov              qword ptr [rbp + 2720], 2            # result
                        mov              dword ptr [rbp + 2724], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_888_0]
                        mov              qword ptr [rbp + 2728], rax;         jmp   n00250_scan_match_α
n00160_lit_string_β:      mov              r11, 334;                            jmp   .Ldisjunction_ω_562_af
.Llit_string_α_888_0:   .quad            .Llit_string_α_888_0_s
.Llit_string_α_888_0_s: .string          "-"
                        .size            n00160_lit_string_bx, .-n00160_lit_string_bx
                        .type            n00250_scan_match_bx, @function
n00250_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_scan_match_α:      mov              r11, 335
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_562_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_890_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_562_af
                        mov              qword ptr [rbp + 2688], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2696], rax;         jmp   n00251_scan_tab_α
.Lscan_match_α_890_0:   .quad            .Lscan_match_α_890_0_s
.Lscan_match_α_890_0_s: .string          "-"
                        .size            n00250_scan_match_bx, .-n00250_scan_match_bx
                        .type            n00251_scan_tab_bx, @function
n00251_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_scan_tab_α:        mov              r11, 336
                        mov              rdi, qword ptr [rbp + 2688]
                        mov              rsi, qword ptr [rbp + 2696]
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
                        test             eax, eax;                            jz    .Ldisjunction_ω_562_af
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
                        mov              rdi, qword ptr [rbp + 2688]
                        mov              rsi, qword ptr [rbp + 2696]
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
                        cmp              rax, 1;                              jge   .Lscan_tab_α_892_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_892_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_562_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_562_af
                        mov              qword ptr [rbp + 2672], r14
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
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx;         jmp   n00252_lit_integer_α
n00251_scan_tab_β:        mov              r11, 336
                        mov              r14, qword ptr [rbp + 2672];         jmp   .Ldisjunction_ω_562_af
                        .size            n00251_scan_tab_bx, .-n00251_scan_tab_bx
                        .type            n00252_lit_integer_bx, @function
n00252_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_lit_integer_α:     mov              r11, 337
                        mov              qword ptr [rbp + 2640], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_893_0]
                        mov              qword ptr [rbp + 2648], rax;         jmp   n00253_line_mark_α
.Llit_integer_α_893_0:  .quad            0
                        .size            n00252_lit_integer_bx, .-n00252_lit_integer_bx
                        .type            n00253_line_mark_bx, @function
n00253_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_line_mark_α:       mov              r11, 338
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00254_scan_pos_α
                        .size            n00253_line_mark_bx, .-n00253_line_mark_bx
                        .type            n00254_scan_pos_bx, @function
n00254_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_scan_pos_α:        mov              r11, 339
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_897_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_897_0:     cmp              rax, 1;                              jl    n00251_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00251_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00251_scan_tab_β
                        mov              qword ptr [rbp + 2608], 3
                        mov              qword ptr [rbp + 2616], rax;         jmp   n00255_conjunction_α
                        .size            n00254_scan_pos_bx, .-n00254_scan_pos_bx
                        .type            n00255_conjunction_bx, @function
n00255_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00255_conjunction_α:     mov              r11, 340
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2600], rax;         jmp   n00256_scan_α
n00255_conjunction_β:     mov              r11, 340;                            jmp   .Ldisjunction_ω_562_af
                        .size            n00255_conjunction_bx, .-n00255_conjunction_bx
                        .type            n00256_scan_bx, @function
n00256_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_scan_α:            mov              r11, 341
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
                        mov              r15, qword ptr [rbp + 416];          jmp   n00257_var_α
n00256_scan_β:            mov              r11, 341;                            jmp   n00257_var_α
                        .size            n00256_scan_bx, .-n00256_scan_bx
                        .type            n00257_var_bx, @function
n00257_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00257_var_α:             mov              r11, 342
                        mov              qword ptr [rbp + 2560], 0
                        mov              qword ptr [rbp + 2568], 0;           jmp   n00258_assign_α
n00257_var_β:             mov              r11, 342;                            jmp   n00259_var_α
                        .size            n00257_var_bx, .-n00257_var_bx
                        .type            n00258_assign_bx, @function
n00258_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_assign_α:          mov              r11, 343
                        mov              rax, qword ptr [rbp + 2560]
                        mov              rdx, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx;         jmp   n00259_var_α
                        .size            n00258_assign_bx, .-n00258_assign_bx
                        .type            n00259_var_bx, @function
n00259_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_var_α:             mov              r11, 344
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 280], rax;          jmp   n00133_line_mark_α
                        .size            n00259_var_bx, .-n00259_var_bx
                        .type            n00133_line_mark_bx, @function
n00133_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_line_mark_α:       mov              r11, 345
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 138;            jmp   n00260_var_ref_α
                        .size            n00133_line_mark_bx, .-n00133_line_mark_bx
                        .type            n00260_var_ref_bx, @function
n00260_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_var_ref_α:         mov              r11, 346
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n00261_var_ref_α
                        .size            n00260_var_ref_bx, .-n00260_var_ref_bx
                        .type            n00261_var_ref_bx, @function
n00261_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00261_var_ref_α:         mov              r11, 347
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00262_deref_α
                        .size            n00261_var_ref_bx, .-n00261_var_ref_bx
                        .type            n00262_deref_bx, @function
n00262_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_deref_α:           mov              r11, 348
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
                        cmp              al, 104;                             je    n00263_line_mark_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00264_line_mark_α
                        .size            n00262_deref_bx, .-n00262_deref_bx
                        .type            n00264_line_mark_bx, @function
n00264_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_line_mark_α:       mov              r11, 349
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 138;            jmp   n00265_call_icon_α
                        .size            n00264_line_mark_bx, .-n00264_line_mark_bx
                        .type            n00265_call_icon_bx, @function
n00265_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00265_call_icon_α:       mov              r11, 350
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn915:  .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn915]
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
                        cmp              al, 104;                             je    n00263_line_mark_α
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00266_deref_α
n00265_call_icon_β:       mov              r11, 350;                            jmp   n00263_line_mark_α
                        .size            n00265_call_icon_bx, .-n00265_call_icon_bx
                        .type            n00266_deref_bx, @function
n00266_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_deref_α:           mov              r11, 351
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
                        cmp              al, 104;                             je    n00263_line_mark_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00267_line_mark_α
                        .size            n00266_deref_bx, .-n00266_deref_bx
                        .type            n00267_line_mark_bx, @function
n00267_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_line_mark_α:       mov              r11, 352
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 138;            jmp   n00268_call_icon_α
                        .size            n00267_line_mark_bx, .-n00267_line_mark_bx
                        .type            n00268_call_icon_bx, @function
n00268_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00268_call_icon_α:       mov              r11, 353
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lcall_icon_α_rkfn920:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn920]
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
                        cmp              al, 104;                             je    n00263_line_mark_α
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00260_var_ref_α
n00268_call_icon_β:       mov              r11, 353;                            jmp   n00263_line_mark_α
                        .size            n00268_call_icon_bx, .-n00268_call_icon_bx
                        .type            n00263_line_mark_bx, @function
n00263_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_line_mark_α:       mov              r11, 354
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 139;            jmp   n00269_var_α
                        .size            n00263_line_mark_bx, .-n00263_line_mark_bx
                        .type            n00269_var_bx, @function
n00269_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_var_α:             mov              r11, 355
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 56], rax;           jmp   n00270_return_α
                        .size            n00269_var_bx, .-n00269_var_bx
                        .type            n00270_return_bx, @function
n00270_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_return_α:          mov              r11, 356
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   options_γ
                        .size            n00270_return_bx, .-n00270_return_bx
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
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Loptions_α_925_248
                        .section         .rodata
.Licn_trace_nm926:      .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm926]
                        mov              rsi, qword ptr [r11 + 8]
                        mov              rdx, qword ptr [r11 + 0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll xa_flat.cpp:456
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Loptions_α_925_248:    mov              rsp, qword ptr [rsp + 0]
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
                        lea              rsp, [rbp + 3712]
                        mov              rbp, qword ptr [rbp + 3704];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
options_ω:
                        push             rax
                        push             rdx
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Loptions_α_925_249
                        .section         .rodata
.Licn_trace_nm927:      .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm927]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll xa_flat.cpp:456
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Loptions_α_925_249:    mov              rsp, qword ptr [rsp + 0]
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
                        lea              rcx, [rip + .Loptions_α_928_3]
                        push             rcx
                        lea              rcx, [rip + .Loptions_α_928_2]
                        push             rcx;                                 jmp   FN__options
.Loptions_α_928_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Loptions_α_928_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_options:
                        .quad            15944265059674
                        .quad            34359738576
                        .quad            .Lgcmap_options_s
                        .quad            3488
                        .quad            32
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
                        .quad            105553116267216
                        .quad            17596481012528
                        .quad            387028092977984
                        .quad            17596481012896
                        .quad            474989023200432
                        .quad            17596481013344
                        .quad            70368744179312
                        .quad            17596481013424
                        .quad            598134325511872
                        .quad            17596481013984
                        .quad            281474976712944
                        .quad            17596481014256
                        .quad            123145302313472
                        .quad            17596481014384
                        .quad            17592186047104
                        .quad            17596481014416
                        .quad            158329674402464
                        .quad            17596481014576
                        .quad            17592186047296
                        .quad            17596481014608
                        .quad            633318697601888
.Lgcmap_options_s:      .string          "options"
                        .globl           main
main:
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
                        call             rt_main_args_stage@PLT
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
                        push             rax
                        push             rdx
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        .section         .rodata
.Licn_trace_nm929:      .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm929]
                        mov              esi, 1
                        lea              rdx, [r11 + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll emit.cpp:2921
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_928_247:       mov              rsp, qword ptr [rsp + 0]
                        pop              rdx
                        pop              rax
main_α_body:
                        .type            n00271_line_mark_bx, @function
n00271_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_line_mark_α:       mov              r11, 357
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_1002_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00272_line_mark_α
.Lline_mark_α_1002_0:   .quad            .Lline_mark_α_1002_0_s
.Lline_mark_α_1002_0_s: .string          "concord.icn"
                        .size            n00271_line_mark_bx, .-n00271_line_mark_bx
                        .type            n00272_line_mark_bx, @function
n00272_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_line_mark_α:       mov              r11, 358
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 43;             jmp   n00273_var_ref_α
                        .size            n00272_line_mark_bx, .-n00272_line_mark_bx
                        .type            n00273_var_ref_bx, @function
n00273_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_var_ref_α:         mov              r11, 359
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx;         jmp   n00274_lit_string_α
                        .size            n00273_var_ref_bx, .-n00273_var_ref_bx
                        .type            n00274_lit_string_bx, @function
n00274_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00274_lit_string_α:      mov              r11, 360
                        mov              qword ptr [rbp + 1216], 2            # result
                        mov              dword ptr [rbp + 1220], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1007_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n00275_deref_α
.Llit_string_α_1007_0:  .quad            .Llit_string_α_1007_0_s
.Llit_string_α_1007_0_s:
                        .string          "l+w+"
                        .size            n00274_lit_string_bx, .-n00274_lit_string_bx
                        .type            n00275_deref_bx, @function
n00275_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_deref_α:           mov              r11, 361
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
                        cmp              al, 104;                             je    n00276_line_mark_α
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00277_line_mark_α
                        .size            n00275_deref_bx, .-n00275_deref_bx
                        .type            n00277_line_mark_bx, @function
n00277_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_line_mark_α:       mov              r11, 362
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 43;             jmp   n00278_call_proc_staged_α
                        .size            n00277_line_mark_bx, .-n00277_line_mark_bx
                        .type            n00278_call_proc_staged_bx, @function
n00278_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_call_proc_staged_α:
                        mov              r11, 363
                        lea              rsi, [rbp + 1248]
                        lea              rdx, [rbp + 1216]
                        call             options_dcα;                         jmp   .Lcall_proc_staged_α_1012_2
.Lcall_proc_staged_α_1012_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1012_29
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
.Lcall_proc_staged_α_1012_29:
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              al, 104;                             je    n00276_line_mark_α
                                                                              jmp   n00279_deref_α
n00278_call_proc_staged_β:
                        mov              r11, 363;                            jmp   n00276_line_mark_α
.Lcall_proc_staged_β_1012_0:
                        .quad            .Lcall_proc_staged_β_1012_0_s
.Lcall_proc_staged_β_1012_0_s:
                        .string          "options"
                        .size            n00278_call_proc_staged_bx, .-n00278_call_proc_staged_bx
                        .type            n00279_deref_bx, @function
n00279_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00279_deref_α:           mov              r11, 364
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
                        cmp              al, 104;                             je    n00276_line_mark_α
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00280_assign_α
                        .size            n00279_deref_bx, .-n00279_deref_bx
                        .type            n00280_assign_bx, @function
n00280_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00280_assign_α:          mov              r11, 365
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n00276_line_mark_α
                        .size            n00280_assign_bx, .-n00280_assign_bx
                        .type            n00276_line_mark_bx, @function
n00276_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_line_mark_α:       mov              r11, 366
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 44;             jmp   n00281_disjunction_α
                        .size            n00276_line_mark_bx, .-n00276_line_mark_bx
                        .type            n00281_disjunction_bx, @function
n00281_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_disjunction_α:     mov              r11, 367
                        mov              qword ptr [rbp + 992], 0
                        mov              qword ptr [rbp + 1000], 0
                        mov              dword ptr [rbp + 1008], 0;           jmp   n00282_var_ref_α
.Ldisjunction_γ_940_as: mov              r11, 367
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1018_0
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n00283_assign_α
.Ldisjunction_α_1018_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1018_1
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n00283_assign_α
.Ldisjunction_α_1018_1:                                                       jmp   n00283_assign_α
n00281_disjunction_β:     mov              r11, 367
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_940_af
                                                                              jmp   .Ldisjunction_ω_940_af
.Ldisjunction_γ_940_af: mov              r11, 367
.Ldisjunction_ω_940_af: mov              r11, 367
                        add              dword ptr [rbp + 1008], 1
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 1;                              je    n00284_lit_integer_α
                                                                              jmp   n00285_line_mark_α
                        .size            n00281_disjunction_bx, .-n00281_disjunction_bx
                        .type            n00283_assign_bx, @function
n00283_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00283_assign_α:          mov              r11, 368
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1019_0]
                        .section         .rodata
.Lassign_α_1019_1_s:    .string          "concord.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1019_1_s]
                        mov              r8, 102
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
                        add              rsp, 16;                             jmp   n00285_line_mark_α
.Lassign_α_1019_0:      .quad            .Lassign_α_1019_0_s
.Lassign_α_1019_0_s:    .string          "colmax"
                        .size            n00283_assign_bx, .-n00283_assign_bx
                        .type            n00285_line_mark_bx, @function
n00285_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_line_mark_α:       mov              r11, 369
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 45;             jmp   n00286_disjunction_α
                        .size            n00285_line_mark_bx, .-n00285_line_mark_bx
                        .type            n00286_disjunction_bx, @function
n00286_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00286_disjunction_α:     mov              r11, 370
                        mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 840], 0
                        mov              dword ptr [rbp + 848], 0;            jmp   n00287_var_ref_α
.Ldisjunction_γ_943_as: mov              r11, 370
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1023_0
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00288_assign_α
.Ldisjunction_α_1023_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1023_1
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00288_assign_α
.Ldisjunction_α_1023_1:                                                       jmp   n00288_assign_α
n00286_disjunction_β:     mov              r11, 370
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_943_af
                                                                              jmp   .Ldisjunction_ω_943_af
.Ldisjunction_γ_943_af: mov              r11, 370
.Ldisjunction_ω_943_af: mov              r11, 370
                        add              dword ptr [rbp + 848], 1
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 1;                              je    n00289_lit_integer_α
                                                                              jmp   n00290_line_mark_α
                        .size            n00286_disjunction_bx, .-n00286_disjunction_bx
                        .type            n00288_assign_bx, @function
n00288_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00288_assign_α:          mov              r11, 371
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1024_0]
                        .section         .rodata
.Lassign_α_1024_1_s:    .string          "concord.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1024_1_s]
                        mov              r8, 102
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
                        add              rsp, 16;                             jmp   n00290_line_mark_α
.Lassign_α_1024_0:      .quad            .Lassign_α_1024_0_s
.Lassign_α_1024_0_s:    .string          "namewidth"
                        .size            n00288_assign_bx, .-n00288_assign_bx
                        .type            n00290_line_mark_bx, @function
n00290_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00290_line_mark_α:       mov              r11, 372
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 46;             jmp   n00291_lit_string_α
                        .size            n00290_line_mark_bx, .-n00290_line_mark_bx
                        .type            n00291_lit_string_bx, @function
n00291_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00291_lit_string_α:      mov              r11, 373
                        mov              qword ptr [rbp + 784], 2             # result
                        mov              dword ptr [rbp + 788], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_1027_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00292_line_mark_α
.Llit_string_α_1027_0:  .quad            .Llit_string_α_1027_0_s
.Llit_string_α_1027_0_s:
                        .string          ""
                        .size            n00291_lit_string_bx, .-n00291_lit_string_bx
                        .type            n00292_line_mark_bx, @function
n00292_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00292_line_mark_α:       mov              r11, 374
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 46;             jmp   n00293_call_icon_α
                        .size            n00292_line_mark_bx, .-n00292_line_mark_bx
                        .type            n00293_call_icon_bx, @function
n00293_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_call_icon_α:       mov              r11, 375
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1031: .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1031]
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
                        cmp              al, 104;                             je    n00294_line_mark_α
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00295_assign_α
n00293_call_icon_β:       mov              r11, 375;                            jmp   n00294_line_mark_α
                        .size            n00293_call_icon_bx, .-n00293_call_icon_bx
                        .type            n00295_assign_bx, @function
n00295_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_assign_α:          mov              r11, 376
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1032_0]
                        .section         .rodata
.Lassign_α_1032_1_s:    .string          "concord.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1032_1_s]
                        mov              r8, 102
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
                        add              rsp, 16;                             jmp   n00294_line_mark_α
.Lassign_α_1032_0:      .quad            .Lassign_α_1032_0_s
.Lassign_α_1032_0_s:    .string          "uses"
                        .size            n00295_assign_bx, .-n00295_assign_bx
                        .type            n00294_line_mark_bx, @function
n00294_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_line_mark_α:       mov              r11, 377
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 47;             jmp   n00296_lit_integer_α
                        .size            n00294_line_mark_bx, .-n00294_line_mark_bx
                        .type            n00296_lit_integer_bx, @function
n00296_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_lit_integer_α:     mov              r11, 378
                        mov              qword ptr [rbp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1035_0]
                        mov              qword ptr [rbp + 712], rax;          jmp   n00297_assign_α
.Llit_integer_α_1035_0: .quad            0
                        .size            n00296_lit_integer_bx, .-n00296_lit_integer_bx
                        .type            n00297_assign_bx, @function
n00297_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00297_assign_α:          mov              r11, 379
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1036_0]
                        .section         .rodata
.Lassign_α_1036_1_s:    .string          "concord.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1036_1_s]
                        mov              r8, 102
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
                        add              rsp, 16;                             jmp   n00298_line_mark_α
.Lassign_α_1036_0:      .quad            .Lassign_α_1036_0_s
.Lassign_α_1036_0_s:    .string          "lineno"
                        .size            n00297_assign_bx, .-n00297_assign_bx
                        .type            n00298_line_mark_bx, @function
n00298_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_line_mark_α:       mov              r11, 380
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 48;             jmp   n00299_line_mark_α
                        .size            n00298_line_mark_bx, .-n00298_line_mark_bx
                        .type            n00299_line_mark_bx, @function
n00299_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_line_mark_α:       mov              r11, 381
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 48;             jmp   n00300_proc_gen_α
                        .size            n00299_line_mark_bx, .-n00299_line_mark_bx
                        .type            n00300_proc_gen_bx, @function
n00300_proc_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00300_proc_gen_α:        mov              r11, 382
                        mov              qword ptr [rbp + 624], 0
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_proc_staged.cpp:709
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        sub              rsp, 8
                        lea              rcx, [rip + .Lproc_gen_α_1042_7]     # CEO-483 (hq_U): NO PAD IN THE GENERATOR REGIME. The pad above is caller-side transient bookkeeping that had drifted into the callee ENTRY FRAME as a sixth word, and hq_U FINDING-2026-09-09 measured that NOTHING READS IT -- an injected 0x5EEDFACE store into [entry rsp+32] left parse byte-identical while the same store into [entry rsp+0] SIGSEGVd, so the experiment had a positive control and the slot is padding. The comment that used to sit here named a `selfrec depth` reader at [entry rsp+32]; `selfrec` occurred exactly once in the whole tree -- in that sentence. The 8 bytes are NOT deleted, they MOVE ACROSS THE CALL into the callee`s own carve (emit.cpp: carve gains 8, ANCHOR lea rsp+48 -> rsp+40), so the callee body still lands 0 mod 16. Dropping the pad WITHOUT that move was measured on 2026-09-10 and SIGSEGVs patchu -- the crash is parity, never a lost datum. Entry frame in the generator regime is now FIVE words: [rsp+0]=gamma [rsp+8]=omega [rsp+16]=REGION [rsp+24]=L7 [rsp+32]=N-2 ABI word, ANCHOR=[rsp+40]. rt_genp_spine_enter_n2 (rt.c) is the hand-written twin of this block and was shrunk by the same word in the same landing.
                        push             rcx
                        test             rax, rax;                            je    .Lproc_gen_α_1042_1
                        sub              rsp, 8
                        lea              rcx, [rip + .Lproc_gen_α_1042_4]
                        push             rcx
                        lea              rcx, [rip + .Lproc_gen_α_1042_3]
                        push             rcx
                        lea              rdx, [rip + .Lproc_gen_α_1042_4];    jmp   rax
.Lproc_gen_α_1042_3:    cmp              al, 104;                             je    .Lproc_gen_α_1042_8
                        mov              rdi, qword ptr [rdx + -1280]
                        mov              rsi, qword ptr [rdx + -1272]
                        mov              qword ptr [rbp + 632], rdx;          jmp   .Lproc_gen_α_1042_9
.Lproc_gen_α_1042_8:    mov              edi, 104
                        mov              esi, 0
                        mov              qword ptr [rbp + 632], rsp
.Lproc_gen_α_1042_9:    mov              rax, qword ptr [rbp + 624]
                        test             rax, rax;                            jne   .Lproc_gen_α_1042_5
                        mov              qword ptr [rbp + 624], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lproc_gen_α_1042_2
.Lproc_gen_α_1042_5:    call             rt_gen_spine_pass_γ@PLT;             jmp   .Lproc_gen_α_1042_2
.Lproc_gen_α_1042_4:    add              rsp, 16
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 624]
                        test             rax, rax;                            jne   .Lproc_gen_α_1042_6
                        mov              qword ptr [rbp + 624], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lproc_gen_α_1042_2
.Lproc_gen_α_1042_6:    call             rt_gen_spine_pass_ω@PLT;             jmp   .Lproc_gen_α_1042_2
.Lproc_gen_α_1042_1:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lproc_gen_α_1042_2:    mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lproc_gen_α_1042_29
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
.Lproc_gen_α_1042_29:   mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    n00301_line_mark_α
                                                                              jmp   n00302_deref_α
n00300_proc_gen_β:        mov              r11, 382
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rax, qword ptr [rbp + 632]
                        mov              rsp, qword ptr [rax + 40];           jmp   qword ptr [rax + 32]
.Lproc_gen_α_1042_7:    add              rsp, 8
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    n00301_line_mark_α
                                                                              jmp   n00302_deref_α
.Lproc_gen_β_1042_0:    .quad            .Lproc_gen_β_1042_0_s
.Lproc_gen_β_1042_0_s:  .string          "item"
                        .size            n00300_proc_gen_bx, .-n00300_proc_gen_bx
                        .type            n00302_deref_bx, @function
n00302_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_deref_α:           mov              r11, 383
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00300_proc_gen_β
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00303_var_ref_α
                        .size            n00302_deref_bx, .-n00302_deref_bx
                        .type            n00303_var_ref_bx, @function
n00303_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_var_ref_α:         mov              r11, 384
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # lineno
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n00304_deref_α
                        .size            n00303_var_ref_bx, .-n00303_var_ref_bx
                        .type            n00304_deref_bx, @function
n00304_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00304_deref_α:           mov              r11, 385
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
                        cmp              al, 104;                             je    n00300_proc_gen_β
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00305_line_mark_α
                        .size            n00304_deref_bx, .-n00304_deref_bx
                        .type            n00305_line_mark_bx, @function
n00305_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00305_line_mark_α:       mov              r11, 386
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 48;             jmp   n00306_call_proc_staged_α
                        .size            n00305_line_mark_bx, .-n00305_line_mark_bx
                        .type            n00306_call_proc_staged_bx, @function
n00306_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00306_call_proc_staged_α:
                        mov              r11, 387
                        lea              rsi, [rbp + 592]
                        lea              rdx, [rbp + 672]
                        call             tabulate_dcα;                        jmp   .Lcall_proc_staged_α_1050_2
.Lcall_proc_staged_α_1050_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1050_29
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
.Lcall_proc_staged_α_1050_29:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              al, 104;                             je    n00300_proc_gen_β
                                                                              jmp   n00307_deref_α
n00306_call_proc_staged_β:
                        mov              r11, 387;                            jmp   n00300_proc_gen_β
.Lcall_proc_staged_β_1050_0:
                        .quad            .Lcall_proc_staged_β_1050_0_s
.Lcall_proc_staged_β_1050_0_s:
                        .string          "tabulate"
                        .size            n00306_call_proc_staged_bx, .-n00306_call_proc_staged_bx
                        .type            n00307_deref_bx, @function
n00307_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00307_deref_α:           mov              r11, 388
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
                        cmp              al, 104;                             je    n00300_proc_gen_β
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00300_proc_gen_β
                        .size            n00307_deref_bx, .-n00307_deref_bx
                        .type            n00301_line_mark_bx, @function
n00301_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00301_line_mark_α:       mov              r11, 389
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 49;             jmp   n00308_var_ref_α
                        .size            n00301_line_mark_bx, .-n00301_line_mark_bx
                        .type            n00308_var_ref_bx, @function
n00308_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00308_var_ref_α:         mov              r11, 390
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n00309_lit_integer_α
                        .size            n00308_var_ref_bx, .-n00308_var_ref_bx
                        .type            n00309_lit_integer_bx, @function
n00309_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00309_lit_integer_α:     mov              r11, 391
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1056_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n00310_deref_α
.Llit_integer_α_1056_0: .quad            3
                        .size            n00309_lit_integer_bx, .-n00309_lit_integer_bx
                        .type            n00310_deref_bx, @function
n00310_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00310_deref_α:           mov              r11, 392
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
                        cmp              al, 104;                             je    n00311_line_mark_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00312_line_mark_α
                        .size            n00310_deref_bx, .-n00310_deref_bx
                        .type            n00312_line_mark_bx, @function
n00312_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_line_mark_α:       mov              r11, 393
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 49;             jmp   n00313_call_icon_α
                        .size            n00312_line_mark_bx, .-n00312_line_mark_bx
                        .type            n00313_call_icon_bx, @function
n00313_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00313_call_icon_α:       mov              r11, 394
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1061: .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1061]
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
                        cmp              al, 104;                             je    n00311_line_mark_α
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00314_assign_α
n00313_call_icon_β:       mov              r11, 394;                            jmp   n00311_line_mark_α
                        .size            n00313_call_icon_bx, .-n00313_call_icon_bx
                        .type            n00314_assign_bx, @function
n00314_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00314_assign_α:          mov              r11, 395
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx;         jmp   n00311_line_mark_α
                        .size            n00314_assign_bx, .-n00314_assign_bx
                        .type            n00311_line_mark_bx, @function
n00311_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_line_mark_α:       mov              r11, 396
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 50;             jmp   n00315_var_ref_α
                        .size            n00311_line_mark_bx, .-n00311_line_mark_bx
                        .type            n00315_var_ref_bx, @function
n00315_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00315_var_ref_α:         mov              r11, 397
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00316_deref_α
                        .size            n00315_var_ref_bx, .-n00315_var_ref_bx
                        .type            n00316_deref_bx, @function
n00316_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00316_deref_α:           mov              r11, 398
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00317_line_mark_α
                        .size            n00316_deref_bx, .-n00316_deref_bx
                        .type            n00317_line_mark_bx, @function
n00317_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00317_line_mark_α:       mov              r11, 399
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 50;             jmp   n00318_call_icon_α
                        .size            n00317_line_mark_bx, .-n00317_line_mark_bx
                        .type            n00318_call_icon_bx, @function
n00318_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00318_call_icon_α:       mov              r11, 400
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1071: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1071]
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00319_assign_α
n00318_call_icon_β:       mov              r11, 400;                            jmp   main_ω
                        .size            n00318_call_icon_bx, .-n00318_call_icon_bx
                        .type            n00319_assign_bx, @function
n00319_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00319_assign_α:          mov              r11, 401
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx;         jmp   n00320_var_ref_α
                        .size            n00319_assign_bx, .-n00319_assign_bx
                        .type            n00320_var_ref_bx, @function
n00320_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00320_var_ref_α:         mov              r11, 402
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00321_var_ref_α
                        .size            n00320_var_ref_bx, .-n00320_var_ref_bx
                        .type            n00321_var_ref_bx, @function
n00321_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00321_var_ref_α:         mov              r11, 403
                        mov              rax, 4294967336
                        mov              rdx, 1879052320                      # namewidth
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n00322_deref_α
                        .size            n00321_var_ref_bx, .-n00321_var_ref_bx
                        .type            n00322_deref_bx, @function
n00322_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00322_deref_α:           mov              r11, 404
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
                        cmp              al, 104;                             je    n00315_var_ref_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00323_deref_α
                        .size            n00322_deref_bx, .-n00322_deref_bx
                        .type            n00323_deref_bx, @function
n00323_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00323_deref_α:           mov              r11, 405
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
                        cmp              al, 104;                             je    n00315_var_ref_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00324_line_mark_α
                        .size            n00323_deref_bx, .-n00323_deref_bx
                        .type            n00324_line_mark_bx, @function
n00324_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_line_mark_α:       mov              r11, 406
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51;             jmp   n00325_call_icon_α
                        .size            n00324_line_mark_bx, .-n00324_line_mark_bx
                        .type            n00325_call_icon_bx, @function
n00325_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00325_call_icon_α:       mov              r11, 407
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1082: .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1082]
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
                        cmp              al, 104;                             je    n00315_var_ref_α
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00326_var_ref_α
n00325_call_icon_β:       mov              r11, 407;                            jmp   n00315_var_ref_α
                        .size            n00325_call_icon_bx, .-n00325_call_icon_bx
                        .type            n00326_var_ref_bx, @function
n00326_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00326_var_ref_α:         mov              r11, 408
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n00327_deref_α
                        .size            n00326_var_ref_bx, .-n00326_var_ref_bx
                        .type            n00327_deref_bx, @function
n00327_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00327_deref_α:           mov              r11, 409
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
                        cmp              al, 104;                             je    n00315_var_ref_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00328_line_mark_α
                        .size            n00327_deref_bx, .-n00327_deref_bx
                        .type            n00328_line_mark_bx, @function
n00328_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00328_line_mark_α:       mov              r11, 410
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51;             jmp   n00329_call_icon_α
                        .size            n00328_line_mark_bx, .-n00328_line_mark_bx
                        .type            n00329_call_icon_bx, @function
n00329_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00329_call_icon_α:       mov              r11, 411
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1089: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1089]
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
                        cmp              al, 104;                             je    n00315_var_ref_α
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:256
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00330_binop_α
n00329_call_icon_β:       mov              r11, 411;                            jmp   n00315_var_ref_α
                        .size            n00329_call_icon_bx, .-n00329_call_icon_bx
                        .type            n00330_binop_bx, @function
n00330_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00330_binop_α:           mov              r11, 412
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:85
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00331_line_mark_α
                        .size            n00330_binop_bx, .-n00330_binop_bx
                        .type            n00331_line_mark_bx, @function
n00331_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00331_line_mark_α:       mov              r11, 413
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51;             jmp   n00332_call_proc_staged_α
                        .size            n00331_line_mark_bx, .-n00331_line_mark_bx
                        .type            n00332_call_proc_staged_bx, @function
n00332_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00332_call_proc_staged_α:
                        mov              r11, 414
                        lea              rsi, [rbp + 176]
                        call             format_dcα;                          jmp   .Lcall_proc_staged_α_1094_2
.Lcall_proc_staged_α_1094_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1094_29
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
.Lcall_proc_staged_α_1094_29:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    n00315_var_ref_α
                                                                              jmp   n00333_deref_α
n00332_call_proc_staged_β:
                        mov              r11, 414;                            jmp   n00315_var_ref_α
.Lcall_proc_staged_β_1094_0:
                        .quad            .Lcall_proc_staged_β_1094_0_s
.Lcall_proc_staged_β_1094_0_s:
                        .string          "format"
                        .size            n00332_call_proc_staged_bx, .-n00332_call_proc_staged_bx
                        .type            n00333_deref_bx, @function
n00333_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00333_deref_α:           mov              r11, 415
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
                        cmp              al, 104;                             je    n00315_var_ref_α
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00315_var_ref_α
                        .size            n00333_deref_bx, .-n00333_deref_bx
                        .type            n00289_lit_integer_bx, @function
n00289_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_lit_integer_α:     mov              r11, 416
                        mov              qword ptr [rbp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1096_0]
                        mov              qword ptr [rbp + 968], rax;          jmp   .Ldisjunction_γ_943_as
n00289_lit_integer_β:     mov              r11, 416;                            jmp   .Ldisjunction_ω_943_af
.Llit_integer_α_1096_0: .quad            15
                        .size            n00289_lit_integer_bx, .-n00289_lit_integer_bx
                        .type            n00287_var_ref_bx, @function
n00287_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_var_ref_α:         mov              r11, 417
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n00334_lit_string_α
n00287_var_ref_β:         mov              r11, 417;                            jmp   .Ldisjunction_ω_943_af
                        .size            n00287_var_ref_bx, .-n00287_var_ref_bx
                        .type            n00334_lit_string_bx, @function
n00334_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00334_lit_string_α:      mov              r11, 418
                        mov              qword ptr [rbp + 896], 2             # result
                        mov              dword ptr [rbp + 900], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1099_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00335_subscript_α
.Llit_string_α_1099_0:  .quad            .Llit_string_α_1099_0_s
.Llit_string_α_1099_0_s:
                        .string          "w"
                        .size            n00334_lit_string_bx, .-n00334_lit_string_bx
                        .type            n00335_subscript_bx, @function
n00335_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00335_subscript_α:       mov              r11, 419
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_943_af
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:52
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00336_deref_α
                        .size            n00335_subscript_bx, .-n00335_subscript_bx
                        .type            n00336_deref_bx, @function
n00336_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00336_deref_α:           mov              r11, 420
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_943_af
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00337_unop_test_α
                        .size            n00336_deref_bx, .-n00336_deref_bx
                        .type            n00337_unop_test_bx, @function
n00337_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00337_unop_test_α:       mov              r11, 421
                        mov              eax, dword ptr [rbp + 944]
                        cmp              al, 104;                             je    .Ldisjunction_ω_943_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_943_af
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 872], rax;          jmp   .Ldisjunction_γ_943_as
n00337_unop_test_β:       mov              r11, 421;                            jmp   .Ldisjunction_ω_943_af
                        .size            n00337_unop_test_bx, .-n00337_unop_test_bx
                        .type            n00284_lit_integer_bx, @function
n00284_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_lit_integer_α:     mov              r11, 422
                        mov              qword ptr [rbp + 1120], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1103_0]
                        mov              qword ptr [rbp + 1128], rax;         jmp   .Ldisjunction_γ_940_as
n00284_lit_integer_β:     mov              r11, 422;                            jmp   .Ldisjunction_ω_940_af
.Llit_integer_α_1103_0: .quad            72
                        .size            n00284_lit_integer_bx, .-n00284_lit_integer_bx
                        .type            n00282_var_ref_bx, @function
n00282_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_var_ref_α:         mov              r11, 423
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n00338_lit_string_α
n00282_var_ref_β:         mov              r11, 423;                            jmp   .Ldisjunction_ω_940_af
                        .size            n00282_var_ref_bx, .-n00282_var_ref_bx
                        .type            n00338_lit_string_bx, @function
n00338_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00338_lit_string_α:      mov              r11, 424
                        mov              qword ptr [rbp + 1056], 2            # result
                        mov              dword ptr [rbp + 1060], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1106_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n00339_subscript_α
.Llit_string_α_1106_0:  .quad            .Llit_string_α_1106_0_s
.Llit_string_α_1106_0_s:
                        .string          "l"
                        .size            n00338_lit_string_bx, .-n00338_lit_string_bx
                        .type            n00339_subscript_bx, @function
n00339_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00339_subscript_α:       mov              r11, 425
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_940_af
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:52
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00340_deref_α
                        .size            n00339_subscript_bx, .-n00339_subscript_bx
                        .type            n00340_deref_bx, @function
n00340_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00340_deref_α:           mov              r11, 426
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_940_af
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:40
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00341_unop_test_α
                        .size            n00340_deref_bx, .-n00340_deref_bx
                        .type            n00341_unop_test_bx, @function
n00341_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00341_unop_test_α:      mov              r11, 427
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              al, 104;                             je    .Ldisjunction_ω_940_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_940_af
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1032], rax;         jmp   .Ldisjunction_γ_940_as
n00341_unop_test_β:      mov              r11, 427;                            jmp   .Ldisjunction_ω_940_af
                        .size            n00341_unop_test_bx, .-n00341_unop_test_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        push             rax
                        push             rdx
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lmain_α_1109_248
                        .section         .rodata
.Licn_trace_nm1110:     .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1110]
                        mov              rsi, qword ptr [r11 + 8]
                        mov              rdx, qword ptr [r11 + 0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll emit.cpp:2921
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1109_248:      mov              rsp, qword ptr [rsp + 0]
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        push             rax
                        push             rdx
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lmain_α_1109_249
                        .section         .rodata
.Licn_trace_nm1111:     .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1111]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll emit.cpp:2921
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1109_249:      mov              rsp, qword ptr [rsp + 0]
                        pop              rdx
                        pop              rax
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
                        .quad            686095255732224
                        .quad            8800387990128
                        .quad            8808977924728
                        .quad            228698418578048
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
.Lstartup_ign17:        .string          "real"
.Lstartup_ign18:        .string          "stop"
.Lstartup_ign19:        .string          "integer"
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
.Lstartup_ipp00342_0:    .string          "args"
                        .align           8
.Lstartup_ipnames9000:
                        .quad            .Lstartup_ipp00342_0
                        .quad            0
.Lstartup_iln00342_0:    .string          "opts"
.Lstartup_iln00342_1:    .string          "uselist"
.Lstartup_iln00342_2:    .string          "name"
.Lstartup_iln00342_3:    .string          "line"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00342_0
                        .quad            .Lstartup_iln00342_1
                        .quad            .Lstartup_iln00342_2
                        .quad            .Lstartup_iln00342_3
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
                        .long            1728
                        .long            1744
                        .long            1712
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
                        .long            1760
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
                        .long            1136
                        .long            1120
                        .long            1104
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
                        .long            1152
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
                        mov              esi, 1280
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
                        .long            3392
                        .long            3472
                        .long            3408
                        .long            3344
                        .long            3360
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
                        .section         .rodata
.S0:                    .string          "item"
                        .text
                        .section         .note.GNU-stack,"",@progbits
