                        .intel_syntax    noprefix
                        .text
                        .file            1 "concord.icn"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_tabulate_0:
FN__tabulate:
                        sub              rsp, 1744
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 217
                        rep              stosq
                        mov              eax, 0                               # GCANCHOR .Lgcmap_tabulate qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1736], rbp
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
.Lline_mark_α_93_stno:  .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_94_0: .quad .Lline_mark_α_94_0_s; .popsection
.Lline_mark_α_94_0_s:   .string          "concord.icn"
                        .size            n0_line_mark_bx, .-n0_line_mark_bx
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_95_stno:  .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n2_var_ref_α:           sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 1776]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_deref_α
                        .size            n2_var_ref_bx, .-n2_var_ref_bx
                        .type            n3_deref_bx, @function
n3_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_deref_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_tabulate_1:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_99_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n7_line_mark_α
.Lderef_α_99_999:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
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
.Lline_mark_α_100_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_100_stno
                        .long            0
                        .long            60
                        .quad            .Lstnof1
                        .popsection
n4_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 60;             jmp   n5_call_byname_α
                        .size            n4_line_mark_bx, .-n4_line_mark_bx
                        .type            n5_call_byname_bx, @function
n5_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_byname_α:       sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd103: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd103]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_tabulate_2:    mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_tabulate_3:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_102_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n7_line_mark_α
.Lcall_byname_α_102_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n6_assign_α
                        .size            n5_call_byname_bx, .-n5_call_byname_bx
                        .type            n6_assign_bx, @function
n6_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx;         jmp   n7_line_mark_α
                        .size            n6_assign_bx, .-n6_assign_bx
                        .type            n7_line_mark_bx, @function
n7_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_105_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n8_lit_string_α:        sub              rsp, 32
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_107_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_assign_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_107_0: .quad .Llit_string_α_107_0_s; .popsection
.Llit_string_α_107_0_s: .string          ""
                        .size            n8_lit_string_bx, .-n8_lit_string_bx
                        .type            n9_assign_bx, @function
n9_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx;           jmp   n10_line_mark_α
                        .size            n9_assign_bx, .-n9_assign_bx
                        .type            n10_line_mark_bx, @function
n10_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_109_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n11_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064144                      # uses
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_var_α
                        .size            n11_var_ref_bx, .-n11_var_ref_bx
                        .type            n12_var_bx, @function
n12_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:                                                                    jmp   n13_subscript_α
                        .size            n12_var_bx, .-n12_var_bx
                        .type            n13_subscript_bx, @function
n13_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_subscript_α:        sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_115_1:    mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 1856]          # var
                        mov              rcx, qword ptr [rsp + 1864]
                        test             eax, eax;                            jne   .Lsubscript_α_115_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_tabulate_9:    cmp              al, 255;                             jne   .Lsubscript_vd_115_1
                        call             c_rt_subscript_val_strict@PLT
.Lgcsite_tabulate_8:    mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_115_1:   cmp              al, 255;                             jne   .Lsubscript_α_115_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_115_1
.Lsubscript_α_115_4:    push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_tabulate_7:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_115_3
.Lsubscript_α_115_2:    call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_tabulate_6:    cmp              al, 255;                             jne   .Lsubscript_vd_115_0
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_tabulate_5:    mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_115_0:   push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_tabulate_4:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_115_3:    cmp              al, 104;                             jne   .Lsubscript_α_115_999
                        add              rsp, 16
                        add              rsp, 96;                             jmp   tabulate_ω
.Lsubscript_α_115_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_deref_α
                        .size            n13_subscript_bx, .-n13_subscript_bx
                        .type            n14_deref_bx, @function
n14_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_tabulate_11:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_116_999
                        add              rsp, 16
                        add              rsp, 112;                            jmp   tabulate_ω
.Lderef_α_116_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_10:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n15_scan_enter_α
                        .size            n14_deref_bx, .-n14_deref_bx
                        .type            n15_scan_enter_bx, @function
n15_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_scan_enter_α:       sub              rsp, 48
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 244], 0
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 256], r14
                        mov              qword ptr [rsp + 264], r15
                        mov              rdi, qword ptr [rsp + 48]            # lo
                        mov              rsi, qword ptr [rsp + 56]            # hi
                        call             rt_scan_enter@PLT
.Lgcsite_tabulate_13:   mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_tabulate_12:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jne   .Lscan_enter_α_118_999
                        add              rsp, 48
                        add              rsp, 128;                            jmp   tabulate_ω
.Lscan_enter_α_118_999: mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n16_line_mark_α
                        .size            n15_scan_enter_bx, .-n15_scan_enter_bx
                        .type            n16_line_mark_bx, @function
n16_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_119_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n17_bound_α:            mov              qword ptr [rsp + 1392], rsp;         jmp   n18_var_α
n17_bound_β:                                                                  jmp   n18_var_α
                        .size            n17_bound_bx, .-n17_bound_bx
                        .type            n18_var_bx, @function
n18_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:                                                                    jmp   n19_lit_charset_α
                        .size            n18_var_bx, .-n18_var_bx
                        .type            n19_lit_charset_bx, @function
n19_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_charset_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4294967295
                        mov              rax, qword ptr [rip + .Llit_charset_α_125_0]
                        mov              qword ptr [rsp + 8], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_125_0] # ptr
                        mov              rsi, 10                              # len
                        call             rt_icn_cset_register@PLT
.Lgcsite_tabulate_15:   mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:124
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_14:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n20_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_charset_α_125_0: .quad .Llit_charset_α_125_0_s; .popsection
.Llit_charset_α_125_0_s:
                        .string          "0123456789"
                        .size            n19_lit_charset_bx, .-n19_lit_charset_bx
                        .type            n20_line_mark_bx, @function
n20_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_126_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n21_scan_upto_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 1360], r14
.Lscan_upto_α_129_0:    mov              rax, qword ptr [rsp + 1360]
                        cmp              rax, r15;                            jl    .Lscan_upto_α_129_999
                        add              rsp, 16
                        add              rsp, -48;                            jmp   n42_line_mark_α
.Lscan_upto_α_129_999:  mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .Lscan_upto_α_129_3]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_upto_α_129_1
                        mov              qword ptr [rsp + 0], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_line_mark_α
.Lscan_upto_α_129_1:    inc              qword ptr [rsp + 1360];              jmp   .Lscan_upto_α_129_0
n21_scan_upto_β:        inc              qword ptr [rsp + 1360];              jmp   .Lscan_upto_α_129_0
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lscan_upto_β_129_2: .quad .Lscan_upto_β_129_2_s; .popsection
.Lscan_upto_β_129_2_s:  .string          "0123456789"
.Lscan_upto_α_129_3:    .quad            287948901175001088
.Lscan_upto_β_129_4:    .quad            0
.Lscan_upto_β_129_5:    .quad            0
.Lscan_upto_β_129_6:    .quad            0
                        .size            n21_scan_upto_bx, .-n21_scan_upto_bx
                        .type            n22_line_mark_bx, @function
n22_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_130_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n23_scan_tab_α:         sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_tabulate_22:   cmp              eax, -2;                             jne   .Lscan_tab_vd_133_2
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_tabulate_21:   mov              r9,  qword ptr [rip + rtccb+48]
.Lscan_tab_vd_133_2:    test             eax, eax;                            jne   .Lscan_tab_α_133_997
                        add              rsp, 16;                             jmp   n21_scan_upto_β
.Lscan_tab_α_133_997:   push             rax
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
.Lgcsite_tabulate_20:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rsp + 16]            # lo
                        mov              rsi, qword ptr [rsp + 24]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_tabulate_19:   mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_tabulate_18:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_133_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_133_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_133_998
                        add              rsp, 16;                             jmp   n21_scan_upto_β
.Lscan_tab_α_133_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_133_999
                        add              rsp, 16;                             jmp   n21_scan_upto_β
.Lscan_tab_α_133_999:   mov              qword ptr [rsp + 1344], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        call             qword ptr [rip + rt_substr@GOTPCREL]
.Lgcsite_tabulate_17:   add              rsp, 16
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
.Lgcsite_tabulate_16:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   n24_binop_α
n23_scan_tab_β:         mov              r14, qword ptr [rsp + 1344]
                        add              rsp, 16;                             jmp   n21_scan_upto_β
                        .size            n23_scan_tab_bx, .-n23_scan_tab_bx
                        .type            n24_binop_bx, @function
n24_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 176]           # var
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 16]            # scan_tab
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_tabulate_25:   cmp              al, 255;                             jne   .Lbinop_vd_134_3
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_24:   mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_134_3:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_23:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_134_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n42_line_mark_α
.Lbinop_α_134_999:                                                            jmp   n25_assign_α
                        .size            n24_binop_bx, .-n24_binop_bx
                        .type            n25_assign_bx, @function
n25_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n26_line_mark_α
                        .size            n25_assign_bx, .-n25_assign_bx
                        .type            n26_line_mark_bx, @function
n26_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_136_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
.Lline_mark_α_138_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n28_lit_charset_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4294967295
                        mov              rax, qword ptr [rip + .Llit_charset_α_140_0]
                        mov              qword ptr [rsp + 8], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_140_0] # ptr
                        mov              rsi, 10                              # len
                        call             rt_icn_cset_register@PLT
.Lgcsite_tabulate_27:   mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:124
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_26:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n29_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_charset_α_140_0: .quad .Llit_charset_α_140_0_s; .popsection
.Llit_charset_α_140_0_s:
                        .string          "0123456789"
                        .size            n28_lit_charset_bx, .-n28_lit_charset_bx
                        .type            n29_line_mark_bx, @function
n29_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_141_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n30_scan_many_α:        sub              rsp, 16
                        lea              rdi, [rip + .Lscan_many_α_144_3]
                        mov              eax, r14d
.Lscan_many_α_144_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_144_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_many_α_144_1
                        add              eax, 1;                              jmp   .Lscan_many_α_144_0
.Lscan_many_α_144_1:    cmp              eax, r14d;                           jne   .Lscan_many_α_144_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n34_line_mark_α
.Lscan_many_α_144_999:  mov              qword ptr [rsp + 0], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 8], rcx;            jmp   n31_line_mark_α
n30_scan_many_β:        add              rsp, 16
                        add              rsp, -32;                            jmp   n34_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lscan_many_β_144_2: .quad .Lscan_many_β_144_2_s; .popsection
.Lscan_many_β_144_2_s:  .string          "0123456789"
.Lscan_many_α_144_3:    .quad            287948901175001088
.Lscan_many_β_144_4:    .quad            0
.Lscan_many_β_144_5:    .quad            0
.Lscan_many_β_144_6:    .quad            0
                        .size            n30_scan_many_bx, .-n30_scan_many_bx
                        .type            n31_line_mark_bx, @function
n31_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_145_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n32_scan_tab_α:         sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_tabulate_34:   cmp              eax, -2;                             jne   .Lscan_tab_vd_148_4
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_tabulate_33:   mov              r9,  qword ptr [rip + rtccb+48]
.Lscan_tab_vd_148_4:    test             eax, eax;                            jne   .Lscan_tab_α_148_997
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n34_line_mark_α
.Lscan_tab_α_148_997:   push             rax
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
.Lgcsite_tabulate_32:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rsp + 16]            # lo
                        mov              rsi, qword ptr [rsp + 24]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_tabulate_31:   mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_tabulate_30:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_148_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_148_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_148_998
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n34_line_mark_α
.Lscan_tab_α_148_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_148_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n34_line_mark_α
.Lscan_tab_α_148_999:   mov              qword ptr [rsp + 1600], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        call             qword ptr [rip + rt_substr@GOTPCREL]
.Lgcsite_tabulate_29:   add              rsp, 16
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
.Lgcsite_tabulate_28:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   n33_assign_α
n32_scan_tab_β:         mov              r14, qword ptr [rsp + 1600]
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n34_line_mark_α
                        .size            n32_scan_tab_bx, .-n32_scan_tab_bx
                        .type            n33_assign_bx, @function
n33_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:           mov              rax, qword ptr [rsp + 0]             # scan_tab
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n34_line_mark_α
                        .size            n33_assign_bx, .-n33_assign_bx
                        .type            n34_line_mark_bx, @function
n34_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_150_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n35_var_α:                                                                    jmp   n36_var_α
                        .size            n35_var_bx, .-n35_var_bx
                        .type            n36_var_bx, @function
n36_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:                                                                    jmp   n37_binop_α
                        .size            n36_var_bx, .-n36_var_bx
                        .type            n37_binop_bx, @function
n37_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 240]           # var
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_tabulate_37:   cmp              al, 255;                             jne   .Lbinop_vd_156_5
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_36:   mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_156_5:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_35:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_156_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n40_unmark_α
.Lbinop_α_156_999:                                                            jmp   n38_assign_α
                        .size            n37_binop_bx, .-n37_binop_bx
                        .type            n38_assign_bx, @function
n38_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n39_conjunction_α
                        .size            n38_assign_bx, .-n38_assign_bx
                        .type            n39_conjunction_bx, @function
n39_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_conjunction_α:      mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n40_unmark_α
n39_conjunction_β:                                                            jmp   n40_unmark_α
                        .size            n39_conjunction_bx, .-n39_conjunction_bx
                        .type            n40_unmark_bx, @function
n40_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_unmark_α:           add              rsp, 128;                            jmp   n41_line_mark_α
                        .size            n40_unmark_bx, .-n40_unmark_bx
                        .type            n41_line_mark_bx, @function
n41_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_161_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
.Lline_mark_α_163_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n43_disjunction_α:      sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n76_disjunction_α
.Ldisjunction_γ_43_as:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_166_0
                                                                              jmp   n44_conjunction_α
.Ldisjunction_α_166_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_166_1
                                                                              jmp   n44_conjunction_α
.Ldisjunction_α_166_1:                                                        jmp   n44_conjunction_α
n43_disjunction_β:      add              rsp, 32
                        add              rsp, -240;                           jmp   n87_scan_α
.Ldisjunction_γ_43_af:
.Ldisjunction_ω_43_af:  add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 1;                              je    n46_line_mark_α
                        add              rsp, 32
                        add              rsp, -240;                           jmp   n87_scan_α
                        .size            n43_disjunction_bx, .-n43_disjunction_bx
                        .type            n44_conjunction_bx, @function
n44_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_conjunction_α:      mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 472], rax;          jmp   n45_scan_α
n44_conjunction_β:                                                            jmp   n87_scan_α
                        .size            n44_conjunction_bx, .-n44_conjunction_bx
                        .type            n45_scan_bx, @function
n45_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_scan_α:             sub              rsp, 16
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 416], r14d
                        mov              dword ptr [rsp + 404], r15d
                        call             rt_scan_live_subj@PLT
.Lgcsite_tabulate_42:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 408], rax
                        mov              dword ptr [rsp + 400], 2
                        mov              rdi, qword ptr [rsp + 360]           # outer_sigma
                        mov              rsi, qword ptr [rsp + 368]           # outer_delta
                        mov              rdx, qword ptr [rsp + 376]           # outer_len
                        call             rt_scan_leave@PLT
.Lgcsite_tabulate_41:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 360]
                        mov              r14, qword ptr [rsp + 368]
                        mov              r15, qword ptr [rsp + 376]
                        add              rsp, 48;                             jmp   tabulate_ω
n45_scan_β:             call             rt_scan_sync_in@PLT
.Lgcsite_tabulate_40:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 368], rax
                        mov              rdi, qword ptr [rsp + 408]           # subj
                        mov              esi, dword ptr [rsp + 404]           # len
                        call             rt_scan_reenter_live@PLT
.Lgcsite_tabulate_39:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14d, dword ptr [rsp + 416]
                        mov              rdi, r14                             # delta
                        call             rt_scan_sync_out@PLT
.Lgcsite_tabulate_38:   mov              r9,  qword ptr [rip + rtccb+48];     jmp   n43_disjunction_β
                        add              rsp, 16
                        add              rsp, 32;                             jmp   tabulate_ω
                        .size            n45_scan_bx, .-n45_scan_bx
                        .type            n46_line_mark_bx, @function
n46_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_170_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
.Lline_mark_α_172_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n48_disjunction_α:      mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              dword ptr [rsp + 800], 0;            jmp   n67_lit_string_α
.Ldisjunction_γ_48_as:  mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_175_0
                                                                              jmp   n49_line_mark_α
.Ldisjunction_α_175_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_175_1
                                                                              jmp   n49_line_mark_α
.Ldisjunction_α_175_1:                                                        jmp   n49_line_mark_α
n48_disjunction_β:      mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 0;                              je    n74_scan_tab_β
                                                                              jmp   n49_line_mark_α
.Ldisjunction_γ_48_af:
.Ldisjunction_ω_48_af:  add              dword ptr [rsp + 800], 1
                        mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 1;                              je    n65_lit_integer_α
                                                                              jmp   n49_line_mark_α
                        .size            n48_disjunction_bx, .-n48_disjunction_bx
                        .type            n49_line_mark_bx, @function
n49_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_176_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n50_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064144                      # uses
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_var_α
                        .size            n50_var_ref_bx, .-n50_var_ref_bx
                        .type            n51_var_bx, @function
n51_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:                                                                    jmp   n52_subscript_α
                        .size            n51_var_bx, .-n51_var_bx
                        .type            n52_subscript_bx, @function
n52_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 2080]          # var
                        mov              rcx, qword ptr [rsp + 2088]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_tabulate_45:   cmp              al, 255;                             jne   .Lsubscript_vd_182_6
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_tabulate_44:   mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_182_6:   cmp              al, 104;                             jne   .Lsubscript_α_182_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n87_scan_α
.Lsubscript_α_182_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:78
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_43:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n53_var_α
                        .size            n52_subscript_bx, .-n52_subscript_bx
                        .type            n53_var_bx, @function
n53_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:                                                                    jmp   n54_lit_string_α
                        .size            n53_var_bx, .-n53_var_bx
                        .type            n54_lit_string_bx, @function
n54_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_185_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_binop_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_185_0: .quad .Llit_string_α_185_0_s; .popsection
.Llit_string_α_185_0_s: .string          "("
                        .size            n54_lit_string_bx, .-n54_lit_string_bx
                        .type            n55_binop_bx, @function
n55_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 304]           # var
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_tabulate_48:   cmp              al, 255;                             jne   .Lbinop_vd_186_7
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_47:   mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_186_7:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_46:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_186_999
                        add              rsp, 16
                        add              rsp, 112;                            jmp   n87_scan_α
.Lbinop_α_186_999:                                                            jmp   n56_var_α
                        .size            n55_binop_bx, .-n55_binop_bx
                        .type            n56_var_bx, @function
n56_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:                                                                    jmp   n57_lit_integer_α
                        .size            n56_var_bx, .-n56_var_bx
                        .type            n57_lit_integer_bx, @function
n57_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_189_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_coerce_numeric_α
.Llit_integer_α_189_0:  .quad            1
                        .size            n57_lit_integer_bx, .-n57_lit_integer_bx
                        .type            n58_coerce_numeric_bx, @function
n58_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 256]           # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_191_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_191_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_191_0
.Lcoerce_numeric_α_191_1:
                        mov              rax, qword ptr [rsp + 256]           # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 264]           # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_binop_α
.Lcoerce_numeric_α_191_0:
                        lea              rdi, [rsp + 256]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_tabulate_51:   cmp              al, 255;                             jne   .Lcoerce_numeric_vd_191_8
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_tabulate_50:   mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_191_8:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_49:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_191_999
                        add              rsp, 16
                        add              rsp, 144;                            jmp   n87_scan_α
.Lcoerce_numeric_α_191_999:
                                                                              jmp   n59_binop_α
                        .size            n58_coerce_numeric_bx, .-n58_coerce_numeric_bx
                        .type            n59_binop_bx, @function
n59_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rax, qword ptr [rsp + 24]
                        cmp              cl, 3;                               jne   .Lbinop_α_192_2
                        add              rax, 1;                              jo    .Lbinop_α_192_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_192_7
.Lbinop_α_192_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_192_0
                        mov              rsi, qword ptr [rsp + 24]            # coerce_numeric
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_192_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_192_4
.Lbinop_α_192_3:        movq             xmm0, rsi
.Lbinop_α_192_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_192_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_192_7:                                                              jmp   n60_binop_α
.Lbinop_α_192_0:        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        call             rt_add_big@PLT
.Lgcsite_tabulate_53:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_192_999
                        add              rsp, 16
                        add              rsp, 160;                            jmp   n87_scan_α
.Lbinop_α_192_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_52:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n60_binop_α
                        .size            n59_binop_bx, .-n59_binop_bx
                        .type            n60_binop_bx, @function
n60_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_tabulate_56:   cmp              al, 255;                             jne   .Lbinop_vd_193_9
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_55:   mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_193_9:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_54:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_193_999
                        add              rsp, 16
                        add              rsp, 176;                            jmp   n87_scan_α
.Lbinop_α_193_999:                                                            jmp   n61_lit_string_α
                        .size            n60_binop_bx, .-n60_binop_bx
                        .type            n61_lit_string_bx, @function
n61_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_194_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n62_binop_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_194_0: .quad .Llit_string_α_194_0_s; .popsection
.Llit_string_α_194_0_s: .string          "), "
                        .size            n61_lit_string_bx, .-n61_lit_string_bx
                        .type            n62_binop_bx, @function
n62_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_tabulate_59:   cmp              al, 255;                             jne   .Lbinop_vd_195_10
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_58:   mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_195_10:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_57:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_195_999
                        add              rsp, 16
                        add              rsp, 208;                            jmp   n87_scan_α
.Lbinop_α_195_999:                                                            jmp   n63_assign_var_α
                        .size            n62_binop_bx, .-n62_binop_bx
                        .type            n63_assign_var_bx, @function
n63_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 144]           # subscript
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_tabulate_62:   cmp              al, 255;                             jne   .Lassign_var_vd_196_11
                        call             c_rt_assign_var_strict@PLT
.Lgcsite_tabulate_61:   mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_196_11: cmp              al, 104;                             jne   .Lassign_var_α_196_999
                        add              rsp, 16
                        add              rsp, 224;                            jmp   n87_scan_α
.Lassign_var_α_196_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:31
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_60:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n64_conjunction_α
                        .size            n63_assign_var_bx, .-n63_assign_var_bx
                        .type            n64_conjunction_bx, @function
n64_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_conjunction_α:      mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 1000], rax;         jmp   .Ldisjunction_γ_43_as
n64_conjunction_β:                                                            jmp   n87_scan_α
                        .size            n64_conjunction_bx, .-n64_conjunction_bx
                        .type            n65_lit_integer_bx, @function
n65_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_198_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n66_assign_α
n65_lit_integer_β:      add              rsp, 16;                             jmp   n49_line_mark_α
.Llit_integer_α_198_0:  .quad            1
                        .size            n65_lit_integer_bx, .-n65_lit_integer_bx
                        .type            n66_assign_bx, @function
n66_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        add              rsp, 48;                             jmp   .Ldisjunction_γ_48_as
n66_assign_β:           add              rsp, 16;                             jmp   n49_line_mark_α
                        .size            n66_assign_bx, .-n66_assign_bx
                        .type            n67_lit_string_bx, @function
n67_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_200_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n68_scan_match_α
n67_lit_string_β:       add              rsp, 16
                        add              rsp, -64;                            jmp   .Ldisjunction_ω_48_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_200_0: .quad .Llit_string_α_200_0_s; .popsection
.Llit_string_α_200_0_s: .string          "("
                        .size            n67_lit_string_bx, .-n67_lit_string_bx
                        .type            n68_scan_match_bx, @function
n68_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_scan_match_α:       sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jge   .Lscan_match_α_202_998
                        add              rsp, 16;                             jmp   n67_lit_string_β
.Lscan_match_α_202_998: mov              rdi, qword ptr [rip + .Lscan_match_α_202_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        call             memcmp@PLT
.Lgcsite_tabulate_63:   mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r12
                        test             eax, eax;                            je    .Lscan_match_α_202_999
                        add              rsp, 16;                             jmp   n67_lit_string_β
.Lscan_match_α_202_999: mov              qword ptr [rsp + 0], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_scan_tab_α
n68_scan_match_β:       add              rsp, 16;                             jmp   n67_lit_string_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lscan_match_α_202_0: .quad .Lscan_match_α_202_0_s; .popsection
.Lscan_match_α_202_0_s: .string          "("
                        .size            n68_scan_match_bx, .-n68_scan_match_bx
                        .type            n69_scan_tab_bx, @function
n69_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_scan_tab_α:         sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_tabulate_70:   cmp              eax, -2;                             jne   .Lscan_tab_vd_204_12
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_tabulate_69:   mov              r9,  qword ptr [rip + rtccb+48]
.Lscan_tab_vd_204_12:   test             eax, eax;                            jne   .Lscan_tab_α_204_997
                        add              rsp, 16;                             jmp   n68_scan_match_β
.Lscan_tab_α_204_997:   push             rax
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
.Lgcsite_tabulate_68:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rsp + 16]            # lo
                        mov              rsi, qword ptr [rsp + 24]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_tabulate_67:   mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_tabulate_66:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_204_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_204_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_204_998
                        add              rsp, 16;                             jmp   n68_scan_match_β
.Lscan_tab_α_204_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_204_999
                        add              rsp, 16;                             jmp   n68_scan_match_β
.Lscan_tab_α_204_999:   mov              qword ptr [rsp + 1296], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        call             qword ptr [rip + rt_substr@GOTPCREL]
.Lgcsite_tabulate_65:   add              rsp, 16
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
.Lgcsite_tabulate_64:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_lit_charset_α
n69_scan_tab_β:         mov              r14, qword ptr [rsp + 1296]
                        add              rsp, 16;                             jmp   n68_scan_match_β
                        .size            n69_scan_tab_bx, .-n69_scan_tab_bx
                        .type            n70_lit_charset_bx, @function
n70_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_charset_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4294967295
                        mov              rax, qword ptr [rip + .Llit_charset_α_205_0]
                        mov              qword ptr [rsp + 8], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_205_0] # ptr
                        mov              rsi, 1                               # len
                        call             rt_icn_cset_register@PLT
.Lgcsite_tabulate_72:   mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:124
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_71:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n71_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_charset_α_205_0: .quad .Llit_charset_α_205_0_s; .popsection
.Llit_charset_α_205_0_s:
                        .string          ")"
                        .size            n70_lit_charset_bx, .-n70_lit_charset_bx
                        .type            n71_line_mark_bx, @function
n71_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_206_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n72_scan_upto_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 1264], r14
.Lscan_upto_α_209_0:    mov              rax, qword ptr [rsp + 1264]
                        cmp              rax, r15;                            jl    .Lscan_upto_α_209_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n49_line_mark_α
.Lscan_upto_α_209_999:  mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .Lscan_upto_α_209_3]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_upto_α_209_1
                        mov              qword ptr [rsp + 0], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_line_mark_α
.Lscan_upto_α_209_1:    inc              qword ptr [rsp + 1264];              jmp   .Lscan_upto_α_209_0
n72_scan_upto_β:        inc              qword ptr [rsp + 1264];              jmp   .Lscan_upto_α_209_0
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lscan_upto_β_209_2: .quad .Lscan_upto_β_209_2_s; .popsection
.Lscan_upto_β_209_2_s:  .string          ")"
.Lscan_upto_α_209_3:    .quad            2199023255552
.Lscan_upto_β_209_4:    .quad            0
.Lscan_upto_β_209_5:    .quad            0
.Lscan_upto_β_209_6:    .quad            0
                        .size            n72_scan_upto_bx, .-n72_scan_upto_bx
                        .type            n73_line_mark_bx, @function
n73_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_210_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n74_scan_tab_α:         sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_tabulate_79:   cmp              eax, -2;                             jne   .Lscan_tab_vd_213_13
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_tabulate_78:   mov              r9,  qword ptr [rip + rtccb+48]
.Lscan_tab_vd_213_13:   test             eax, eax;                            jne   .Lscan_tab_α_213_997
                        add              rsp, 16;                             jmp   n72_scan_upto_β
.Lscan_tab_α_213_997:   push             rax
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
.Lgcsite_tabulate_77:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rsp + 16]            # lo
                        mov              rsi, qword ptr [rsp + 24]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_tabulate_76:   mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_tabulate_75:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_213_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_213_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_213_998
                        add              rsp, 16;                             jmp   n72_scan_upto_β
.Lscan_tab_α_213_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_213_999
                        add              rsp, 16;                             jmp   n72_scan_upto_β
.Lscan_tab_α_213_999:   mov              qword ptr [rsp + 1248], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        call             qword ptr [rip + rt_substr@GOTPCREL]
.Lgcsite_tabulate_74:   add              rsp, 16
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
.Lgcsite_tabulate_73:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   n75_assign_α
n74_scan_tab_β:         mov              r14, qword ptr [rsp + 1248]
                        add              rsp, 16;                             jmp   n72_scan_upto_β
                        .size            n74_scan_tab_bx, .-n74_scan_tab_bx
                        .type            n75_assign_bx, @function
n75_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:           mov              rax, qword ptr [rsp + 0]             # scan_tab
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        add              rsp, 128;                            jmp   .Ldisjunction_γ_48_as
n75_assign_β:           add              rsp, 96;                             jmp   n49_line_mark_α
                        .size            n75_assign_bx, .-n75_assign_bx
                        .type            n76_disjunction_bx, @function
n76_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_disjunction_α:      mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              dword ptr [rsp + 416], 0;            jmp   n91_var_α
.Ldisjunction_γ_76_as:  mov              eax, dword ptr [rsp + 416]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_216_0
                                                                              jmp   n77_line_mark_α
.Ldisjunction_α_216_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_216_1
                                                                              jmp   n77_line_mark_α
.Ldisjunction_α_216_1:                                                        jmp   n77_line_mark_α
n76_disjunction_β:      mov              eax, dword ptr [rsp + 416]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_76_af
                                                                              jmp   .Ldisjunction_ω_76_af
.Ldisjunction_γ_76_af:
.Ldisjunction_ω_76_af:  add              dword ptr [rsp + 416], 1
                        mov              eax, dword ptr [rsp + 416]
                        cmp              eax, 1;                              je    n88_var_α
                                                                              jmp   .Ldisjunction_ω_43_af
                        .size            n76_disjunction_bx, .-n76_disjunction_bx
                        .type            n77_line_mark_bx, @function
n77_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_217_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n78_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064144                      # uses
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_var_α
                        .size            n78_var_ref_bx, .-n78_var_ref_bx
                        .type            n79_var_bx, @function
n79_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:                                                                    jmp   n80_subscript_α
                        .size            n79_var_bx, .-n79_var_bx
                        .type            n80_subscript_bx, @function
n80_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 2080]          # var
                        mov              rcx, qword ptr [rsp + 2088]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_tabulate_82:   cmp              al, 255;                             jne   .Lsubscript_vd_223_14
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_tabulate_81:   mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_223_14:  cmp              al, 104;                             jne   .Lsubscript_α_223_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n87_scan_α
.Lsubscript_α_223_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:78
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_80:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n81_var_α
                        .size            n80_subscript_bx, .-n80_subscript_bx
                        .type            n81_var_bx, @function
n81_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:                                                                    jmp   n82_lit_string_α
                        .size            n81_var_bx, .-n81_var_bx
                        .type            n82_lit_string_bx, @function
n82_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_226_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_binop_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_226_0: .quad .Llit_string_α_226_0_s; .popsection
.Llit_string_α_226_0_s: .string          ", "
                        .size            n82_lit_string_bx, .-n82_lit_string_bx
                        .type            n83_binop_bx, @function
n83_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2128]          # var
                        mov              rsi, qword ptr [rsp + 2136]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_tabulate_85:   cmp              al, 255;                             jne   .Lbinop_vd_227_15
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_84:   mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_227_15:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_83:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_227_999
                        add              rsp, 16
                        add              rsp, 112;                            jmp   n87_scan_α
.Lbinop_α_227_999:                                                            jmp   n84_deref_α
                        .size            n83_binop_bx, .-n83_binop_bx
                        .type            n84_deref_bx, @function
n84_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # subscript
                        mov              rsi, qword ptr [rsp + 56]            # d
                        call             rt_deref@PLT
.Lgcsite_tabulate_87:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_228_999
                        add              rsp, 16
                        add              rsp, 128;                            jmp   n87_scan_α
.Lderef_α_228_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_86:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n85_binop_α
                        .size            n84_deref_bx, .-n84_deref_bx
                        .type            n85_binop_bx, @function
n85_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # deref
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]            # binop
                        mov              rcx, qword ptr [rsp + 40]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_tabulate_90:   cmp              al, 255;                             jne   .Lbinop_vd_229_16
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_89:   mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_229_16:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_88:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_229_999
                        add              rsp, 16
                        add              rsp, 144;                            jmp   n87_scan_α
.Lbinop_α_229_999:                                                            jmp   n86_assign_var_α
                        .size            n85_binop_bx, .-n85_binop_bx
                        .type            n86_assign_var_bx, @function
n86_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]            # subscript
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_tabulate_93:   cmp              al, 255;                             jne   .Lassign_var_vd_230_17
                        call             c_rt_assign_var_strict@PLT
.Lgcsite_tabulate_92:   mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_230_17: cmp              al, 104;                             jne   .Lassign_var_α_230_999
                        add              rsp, 16
                        add              rsp, 160;                            jmp   n87_scan_α
.Lassign_var_α_230_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:31
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_tabulate_91:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 152], rax
                        add              rsp, 144;                            jmp   .Ldisjunction_γ_43_as
n86_assign_var_β:       add              rsp, 16
                        add              rsp, 160;                            jmp   n87_scan_α
                        .size            n86_assign_var_bx, .-n86_assign_var_bx
                        .type            n87_scan_bx, @function
n87_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_scan_α:             sub              rsp, 16
                        mov              dword ptr [rsp + 672], r14d
                        mov              dword ptr [rsp + 660], r15d
                        call             rt_scan_live_subj@PLT
.Lgcsite_tabulate_95:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 664], rax
                        mov              dword ptr [rsp + 656], 2
                        mov              rdi, qword ptr [rsp + 568]           # outer_sigma
                        mov              rsi, qword ptr [rsp + 576]           # outer_delta
                        mov              rdx, qword ptr [rsp + 584]           # outer_len
                        call             rt_scan_leave@PLT
.Lgcsite_tabulate_94:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 568]
                        mov              r14, qword ptr [rsp + 576]
                        mov              r15, qword ptr [rsp + 584]
                        add              rsp, 16;                             jmp   tabulate_ω
n87_scan_β:             add              rsp, 16;                             jmp   tabulate_ω
                        .size            n87_scan_bx, .-n87_scan_bx
                        .type            n88_var_bx, @function
n88_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:                                                                    jmp   n89_var_α
n88_var_β:              add              rsp, -64;                            jmp   .Ldisjunction_ω_76_af
                        .size            n88_var_bx, .-n88_var_bx
                        .type            n89_var_bx, @function
n89_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:                                                                    jmp   n90_binop_test_α
n89_var_β:                                                                    jmp   n88_var_β
                        .size            n89_var_bx, .-n89_var_bx
                        .type            n90_binop_test_bx, @function
n90_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_binop_test_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 2080]
                        mov              rcx, qword ptr [rsp + 2088]
                        mov              r8d, 17
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_tabulate_98:   cmp              al, 255;                             jne   .Lbinop_test_vd_237_18
                        call             c_rt_jct_relop@PLT
.Lgcsite_tabulate_97:   mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_test_vd_237_18: push             rax
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
.Lgcsite_tabulate_96:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            je    .Lbinop_test_α_237_4
.Lbinop_test_α_237_3:   mov              rcx, 136
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, 1
                        mov              qword ptr [rsp + 8], rcx
                        add              rsp, 48;                             jmp   .Ldisjunction_γ_76_as
.Lbinop_test_α_237_4:   mov              rcx, 136
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, 0
                        mov              qword ptr [rsp + 8], rcx
                        add              rsp, 48;                             jmp   .Ldisjunction_γ_76_as
n90_binop_test_β:       add              rsp, 16;                             jmp   n89_var_β
                        .size            n90_binop_test_bx, .-n90_binop_test_bx
                        .type            n91_var_bx, @function
n91_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:                                                                    jmp   n92_unop_test_α
n91_var_β:              add              rsp, -64;                            jmp   .Ldisjunction_ω_76_af
                        .size            n91_var_bx, .-n91_var_bx
                        .type            n92_unop_test_bx, @function
n92_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_unop_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 160]
                        cmp              al, 104;                             jne   .Lunop_test_α_240_998
                        add              rsp, 16;                             jmp   n91_var_β
.Lunop_test_α_240_998:  cmp              eax, 0;                              je    .Lunop_test_α_240_999
                        add              rsp, 16;                             jmp   n91_var_β
.Lunop_test_α_240_999:  mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        add              rsp, 48;                             jmp   .Ldisjunction_γ_76_as
n92_unop_test_β:        add              rsp, 16;                             jmp   n91_var_β
                        .size            n92_unop_test_bx, .-n92_unop_test_bx
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
                        lea              rsp, [rbp + 1776]
                        mov              rbp, qword ptr [rbp + 1736];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 1776]
                        mov              rbp, qword ptr [rbp + 1736];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_tabulate:
                        .quad            7491769421146
                        .quad            515396075664
                        .quad            .Lgcmap_tabulate_s
                        .quad            1584
                        .quad            29
                        .quad            87960930222080
                        .quad            17596481011792
                        .quad            35184372088928
                        .quad            17596481011840
                        .quad            35184372088976
                        .quad            17596481011888
                        .quad            35184372089024
                        .quad            17596481011936
                        .quad            193514046488816
                        .quad            17596481012128
                        .quad            404620279022000
                        .quad            17596481012512
                        .quad            35184372089648
                        .quad            17596481012560
                        .quad            17592186045280
                        .quad            17596481012592
                        .quad            52776558134144
                        .quad            17596481012656
                        .quad            17592186045376
                        .quad            17596481012688
                        .quad            140737488356320
                        .quad            17596481012832
                        .quad            17592186045552
                        .quad            17596481012864
                        .quad            52776558134416
                        .quad            17596481012928
                        .quad            87960930223312
                        .quad            17596481013024
                        .quad            281474976711984
.Lgcmap_tabulate_s:     .string          "tabulate"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_tabulate_0:   .quad            99
                        .quad            .Lgcmap_tabulate
                        .quad            9223389618303403760
                        .quad            .Lgccode_tabulate_0
                        .quad            .Lgcsite_tabulate_1-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_0-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_2-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_3-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_9-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_8-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_7-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_6-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_5-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_4-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_11-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_10-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_13-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_12-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_15-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_14-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_22-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_21-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_20-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_19-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_18-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_17-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_16-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_25-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_24-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_23-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_27-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_26-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_34-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_33-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_32-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_31-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_30-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_29-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_28-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_37-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_36-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_35-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_42-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_41-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_40-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_39-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_38-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_45-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_44-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_43-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_48-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_47-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_46-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_51-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_50-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_49-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_53-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_52-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_56-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_55-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_54-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_59-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_58-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_57-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_62-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_61-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_60-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_63-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_70-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_69-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_68-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_67-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_66-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_65-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_64-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_72-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_71-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_79-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_78-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_77-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_76-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_75-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_74-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_73-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_82-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_81-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_80-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_85-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_84-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_83-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_87-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_86-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_90-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_89-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_88-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_93-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_92-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_91-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_95-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_94-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_98-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_97-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            .Lgcsite_tabulate_96-.Lgccode_tabulate_0
                        .quad            65537
                        .popsection
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_format_1:
FN__format:
                        sub              rsp, 1088
                        mov              rdi, rsp
                        xorps            xmm0, xmm0
                        xor              eax, eax
                        movups           xmmword ptr [rdi + 0], xmm0
                        movups           xmmword ptr [rdi + 16], xmm0
                        movups           xmmword ptr [rdi + 32], xmm0
                        movups           xmmword ptr [rdi + 48], xmm0
                        movups           xmmword ptr [rdi + 64], xmm0
                        movups           xmmword ptr [rdi + 80], xmm0
                        movups           xmmword ptr [rdi + 96], xmm0
                        movups           xmmword ptr [rdi + 112], xmm0
                        movups           xmmword ptr [rdi + 128], xmm0
                        movups           xmmword ptr [rdi + 144], xmm0
                        movups           xmmword ptr [rdi + 160], xmm0
                        movups           xmmword ptr [rdi + 176], xmm0
                        movups           xmmword ptr [rdi + 192], xmm0
                        movups           xmmword ptr [rdi + 208], xmm0
                        movups           xmmword ptr [rdi + 224], xmm0
                        movups           xmmword ptr [rdi + 240], xmm0
                        movups           xmmword ptr [rdi + 256], xmm0
                        movups           xmmword ptr [rdi + 272], xmm0
                        movups           xmmword ptr [rdi + 288], xmm0
                        movups           xmmword ptr [rdi + 304], xmm0
                        movups           xmmword ptr [rdi + 320], xmm0
                        movups           xmmword ptr [rdi + 336], xmm0
                        movups           xmmword ptr [rdi + 352], xmm0
                        movups           xmmword ptr [rdi + 368], xmm0
                        movups           xmmword ptr [rdi + 384], xmm0
                        movups           xmmword ptr [rdi + 400], xmm0
                        movups           xmmword ptr [rdi + 416], xmm0
                        movups           xmmword ptr [rdi + 432], xmm0
                        movups           xmmword ptr [rdi + 448], xmm0
                        movups           xmmword ptr [rdi + 464], xmm0
                        movups           xmmword ptr [rdi + 480], xmm0
                        movups           xmmword ptr [rdi + 496], xmm0
                        movups           xmmword ptr [rdi + 512], xmm0
                        movups           xmmword ptr [rdi + 528], xmm0
                        movups           xmmword ptr [rdi + 544], xmm0
                        movups           xmmword ptr [rdi + 560], xmm0
                        movups           xmmword ptr [rdi + 576], xmm0
                        movups           xmmword ptr [rdi + 592], xmm0
                        movups           xmmword ptr [rdi + 608], xmm0
                        movups           xmmword ptr [rdi + 624], xmm0
                        movups           xmmword ptr [rdi + 640], xmm0
                        movups           xmmword ptr [rdi + 656], xmm0
                        movups           xmmword ptr [rdi + 672], xmm0
                        movups           xmmword ptr [rdi + 688], xmm0
                        movups           xmmword ptr [rdi + 704], xmm0
                        movups           xmmword ptr [rdi + 720], xmm0
                        movups           xmmword ptr [rdi + 736], xmm0
                        movups           xmmword ptr [rdi + 752], xmm0
                        movups           xmmword ptr [rdi + 768], xmm0
                        movups           xmmword ptr [rdi + 784], xmm0
                        movups           xmmword ptr [rdi + 800], xmm0
                        movups           xmmword ptr [rdi + 816], xmm0
                        movups           xmmword ptr [rdi + 832], xmm0
                        movups           xmmword ptr [rdi + 848], xmm0
                        movups           xmmword ptr [rdi + 864], xmm0
                        movups           xmmword ptr [rdi + 880], xmm0
                        movups           xmmword ptr [rdi + 896], xmm0
                        movups           xmmword ptr [rdi + 912], xmm0
                        movups           xmmword ptr [rdi + 928], xmm0
                        movups           xmmword ptr [rdi + 944], xmm0
                        movups           xmmword ptr [rdi + 960], xmm0
                        movups           xmmword ptr [rdi + 976], xmm0
                        movups           xmmword ptr [rdi + 992], xmm0
                        movups           xmmword ptr [rdi + 1008], xmm0
                        movups           xmmword ptr [rdi + 1024], xmm0
                        movups           xmmword ptr [rdi + 1040], xmm0
                        movups           xmmword ptr [rdi + 1056], xmm0
                        mov              qword ptr [rdi + 1072], rax
                        mov              eax, 0                               # GCANCHOR .Lgcmap_format qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 1080], rbp
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
.Lline_mark_α_305_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_306_0: .quad .Lline_mark_α_306_0_s; .popsection
.Lline_mark_α_306_0_s:  .string          "concord.icn"
                        .size            n00001_line_mark_bx, .-n00001_line_mark_bx
                        .type            n00002_line_mark_bx, @function
n00002_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_307_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00003_bound_α:           mov              qword ptr [rsp + 256], rsp;          jmp   n00004_var_α
n00003_bound_β:                                                                 jmp   n00004_var_α
                        .size            n00003_bound_bx, .-n00003_bound_bx
                        .type            n00004_var_bx, @function
n00004_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_var_α:                                                                   jmp   n00005_unop_α
                        .size            n00004_var_bx, .-n00004_var_bx
                        .type            n00005_unop_bx, @function
n00005_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_unop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1104]          # var
                        mov              rsi, qword ptr [rsp + 1112]
                        call             qword ptr [rip + rt_size_d@GOTPCREL]
.Lgcsite_format_2:      cmp              al, 255;                             jne   .Lunop_vd_313_19
                        call             c_rt_size_d@PLT
.Lgcsite_format_1:      mov              r9,  qword ptr [rip + rtccb+48]
.Lunop_vd_313_19:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:37
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
n00006_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_314_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00007_var_α
.Llit_integer_α_314_0:  .quad            2
                        .size            n00006_lit_integer_bx, .-n00006_lit_integer_bx
                        .type            n00007_var_bx, @function
n00007_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11872]          # colmax
                        mov              rdx, qword ptr [r9 + 11880]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00008_coerce_numeric_α
                        .size            n00007_var_bx, .-n00007_var_bx
                        .type            n00008_coerce_numeric_bx, @function
n00008_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_317_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_317_0
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_317_0
.Lcoerce_numeric_α_317_1:
                        mov              rax, qword ptr [rsp + 16]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 24]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n00009_binop_α
.Lcoerce_numeric_α_317_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_format_5:      cmp              al, 255;                             jne   .Lcoerce_numeric_vd_317_20
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_format_4:      mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_317_20:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_3:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_317_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00010_line_mark_α
.Lcoerce_numeric_α_317_999:
                                                                              jmp   n00009_binop_α
                        .size            n00008_coerce_numeric_bx, .-n00008_coerce_numeric_bx
                        .type            n00009_binop_bx, @function
n00009_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rax, qword ptr [rsp + 24]
                        cmp              cl, 3;                               jne   .Lbinop_α_318_2
                        add              rax, 2;                              jo    .Lbinop_α_318_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_318_7
.Lbinop_α_318_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_318_0
                        mov              rsi, qword ptr [rsp + 24]            # coerce_numeric
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_318_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_318_4
.Lbinop_α_318_3:        movq             xmm0, rsi
.Lbinop_α_318_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_318_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_318_7:                                                              jmp   n00011_binop_test_α
.Lbinop_α_318_0:        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 48]            # lit_integer
                        mov              rcx, qword ptr [rsp + 56]
                        call             rt_add_big@PLT
.Lgcsite_format_7:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_318_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00010_line_mark_α
.Lbinop_α_318_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_6:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00011_binop_test_α
                        .size            n00009_binop_bx, .-n00009_binop_bx
                        .type            n00011_binop_test_bx, @function
n00011_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_binop_test_α:      sub              rsp, 16
                        mov              eax, dword ptr [rsp + 80]
                        cmp              al, 3;                               jne   .Lbinop_test_α_319_2
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lbinop_test_α_319_2
.Lbinop_test_α_319_1:   mov              rax, qword ptr [rsp + 88]
                        mov              rcx, qword ptr [rsp + 24]
                        cmp              rax, rcx;                            jg    .Lbinop_test_α_319_998
                        add              rsp, 16;                             jmp   n00010_line_mark_α
.Lbinop_test_α_319_998: mov              rcx, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rcx;            jmp   n00012_line_mark_α
.Lbinop_test_α_319_2:   mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 7
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_format_13:     cmp              al, 255;                             jne   .Lbinop_test_vd_319_22
                        call             c_rt_jct_relop@PLT
.Lgcsite_format_12:     mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_test_vd_319_22: push             rax
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
.Lgcsite_format_11:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_319_999
                        add              rsp, 16;                             jmp   n00010_line_mark_α
.Lbinop_test_α_319_999: mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        lea              r8, [rsp + 0]
                        call             qword ptr [rip + rt_relop_val_coerce@GOTPCREL]
.Lgcsite_format_10:     cmp              al, 255;                             jne   .Lbinop_test_vd_319_21
                        call             c_rt_relop_val_coerce@PLT
.Lgcsite_format_9:      mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_test_vd_319_21: push             rax                                  # gc_poll bb_binop_relop_val.cpp:59
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_8:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00012_line_mark_α
                        .size            n00011_binop_test_bx, .-n00011_binop_test_bx
                        .type            n00012_line_mark_bx, @function
n00012_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_320_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
.Lline_mark_α_322_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00014_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_324_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00015_var_α
.Llit_integer_α_324_0:  .quad            2
                        .size            n00014_lit_integer_bx, .-n00014_lit_integer_bx
                        .type            n00015_var_bx, @function
n00015_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11872]          # colmax
                        mov              rdx, qword ptr [r9 + 11880]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00016_coerce_numeric_α
                        .size            n00015_var_bx, .-n00015_var_bx
                        .type            n00016_coerce_numeric_bx, @function
n00016_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_327_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_327_0
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_327_0
.Lcoerce_numeric_α_327_1:
                        mov              rax, qword ptr [rsp + 16]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 24]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n00017_binop_α
.Lcoerce_numeric_α_327_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_format_16:     cmp              al, 255;                             jne   .Lcoerce_numeric_vd_327_23
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_format_15:     mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_327_23:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_14:     mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_327_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00018_line_mark_α
.Lcoerce_numeric_α_327_999:
                                                                              jmp   n00017_binop_α
                        .size            n00016_coerce_numeric_bx, .-n00016_coerce_numeric_bx
                        .type            n00017_binop_bx, @function
n00017_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rax, qword ptr [rsp + 24]
                        cmp              cl, 3;                               jne   .Lbinop_α_328_2
                        add              rax, 2;                              jo    .Lbinop_α_328_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_328_7
.Lbinop_α_328_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_328_0
                        mov              rsi, qword ptr [rsp + 24]            # coerce_numeric
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_328_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_328_4
.Lbinop_α_328_3:        movq             xmm0, rsi
.Lbinop_α_328_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_328_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_328_7:                                                              jmp   n00019_assign_α
.Lbinop_α_328_0:        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 48]            # lit_integer
                        mov              rcx, qword ptr [rsp + 56]
                        call             rt_add_big@PLT
.Lgcsite_format_18:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_328_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00018_line_mark_α
.Lbinop_α_328_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_17:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00019_assign_α
                        .size            n00017_binop_bx, .-n00017_binop_bx
                        .type            n00019_assign_bx, @function
n00019_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n00018_line_mark_α
                        .size            n00019_assign_bx, .-n00019_assign_bx
                        .type            n00018_line_mark_bx, @function
n00018_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_330_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00020_bound_α:           mov              qword ptr [rsp + 1024], rsp;         jmp   n00021_var_ref_α
                        .size            n00020_bound_bx, .-n00020_bound_bx
                        .type            n00021_var_ref_bx, @function
n00021_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 1264]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00022_var_α
                        .size            n00021_var_ref_bx, .-n00021_var_ref_bx
                        .type            n00022_var_bx, @function
n00022_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_var_α:                                                                   jmp   n00023_lit_integer_α
                        .size            n00022_var_bx, .-n00022_var_bx
                        .type            n00023_lit_integer_bx, @function
n00023_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_338_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00024_coerce_numeric_α
.Llit_integer_α_338_0:  .quad            1
                        .size            n00023_lit_integer_bx, .-n00023_lit_integer_bx
                        .type            n00024_coerce_numeric_bx, @function
n00024_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 1184]          # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_340_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_340_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_340_0
.Lcoerce_numeric_α_340_1:
                        mov              rax, qword ptr [rsp + 1184]          # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 1192]          # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n00025_binop_α
.Lcoerce_numeric_α_340_0:
                        lea              rdi, [rsp + 1184]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_format_21:     cmp              al, 255;                             jne   .Lcoerce_numeric_vd_340_24
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_format_20:     mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_340_24:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_19:     mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_340_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00026_unmark_α
.Lcoerce_numeric_α_340_999:
                                                                              jmp   n00025_binop_α
                        .size            n00024_coerce_numeric_bx, .-n00024_coerce_numeric_bx
                        .type            n00025_binop_bx, @function
n00025_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rax, qword ptr [rsp + 24]
                        cmp              cl, 3;                               jne   .Lbinop_α_341_2
                        sub              rax, 1;                              jo    .Lbinop_α_341_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_341_7
.Lbinop_α_341_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_341_0
                        mov              rsi, qword ptr [rsp + 24]            # coerce_numeric
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_341_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_341_4
.Lbinop_α_341_3:        movq             xmm0, rsi
.Lbinop_α_341_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_341_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_341_7:                                                              jmp   n00027_assign_α
.Lbinop_α_341_0:        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        call             rt_sub_big@PLT
.Lgcsite_format_23:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_341_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00026_unmark_α
.Lbinop_α_341_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_22:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00027_assign_α
                        .size            n00025_binop_bx, .-n00025_binop_bx
                        .type            n00027_assign_bx, @function
n00027_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n00028_subscript_α
                        .size            n00027_assign_bx, .-n00027_assign_bx
                        .type            n00028_subscript_bx, @function
n00028_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_subscript_α:       sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_343_1:    mov              rdi, qword ptr [rsp + 64]            # var_ref
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # assign
                        mov              rcx, qword ptr [rsp + 24]
                        test             eax, eax;                            jne   .Lsubscript_α_343_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_format_29:     cmp              al, 255;                             jne   .Lsubscript_vd_343_26
                        call             c_rt_subscript_val_strict@PLT
.Lgcsite_format_28:     mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_343_26:  cmp              al, 255;                             jne   .Lsubscript_α_343_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_343_1
.Lsubscript_α_343_4:    push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_format_27:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_343_3
.Lsubscript_α_343_2:    call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_format_26:     cmp              al, 255;                             jne   .Lsubscript_vd_343_25
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_format_25:     mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_343_25:  push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_format_24:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_343_3:    cmp              al, 104;                             jne   .Lsubscript_α_343_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n00026_unmark_α
.Lsubscript_α_343_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00029_deref_α
                        .size            n00028_subscript_bx, .-n00028_subscript_bx
                        .type            n00029_deref_bx, @function
n00029_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_format_31:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_344_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n00026_unmark_α
.Lderef_α_344_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_30:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00030_lit_string_α
                        .size            n00029_deref_bx, .-n00029_deref_bx
                        .type            n00030_lit_string_bx, @function
n00030_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_345_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00031_binop_test_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_345_0: .quad .Llit_string_α_345_0_s; .popsection
.Llit_string_α_345_0_s: .string          " "
                        .size            n00030_lit_string_bx, .-n00030_lit_string_bx
                        .type            n00031_binop_test_bx, @function
n00031_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_binop_test_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 16
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_format_34:     cmp              al, 255;                             jne   .Lbinop_test_vd_346_27
                        call             c_rt_jct_relop@PLT
.Lgcsite_format_33:     mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_test_vd_346_27: push             rax
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
.Lgcsite_format_32:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            je    .Lbinop_test_α_346_4
.Lbinop_test_α_346_3:   mov              rcx, 136
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, 1
                        mov              qword ptr [rsp + 8], rcx;            jmp   n00032_line_mark_α
.Lbinop_test_α_346_4:   mov              rcx, 136
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, 0
                        mov              qword ptr [rsp + 8], rcx;            jmp   n00032_line_mark_α
                        .size            n00031_binop_test_bx, .-n00031_binop_test_bx
                        .type            n00032_line_mark_bx, @function
n00032_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_347_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00033_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 1392]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00034_lit_integer_α
                        .size            n00033_var_ref_bx, .-n00033_var_ref_bx
                        .type            n00034_lit_integer_bx, @function
n00034_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_351_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00035_var_α
.Llit_integer_α_351_0:  .quad            1
                        .size            n00034_lit_integer_bx, .-n00034_lit_integer_bx
                        .type            n00035_var_bx, @function
n00035_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_var_α:                                                                   jmp   n00036_subscript_α
                        .size            n00035_var_bx, .-n00035_var_bx
                        .type            n00036_subscript_bx, @function
n00036_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8, qword ptr [rsp + 1312]           # var
                        mov              r9, qword ptr [rsp + 1320]
                        call             rt_section_var_strict@PLT
.Lgcsite_format_36:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lsubscript_α_354_999
                        add              rsp, 16
                        add              rsp, -48;                            jmp   n00037_line_mark_α
.Lsubscript_α_354_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_section.cpp:58
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_35:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00038_deref_α
                        .size            n00036_subscript_bx, .-n00036_subscript_bx
                        .type            n00038_deref_bx, @function
n00038_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_format_38:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_355_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00037_line_mark_α
.Lderef_α_355_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_37:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00039_line_mark_α
                        .size            n00038_deref_bx, .-n00038_deref_bx
                        .type            n00039_line_mark_bx, @function
n00039_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_356_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_356_stno
                        .long            0
                        .long            83
                        .quad            .Lstnof1
                        .popsection
n00039_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 83;             jmp   n00040_call_byname_α
                        .size            n00039_line_mark_bx, .-n00039_line_mark_bx
                        .type            n00040_call_byname_bx, @function
n00040_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd359: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd359]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_format_39:     mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_format_40:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_358_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00037_line_mark_α
.Lcall_byname_α_358_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00037_line_mark_α
                        .size            n00040_call_byname_bx, .-n00040_call_byname_bx
                        .type            n00037_line_mark_bx, @function
n00037_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_360_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00041_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_362_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00042_var_ref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_362_0: .quad .Llit_string_α_362_0_s; .popsection
.Llit_string_α_362_0_s: .string          " "
                        .size            n00041_lit_string_bx, .-n00041_lit_string_bx
                        .type            n00042_var_ref_bx, @function
n00042_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064176                      # namewidth
                        mov              qword ptr [rsp + 8], rax;            jmp   n00043_deref_α
                        .size            n00042_var_ref_bx, .-n00042_var_ref_bx
                        .type            n00043_deref_bx, @function
n00043_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_format_42:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_365_999
                        add              rsp, 16
                        add              rsp, -128;                           jmp   n00044_unmark_α
.Lderef_α_365_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_41:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00045_line_mark_α
                        .size            n00043_deref_bx, .-n00043_deref_bx
                        .type            n00045_line_mark_bx, @function
n00045_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_366_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_366_stno
                        .long            0
                        .long            84
                        .quad            .Lstnof1
                        .popsection
n00045_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 84;             jmp   n00046_call_byname_α
                        .size            n00045_line_mark_bx, .-n00045_line_mark_bx
                        .type            n00046_call_byname_bx, @function
n00046_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_call_byname_α:     sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd369: .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd369]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_format_43:     mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_format_44:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_368_999
                        add              rsp, 16
                        add              rsp, -112;                           jmp   n00044_unmark_α
.Lcall_byname_α_368_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00047_var_α
                        .size            n00046_call_byname_bx, .-n00046_call_byname_bx
                        .type            n00047_var_bx, @function
n00047_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_var_α:                                                                   jmp   n00048_var_α
                        .size            n00047_var_bx, .-n00047_var_bx
                        .type            n00048_var_bx, @function
n00048_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_var_α:                                                                   jmp   n00049_lit_integer_α
                        .size            n00048_var_bx, .-n00048_var_bx
                        .type            n00049_lit_integer_bx, @function
n00049_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_374_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00050_coerce_numeric_α
.Llit_integer_α_374_0:  .quad            1
                        .size            n00049_lit_integer_bx, .-n00049_lit_integer_bx
                        .type            n00050_coerce_numeric_bx, @function
n00050_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 1440]          # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_376_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_376_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_376_0
.Lcoerce_numeric_α_376_1:
                        mov              rax, qword ptr [rsp + 1440]          # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 1448]          # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n00051_binop_α
.Lcoerce_numeric_α_376_0:
                        lea              rdi, [rsp + 1440]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_format_47:     cmp              al, 255;                             jne   .Lcoerce_numeric_vd_376_28
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_format_46:     mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_376_28:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_45:     mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_376_999
                        add              rsp, 16
                        add              rsp, -80;                            jmp   n00044_unmark_α
.Lcoerce_numeric_α_376_999:
                                                                              jmp   n00051_binop_α
                        .size            n00050_coerce_numeric_bx, .-n00050_coerce_numeric_bx
                        .type            n00051_binop_bx, @function
n00051_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rax, qword ptr [rsp + 24]
                        cmp              cl, 3;                               jne   .Lbinop_α_377_2
                        add              rax, 1;                              jo    .Lbinop_α_377_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_377_7
.Lbinop_α_377_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_377_0
                        mov              rsi, qword ptr [rsp + 24]            # coerce_numeric
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_377_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_377_4
.Lbinop_α_377_3:        movq             xmm0, rsi
.Lbinop_α_377_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_377_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_377_7:                                                              jmp   n00052_lit_integer_α
.Lbinop_α_377_0:        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        call             rt_add_big@PLT
.Lgcsite_format_49:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_377_999
                        add              rsp, 16
                        add              rsp, -64;                            jmp   n00044_unmark_α
.Lbinop_α_377_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_48:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00052_lit_integer_α
                        .size            n00051_binop_bx, .-n00051_binop_bx
                        .type            n00052_lit_integer_bx, @function
n00052_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_378_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00053_subscript_α
.Llit_integer_α_378_0:  .quad            0
                        .size            n00052_lit_integer_bx, .-n00052_lit_integer_bx
                        .type            n00053_subscript_bx, @function
n00053_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1600]          # var
                        mov              rsi, qword ptr [rsp + 1608]
                        mov              rdx, qword ptr [rsp + 32]            # binop
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        call             subscript_get2_strict@PLT
.Lgcsite_format_51:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lsubscript_α_379_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00044_unmark_α
.Lsubscript_α_379_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_section.cpp:79
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_50:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00054_binop_α
                        .size            n00053_subscript_bx, .-n00053_subscript_bx
                        .type            n00054_binop_bx, @function
n00054_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 96]            # call
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_format_54:     cmp              al, 255;                             jne   .Lbinop_vd_380_29
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_format_53:     mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_380_29:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_52:     mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_380_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00044_unmark_α
.Lbinop_α_380_999:                                                            jmp   n00055_assign_α
                        .size            n00054_binop_bx, .-n00054_binop_bx
                        .type            n00055_assign_bx, @function
n00055_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx;         jmp   n00056_conjunction_α
                        .size            n00055_assign_bx, .-n00055_assign_bx
                        .type            n00056_conjunction_bx, @function
n00056_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_conjunction_α:     mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 824], rax;          jmp   n00044_unmark_α
n00056_conjunction_β:                                                           jmp   n00044_unmark_α
                        .size            n00056_conjunction_bx, .-n00056_conjunction_bx
                        .type            n00044_unmark_bx, @function
n00044_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_unmark_α:          add              rsp, 528;                            jmp   n00057_line_mark_α
                        .size            n00044_unmark_bx, .-n00044_unmark_bx
                        .type            n00057_line_mark_bx, @function
n00057_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_385_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00026_unmark_α:                                                                jmp   n00020_bound_α
                        .size            n00026_unmark_bx, .-n00026_unmark_bx
                        .type            n00010_line_mark_bx, @function
n00010_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_389_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00058_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 1184]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00059_lit_integer_α
                        .size            n00058_var_ref_bx, .-n00058_var_ref_bx
                        .type            n00059_lit_integer_bx, @function
n00059_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_393_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00060_lit_integer_α
.Llit_integer_α_393_0:  .quad            1
                        .size            n00059_lit_integer_bx, .-n00059_lit_integer_bx
                        .type            n00060_lit_integer_bx, @function
n00060_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_394_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00061_subscript_α
.Llit_integer_α_394_0:  .quad            18446744073709551614
                        .size            n00060_lit_integer_bx, .-n00060_lit_integer_bx
                        .type            n00061_subscript_bx, @function
n00061_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # var_ref
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             rt_section_var_strict@PLT
.Lgcsite_format_56:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lsubscript_α_395_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   format_ω
.Lsubscript_α_395_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_section.cpp:58
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_55:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00062_deref_α
                        .size            n00061_subscript_bx, .-n00061_subscript_bx
                        .type            n00062_deref_bx, @function
n00062_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_format_58:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_396_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   format_ω
.Lderef_α_396_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_format_57:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00063_line_mark_α
                        .size            n00062_deref_bx, .-n00062_deref_bx
                        .type            n00063_line_mark_bx, @function
n00063_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_397_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_397_stno
                        .long            0
                        .long            86
                        .quad            .Lstnof1
                        .popsection
n00063_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 86;             jmp   n00064_call_byname_α
                        .size            n00063_line_mark_bx, .-n00063_line_mark_bx
                        .type            n00064_call_byname_bx, @function
n00064_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd400: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd400]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_format_59:     mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_format_60:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_399_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   format_ω
.Lcall_byname_α_399_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 96;                             jmp   format_ω
                        .size            n00064_call_byname_bx, .-n00064_call_byname_bx
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
                        lea              rsp, [rbp + 1104]
                        mov              rbp, qword ptr [rbp + 1080];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 1104]
                        mov              rbp, qword ptr [rbp + 1080];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_format:
                        .quad            4674270874970
                        .quad            515396075600
                        .quad            .Lgcmap_format_s
                        .quad            992
                        .quad            5
                        .quad            281474976710656
                        .quad            17596481011968
                        .quad            650910883643664
                        .quad            17596481012576
                        .quad            123145302311792
.Lgcmap_format_s:       .string          "format"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_format_1:     .quad            61
                        .quad            .Lgcmap_format
                        .quad            9223389622598370384
                        .quad            .Lgccode_format_1
                        .quad            .Lgcsite_format_2-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_1-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_0-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_5-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_4-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_3-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_7-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_6-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_13-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_12-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_11-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_10-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_9-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_8-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_16-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_15-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_14-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_18-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_17-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_21-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_20-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_19-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_23-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_22-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_29-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_28-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_27-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_26-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_25-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_24-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_31-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_30-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_34-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_33-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_32-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_36-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_35-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_38-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_37-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_39-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_40-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_42-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_41-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_43-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_44-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_47-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_46-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_45-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_49-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_48-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_51-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_50-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_54-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_53-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_52-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_56-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_55-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_58-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_57-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_59-.Lgccode_format_1
                        .quad            65537
                        .quad            .Lgcsite_format_60-.Lgccode_format_1
                        .quad            65537
                        .popsection
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_item_2:
FN__item:
                        lea              rax, [rsp + -1240]
                        mov              qword ptr [rax + 1168], rbp
                        mov              rcx, qword ptr [rsp + 0]
                        mov              qword ptr [rax + 1176], rcx
                        mov              rcx, qword ptr [rsp + 8]
                        mov              qword ptr [rax + 1184], rcx
                        lea              rcx, [rsp + 40]
                        mov              qword ptr [rax + 1192], rcx
                        lea              rbp, [rax + 1168]
                        mov              rsp, rax
                        mov              eax, 0                               # GCANCHOR .Lgcmap_item qword ptr [rsp + 1048]
                        mov              rdi, rsp
                        xorps            xmm0, xmm0
                        xor              eax, eax
                        movups           xmmword ptr [rdi + 0], xmm0
                        movups           xmmword ptr [rdi + 16], xmm0
                        movups           xmmword ptr [rdi + 32], xmm0
                        movups           xmmword ptr [rdi + 48], xmm0
                        movups           xmmword ptr [rdi + 64], xmm0
                        movups           xmmword ptr [rdi + 80], xmm0
                        movups           xmmword ptr [rdi + 96], xmm0
                        movups           xmmword ptr [rdi + 112], xmm0
                        movups           xmmword ptr [rdi + 128], xmm0
                        movups           xmmword ptr [rdi + 144], xmm0
                        movups           xmmword ptr [rdi + 160], xmm0
                        movups           xmmword ptr [rdi + 176], xmm0
                        movups           xmmword ptr [rdi + 192], xmm0
                        movups           xmmword ptr [rdi + 208], xmm0
                        movups           xmmword ptr [rdi + 224], xmm0
                        movups           xmmword ptr [rdi + 240], xmm0
                        movups           xmmword ptr [rdi + 256], xmm0
                        movups           xmmword ptr [rdi + 272], xmm0
                        movups           xmmword ptr [rdi + 288], xmm0
                        movups           xmmword ptr [rdi + 304], xmm0
                        movups           xmmword ptr [rdi + 320], xmm0
                        movups           xmmword ptr [rdi + 336], xmm0
                        movups           xmmword ptr [rdi + 352], xmm0
                        movups           xmmword ptr [rdi + 368], xmm0
                        movups           xmmword ptr [rdi + 384], xmm0
                        movups           xmmword ptr [rdi + 400], xmm0
                        movups           xmmword ptr [rdi + 416], xmm0
                        movups           xmmword ptr [rdi + 432], xmm0
                        movups           xmmword ptr [rdi + 448], xmm0
                        movups           xmmword ptr [rdi + 464], xmm0
                        movups           xmmword ptr [rdi + 480], xmm0
                        movups           xmmword ptr [rdi + 496], xmm0
                        movups           xmmword ptr [rdi + 512], xmm0
                        movups           xmmword ptr [rdi + 528], xmm0
                        movups           xmmword ptr [rdi + 544], xmm0
                        movups           xmmword ptr [rdi + 560], xmm0
                        movups           xmmword ptr [rdi + 576], xmm0
                        movups           xmmword ptr [rdi + 592], xmm0
                        movups           xmmword ptr [rdi + 608], xmm0
                        movups           xmmword ptr [rdi + 624], xmm0
                        movups           xmmword ptr [rdi + 640], xmm0
                        movups           xmmword ptr [rdi + 656], xmm0
                        movups           xmmword ptr [rdi + 672], xmm0
                        movups           xmmword ptr [rdi + 688], xmm0
                        movups           xmmword ptr [rdi + 704], xmm0
                        movups           xmmword ptr [rdi + 720], xmm0
                        movups           xmmword ptr [rdi + 736], xmm0
                        movups           xmmword ptr [rdi + 752], xmm0
                        movups           xmmword ptr [rdi + 768], xmm0
                        movups           xmmword ptr [rdi + 784], xmm0
                        movups           xmmword ptr [rdi + 800], xmm0
                        movups           xmmword ptr [rdi + 816], xmm0
                        movups           xmmword ptr [rdi + 832], xmm0
                        movups           xmmword ptr [rdi + 848], xmm0
                        movups           xmmword ptr [rdi + 864], xmm0
                        movups           xmmword ptr [rdi + 880], xmm0
                        movups           xmmword ptr [rdi + 896], xmm0
                        movups           xmmword ptr [rdi + 912], xmm0
                        movups           xmmword ptr [rdi + 928], xmm0
                        movups           xmmword ptr [rdi + 944], xmm0
                        movups           xmmword ptr [rdi + 960], xmm0
                        movups           xmmword ptr [rdi + 976], xmm0
                        movups           xmmword ptr [rdi + 992], xmm0
                        movups           xmmword ptr [rdi + 1008], xmm0
                        movups           xmmword ptr [rdi + 1024], xmm0
                        mov              r9,  qword ptr [rip + rtccb+48]
item_α_body:
                        lea              rax, [rip + n00065_suspend_β]
                        mov              qword ptr [rbp + -192], rax
                        .type            n00066_line_mark_bx, @function
n00066_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_466_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_467_0: .quad .Lline_mark_α_467_0_s; .popsection
.Lline_mark_α_467_0_s:  .string          "concord.icn"
                        .size            n00066_line_mark_bx, .-n00066_line_mark_bx
                        .type            n00067_line_mark_bx, @function
n00067_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_468_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00068_bound_α:           mov              qword ptr [rbp + -1104], rsp;        jmp   n00069_line_mark_α
                        .size            n00068_bound_bx, .-n00068_bound_bx
                        .type            n00069_line_mark_bx, @function
n00069_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_472_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_472_stno
                        .long            0
                        .long            94
                        .quad            .Lstnof1
                        .popsection
n00069_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 94;             jmp   n00070_call_byname_α
                        .size            n00069_line_mark_bx, .-n00069_line_mark_bx
                        .type            n00070_call_byname_bx, @function
n00070_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_call_byname_α:     sub              rsp, 16
                        .section         .rodata
.Lcall_byname_α_rkfnzd475: .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd475]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 262295
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_item_0:        mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_item_1:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_474_999
                        add              rsp, 16;                             jmp   item_ω
.Lcall_byname_α_474_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00071_assign_α
                        .size            n00070_call_byname_bx, .-n00070_call_byname_bx
                        .type            n00071_assign_bx, @function
n00071_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + -176], rax
                        mov              qword ptr [rbp + -168], rdx;         jmp   n00072_line_mark_α
                        .size            n00071_assign_bx, .-n00071_assign_bx
                        .type            n00072_line_mark_bx, @function
n00072_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_477_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
.Lline_mark_α_479_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00074_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_481_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00075_var_α
.Llit_integer_α_481_0:  .quad            1
                        .size            n00074_lit_integer_bx, .-n00074_lit_integer_bx
                        .type            n00075_var_bx, @function
n00075_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11904]          # lineno
                        mov              rdx, qword ptr [r9 + 11912]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00076_coerce_numeric_α
                        .size            n00075_var_bx, .-n00075_var_bx
                        .type            n00076_coerce_numeric_bx, @function
n00076_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_484_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_484_0
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_484_0
.Lcoerce_numeric_α_484_1:
                        mov              rax, qword ptr [rsp + 16]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 24]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n00077_binop_α
.Lcoerce_numeric_α_484_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_item_4:        cmp              al, 255;                             jne   .Lcoerce_numeric_vd_484_30
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_item_3:        mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_484_30:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_2:        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_484_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00078_line_mark_α
.Lcoerce_numeric_α_484_999:
                                                                              jmp   n00077_binop_α
                        .size            n00076_coerce_numeric_bx, .-n00076_coerce_numeric_bx
                        .type            n00077_binop_bx, @function
n00077_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rax, qword ptr [rsp + 24]
                        cmp              cl, 3;                               jne   .Lbinop_α_485_2
                        add              rax, 1;                              jo    .Lbinop_α_485_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_485_7
.Lbinop_α_485_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_485_0
                        mov              rsi, qword ptr [rsp + 24]            # coerce_numeric
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_485_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_485_4
.Lbinop_α_485_3:        movq             xmm0, rsi
.Lbinop_α_485_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_485_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_485_7:                                                              jmp   n00079_assign_α
.Lbinop_α_485_0:        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 48]            # lit_integer
                        mov              rcx, qword ptr [rsp + 56]
                        call             rt_add_big@PLT
.Lgcsite_item_6:        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_485_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00078_line_mark_α
.Lbinop_α_485_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_5:        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00079_assign_α
                        .size            n00077_binop_bx, .-n00077_binop_bx
                        .type            n00079_assign_bx, @function
n00079_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11904], rax          # lineno
                        mov              qword ptr [r9 + 11912], rdx;         jmp   n00078_line_mark_α
                        .size            n00079_assign_bx, .-n00079_assign_bx
                        .type            n00078_line_mark_bx, @function
n00078_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_487_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00080_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064192                      # lineno
                        mov              qword ptr [rsp + 8], rax;            jmp   n00081_lit_integer_α
                        .size            n00080_var_ref_bx, .-n00080_var_ref_bx
                        .type            n00081_lit_integer_bx, @function
n00081_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_491_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00082_deref_α
.Llit_integer_α_491_0:  .quad            6
                        .size            n00081_lit_integer_bx, .-n00081_lit_integer_bx
                        .type            n00082_deref_bx, @function
n00082_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_item_8:        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_492_999
                        add              rsp, 16
                        add              rsp, -96;                            jmp   n00083_line_mark_α
.Lderef_α_492_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_7:        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00084_line_mark_α
                        .size            n00082_deref_bx, .-n00082_deref_bx
                        .type            n00084_line_mark_bx, @function
n00084_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_493_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_493_stno
                        .long            0
                        .long            96
                        .quad            .Lstnof1
                        .popsection
n00084_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 96;             jmp   n00085_call_byname_α
                        .size            n00084_line_mark_bx, .-n00084_line_mark_bx
                        .type            n00085_call_byname_bx, @function
n00085_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_call_byname_α:     sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd496: .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd496]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 327837
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_item_9:        mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_item_10:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_495_999
                        add              rsp, 16
                        add              rsp, -80;                            jmp   n00083_line_mark_α
.Lcall_byname_α_495_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00086_lit_string_α
                        .size            n00085_call_byname_bx, .-n00085_call_byname_bx
                        .type            n00086_lit_string_bx, @function
n00086_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_497_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00087_var_ref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_497_0: .quad .Llit_string_α_497_0_s; .popsection
.Llit_string_α_497_0_s: .string          "  "
                        .size            n00086_lit_string_bx, .-n00086_lit_string_bx
                        .type            n00087_var_ref_bx, @function
n00087_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + -176]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00088_deref_α
                        .size            n00087_var_ref_bx, .-n00087_var_ref_bx
                        .type            n00088_deref_bx, @function
n00088_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_item_12:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_500_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00083_line_mark_α
.Lderef_α_500_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_11:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00089_line_mark_α
                        .size            n00088_deref_bx, .-n00088_deref_bx
                        .type            n00089_line_mark_bx, @function
n00089_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_501_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_501_stno
                        .long            0
                        .long            96
                        .quad            .Lstnof1
                        .popsection
n00089_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 96;             jmp   n00090_call_byname_α
                        .size            n00089_line_mark_bx, .-n00089_line_mark_bx
                        .type            n00090_call_byname_bx, @function
n00090_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_call_byname_α:     sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd504: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd504]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_item_13:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_item_14:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_byname_α_503_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00083_line_mark_α
.Lcall_byname_α_503_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00083_line_mark_α
                        .size            n00090_call_byname_bx, .-n00090_call_byname_bx
                        .type            n00083_line_mark_bx, @function
n00083_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_505_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00091_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + -176]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00092_deref_α
                        .size            n00091_var_ref_bx, .-n00091_var_ref_bx
                        .type            n00092_deref_bx, @function
n00092_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_item_16:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_509_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00093_line_mark_α
.Lderef_α_509_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_15:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00094_line_mark_α
                        .size            n00092_deref_bx, .-n00092_deref_bx
                        .type            n00094_line_mark_bx, @function
n00094_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_510_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_510_stno
                        .long            0
                        .long            97
                        .quad            .Lstnof1
                        .popsection
n00094_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97;             jmp   n00095_call_byname_α
                        .size            n00094_line_mark_bx, .-n00094_line_mark_bx
                        .type            n00095_call_byname_bx, @function
n00095_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd513: .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd513]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 196743
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_item_17:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_item_18:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_512_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00093_line_mark_α
.Lcall_byname_α_512_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00096_assign_α
                        .size            n00095_call_byname_bx, .-n00095_call_byname_bx
                        .type            n00096_assign_bx, @function
n00096_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + -176], rax
                        mov              qword ptr [rbp + -168], rdx;         jmp   n00093_line_mark_α
                        .size            n00096_assign_bx, .-n00096_assign_bx
                        .type            n00093_line_mark_bx, @function
n00093_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_515_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00097_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_517_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00098_assign_α
.Llit_integer_α_517_0:  .quad            1
                        .size            n00097_lit_integer_bx, .-n00097_lit_integer_bx
                        .type            n00098_assign_bx, @function
n00098_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + -144], rax
                        mov              qword ptr [rbp + -136], rdx;         jmp   n00099_line_mark_α
                        .size            n00098_assign_bx, .-n00098_assign_bx
                        .type            n00099_line_mark_bx, @function
n00099_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_519_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00100_var_α:                                                                   jmp   n00101_scan_enter_α
                        .size            n00100_var_bx, .-n00100_var_bx
                        .type            n00101_scan_enter_bx, @function
n00101_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_scan_enter_α:      sub              rsp, 16
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rbp + -1052], 0
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rbp + -1040], r14
                        mov              qword ptr [rbp + -1032], r15
                        mov              rdi, qword ptr [rbp + -176]          # lo
                        mov              rsi, qword ptr [rbp + -168]          # hi
                        call             rt_scan_enter@PLT
.Lgcsite_item_20:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_item_19:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jne   .Lscan_enter_α_524_999
                        add              rsp, 16
                        add              rsp, 272;                            jmp   n00102_unmark_α
.Lscan_enter_α_524_999: mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n00103_bound_α
                        .size            n00101_scan_enter_bx, .-n00101_scan_enter_bx
                        .type            n00103_bound_bx, @function
n00103_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_bound_α:           mov              qword ptr [rbp + -864], rsp;         jmp   n00104_lit_charset_α
n00103_bound_β:                                                                 jmp   n00104_lit_charset_α
                        .size            n00103_bound_bx, .-n00103_bound_bx
                        .type            n00104_lit_charset_bx, @function
n00104_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_lit_charset_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4294967295
                        mov              rax, qword ptr [rip + .Llit_charset_α_527_0]
                        mov              qword ptr [rsp + 8], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_527_0] # ptr
                        mov              rsi, 52                              # len
                        call             rt_icn_cset_register@PLT
.Lgcsite_item_22:       mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:124
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_21:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00105_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_charset_α_527_0: .quad .Llit_charset_α_527_0_s; .popsection
.Llit_charset_α_527_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00104_lit_charset_bx, .-n00104_lit_charset_bx
                        .type            n00105_line_mark_bx, @function
n00105_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_528_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00106_scan_upto_α:       sub              rsp, 16
                        mov              qword ptr [rbp + -928], r14
.Lscan_upto_α_531_0:    mov              rax, qword ptr [rbp + -928]
                        cmp              rax, r15;                            jl    .Lscan_upto_α_531_999
                        add              rsp, 16;                             jmp   n00107_scan_α
.Lscan_upto_α_531_999:  mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .Lscan_upto_α_531_3]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_upto_α_531_1
                        mov              qword ptr [rsp + 0], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 8], rax;            jmp   n00108_line_mark_α
.Lscan_upto_α_531_1:    inc              qword ptr [rbp + -928];              jmp   .Lscan_upto_α_531_0
n00106_scan_upto_β:       inc              qword ptr [rbp + -928];              jmp   .Lscan_upto_α_531_0
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lscan_upto_β_531_2: .quad .Lscan_upto_β_531_2_s; .popsection
.Lscan_upto_β_531_2_s:  .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.Lscan_upto_α_531_3:    .quad            0
.Lscan_upto_β_531_4:    .quad            576460743847706622
.Lscan_upto_β_531_5:    .quad            0
.Lscan_upto_β_531_6:    .quad            0
                        .size            n00106_scan_upto_bx, .-n00106_scan_upto_bx
                        .type            n00108_line_mark_bx, @function
n00108_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_532_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00109_scan_tab_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_item_29:       cmp              eax, -2;                             jne   .Lscan_tab_vd_535_31
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_item_28:       mov              r9,  qword ptr [rip + rtccb+48]
.Lscan_tab_vd_535_31:   test             eax, eax;                            jne   .Lscan_tab_α_535_997
                        add              rsp, 16;                             jmp   n00106_scan_upto_β
.Lscan_tab_α_535_997:   push             rax
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
.Lgcsite_item_27:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rsp + 16]            # lo
                        mov              rsi, qword ptr [rsp + 24]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_item_26:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_item_25:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_535_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_535_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_535_998
                        add              rsp, 16;                             jmp   n00106_scan_upto_β
.Lscan_tab_α_535_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_535_999
                        add              rsp, 16;                             jmp   n00106_scan_upto_β
.Lscan_tab_α_535_999:   mov              qword ptr [rbp + -960], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        call             qword ptr [rip + rt_substr@GOTPCREL]
.Lgcsite_item_24:       add              rsp, 16
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
.Lgcsite_item_23:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00110_line_mark_α
n00109_scan_tab_β:        mov              r14, qword ptr [rbp + -960]
                        add              rsp, 16;                             jmp   n00106_scan_upto_β
                        .size            n00109_scan_tab_bx, .-n00109_scan_tab_bx
                        .type            n00110_line_mark_bx, @function
n00110_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_536_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
.Lline_mark_α_538_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00112_lit_charset_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4294967295
                        mov              rax, qword ptr [rip + .Llit_charset_α_540_0]
                        mov              qword ptr [rsp + 8], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_540_0] # ptr
                        mov              rsi, 52                              # len
                        call             rt_icn_cset_register@PLT
.Lgcsite_item_31:       mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:124
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_30:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00113_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_charset_α_540_0: .quad .Llit_charset_α_540_0_s; .popsection
.Llit_charset_α_540_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00112_lit_charset_bx, .-n00112_lit_charset_bx
                        .type            n00113_line_mark_bx, @function
n00113_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_541_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00114_scan_many_α:       sub              rsp, 16
                        lea              rdi, [rip + .Lscan_many_α_544_3]
                        mov              eax, r14d
.Lscan_many_α_544_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_544_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_many_α_544_1
                        add              eax, 1;                              jmp   .Lscan_many_α_544_0
.Lscan_many_α_544_1:    cmp              eax, r14d;                           jne   .Lscan_many_α_544_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00115_line_mark_α
.Lscan_many_α_544_999:  mov              qword ptr [rsp + 0], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 8], rcx;            jmp   n00116_line_mark_α
n00114_scan_many_β:       add              rsp, 16
                        add              rsp, -32;                            jmp   n00115_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lscan_many_β_544_2: .quad .Lscan_many_β_544_2_s; .popsection
.Lscan_many_β_544_2_s:  .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.Lscan_many_α_544_3:    .quad            0
.Lscan_many_β_544_4:    .quad            576460743847706622
.Lscan_many_β_544_5:    .quad            0
.Lscan_many_β_544_6:    .quad            0
                        .size            n00114_scan_many_bx, .-n00114_scan_many_bx
                        .type            n00116_line_mark_bx, @function
n00116_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_545_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00117_scan_tab_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_item_38:       cmp              eax, -2;                             jne   .Lscan_tab_vd_548_32
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_item_37:       mov              r9,  qword ptr [rip + rtccb+48]
.Lscan_tab_vd_548_32:   test             eax, eax;                            jne   .Lscan_tab_α_548_997
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00115_line_mark_α
.Lscan_tab_α_548_997:   push             rax
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
.Lgcsite_item_36:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rsp + 16]            # lo
                        mov              rsi, qword ptr [rsp + 24]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_item_35:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_item_34:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_548_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_548_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_548_998
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00115_line_mark_α
.Lscan_tab_α_548_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_548_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00115_line_mark_α
.Lscan_tab_α_548_999:   mov              qword ptr [rbp + -640], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        call             qword ptr [rip + rt_substr@GOTPCREL]
.Lgcsite_item_33:       add              rsp, 16
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
.Lgcsite_item_32:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00118_assign_α
n00117_scan_tab_β:        mov              r14, qword ptr [rbp + -640]
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00115_line_mark_α
                        .size            n00117_scan_tab_bx, .-n00117_scan_tab_bx
                        .type            n00118_assign_bx, @function
n00118_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_assign_α:          mov              rax, qword ptr [rsp + 0]             # scan_tab
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + -160], rax
                        mov              qword ptr [rbp + -152], rdx;         jmp   n00115_line_mark_α
                        .size            n00118_assign_bx, .-n00118_assign_bx
                        .type            n00115_line_mark_bx, @function
n00115_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_550_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00119_disjunction_α:     mov              qword ptr [rbp + -816], 0
                        mov              qword ptr [rbp + -808], 0
                        mov              dword ptr [rbp + -800], 0;           jmp   n00120_var_α
.Ldisjunction_γ_452_as: mov              eax, dword ptr [rbp + -800]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_553_0
                                                                              jmp   n00121_conjunction_α
.Ldisjunction_α_553_0:                                                        jmp   n00121_conjunction_α
n00119_disjunction_β:     mov              eax, dword ptr [rbp + -800];         jmp   n00122_unmark_α
.Ldisjunction_γ_452_af:
.Ldisjunction_ω_452_af: add              dword ptr [rbp + -800], 1
                        mov              eax, dword ptr [rbp + -800];         jmp   n00122_unmark_α
                        .size            n00119_disjunction_bx, .-n00119_disjunction_bx
                        .type            n00121_conjunction_bx, @function
n00121_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_conjunction_α:     mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + -832], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + -824], rax;         jmp   n00122_unmark_α
n00121_conjunction_β:                                                           jmp   n00122_unmark_α
                        .size            n00121_conjunction_bx, .-n00121_conjunction_bx
                        .type            n00120_var_bx, @function
n00120_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_var_α:                                                                   jmp   n00123_unop_α
n00120_var_β:             add              rsp, -416;                           jmp   .Ldisjunction_ω_452_af
                        .size            n00120_var_bx, .-n00120_var_bx
                        .type            n00123_unop_bx, @function
n00123_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00123_unop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -160]          # var
                        mov              rsi, qword ptr [rbp + -152]
                        call             qword ptr [rip + rt_size_d@GOTPCREL]
.Lgcsite_item_41:       cmp              al, 255;                             jne   .Lunop_vd_557_33
                        call             c_rt_size_d@PLT
.Lgcsite_item_40:       mov              r9,  qword ptr [rip + rtccb+48]
.Lunop_vd_557_33:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:37
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_39:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00124_lit_integer_α
n00123_unop_β:            add              rsp, 16;                             jmp   n00120_var_β
                        .size            n00123_unop_bx, .-n00123_unop_bx
                        .type            n00124_lit_integer_bx, @function
n00124_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_558_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00125_binop_test_α
n00124_lit_integer_β:     add              rsp, 16;                             jmp   n00123_unop_β
.Llit_integer_α_558_0:  .quad            3
                        .size            n00124_lit_integer_bx, .-n00124_lit_integer_bx
                        .type            n00125_binop_test_bx, @function
n00125_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_binop_test_α:      sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lbinop_test_α_559_2
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lbinop_test_α_559_2
.Lbinop_test_α_559_1:   mov              rax, qword ptr [rsp + 40]
                        mov              rcx, qword ptr [rsp + 24]
                        cmp              rax, rcx;                            jge   .Lbinop_test_α_559_998
                        add              rsp, 16;                             jmp   n00124_lit_integer_β
.Lbinop_test_α_559_998: mov              rcx, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rcx;            jmp   n00126_var_α
.Lbinop_test_α_559_2:   mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 8
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_item_47:       cmp              al, 255;                             jne   .Lbinop_test_vd_559_35
                        call             c_rt_jct_relop@PLT
.Lgcsite_item_46:       mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_test_vd_559_35: push             rax
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
.Lgcsite_item_45:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_559_999
                        add              rsp, 16;                             jmp   n00124_lit_integer_β
.Lbinop_test_α_559_999: mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        lea              r8, [rsp + 0]
                        call             qword ptr [rip + rt_relop_val_coerce@GOTPCREL]
.Lgcsite_item_44:       cmp              al, 255;                             jne   .Lbinop_test_vd_559_34
                        call             c_rt_relop_val_coerce@PLT
.Lgcsite_item_43:       mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_test_vd_559_34: push             rax                                  # gc_poll bb_binop_relop_val.cpp:59
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_item_42:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00126_var_α
                        .size            n00125_binop_test_bx, .-n00125_binop_test_bx
                        .type            n00126_var_bx, @function
n00126_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_var_α:                                                                   jmp   n00065_suspend_α
                        .size            n00126_var_bx, .-n00126_var_bx
                        .type            n00065_suspend_bx, @function
n00065_suspend_bx:
#=======================================================================================================================
# suspend
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 102 0
n00065_suspend_α:         lea              rax, [rip + n00065_suspend_β]
                        mov              qword ptr [rbp + -192], rax
                        mov              rax, qword ptr [rbp + -160]          # var
                        mov              qword ptr [rbp + -1168], rax
                        mov              rax, qword ptr [rbp + -152]
                        mov              qword ptr [rbp + -1160], rax
                        mov              rdi, r14                             # delta
                        call             rt_scan_sync_out@PLT
.Lgcsite_item_50:       mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00127_scan_α
n00065_suspend_β:         push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
.Lgcsite_item_49:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        call             rt_scan_live_subj@PLT
.Lgcsite_item_48:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        pop              rdx
                        pop              rax;                                 jmp   n00127_scan_β
                        .size            n00065_suspend_bx, .-n00065_suspend_bx
                        .type            n00127_scan_bx, @function
n00127_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_scan_α:            sub              rsp, 16
                        mov              dword ptr [rbp + -736], r14d
                        mov              dword ptr [rbp + -748], r15d
                        call             rt_scan_live_subj@PLT
.Lgcsite_item_55:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + -744], rax
                        mov              dword ptr [rbp + -752], 2
                        mov              rdi, qword ptr [rbp + -1048]         # outer_sigma
                        mov              rsi, qword ptr [rbp + -1040]         # outer_delta
                        mov              rdx, qword ptr [rbp + -1032]         # outer_len
                        call             rt_scan_leave@PLT
.Lgcsite_item_54:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rbp + -1048]
                        mov              r14, qword ptr [rbp + -1040]
                        mov              r15, qword ptr [rbp + -1032]
                        add              rsp, 64;                             jmp   item_γ
n00127_scan_β:            call             rt_scan_sync_in@PLT
.Lgcsite_item_53:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + -1040], rax
                        mov              rdi, qword ptr [rbp + -744]          # subj
                        mov              esi, dword ptr [rbp + -748]          # len
                        call             rt_scan_reenter_live@PLT
.Lgcsite_item_52:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14d, dword ptr [rbp + -736]
                        mov              rdi, r14                             # delta
                        call             rt_scan_sync_out@PLT
.Lgcsite_item_51:       mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00122_unmark_α
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00122_unmark_α
                        .size            n00127_scan_bx, .-n00127_scan_bx
                        .type            n00122_unmark_bx, @function
n00122_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_unmark_α:          add              rsp, 128;                            jmp   n00128_line_mark_α
n00122_unmark_β:                                                                jmp   n00103_bound_β
                        .size            n00122_unmark_bx, .-n00122_unmark_bx
                        .type            n00128_line_mark_bx, @function
n00128_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_568_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00102_unmark_α:                                                                jmp   n00129_line_mark_α
                        .size            n00102_unmark_bx, .-n00102_unmark_bx
                        .type            n00129_line_mark_bx, @function
n00129_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_572_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00107_scan_α:            sub              rsp, 16
                        mov              dword ptr [rbp + -992], r14d
                        mov              dword ptr [rbp + -1004], r15d
                        call             rt_scan_live_subj@PLT
.Lgcsite_item_57:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + -1000], rax
                        mov              dword ptr [rbp + -1008], 2
                        mov              rdi, qword ptr [rbp + -1048]         # outer_sigma
                        mov              rsi, qword ptr [rbp + -1040]         # outer_delta
                        mov              rdx, qword ptr [rbp + -1032]         # outer_len
                        call             rt_scan_leave@PLT
.Lgcsite_item_56:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rbp + -1048]
                        mov              r14, qword ptr [rbp + -1040]
                        mov              r15, qword ptr [rbp + -1032]
                        add              rsp, 16;                             jmp   n00102_unmark_α
n00107_scan_β:            add              rsp, 16
                        add              rsp, 304;                            jmp   n00102_unmark_α
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
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_item:
                        .quad            5017868258650
                        .quad            249108103312
                        .quad            .Lgcmap_item_s
                        .quad            1040
                        .quad            22
                        .quad            70368744177664
                        .quad            17596481011776
                        .quad            52776558133328
                        .quad            17596481011840
                        .quad            35184372088976
                        .quad            17596481011888
                        .quad            17592186044608
                        .quad            17596481011920
                        .quad            17592186044640
                        .quad            17596481011952
                        .quad            52776558133504
                        .quad            17596481012016
                        .quad            52776558133568
                        .quad            17596481012080
                        .quad            52776558133632
                        .quad            17596481012144
                        .quad            87960930222528
                        .quad            17596481012240
                        .quad            474989023199776
                        .quad            8808977925072
                        .quad            8800387990488
                        .quad            52776558134240
.Lgcmap_item_s:         .string          "item"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_item_2:       .quad            58
                        .quad            .Lgcmap_item
                        .quad            11529514111083742360
                        .quad            .Lgccode_item_2
                        .quad            .Lgcsite_item_0-.Lgccode_item_2
                        .quad            68719476737
                        .quad            .Lgcsite_item_1-.Lgccode_item_2
                        .quad            206158430209
                        .quad            .Lgcsite_item_4-.Lgccode_item_2
                        .quad            274877906945
                        .quad            .Lgcsite_item_3-.Lgccode_item_2
                        .quad            274877906945
                        .quad            .Lgcsite_item_2-.Lgccode_item_2
                        .quad            274877906945
                        .quad            .Lgcsite_item_6-.Lgccode_item_2
                        .quad            343597383681
                        .quad            .Lgcsite_item_5-.Lgccode_item_2
                        .quad            343597383681
                        .quad            .Lgcsite_item_8-.Lgccode_item_2
                        .quad            549755813889
                        .quad            .Lgcsite_item_7-.Lgccode_item_2
                        .quad            549755813889
                        .quad            .Lgcsite_item_9-.Lgccode_item_2
                        .quad            755914244097
                        .quad            .Lgcsite_item_10-.Lgccode_item_2
                        .quad            893353197569
                        .quad            .Lgcsite_item_12-.Lgccode_item_2
                        .quad            824633720833
                        .quad            .Lgcsite_item_11-.Lgccode_item_2
                        .quad            824633720833
                        .quad            .Lgcsite_item_13-.Lgccode_item_2
                        .quad            1099511627777
                        .quad            .Lgcsite_item_14-.Lgccode_item_2
                        .quad            1236950581249
                        .quad            .Lgcsite_item_16-.Lgccode_item_2
                        .quad            1030792151041
                        .quad            .Lgcsite_item_15-.Lgccode_item_2
                        .quad            1030792151041
                        .quad            .Lgcsite_item_17-.Lgccode_item_2
                        .quad            1168231104513
                        .quad            .Lgcsite_item_18-.Lgccode_item_2
                        .quad            1305670057985
                        .quad            .Lgcsite_item_20-.Lgccode_item_2
                        .quad            1236950581249
                        .quad            .Lgcsite_item_19-.Lgccode_item_2
                        .quad            1374389534721
                        .quad            .Lgcsite_item_22-.Lgccode_item_2
                        .quad            1374389534721
                        .quad            .Lgcsite_item_21-.Lgccode_item_2
                        .quad            1305670057985
                        .quad            .Lgcsite_item_29-.Lgccode_item_2
                        .quad            1443109011457
                        .quad            .Lgcsite_item_28-.Lgccode_item_2
                        .quad            1443109011457
                        .quad            .Lgcsite_item_27-.Lgccode_item_2
                        .quad            1580547964929
                        .quad            .Lgcsite_item_26-.Lgccode_item_2
                        .quad            1443109011457
                        .quad            .Lgcsite_item_25-.Lgccode_item_2
                        .quad            1580547964929
                        .quad            .Lgcsite_item_24-.Lgccode_item_2
                        .quad            1511828488193
                        .quad            .Lgcsite_item_23-.Lgccode_item_2
                        .quad            1580547964929
                        .quad            .Lgcsite_item_31-.Lgccode_item_2
                        .quad            1580547964929
                        .quad            .Lgcsite_item_30-.Lgccode_item_2
                        .quad            1511828488193
                        .quad            .Lgcsite_item_38-.Lgccode_item_2
                        .quad            1649267441665
                        .quad            .Lgcsite_item_37-.Lgccode_item_2
                        .quad            1649267441665
                        .quad            .Lgcsite_item_36-.Lgccode_item_2
                        .quad            1786706395137
                        .quad            .Lgcsite_item_35-.Lgccode_item_2
                        .quad            1649267441665
                        .quad            .Lgcsite_item_34-.Lgccode_item_2
                        .quad            1786706395137
                        .quad            .Lgcsite_item_33-.Lgccode_item_2
                        .quad            1717986918401
                        .quad            .Lgcsite_item_32-.Lgccode_item_2
                        .quad            1786706395137
                        .quad            .Lgcsite_item_41-.Lgccode_item_2
                        .quad            68719476737
                        .quad            .Lgcsite_item_40-.Lgccode_item_2
                        .quad            68719476737
                        .quad            .Lgcsite_item_39-.Lgccode_item_2
                        .quad            68719476737
                        .quad            .Lgcsite_item_47-.Lgccode_item_2
                        .quad            206158430209
                        .quad            .Lgcsite_item_46-.Lgccode_item_2
                        .quad            206158430209
                        .quad            .Lgcsite_item_45-.Lgccode_item_2
                        .quad            343597383681
                        .quad            .Lgcsite_item_44-.Lgccode_item_2
                        .quad            206158430209
                        .quad            .Lgcsite_item_43-.Lgccode_item_2
                        .quad            206158430209
                        .quad            .Lgcsite_item_42-.Lgccode_item_2
                        .quad            206158430209
                        .quad            .Lgcsite_item_50-.Lgccode_item_2
                        .quad            206158430209
                        .quad            .Lgcsite_item_49-.Lgccode_item_2
                        .quad            274877906945
                        .quad            .Lgcsite_item_48-.Lgccode_item_2
                        .quad            274877906945
                        .quad            .Lgcsite_item_55-.Lgccode_item_2
                        .quad            274877906945
                        .quad            .Lgcsite_item_54-.Lgccode_item_2
                        .quad            274877906945
                        .quad            .Lgcsite_item_53-.Lgccode_item_2
                        .quad            274877906945
                        .quad            .Lgcsite_item_52-.Lgccode_item_2
                        .quad            274877906945
                        .quad            .Lgcsite_item_51-.Lgccode_item_2
                        .quad            274877906945
                        .quad            .Lgcsite_item_57-.Lgccode_item_2
                        .quad            68719476737
                        .quad            .Lgcsite_item_56-.Lgccode_item_2
                        .quad            68719476737
                        .popsection
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_options_3:
FN__options:
                        sub              rsp, 3344
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 417
                        rep              stosq
                        mov              eax, 0                               # GCANCHOR .Lgcmap_options qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 3336], rbp
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
.Lline_mark_α_745_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_746_0: .quad .Lline_mark_α_746_0_s; .popsection
.Lline_mark_α_746_0_s:  .string          "concord.icn"
                        .size            n00130_line_mark_bx, .-n00130_line_mark_bx
                        .type            n00131_line_mark_bx, @function
n00131_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_747_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00132_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3360]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00133_nulltest_var_α
                        .size            n00132_var_ref_bx, .-n00132_var_ref_bx
                        .type            n00133_nulltest_var_bx, @function
n00133_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_nulltest_var_α:    sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 104;                             jne   .Lnulltest_var_α_751_997
                        add              rsp, 16
                        add              rsp, -64;                            jmp   n00134_line_mark_α
.Lnulltest_var_α_751_997:
                        mov              rdi, qword ptr [rsp + 16]            # d
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_1:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lnulltest_var_α_751_998
                        add              rsp, 16
                        add              rsp, -64;                            jmp   n00134_line_mark_α
.Lnulltest_var_α_751_998:
                        cmp              eax, 0;                              je    .Lnulltest_var_α_751_999
                        add              rsp, 16
                        add              rsp, -64;                            jmp   n00134_line_mark_α
.Lnulltest_var_α_751_999:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_unop.cpp:65
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
n00135_lit_charset_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4294967295
                        mov              rax, qword ptr [rip + .Llit_charset_α_752_0]
                        mov              qword ptr [rsp + 8], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_752_0] # ptr
                        mov              rsi, 52                              # len
                        call             rt_icn_cset_register@PLT
.Lgcsite_options_3:     mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:124
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_2:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00136_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_charset_α_752_0: .quad .Llit_charset_α_752_0_s; .popsection
.Llit_charset_α_752_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00135_lit_charset_bx, .-n00135_lit_charset_bx
                        .type            n00136_line_mark_bx, @function
n00136_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_753_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_753_stno
                        .long            0
                        .long            112
                        .quad            .Lstnof1
                        .popsection
n00136_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 112;            jmp   n00137_call_byname_α
                        .size            n00136_line_mark_bx, .-n00136_line_mark_bx
                        .type            n00137_call_byname_bx, @function
n00137_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd756: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd756]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_4:     mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_5:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_755_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00134_line_mark_α
.Lcall_byname_α_755_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00138_assign_var_α
                        .size            n00137_call_byname_bx, .-n00137_call_byname_bx
                        .type            n00138_assign_var_bx, @function
n00138_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # nulltest_var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_options_8:     cmp              al, 255;                             jne   .Lassign_var_vd_757_36
                        call             c_rt_assign_var_strict@PLT
.Lgcsite_options_7:     mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_757_36: cmp              al, 104;                             jne   .Lassign_var_α_757_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00134_line_mark_α
.Lassign_var_α_757_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:31
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
.Lline_mark_α_758_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
.Lline_mark_α_760_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_760_stno
                        .long            0
                        .long            113
                        .quad            .Lstnof1
                        .popsection
n00139_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 113;            jmp   n00140_call_byname_α
                        .size            n00139_line_mark_bx, .-n00139_line_mark_bx
                        .type            n00140_call_byname_bx, @function
n00140_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_call_byname_α:     sub              rsp, 16
                        .section         .rodata
.Lcall_byname_α_rkfnzd763: .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd763]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_9:     mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_10:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_762_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00141_line_mark_α
.Lcall_byname_α_762_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00142_assign_α
                        .size            n00140_call_byname_bx, .-n00140_call_byname_bx
                        .type            n00142_assign_bx, @function
n00142_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx;         jmp   n00141_line_mark_α
                        .size            n00142_assign_bx, .-n00142_assign_bx
                        .type            n00141_line_mark_bx, @function
n00141_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_765_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00143_make_list_α:       sub              rsp, 16
                        xor              edi, edi
                        mov              esi, 0
                        call             rt_make_list@PLT
.Lgcsite_options_12:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_make_list.cpp:33
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_11:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00144_assign_α
                        .size            n00143_make_list_bx, .-n00143_make_list_bx
                        .type            n00144_assign_bx, @function
n00144_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_assign_α:          mov              rax, qword ptr [rsp + 0]             # make_list
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx;         jmp   n00145_line_mark_α
                        .size            n00144_assign_bx, .-n00144_assign_bx
                        .type            n00145_line_mark_bx, @function
n00145_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_770_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00146_bound_α:           mov              qword ptr [rbp + 336], rsp;          jmp   n00147_var_ref_α
n00146_bound_β:                                                                 jmp   n00147_var_ref_α
                        .size            n00146_bound_bx, .-n00146_bound_bx
                        .type            n00147_var_ref_bx, @function
n00147_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3344]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00148_deref_α
                        .size            n00147_var_ref_bx, .-n00147_var_ref_bx
                        .type            n00148_deref_bx, @function
n00148_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_14:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_776_999
                        add              rsp, 16
                        add              rsp, -320;                           jmp   n00149_line_mark_α
.Lderef_α_776_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_13:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00150_line_mark_α
                        .size            n00148_deref_bx, .-n00148_deref_bx
                        .type            n00150_line_mark_bx, @function
n00150_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_777_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_777_stno
                        .long            0
                        .long            115
                        .quad            .Lstnof1
                        .popsection
n00150_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00151_call_byname_α
                        .size            n00150_line_mark_bx, .-n00150_line_mark_bx
                        .type            n00151_call_byname_bx, @function
n00151_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00151_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd780: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd780]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_15:    mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_16:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_779_999
                        add              rsp, 16
                        add              rsp, -304;                           jmp   n00149_line_mark_α
.Lcall_byname_α_779_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00152_assign_α
                        .size            n00151_call_byname_bx, .-n00151_call_byname_bx
                        .type            n00152_assign_bx, @function
n00152_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx;         jmp   n00153_line_mark_α
                        .size            n00152_assign_bx, .-n00152_assign_bx
                        .type            n00153_line_mark_bx, @function
n00153_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_782_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00154_var_α:                                                                   jmp   n00155_scan_enter_α
                        .size            n00154_var_bx, .-n00154_var_bx
                        .type            n00155_scan_enter_bx, @function
n00155_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_scan_enter_α:      sub              rsp, 16
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rbp + 388], 0
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rbp + 400], r14
                        mov              qword ptr [rbp + 408], r15
                        mov              rdi, qword ptr [rbp + 3040]          # lo
                        mov              rsi, qword ptr [rbp + 3048]          # hi
                        call             rt_scan_enter@PLT
.Lgcsite_options_18:    mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_17:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jne   .Lscan_enter_α_787_999
                        add              rsp, 16
                        add              rsp, -64;                            jmp   n00156_unmark_α
.Lscan_enter_α_787_999: mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n00157_disjunction_α
                        .size            n00155_scan_enter_bx, .-n00155_scan_enter_bx
                        .type            n00157_disjunction_bx, @function
n00157_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00157_disjunction_α:     mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                        mov              dword ptr [rbp + 528], 0;            jmp   n00158_lit_string_α
.Ldisjunction_γ_601_as: mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_789_0
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 520], rax;          jmp   n00159_scan_α
.Ldisjunction_α_789_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_789_1
                                                                              jmp   n00159_scan_α
.Ldisjunction_α_789_1:                                                        jmp   n00159_scan_α
n00157_disjunction_β:     mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0;                              je    n00160_disjunction_β
                                                                              jmp   n00161_scan_α
.Ldisjunction_γ_601_af:
.Ldisjunction_ω_601_af: add              dword ptr [rbp + 528], 1
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 1;                              je    n00162_line_mark_α
                                                                              jmp   n00161_scan_α
                        .size            n00157_disjunction_bx, .-n00157_disjunction_bx
                        .type            n00159_scan_bx, @function
n00159_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_scan_α:            sub              rsp, 16
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rbp + 448], r14d
                        mov              dword ptr [rbp + 436], r15d
                        call             rt_scan_live_subj@PLT
.Lgcsite_options_23:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 440], rax
                        mov              dword ptr [rbp + 432], 2
                        mov              rdi, qword ptr [rbp + 392]           # outer_sigma
                        mov              rsi, qword ptr [rbp + 400]           # outer_delta
                        mov              rdx, qword ptr [rbp + 408]           # outer_len
                        call             rt_scan_leave@PLT
.Lgcsite_options_22:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rbp + 392]
                        mov              r14, qword ptr [rbp + 400]
                        mov              r15, qword ptr [rbp + 408];          jmp   n00156_unmark_α
n00159_scan_β:            call             rt_scan_sync_in@PLT
.Lgcsite_options_21:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 400], rax
                        mov              rdi, qword ptr [rbp + 440]           # subj
                        mov              esi, dword ptr [rbp + 436]           # len
                        call             rt_scan_reenter_live@PLT
.Lgcsite_options_20:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14d, dword ptr [rbp + 448]
                        mov              rdi, r14                             # delta
                        call             rt_scan_sync_out@PLT
.Lgcsite_options_19:    mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00157_disjunction_β
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00156_unmark_α
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
.Lline_mark_α_793_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00164_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3008]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00165_var_ref_α
                        .size            n00164_var_ref_bx, .-n00164_var_ref_bx
                        .type            n00165_var_ref_bx, @function
n00165_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3040]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00166_deref_α
                        .size            n00165_var_ref_bx, .-n00165_var_ref_bx
                        .type            n00166_deref_bx, @function
n00166_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00166_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_options_25:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_799_999
                        add              rsp, 16
                        add              rsp, -112;                           jmp   n00161_scan_α
.Lderef_α_799_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_24:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00167_deref_α
                        .size            n00166_deref_bx, .-n00166_deref_bx
                        .type            n00167_deref_bx, @function
n00167_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00167_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_options_27:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_800_999
                        add              rsp, 16
                        add              rsp, -96;                            jmp   n00161_scan_α
.Lderef_α_800_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_26:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00168_line_mark_α
                        .size            n00167_deref_bx, .-n00167_deref_bx
                        .type            n00168_line_mark_bx, @function
n00168_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_801_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_801_stno
                        .long            0
                        .long            136
                        .quad            .Lstnof1
                        .popsection
n00168_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 136;            jmp   n00169_call_byname_α
                        .size            n00168_line_mark_bx, .-n00168_line_mark_bx
                        .type            n00169_call_byname_bx, @function
n00169_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_call_byname_α:     sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd804: .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd804]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 196758
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_28:    mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_29:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_803_999
                        add              rsp, 16
                        add              rsp, -80;                            jmp   n00161_scan_α
.Lcall_byname_α_803_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 112;                            jmp   .Ldisjunction_γ_601_as
n00169_call_byname_β:     add              rsp, 16
                        add              rsp, -80;                            jmp   n00161_scan_α
                        .size            n00169_call_byname_bx, .-n00169_call_byname_bx
                        .type            n00158_lit_string_bx, @function
n00158_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_805_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00170_scan_match_α
n00158_lit_string_β:      add              rsp, 16
                        add              rsp, -208;                           jmp   .Ldisjunction_ω_601_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_805_0: .quad .Llit_string_α_805_0_s; .popsection
.Llit_string_α_805_0_s: .string          "-"
                        .size            n00158_lit_string_bx, .-n00158_lit_string_bx
                        .type            n00170_scan_match_bx, @function
n00170_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00170_scan_match_α:      sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jge   .Lscan_match_α_807_998
                        add              rsp, 16;                             jmp   n00158_lit_string_β
.Lscan_match_α_807_998: mov              rdi, qword ptr [rip + .Lscan_match_α_807_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        call             memcmp@PLT
.Lgcsite_options_30:    mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r12
                        test             eax, eax;                            je    .Lscan_match_α_807_999
                        add              rsp, 16;                             jmp   n00158_lit_string_β
.Lscan_match_α_807_999: mov              qword ptr [rsp + 0], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 8], rax;            jmp   n00171_scan_tab_α
n00170_scan_match_β:      add              rsp, 16;                             jmp   n00158_lit_string_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lscan_match_α_807_0: .quad .Lscan_match_α_807_0_s; .popsection
.Lscan_match_α_807_0_s: .string          "-"
                        .size            n00170_scan_match_bx, .-n00170_scan_match_bx
                        .type            n00171_scan_tab_bx, @function
n00171_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_scan_tab_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_options_37:    cmp              eax, -2;                             jne   .Lscan_tab_vd_809_37
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_options_36:    mov              r9,  qword ptr [rip + rtccb+48]
.Lscan_tab_vd_809_37:   test             eax, eax;                            jne   .Lscan_tab_α_809_997
                        add              rsp, 16;                             jmp   n00170_scan_match_β
.Lscan_tab_α_809_997:   push             rax
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
.Lgcsite_options_35:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rsp + 16]            # lo
                        mov              rsi, qword ptr [rsp + 24]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_options_34:    mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_33:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_809_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_809_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_809_998
                        add              rsp, 16;                             jmp   n00170_scan_match_β
.Lscan_tab_α_809_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_809_999
                        add              rsp, 16;                             jmp   n00170_scan_match_β
.Lscan_tab_α_809_999:   mov              qword ptr [rbp + 2640], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        call             qword ptr [rip + rt_substr@GOTPCREL]
.Lgcsite_options_32:    add              rsp, 16
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
.Lgcsite_options_31:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00172_lit_integer_α
n00171_scan_tab_β:        mov              r14, qword ptr [rbp + 2640]
                        add              rsp, 16;                             jmp   n00170_scan_match_β
                        .size            n00171_scan_tab_bx, .-n00171_scan_tab_bx
                        .type            n00172_lit_integer_bx, @function
n00172_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_810_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00173_line_mark_α
n00172_lit_integer_β:     add              rsp, 16;                             jmp   n00171_scan_tab_β
.Llit_integer_α_810_0:  .quad            0
                        .size            n00172_lit_integer_bx, .-n00172_lit_integer_bx
                        .type            n00173_line_mark_bx, @function
n00173_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_811_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00174_scan_pos_α:        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_814_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_814_0:     cmp              rax, 1;                              jge   .Lscan_pos_α_814_997
                        add              rsp, 16;                             jmp   n00175_var_α
.Lscan_pos_α_814_997:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_pos_α_814_998
                        add              rsp, 16;                             jmp   n00175_var_α
.Lscan_pos_α_814_998:   mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            je    .Lscan_pos_α_814_999
                        add              rsp, 16;                             jmp   n00175_var_α
.Lscan_pos_α_814_999:   mov              qword ptr [rsp + 0], 3
                        mov              qword ptr [rsp + 8], rax
                        add              rsp, 16;                             jmp   n00172_lit_integer_β
                        .size            n00174_scan_pos_bx, .-n00174_scan_pos_bx
                        .type            n00175_var_bx, @function
n00175_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_var_α:             sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   n00176_conjunction_α
n00175_var_β:             add              rsp, 16
                        add              rsp, -208;                           jmp   n00171_scan_tab_β
                        .size            n00175_var_bx, .-n00175_var_bx
                        .type            n00176_conjunction_bx, @function
n00176_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_conjunction_α:     mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 2568], rax;         jmp   n00177_line_mark_α
n00176_conjunction_β:                                                           jmp   n00175_var_β
                        .size            n00176_conjunction_bx, .-n00176_conjunction_bx
                        .type            n00177_line_mark_bx, @function
n00177_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_817_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
.Lline_mark_α_819_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00179_disjunction_α:     mov              qword ptr [rbp + 2320], 0
                        mov              qword ptr [rbp + 2328], 0
                        mov              dword ptr [rbp + 2336], 0;           jmp   n00180_lit_string_α
.Ldisjunction_γ_621_as: mov              eax, dword ptr [rbp + 2336]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_822_0
                                                                              jmp   n00181_line_mark_α
.Ldisjunction_α_822_0:                                                        jmp   n00181_line_mark_α
n00179_disjunction_β:     mov              eax, dword ptr [rbp + 2336];         jmp   n00181_line_mark_α
.Ldisjunction_γ_621_af:
.Ldisjunction_ω_621_af: add              dword ptr [rbp + 2336], 1
                        mov              eax, dword ptr [rbp + 2336];         jmp   n00181_line_mark_α
                        .size            n00179_disjunction_bx, .-n00179_disjunction_bx
                        .type            n00181_line_mark_bx, @function
n00181_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_823_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00182_bound_α:           mov              qword ptr [rbp + 640], rsp;          jmp   n00183_lit_integer_α
n00182_bound_β:                                                                 jmp   n00183_lit_integer_α
                        .size            n00182_bound_bx, .-n00182_bound_bx
                        .type            n00183_lit_integer_bx, @function
n00183_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_827_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00184_line_mark_α
.Llit_integer_α_827_0:  .quad            1
                        .size            n00183_lit_integer_bx, .-n00183_lit_integer_bx
                        .type            n00184_line_mark_bx, @function
n00184_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_828_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00185_scan_move_α:       sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jge   .Lscan_move_α_831_998
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00161_scan_α
.Lscan_move_α_831_998:  mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_move_α_831_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00161_scan_α
.Lscan_move_α_831_999:  mov              qword ptr [rbp + 592], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        call             qword ptr [rip + rt_substr@GOTPCREL]
.Lgcsite_options_39:    add              rsp, 16
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
.Lgcsite_options_38:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00186_assign_α
n00185_scan_move_β:       mov              r14, qword ptr [rbp + 592]
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00161_scan_α
                        .size            n00185_scan_move_bx, .-n00185_scan_move_bx
                        .type            n00186_assign_bx, @function
n00186_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_assign_α:          mov              rax, qword ptr [rsp + 0]             # scan_move
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx;         jmp   n00187_line_mark_α
                        .size            n00186_assign_bx, .-n00186_assign_bx
                        .type            n00187_line_mark_bx, @function
n00187_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_833_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00160_disjunction_α:     mov              qword ptr [rbp + 672], 0
                        mov              qword ptr [rbp + 680], 0
                        mov              dword ptr [rbp + 688], 0;            jmp   n00188_var_ref_α
.Ldisjunction_γ_629_as: mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_836_0
                                                                              jmp   n00189_unmark_α
.Ldisjunction_α_836_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_836_1
                                                                              jmp   n00189_unmark_α
.Ldisjunction_α_836_1:                                                        jmp   n00189_unmark_α
n00160_disjunction_β:     mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0;                              je    n00190_disjunction_β
                                                                              jmp   n00189_unmark_α
.Ldisjunction_γ_629_af:
.Ldisjunction_ω_629_af: add              dword ptr [rbp + 688], 1
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 1;                              je    n00191_line_mark_α
                                                                              jmp   n00189_unmark_α
                        .size            n00160_disjunction_bx, .-n00160_disjunction_bx
                        .type            n00191_line_mark_bx, @function
n00191_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_837_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00192_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_839_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00193_var_ref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_839_0: .quad .Llit_string_α_839_0_s; .popsection
.Llit_string_α_839_0_s: .string          "Unrecognized option: -"
                        .size            n00192_lit_string_bx, .-n00192_lit_string_bx
                        .type            n00193_var_ref_bx, @function
n00193_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3056]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00194_deref_α
                        .size            n00193_var_ref_bx, .-n00193_var_ref_bx
                        .type            n00194_deref_bx, @function
n00194_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_41:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_842_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00189_unmark_α
.Lderef_α_842_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_40:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00195_line_mark_α
                        .size            n00194_deref_bx, .-n00194_deref_bx
                        .type            n00195_line_mark_bx, @function
n00195_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_843_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_843_stno
                        .long            0
                        .long            134
                        .quad            .Lstnof1
                        .popsection
n00195_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 134;            jmp   n00196_call_byname_α
                        .size            n00195_line_mark_bx, .-n00195_line_mark_bx
                        .type            n00196_call_byname_bx, @function
n00196_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_call_byname_α:     sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd846: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd846]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_42:    mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_43:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_845_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00189_unmark_α
.Lcall_byname_α_845_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 96;                             jmp   .Ldisjunction_γ_629_as
n00196_call_byname_β:     add              rsp, 16
                        add              rsp, 48;                             jmp   n00189_unmark_α
                        .size            n00196_call_byname_bx, .-n00196_call_byname_bx
                        .type            n00188_var_ref_bx, @function
n00188_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rbp + 2128], rax          # result
                        lea              rax, [rbp + 3056]
                        mov              qword ptr [rbp + 2136], rax;         jmp   n00197_var_ref_α
n00188_var_ref_β:         add              rsp, 16
                        add              rsp, -112;                           jmp   .Ldisjunction_ω_629_af
                        .size            n00188_var_ref_bx, .-n00188_var_ref_bx
                        .type            n00197_var_ref_bx, @function
n00197_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3360]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00198_deref_α
n00197_var_ref_β:         add              rsp, 16;                             jmp   n00188_var_ref_β
                        .size            n00197_var_ref_bx, .-n00197_var_ref_bx
                        .type            n00198_deref_bx, @function
n00198_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 2128]          # var_ref
                        mov              rsi, qword ptr [rbp + 2136]          # d
                        call             rt_deref@PLT
.Lgcsite_options_45:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_851_999
                        add              rsp, 16;                             jmp   n00197_var_ref_β
.Lderef_α_851_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_44:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00199_deref_α
n00198_deref_β:           add              rsp, 16;                             jmp   n00197_var_ref_β
                        .size            n00198_deref_bx, .-n00198_deref_bx
                        .type            n00199_deref_bx, @function
n00199_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_options_47:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_852_999
                        add              rsp, 16;                             jmp   n00198_deref_β
.Lderef_α_852_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_46:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00200_line_mark_α
n00199_deref_β:           add              rsp, 16;                             jmp   n00198_deref_β
                        .size            n00199_deref_bx, .-n00199_deref_bx
                        .type            n00200_line_mark_bx, @function
n00200_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_853_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_853_stno
                        .long            0
                        .long            120
                        .quad            .Lstnof1
                        .popsection
n00200_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 120;            jmp   n00201_call_gen_α
                        .size            n00200_line_mark_bx, .-n00200_line_mark_bx
                        .type            n00201_call_gen_bx, @function
n00201_call_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_call_gen_α:        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rbp + 2088], rax
                        mov              qword ptr [rbp + 2112], 0
                        mov              rdi, r14                             # delta
                        call             rt_scan_sync_out@PLT
.Lgcsite_options_48:    mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_gen_α_855_60:    .section         .rodata
.Lcall_gen_α_bynamegenfn288: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_gen_α_bynamegenfn288]
                        lea              rsi, [rbp + 2080]
                        mov              edx, 2
                        lea              rcx, [rbp + 2112]
                        call             rt_call_arr_gen_strict@PLT
.Lgcsite_options_49:    push             rax
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
.Lgcsite_options_50:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              al, 104;                             jne   .Lcall_gen_α_855_999
                        add              rsp, 16;                             jmp   n00199_deref_β
.Lcall_gen_α_855_999:                                                         jmp   n00202_lit_integer_α
n00201_call_gen_β:                                                              jmp   .Lcall_gen_α_855_60
                        .size            n00201_call_gen_bx, .-n00201_call_gen_bx
                        .type            n00202_lit_integer_bx, @function
n00202_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_856_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00203_coerce_numeric_α
n00202_lit_integer_β:     add              rsp, 16;                             jmp   n00201_call_gen_β
.Llit_integer_α_856_0:  .quad            1
                        .size            n00202_lit_integer_bx, .-n00202_lit_integer_bx
                        .type            n00203_coerce_numeric_bx, @function
n00203_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rbp + 2064]          # call
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_858_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_858_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_858_0
.Lcoerce_numeric_α_858_1:
                        mov              rax, qword ptr [rbp + 2064]          # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rbp + 2072]          # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n00204_binop_α
.Lcoerce_numeric_α_858_0:
                        lea              rdi, [rbp + 2064]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_options_53:    cmp              al, 255;                             jne   .Lcoerce_numeric_vd_858_38
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_options_52:    mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_858_38:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_51:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_858_999
                        add              rsp, 16;                             jmp   n00202_lit_integer_β
.Lcoerce_numeric_α_858_999:
                                                                              jmp   n00204_binop_α
n00203_coerce_numeric_β:  add              rsp, 16;                             jmp   n00202_lit_integer_β
                        .size            n00203_coerce_numeric_bx, .-n00203_coerce_numeric_bx
                        .type            n00204_binop_bx, @function
n00204_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rax, qword ptr [rsp + 24]
                        cmp              cl, 3;                               jne   .Lbinop_α_859_2
                        add              rax, 1;                              jo    .Lbinop_α_859_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_859_7
.Lbinop_α_859_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_859_0
                        mov              rsi, qword ptr [rsp + 24]            # coerce_numeric
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_859_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_859_4
.Lbinop_α_859_3:        movq             xmm0, rsi
.Lbinop_α_859_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_859_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_859_7:                                                              jmp   n00205_assign_α
.Lbinop_α_859_0:        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        call             rt_add_big@PLT
.Lgcsite_options_55:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_859_999
                        add              rsp, 16;                             jmp   n00203_coerce_numeric_β
.Lbinop_α_859_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_54:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00205_assign_α
n00204_binop_β:           add              rsp, 16;                             jmp   n00203_coerce_numeric_β
                        .size            n00204_binop_bx, .-n00204_binop_bx
                        .type            n00205_assign_bx, @function
n00205_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx;         jmp   n00206_line_mark_α
                        .size            n00205_assign_bx, .-n00205_assign_bx
                        .type            n00206_line_mark_bx, @function
n00206_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_861_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00207_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 2992]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00208_var_α
                        .size            n00207_var_ref_bx, .-n00207_var_ref_bx
                        .type            n00208_var_bx, @function
n00208_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_var_α:                                                                   jmp   n00209_subscript_α
                        .size            n00208_var_bx, .-n00208_var_bx
                        .type            n00209_subscript_bx, @function
n00209_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rbp + 3056]          # var
                        mov              rcx, qword ptr [rbp + 3064]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_options_58:    cmp              al, 255;                             jne   .Lsubscript_vd_867_39
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_options_57:    mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_867_39:  cmp              al, 104;                             jne   .Lsubscript_α_867_999
                        add              rsp, 16
                        add              rsp, 144;                            jmp   n00189_unmark_α
.Lsubscript_α_867_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:78
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_56:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00190_disjunction_α
                        .size            n00209_subscript_bx, .-n00209_subscript_bx
                        .type            n00190_disjunction_bx, @function
n00190_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_disjunction_α:     mov              qword ptr [rbp + 768], 0
                        mov              qword ptr [rbp + 776], 0
                        mov              dword ptr [rbp + 784], 0;            jmp   n00210_lit_charset_α
.Ldisjunction_γ_650_as: mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_869_0
                                                                              jmp   n00211_assign_var_α
.Ldisjunction_α_869_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_869_1
                                                                              jmp   n00211_assign_var_α
.Ldisjunction_α_869_1:                                                        jmp   n00211_assign_var_α
n00190_disjunction_β:     mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0;                              je    n00212_disjunction_β
                                                                              jmp   n00189_unmark_α
.Ldisjunction_γ_650_af:
.Ldisjunction_ω_650_af: add              dword ptr [rbp + 784], 1
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 1;                              je    n00213_lit_integer_α
                                                                              jmp   n00189_unmark_α
                        .size            n00190_disjunction_bx, .-n00190_disjunction_bx
                        .type            n00211_assign_var_bx, @function
n00211_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # subscript
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # disjunction
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_options_61:    cmp              al, 255;                             jne   .Lassign_var_vd_870_40
                        call             c_rt_assign_var_strict@PLT
.Lgcsite_options_60:    mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_870_40: cmp              al, 104;                             jne   .Lassign_var_α_870_999
                        add              rsp, 16
                        add              rsp, 192;                            jmp   n00189_unmark_α
.Lassign_var_α_870_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:31
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_59:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 240;                            jmp   .Ldisjunction_γ_629_as
n00211_assign_var_β:      add              rsp, 16
                        add              rsp, 192;                            jmp   n00189_unmark_α
                        .size            n00211_assign_var_bx, .-n00211_assign_var_bx
                        .type            n00213_lit_integer_bx, @function
n00213_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_871_0]
                        mov              qword ptr [rsp + 8], rax
                        add              rsp, 48;                             jmp   .Ldisjunction_γ_650_as
n00213_lit_integer_β:     add              rsp, 16
                        add              rsp, 192;                            jmp   n00189_unmark_α
.Llit_integer_α_871_0:  .quad            1
                        .size            n00213_lit_integer_bx, .-n00213_lit_integer_bx
                        .type            n00210_lit_charset_bx, @function
n00210_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_lit_charset_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4294967295
                        mov              rax, qword ptr [rip + .Llit_charset_α_872_0]
                        mov              qword ptr [rsp + 8], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_872_0] # ptr
                        mov              rsi, 3                               # len
                        call             rt_icn_cset_register@PLT
.Lgcsite_options_63:    mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:124
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_62:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00214_var_ref_α
n00210_lit_charset_β:     add              rsp, 16
                        add              rsp, -192;                           jmp   .Ldisjunction_ω_650_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_charset_α_872_0: .quad .Llit_charset_α_872_0_s; .popsection
.Llit_charset_α_872_0_s:
                        .string          "+.:"
                        .size            n00210_lit_charset_bx, .-n00210_lit_charset_bx
                        .type            n00214_var_ref_bx, @function
n00214_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3360]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00215_var_α
n00214_var_ref_β:         add              rsp, 16;                             jmp   n00210_lit_charset_β
                        .size            n00214_var_ref_bx, .-n00214_var_ref_bx
                        .type            n00215_var_bx, @function
n00215_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_var_α:                                                                   jmp   n00216_subscript_α
n00215_var_β:                                                                   jmp   n00214_var_ref_β
                        .size            n00215_var_bx, .-n00215_var_bx
                        .type            n00216_subscript_bx, @function
n00216_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_subscript_α:       sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_877_1:    mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rbp + 3104]          # var
                        mov              rcx, qword ptr [rbp + 3112]
                        test             eax, eax;                            jne   .Lsubscript_α_877_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_options_69:    cmp              al, 255;                             jne   .Lsubscript_vd_877_42
                        call             c_rt_subscript_val_strict@PLT
.Lgcsite_options_68:    mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_877_42:  cmp              al, 255;                             jne   .Lsubscript_α_877_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_877_1
.Lsubscript_α_877_4:    push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_options_67:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_877_3
.Lsubscript_α_877_2:    call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_options_66:    cmp              al, 255;                             jne   .Lsubscript_vd_877_41
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_options_65:    mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_877_41:  push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_options_64:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_877_3:    cmp              al, 104;                             jne   .Lsubscript_α_877_999
                        add              rsp, 16;                             jmp   n00215_var_β
.Lsubscript_α_877_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00217_deref_α
n00216_subscript_β:       add              rsp, 16;                             jmp   n00215_var_β
                        .size            n00216_subscript_bx, .-n00216_subscript_bx
                        .type            n00217_deref_bx, @function
n00217_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_71:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_878_999
                        add              rsp, 16;                             jmp   n00216_subscript_β
.Lderef_α_878_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_70:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00218_assign_α
n00217_deref_β:           add              rsp, 16;                             jmp   n00216_subscript_β
                        .size            n00217_deref_bx, .-n00217_deref_bx
                        .type            n00218_assign_bx, @function
n00218_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx;         jmp   n00219_var_ref_α
n00218_assign_β:                                                                jmp   n00217_deref_β
                        .size            n00218_assign_bx, .-n00218_assign_bx
                        .type            n00219_var_ref_bx, @function
n00219_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00219_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3072]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00220_deref_α
n00219_var_ref_β:         add              rsp, 16;                             jmp   n00218_assign_β
                        .size            n00219_var_ref_bx, .-n00219_var_ref_bx
                        .type            n00220_deref_bx, @function
n00220_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_73:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_882_999
                        add              rsp, 16;                             jmp   n00219_var_ref_β
.Lderef_α_882_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_72:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00221_line_mark_α
n00220_deref_β:           add              rsp, 16;                             jmp   n00219_var_ref_β
                        .size            n00220_deref_bx, .-n00220_deref_bx
                        .type            n00221_line_mark_bx, @function
n00221_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_883_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_883_stno
                        .long            0
                        .long            122
                        .quad            .Lstnof1
                        .popsection
n00221_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 122;            jmp   n00222_call_byname_α
                        .size            n00221_line_mark_bx, .-n00221_line_mark_bx
                        .type            n00222_call_byname_bx, @function
n00222_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_call_byname_α:     sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_bynamefnzd309: .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_bynamefnzd309]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 196712
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_74:    mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_75:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_885_999
                        add              rsp, 16;                             jmp   n00220_deref_β
.Lcall_byname_α_885_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00223_line_mark_α
                        .size            n00222_call_byname_bx, .-n00222_call_byname_bx
                        .type            n00223_line_mark_bx, @function
n00223_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_886_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00224_disjunction_α:     mov              qword ptr [rbp + 1536], 0
                        mov              qword ptr [rbp + 1544], 0
                        mov              dword ptr [rbp + 1552], 0;           jmp   n00225_lit_string_α
.Ldisjunction_γ_664_as: mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_889_0
                                                                              jmp   n00226_assign_α
.Ldisjunction_α_889_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_889_1
                                                                              jmp   n00226_assign_α
.Ldisjunction_α_889_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_889_2
                                                                              jmp   n00226_assign_α
.Ldisjunction_α_889_2:                                                        jmp   n00226_assign_α
n00224_disjunction_β:     mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 0;                              je    n00227_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_664_af
                                                                              jmp   .Ldisjunction_ω_664_af
.Ldisjunction_γ_664_af:
.Ldisjunction_ω_664_af: add              dword ptr [rbp + 1552], 1
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 1;                              je    n00228_var_ref_α
                        cmp              eax, 2;                              je    n00229_lit_string_α
                                                                              jmp   n00230_line_mark_α
                        .size            n00224_disjunction_bx, .-n00224_disjunction_bx
                        .type            n00226_assign_bx, @function
n00226_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_assign_α:          mov              rax, qword ptr [rsp + 0]             # disjunction
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx;         jmp   n00230_line_mark_α
                        .size            n00226_assign_bx, .-n00226_assign_bx
                        .type            n00230_line_mark_bx, @function
n00230_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_891_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00231_var_α:                                                                   jmp   n00212_disjunction_α
                        .size            n00231_var_bx, .-n00231_var_bx
                        .type            n00212_disjunction_bx, @function
n00212_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_disjunction_α:     mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 840], 0
                        mov              dword ptr [rbp + 848], 0;            jmp   n00232_lit_string_α
.Ldisjunction_γ_668_as: mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_896_0
                                                                              jmp   n00233_conjunction_α
.Ldisjunction_α_896_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_896_1
                                                                              jmp   n00233_conjunction_α
.Ldisjunction_α_896_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_896_2
                                                                              jmp   n00233_conjunction_α
.Ldisjunction_α_896_2:                                                        jmp   n00233_conjunction_α
n00212_disjunction_β:     mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0;                              je    n00189_unmark_α
                        cmp              eax, 1;                              je    n00234_disjunction_β
                                                                              jmp   n00235_disjunction_β
.Ldisjunction_γ_668_af:
.Ldisjunction_ω_668_af: add              dword ptr [rbp + 848], 1
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 1;                              je    n00236_lit_string_α
                        cmp              eax, 2;                              je    n00237_lit_string_α
                                                                              jmp   n00189_unmark_α
                        .size            n00212_disjunction_bx, .-n00212_disjunction_bx
                        .type            n00233_conjunction_bx, @function
n00233_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_conjunction_α:     mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 808], rax;          jmp   .Ldisjunction_γ_650_as
n00233_conjunction_β:                                                           jmp   n00189_unmark_α
                        .size            n00233_conjunction_bx, .-n00233_conjunction_bx
                        .type            n00237_lit_string_bx, @function
n00237_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00237_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_898_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00238_binop_test_α
n00237_lit_string_β:      add              rsp, 16
                        add              rsp, -176;                           jmp   .Ldisjunction_ω_668_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_898_0: .quad .Llit_string_α_898_0_s; .popsection
.Llit_string_α_898_0_s: .string          "."
                        .size            n00237_lit_string_bx, .-n00237_lit_string_bx
                        .type            n00238_binop_test_bx, @function
n00238_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_binop_test_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 3072]
                        mov              rsi, qword ptr [rbp + 3080]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 22
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_options_78:    cmp              al, 255;                             jne   .Lbinop_test_vd_899_43
                        call             c_rt_jct_relop@PLT
.Lgcsite_options_77:    mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_test_vd_899_43: push             rax
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
.Lgcsite_options_76:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            je    .Lbinop_test_α_899_4
.Lbinop_test_α_899_3:   mov              rcx, 136
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, 1
                        mov              qword ptr [rsp + 8], rcx;            jmp   n00239_line_mark_α
.Lbinop_test_α_899_4:   mov              rcx, 136
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, 0
                        mov              qword ptr [rsp + 8], rcx;            jmp   n00239_line_mark_α
                        .size            n00238_binop_test_bx, .-n00238_binop_test_bx
                        .type            n00239_line_mark_bx, @function
n00239_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_900_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_900_stno
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
n00235_disjunction_α:     mov              qword ptr [rbp + 1232], 0
                        mov              qword ptr [rbp + 1240], 0
                        mov              dword ptr [rbp + 1248], 0;           jmp   n00240_var_ref_α
.Ldisjunction_γ_673_as: mov              eax, dword ptr [rbp + 1248]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_903_0
                                                                              jmp   .Ldisjunction_γ_668_as
.Ldisjunction_α_903_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_903_1
                                                                              jmp   .Ldisjunction_γ_668_as
.Ldisjunction_α_903_1:                                                        jmp   .Ldisjunction_γ_668_as
n00235_disjunction_β:     mov              eax, dword ptr [rbp + 1248]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_673_af
                                                                              jmp   .Ldisjunction_ω_673_af
.Ldisjunction_γ_673_af:
.Ldisjunction_ω_673_af: add              dword ptr [rbp + 1248], 1
                        mov              eax, dword ptr [rbp + 1248]
                        cmp              eax, 1;                              je    n00241_lit_string_α
                                                                              jmp   n00189_unmark_α
                        .size            n00235_disjunction_bx, .-n00235_disjunction_bx
                        .type            n00241_lit_string_bx, @function
n00241_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_904_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00242_var_ref_α
n00241_lit_string_β:      add              rsp, 16
                        add              rsp, -64;                            jmp   .Ldisjunction_ω_673_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_904_0: .quad .Llit_string_α_904_0_s; .popsection
.Llit_string_α_904_0_s: .string          "-"
                        .size            n00241_lit_string_bx, .-n00241_lit_string_bx
                        .type            n00242_var_ref_bx, @function
n00242_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3056]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00243_lit_string_α
n00242_var_ref_β:         add              rsp, 16;                             jmp   n00241_lit_string_β
                        .size            n00242_var_ref_bx, .-n00242_var_ref_bx
                        .type            n00243_lit_string_bx, @function
n00243_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_907_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00244_deref_α
n00243_lit_string_β:      add              rsp, 16;                             jmp   n00242_var_ref_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_907_0: .quad .Llit_string_α_907_0_s; .popsection
.Llit_string_α_907_0_s: .string          " needs numeric parameter"
                        .size            n00243_lit_string_bx, .-n00243_lit_string_bx
                        .type            n00244_deref_bx, @function
n00244_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00244_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_options_80:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_908_999
                        add              rsp, 16;                             jmp   n00243_lit_string_β
.Lderef_α_908_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_79:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00245_line_mark_α
n00244_deref_β:           add              rsp, 16;                             jmp   n00243_lit_string_β
                        .size            n00244_deref_bx, .-n00244_deref_bx
                        .type            n00245_line_mark_bx, @function
n00245_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_909_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_909_stno
                        .long            0
                        .long            130
                        .quad            .Lstnof1
                        .popsection
n00245_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 130;            jmp   n00246_call_byname_α
                        .size            n00245_line_mark_bx, .-n00245_line_mark_bx
                        .type            n00246_call_byname_bx, @function
n00246_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_call_byname_α:     sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd912: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd912]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_81:    mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_82:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_byname_α_911_999
                        add              rsp, 16;                             jmp   n00244_deref_β
.Lcall_byname_α_911_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 112;                            jmp   .Ldisjunction_γ_673_as
n00246_call_byname_β:     add              rsp, 16;                             jmp   n00244_deref_β
                        .size            n00246_call_byname_bx, .-n00246_call_byname_bx
                        .type            n00240_var_ref_bx, @function
n00240_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00240_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3088]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00247_deref_α
n00240_var_ref_β:         add              rsp, 16
                        add              rsp, -64;                            jmp   .Ldisjunction_ω_673_af
                        .size            n00240_var_ref_bx, .-n00240_var_ref_bx
                        .type            n00247_deref_bx, @function
n00247_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_84:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_915_999
                        add              rsp, 16;                             jmp   n00240_var_ref_β
.Lderef_α_915_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_83:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00248_line_mark_α
n00247_deref_β:           add              rsp, 16;                             jmp   n00240_var_ref_β
                        .size            n00247_deref_bx, .-n00247_deref_bx
                        .type            n00248_line_mark_bx, @function
n00248_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_916_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_916_stno
                        .long            0
                        .long            129
                        .quad            .Lstnof1
                        .popsection
n00248_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00249_call_byname_α
                        .size            n00248_line_mark_bx, .-n00248_line_mark_bx
                        .type            n00249_call_byname_bx, @function
n00249_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00249_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd919: .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd919]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262297
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_85:    mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_86:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_918_999
                        add              rsp, 16;                             jmp   n00247_deref_β
.Lcall_byname_α_918_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80;                             jmp   .Ldisjunction_γ_673_as
n00249_call_byname_β:     add              rsp, 16;                             jmp   n00247_deref_β
                        .size            n00249_call_byname_bx, .-n00249_call_byname_bx
                        .type            n00236_lit_string_bx, @function
n00236_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_920_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00250_binop_test_α
n00236_lit_string_β:      add              rsp, 16
                        add              rsp, -176;                           jmp   .Ldisjunction_ω_668_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_920_0: .quad .Llit_string_α_920_0_s; .popsection
.Llit_string_α_920_0_s: .string          "+"
                        .size            n00236_lit_string_bx, .-n00236_lit_string_bx
                        .type            n00250_binop_test_bx, @function
n00250_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_binop_test_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 3072]
                        mov              rsi, qword ptr [rbp + 3080]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 22
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_options_89:    cmp              al, 255;                             jne   .Lbinop_test_vd_921_44
                        call             c_rt_jct_relop@PLT
.Lgcsite_options_88:    mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_test_vd_921_44: push             rax
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
.Lgcsite_options_87:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            je    .Lbinop_test_α_921_4
.Lbinop_test_α_921_3:   mov              rcx, 136
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, 1
                        mov              qword ptr [rsp + 8], rcx;            jmp   n00251_line_mark_α
.Lbinop_test_α_921_4:   mov              rcx, 136
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, 0
                        mov              qword ptr [rsp + 8], rcx;            jmp   n00251_line_mark_α
                        .size            n00250_binop_test_bx, .-n00250_binop_test_bx
                        .type            n00251_line_mark_bx, @function
n00251_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_922_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_922_stno
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
n00234_disjunction_α:     mov              qword ptr [rbp + 928], 0
                        mov              qword ptr [rbp + 936], 0
                        mov              dword ptr [rbp + 944], 0;            jmp   n00252_var_ref_α
.Ldisjunction_γ_687_as: mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_925_0
                                                                              jmp   .Ldisjunction_γ_668_as
.Ldisjunction_α_925_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_925_1
                                                                              jmp   .Ldisjunction_γ_668_as
.Ldisjunction_α_925_1:                                                        jmp   .Ldisjunction_γ_668_as
n00234_disjunction_β:     mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_687_af
                                                                              jmp   .Ldisjunction_ω_687_af
.Ldisjunction_γ_687_af:
.Ldisjunction_ω_687_af: add              dword ptr [rbp + 944], 1
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 1;                              je    n00253_lit_string_α
                                                                              jmp   n00189_unmark_α
                        .size            n00234_disjunction_bx, .-n00234_disjunction_bx
                        .type            n00253_lit_string_bx, @function
n00253_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_926_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00254_var_ref_α
n00253_lit_string_β:      add              rsp, 16
                        add              rsp, -64;                            jmp   .Ldisjunction_ω_687_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_926_0: .quad .Llit_string_α_926_0_s; .popsection
.Llit_string_α_926_0_s: .string          "-"
                        .size            n00253_lit_string_bx, .-n00253_lit_string_bx
                        .type            n00254_var_ref_bx, @function
n00254_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3056]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00255_lit_string_α
n00254_var_ref_β:         add              rsp, 16;                             jmp   n00253_lit_string_β
                        .size            n00254_var_ref_bx, .-n00254_var_ref_bx
                        .type            n00255_lit_string_bx, @function
n00255_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00255_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_929_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00256_deref_α
n00255_lit_string_β:      add              rsp, 16;                             jmp   n00254_var_ref_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_929_0: .quad .Llit_string_α_929_0_s; .popsection
.Llit_string_α_929_0_s: .string          " needs numeric parameter"
                        .size            n00255_lit_string_bx, .-n00255_lit_string_bx
                        .type            n00256_deref_bx, @function
n00256_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_options_91:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_930_999
                        add              rsp, 16;                             jmp   n00255_lit_string_β
.Lderef_α_930_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_90:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00257_line_mark_α
n00256_deref_β:           add              rsp, 16;                             jmp   n00255_lit_string_β
                        .size            n00256_deref_bx, .-n00256_deref_bx
                        .type            n00257_line_mark_bx, @function
n00257_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_931_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_931_stno
                        .long            0
                        .long            128
                        .quad            .Lstnof1
                        .popsection
n00257_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 128;            jmp   n00258_call_byname_α
                        .size            n00257_line_mark_bx, .-n00257_line_mark_bx
                        .type            n00258_call_byname_bx, @function
n00258_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_call_byname_α:     sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd934: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd934]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_92:    mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_93:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_byname_α_933_999
                        add              rsp, 16;                             jmp   n00256_deref_β
.Lcall_byname_α_933_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 112;                            jmp   .Ldisjunction_γ_687_as
n00258_call_byname_β:     add              rsp, 16;                             jmp   n00256_deref_β
                        .size            n00258_call_byname_bx, .-n00258_call_byname_bx
                        .type            n00252_var_ref_bx, @function
n00252_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3088]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00259_deref_α
n00252_var_ref_β:         add              rsp, 16
                        add              rsp, -64;                            jmp   .Ldisjunction_ω_687_af
                        .size            n00252_var_ref_bx, .-n00252_var_ref_bx
                        .type            n00259_deref_bx, @function
n00259_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_95:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_937_999
                        add              rsp, 16;                             jmp   n00252_var_ref_β
.Lderef_α_937_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_94:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00260_line_mark_α
n00259_deref_β:           add              rsp, 16;                             jmp   n00252_var_ref_β
                        .size            n00259_deref_bx, .-n00259_deref_bx
                        .type            n00260_line_mark_bx, @function
n00260_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_938_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_938_stno
                        .long            0
                        .long            127
                        .quad            .Lstnof1
                        .popsection
n00260_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 127;            jmp   n00261_call_byname_α
                        .size            n00260_line_mark_bx, .-n00260_line_mark_bx
                        .type            n00261_call_byname_bx, @function
n00261_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00261_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd941: .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd941]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 458878
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_96:    mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_97:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_940_999
                        add              rsp, 16;                             jmp   n00259_deref_β
.Lcall_byname_α_940_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80;                             jmp   .Ldisjunction_γ_687_as
n00261_call_byname_β:     add              rsp, 16;                             jmp   n00259_deref_β
                        .size            n00261_call_byname_bx, .-n00261_call_byname_bx
                        .type            n00232_lit_string_bx, @function
n00232_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_942_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00262_binop_test_α
n00232_lit_string_β:      add              rsp, 16
                        add              rsp, -176;                           jmp   .Ldisjunction_ω_668_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_942_0: .quad .Llit_string_α_942_0_s; .popsection
.Llit_string_α_942_0_s: .string          ":"
                        .size            n00232_lit_string_bx, .-n00232_lit_string_bx
                        .type            n00262_binop_test_bx, @function
n00262_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_binop_test_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 3072]
                        mov              rsi, qword ptr [rbp + 3080]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 22
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_options_100:   cmp              al, 255;                             jne   .Lbinop_test_vd_943_45
                        call             c_rt_jct_relop@PLT
.Lgcsite_options_99:    mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_test_vd_943_45: push             rax
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
.Lgcsite_options_98:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            je    .Lbinop_test_α_943_4
.Lbinop_test_α_943_3:   mov              rcx, 136
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, 1
                        mov              qword ptr [rsp + 8], rcx;            jmp   n00263_var_α
.Lbinop_test_α_943_4:   mov              rcx, 136
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, 0
                        mov              qword ptr [rsp + 8], rcx;            jmp   n00263_var_α
                        .size            n00262_binop_test_bx, .-n00262_binop_test_bx
                        .type            n00263_var_bx, @function
n00263_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_var_α:             add              rsp, 64;                             jmp   .Ldisjunction_γ_668_as
n00263_var_β:             add              rsp, 400;                            jmp   n00189_unmark_α
                        .size            n00263_var_bx, .-n00263_var_bx
                        .type            n00229_lit_string_bx, @function
n00229_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_946_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00264_var_ref_α
n00229_lit_string_β:      add              rsp, 16
                        add              rsp, -144;                           jmp   .Ldisjunction_ω_664_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_946_0: .quad .Llit_string_α_946_0_s; .popsection
.Llit_string_α_946_0_s: .string          "No parameter following -"
                        .size            n00229_lit_string_bx, .-n00229_lit_string_bx
                        .type            n00264_var_ref_bx, @function
n00264_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3056]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00265_deref_α
n00264_var_ref_β:         add              rsp, 16;                             jmp   n00229_lit_string_β
                        .size            n00264_var_ref_bx, .-n00264_var_ref_bx
                        .type            n00265_deref_bx, @function
n00265_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00265_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_102:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_949_999
                        add              rsp, 16;                             jmp   n00264_var_ref_β
.Lderef_α_949_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_101:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00266_line_mark_α
n00265_deref_β:           add              rsp, 16;                             jmp   n00264_var_ref_β
                        .size            n00265_deref_bx, .-n00265_deref_bx
                        .type            n00266_line_mark_bx, @function
n00266_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_950_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_950_stno
                        .long            0
                        .long            124
                        .quad            .Lstnof1
                        .popsection
n00266_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 124;            jmp   n00267_call_byname_α
                        .size            n00266_line_mark_bx, .-n00266_line_mark_bx
                        .type            n00267_call_byname_bx, @function
n00267_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_call_byname_α:     sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd953: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd953]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_103:   mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_104:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_952_999
                        add              rsp, 16;                             jmp   n00265_deref_β
.Lcall_byname_α_952_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 96;                             jmp   .Ldisjunction_γ_664_as
n00267_call_byname_β:     add              rsp, 16;                             jmp   n00265_deref_β
                        .size            n00267_call_byname_bx, .-n00267_call_byname_bx
                        .type            n00228_var_ref_bx, @function
n00228_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00228_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3344]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00268_deref_α
n00228_var_ref_β:         add              rsp, 16
                        add              rsp, -144;                           jmp   .Ldisjunction_ω_664_af
                        .size            n00228_var_ref_bx, .-n00228_var_ref_bx
                        .type            n00268_deref_bx, @function
n00268_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00268_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_106:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_956_999
                        add              rsp, 16;                             jmp   n00228_var_ref_β
.Lderef_α_956_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_105:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00269_line_mark_α
n00268_deref_β:           add              rsp, 16;                             jmp   n00228_var_ref_β
                        .size            n00268_deref_bx, .-n00268_deref_bx
                        .type            n00269_line_mark_bx, @function
n00269_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_957_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_957_stno
                        .long            0
                        .long            123
                        .quad            .Lstnof1
                        .popsection
n00269_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00270_call_byname_α
                        .size            n00269_line_mark_bx, .-n00269_line_mark_bx
                        .type            n00270_call_byname_bx, @function
n00270_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd960: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd960]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_107:   mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_108:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_959_999
                        add              rsp, 16;                             jmp   n00268_deref_β
.Lcall_byname_α_959_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80;                             jmp   .Ldisjunction_γ_664_as
n00270_call_byname_β:     add              rsp, 16;                             jmp   n00268_deref_β
                        .size            n00270_call_byname_bx, .-n00270_call_byname_bx
                        .type            n00225_lit_string_bx, @function
n00225_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_961_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00271_lit_integer_α
n00225_lit_string_β:      add              rsp, 16
                        add              rsp, -144;                           jmp   .Ldisjunction_ω_664_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_961_0: .quad .Llit_string_α_961_0_s; .popsection
.Llit_string_α_961_0_s: .string          ""
                        .size            n00225_lit_string_bx, .-n00225_lit_string_bx
                        .type            n00271_lit_integer_bx, @function
n00271_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_962_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00272_line_mark_α
n00271_lit_integer_β:     add              rsp, 16;                             jmp   n00225_lit_string_β
.Llit_integer_α_962_0:  .quad            0
                        .size            n00271_lit_integer_bx, .-n00271_lit_integer_bx
                        .type            n00272_line_mark_bx, @function
n00272_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_963_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_963_stno
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
n00227_scan_tab_α:        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_966_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_966_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_966_998
                        add              rsp, 16;                             jmp   n00271_lit_integer_β
.Lscan_tab_α_966_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_966_999
                        add              rsp, 16;                             jmp   n00271_lit_integer_β
.Lscan_tab_α_966_999:   mov              qword ptr [rbp + 1632], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        call             qword ptr [rip + rt_substr@GOTPCREL]
.Lgcsite_options_110:   add              rsp, 16
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
.Lgcsite_options_109:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00273_binop_test_α
n00227_scan_tab_β:        mov              r14, qword ptr [rbp + 1632]
                        add              rsp, 16;                             jmp   n00271_lit_integer_β
                        .size            n00227_scan_tab_bx, .-n00227_scan_tab_bx
                        .type            n00273_binop_test_bx, @function
n00273_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_binop_test_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 17
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_options_113:   cmp              al, 255;                             jne   .Lbinop_test_vd_967_46
                        call             c_rt_jct_relop@PLT
.Lgcsite_options_112:   mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_test_vd_967_46: push             rax
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
.Lgcsite_options_111:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            je    .Lbinop_test_α_967_4
.Lbinop_test_α_967_3:   mov              rcx, 136
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, 1
                        mov              qword ptr [rsp + 8], rcx
                        add              rsp, 96;                             jmp   .Ldisjunction_γ_664_as
.Lbinop_test_α_967_4:   mov              rcx, 136
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, 0
                        mov              qword ptr [rsp + 8], rcx
                        add              rsp, 96;                             jmp   .Ldisjunction_γ_664_as
n00273_binop_test_β:      add              rsp, 16;                             jmp   n00227_scan_tab_β
                        .size            n00273_binop_test_bx, .-n00273_binop_test_bx
                        .type            n00189_unmark_bx, @function
n00189_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00189_unmark_α:          add              rsp, 64;                             jmp   n00274_line_mark_α
                        .size            n00189_unmark_bx, .-n00189_unmark_bx
                        .type            n00274_line_mark_bx, @function
n00274_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_970_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_970_stno
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
n00161_scan_α:            sub              rsp, 16
                        mov              dword ptr [rbp + 496], r14d
                        mov              dword ptr [rbp + 484], r15d
                        call             rt_scan_live_subj@PLT
.Lgcsite_options_115:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 488], rax
                        mov              dword ptr [rbp + 480], 2
                        mov              rdi, qword ptr [rbp + 392]           # outer_sigma
                        mov              rsi, qword ptr [rbp + 400]           # outer_delta
                        mov              rdx, qword ptr [rbp + 408]           # outer_len
                        call             rt_scan_leave@PLT
.Lgcsite_options_114:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rbp + 392]
                        mov              r14, qword ptr [rbp + 400]
                        mov              r15, qword ptr [rbp + 408]
                        add              rsp, -208;                           jmp   n00156_unmark_α
n00161_scan_β:            add              rsp, 16
                        add              rsp, 128;                            jmp   n00156_unmark_α
                        .size            n00161_scan_bx, .-n00161_scan_bx
                        .type            n00180_lit_string_bx, @function
n00180_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_974_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00275_scan_match_α
n00180_lit_string_β:      add              rsp, 16
                        add              rsp, -48;                            jmp   .Ldisjunction_ω_621_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_974_0: .quad .Llit_string_α_974_0_s; .popsection
.Llit_string_α_974_0_s: .string          "-"
                        .size            n00180_lit_string_bx, .-n00180_lit_string_bx
                        .type            n00275_scan_match_bx, @function
n00275_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_scan_match_α:      sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jge   .Lscan_match_α_976_998
                        add              rsp, 16;                             jmp   n00180_lit_string_β
.Lscan_match_α_976_998: mov              rdi, qword ptr [rip + .Lscan_match_α_976_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        call             memcmp@PLT
.Lgcsite_options_116:   mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r12
                        test             eax, eax;                            je    .Lscan_match_α_976_999
                        add              rsp, 16;                             jmp   n00180_lit_string_β
.Lscan_match_α_976_999: mov              qword ptr [rsp + 0], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 8], rax;            jmp   n00276_scan_tab_α
n00275_scan_match_β:      add              rsp, 16;                             jmp   n00180_lit_string_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lscan_match_α_976_0: .quad .Lscan_match_α_976_0_s; .popsection
.Lscan_match_α_976_0_s: .string          "-"
                        .size            n00275_scan_match_bx, .-n00275_scan_match_bx
                        .type            n00276_scan_tab_bx, @function
n00276_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_scan_tab_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_options_123:   cmp              eax, -2;                             jne   .Lscan_tab_vd_978_47
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_options_122:   mov              r9,  qword ptr [rip + rtccb+48]
.Lscan_tab_vd_978_47:   test             eax, eax;                            jne   .Lscan_tab_α_978_997
                        add              rsp, 16;                             jmp   n00275_scan_match_β
.Lscan_tab_α_978_997:   push             rax
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
.Lgcsite_options_121:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rsp + 16]            # lo
                        mov              rsi, qword ptr [rsp + 24]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_options_120:   mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_119:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_978_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_978_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_978_998
                        add              rsp, 16;                             jmp   n00275_scan_match_β
.Lscan_tab_α_978_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_978_999
                        add              rsp, 16;                             jmp   n00275_scan_match_β
.Lscan_tab_α_978_999:   mov              qword ptr [rbp + 2480], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        call             qword ptr [rip + rt_substr@GOTPCREL]
.Lgcsite_options_118:   add              rsp, 16
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
.Lgcsite_options_117:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00277_lit_integer_α
n00276_scan_tab_β:        mov              r14, qword ptr [rbp + 2480]
                        add              rsp, 16;                             jmp   n00275_scan_match_β
                        .size            n00276_scan_tab_bx, .-n00276_scan_tab_bx
                        .type            n00277_lit_integer_bx, @function
n00277_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_979_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00278_line_mark_α
n00277_lit_integer_β:     add              rsp, 16;                             jmp   n00276_scan_tab_β
.Llit_integer_α_979_0:  .quad            0
                        .size            n00277_lit_integer_bx, .-n00277_lit_integer_bx
                        .type            n00278_line_mark_bx, @function
n00278_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_980_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_980_stno
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
n00279_scan_pos_α:        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_983_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_983_0:     cmp              rax, 1;                              jge   .Lscan_pos_α_983_997
                        add              rsp, 16;                             jmp   n00277_lit_integer_β
.Lscan_pos_α_983_997:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_pos_α_983_998
                        add              rsp, 16;                             jmp   n00277_lit_integer_β
.Lscan_pos_α_983_998:   mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            je    .Lscan_pos_α_983_999
                        add              rsp, 16;                             jmp   n00277_lit_integer_β
.Lscan_pos_α_983_999:   mov              qword ptr [rsp + 0], 3
                        mov              qword ptr [rsp + 8], rax;            jmp   n00280_conjunction_α
n00279_scan_pos_β:        add              rsp, 16;                             jmp   n00277_lit_integer_β
                        .size            n00279_scan_pos_bx, .-n00279_scan_pos_bx
                        .type            n00280_conjunction_bx, @function
n00280_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00280_conjunction_α:     mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 2424], rax;         jmp   n00281_scan_α
n00280_conjunction_β:                                                           jmp   n00279_scan_pos_β
                        .size            n00280_conjunction_bx, .-n00280_conjunction_bx
                        .type            n00281_scan_bx, @function
n00281_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_scan_α:            sub              rsp, 16
                        mov              dword ptr [rbp + 2400], r14d
                        mov              dword ptr [rbp + 2388], r15d
                        call             rt_scan_live_subj@PLT
.Lgcsite_options_125:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 2392], rax
                        mov              dword ptr [rbp + 2384], 2
                        mov              rdi, qword ptr [rbp + 392]           # outer_sigma
                        mov              rsi, qword ptr [rbp + 400]           # outer_delta
                        mov              rdx, qword ptr [rbp + 408]           # outer_len
                        call             rt_scan_leave@PLT
.Lgcsite_options_124:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rbp + 392]
                        mov              r14, qword ptr [rbp + 400]
                        mov              r15, qword ptr [rbp + 408];          jmp   n00282_var_α
n00281_scan_β:            add              rsp, 16
                        add              rsp, -16;                            jmp   n00282_var_α
                        .size            n00281_scan_bx, .-n00281_scan_bx
                        .type            n00282_var_bx, @function
n00282_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_var_α:             sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   n00283_assign_α
                        .size            n00282_var_bx, .-n00282_var_bx
                        .type            n00283_assign_bx, @function
n00283_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00283_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx;         jmp   n00284_var_α
                        .size            n00283_assign_bx, .-n00283_assign_bx
                        .type            n00284_var_bx, @function
n00284_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_var_α:             sub              rsp, 16;                             jmp   n00149_line_mark_α
                        .size            n00284_var_bx, .-n00284_var_bx
                        .type            n00156_unmark_bx, @function
n00156_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_unmark_α:          add              rsp, 112;                            jmp   n00285_line_mark_α
                        .size            n00156_unmark_bx, .-n00156_unmark_bx
                        .type            n00285_line_mark_bx, @function
n00285_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_993_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_993_stno
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
.Lline_mark_α_995_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_995_stno
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
n00286_bound_α:           mov              qword ptr [rbp + 192], rsp;          jmp   n00287_var_ref_α
n00286_bound_β:                                                                 jmp   n00287_var_ref_α
                        .size            n00286_bound_bx, .-n00286_bound_bx
                        .type            n00287_var_ref_bx, @function
n00287_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3344]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00288_var_ref_α
                        .size            n00287_var_ref_bx, .-n00287_var_ref_bx
                        .type            n00288_var_ref_bx, @function
n00288_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00288_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3008]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00289_deref_α
                        .size            n00288_var_ref_bx, .-n00288_var_ref_bx
                        .type            n00289_deref_bx, @function
n00289_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_127:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1003_999
                        add              rsp, 16
                        add              rsp, -48;                            jmp   n00290_line_mark_α
.Lderef_α_1003_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_126:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00291_line_mark_α
                        .size            n00289_deref_bx, .-n00289_deref_bx
                        .type            n00291_line_mark_bx, @function
n00291_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1004_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1004_stno
                        .long            0
                        .long            138
                        .quad            .Lstnof1
                        .popsection
n00291_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 138;            jmp   n00292_call_byname_α
                        .size            n00291_line_mark_bx, .-n00291_line_mark_bx
                        .type            n00292_call_byname_bx, @function
n00292_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00292_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd1007: .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd1007]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262292
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_128:   mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_129:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_1006_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00290_line_mark_α
.Lcall_byname_α_1006_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00293_deref_α
                        .size            n00292_call_byname_bx, .-n00292_call_byname_bx
                        .type            n00293_deref_bx, @function
n00293_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # var_ref
                        mov              rsi, qword ptr [rsp + 72]            # d
                        call             rt_deref@PLT
.Lgcsite_options_131:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1008_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00290_line_mark_α
.Lderef_α_1008_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_130:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00294_line_mark_α
                        .size            n00293_deref_bx, .-n00293_deref_bx
                        .type            n00294_line_mark_bx, @function
n00294_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1009_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1009_stno
                        .long            0
                        .long            138
                        .quad            .Lstnof1
                        .popsection
n00294_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 138;            jmp   n00295_call_byname_α
                        .size            n00294_line_mark_bx, .-n00294_line_mark_bx
                        .type            n00295_call_byname_bx, @function
n00295_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_call_byname_α:     sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd1012: .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd1012]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 262293
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_132:   mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_133:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_1011_999
                        add              rsp, 16;                             jmp   n00290_line_mark_α
.Lcall_byname_α_1011_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00296_unmark_α
                        .size            n00295_call_byname_bx, .-n00295_call_byname_bx
                        .type            n00296_unmark_bx, @function
n00296_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_unmark_α:          add              rsp, 96;                             jmp   n00286_bound_α
                        .size            n00296_unmark_bx, .-n00296_unmark_bx
                        .type            n00290_line_mark_bx, @function
n00290_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1015_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1015_stno
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
n00297_var_α:                                                                   jmp   n00298_return_α
                        .size            n00297_var_bx, .-n00297_var_bx
                        .type            n00298_return_bx, @function
n00298_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_return_α:          mov              rax, qword ptr [rbp + 2992]          # var
                        mov              rdx, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   options_γ
                        .size            n00298_return_bx, .-n00298_return_bx
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
                        lea              rsp, [rbp + 3376]
                        mov              rbp, qword ptr [rbp + 3336];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 3376]
                        mov              rbp, qword ptr [rbp + 3336];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_options:
                        .quad            14363717094746
                        .quad            515396075728
                        .quad            .Lgcmap_options_s
                        .quad            3120
                        .quad            45
                        .quad            211106232532992
                        .quad            17596481011904
                        .quad            140737488355536
                        .quad            17596481012048
                        .quad            52776558133600
                        .quad            17596481012112
                        .quad            35184372089248
                        .quad            17596481012160
                        .quad            35184372089296
                        .quad            17596481012208
                        .quad            17592186044928
                        .quad            17596481012240
                        .quad            52776558133792
                        .quad            17596481012304
                        .quad            35184372089440
                        .quad            17596481012352
                        .quad            35184372089488
                        .quad            17596481012400
                        .quad            87960930222784
                        .quad            17596481012496
                        .quad            52776558134048
                        .quad            17596481012560
                        .quad            87960930222944
                        .quad            17596481012656
                        .quad            316659348800448
                        .quad            17596481012960
                        .quad            316659348800752
                        .quad            17596481013264
                        .quad            70368744179232
                        .quad            17596481013344
                        .quad            510173395289712
                        .quad            17596481013824
                        .quad            228698418579536
                        .quad            17596481014048
                        .quad            52776558135600
                        .quad            17596481014112
                        .quad            70368744180080
                        .quad            17596481014192
                        .quad            17592186046912
                        .quad            17596481014224
                        .quad            123145302313440
                        .quad            17596481014352
                        .quad            17592186047072
                        .quad            17596481014384
                        .quad            474989023201920
.Lgcmap_options_s:      .string          "options"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_options_3:    .quad            134
                        .quad            .Lgcmap_options
                        .quad            9223389618303405360
                        .quad            .Lgccode_options_3
                        .quad            .Lgcsite_options_1-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_0-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_3-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_2-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_4-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_5-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_8-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_7-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_6-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_9-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_10-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_12-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_11-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_14-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_13-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_15-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_16-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_18-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_17-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_23-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_22-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_21-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_20-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_19-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_25-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_24-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_27-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_26-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_28-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_29-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_30-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_37-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_36-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_35-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_34-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_33-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_32-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_31-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_39-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_38-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_41-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_40-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_42-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_43-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_45-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_44-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_47-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_46-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_48-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_49-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_50-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_53-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_52-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_51-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_55-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_54-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_58-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_57-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_56-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_61-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_60-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_59-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_63-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_62-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_69-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_68-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_67-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_66-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_65-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_64-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_71-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_70-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_73-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_72-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_74-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_75-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_78-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_77-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_76-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_80-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_79-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_81-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_82-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_84-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_83-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_85-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_86-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_89-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_88-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_87-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_91-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_90-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_92-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_93-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_95-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_94-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_96-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_97-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_100-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_99-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_98-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_102-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_101-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_103-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_104-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_106-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_105-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_107-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_108-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_110-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_109-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_113-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_112-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_111-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_115-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_114-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_116-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_123-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_122-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_121-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_120-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_119-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_118-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_117-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_125-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_124-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_127-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_126-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_128-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_129-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_131-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_130-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_132-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_133-.Lgccode_options_3
                        .quad            65537
                        .popsection
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
                        mov              edi, 745
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 745
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
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        lea              rdi, [rsp - 16]
                        call             rt_program_top_adopt@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        .pushsection     .rodata
.Lscan_nil:             .byte            0
                        .popsection
                        lea              r13, [rip + .Lscan_nil]
                        xor              r15d, r15d
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
.Lgvan741:              .string          "uses"
.Lgvan742:              .string          "colmax"
.Lgvan743:              .string          "namewidth"
.Lgvan744:              .string          "lineno"
                        .section         .data.rel.ro,"aw",@progbits
                        .align           8
__gva_names:
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            .Lgvan741
                        .quad            .Lgvan742
                        .quad            .Lgvan743
                        .quad            .Lgvan744
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_main_4:
main_α:
                        sub              rsp, 1264
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 157
                        rep              stosq
                        mov              eax, 0                               # GCANCHOR .Lgcmap_main qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1256], rbp
                        mov              rbp, rsp
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              ecx, dword ptr [rax + 12]
                        mov              rax, qword ptr [rax + 0]
                        cmp              ecx, 0;                              jbe   .Lmain_α_1019_220
                        mov              rdx, qword ptr [rax + 0]
                        mov              qword ptr [rsp + 16], rdx
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rsp + 24], rdx
.Lmain_α_1019_220:
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
main_α_body:
                        .type            n00299_call_direct_bx, @function
n00299_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_call_direct_α:    sub              rsp, 16
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        call             rt_quit_trap_300@PLT
.Lgcsite_main_0:        mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_1:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_1096_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00300_line_mark_α
.Lcall_direct_α_1096_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00300_line_mark_α
n00299_call_direct_β:    add              rsp, 16
                        add              rsp, -16;                            jmp   n00300_line_mark_α
                        .size            n00299_call_direct_bx, .-n00299_call_direct_bx
                        .type            n00300_line_mark_bx, @function
n00300_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1097_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1097_stno
                        .long            0
                        .long            40
                        .quad            .Lstnof1
                        .popsection
n00300_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_1098_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00301_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_1098_0: .quad .Lline_mark_α_1098_0_s; .popsection
.Lline_mark_α_1098_0_s: .string          "concord.icn"
                        .size            n00300_line_mark_bx, .-n00300_line_mark_bx
                        .type            n00301_line_mark_bx, @function
n00301_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1099_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1099_stno
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
n00302_var_ref_α:        sub              rsp, 32
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 16]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00303_lit_string_α
                        .size            n00302_var_ref_bx, .-n00302_var_ref_bx
                        .type            n00303_lit_string_bx, @function
n00303_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1103_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00304_deref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_1103_0: .quad .Llit_string_α_1103_0_s; .popsection
.Llit_string_α_1103_0_s:
                        .string          "l+w+"
                        .size            n00303_lit_string_bx, .-n00303_lit_string_bx
                        .type            n00304_deref_bx, @function
n00304_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00304_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_main_3:        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1104_999
                        add              rsp, 16
                        add              rsp, -48;                            jmp   n00305_line_mark_α
.Lderef_α_1104_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_2:        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00306_line_mark_α
                        .size            n00304_deref_bx, .-n00304_deref_bx
                        .type            n00306_line_mark_bx, @function
n00306_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1105_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1105_stno
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
                        sub              rsp, 16
                        lea              rcx, [rip + .Lcall_proc_staged_α_1108_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1108_3]
                        push             rcx
                        sub              rsp, 32
                        mov              rcx, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rcx, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rcx
                        mov              rcx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 392];          jmp   rax
.Lcall_proc_staged_α_1108_3:
.Lgcsite_main_5:        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 43
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1108_2
.Lcall_proc_staged_α_1108_4:
.Lgcsite_main_4:        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 43
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1108_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_1108_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00305_line_mark_α
.Lcall_proc_staged_α_1108_999:
                                                                              jmp   n00308_deref_α
n00307_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 43
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00305_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_1108_0: .quad .Lcall_proc_staged_β_1108_0_s; .popsection
.Lcall_proc_staged_β_1108_0_s:
                        .string          "options"
                        .size            n00307_call_proc_staged_bx, .-n00307_call_proc_staged_bx
                        .type            n00308_deref_bx, @function
n00308_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00308_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_7:        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1109_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00305_line_mark_α
.Lderef_α_1109_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_6:        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00309_assign_α
                        .size            n00308_deref_bx, .-n00308_deref_bx
                        .type            n00309_assign_bx, @function
n00309_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00309_assign_α:         mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00305_line_mark_α
                        .size            n00309_assign_bx, .-n00309_assign_bx
                        .type            n00305_line_mark_bx, @function
n00305_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1111_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1111_stno
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
n00310_disjunction_α:    mov              qword ptr [rbp + 816], 0
                        mov              qword ptr [rbp + 824], 0
                        mov              dword ptr [rbp + 832], 0;            jmp   n00311_var_ref_α
.Ldisjunction_γ_1031_as:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1114_0
                                                                              jmp   n00312_assign_α
.Ldisjunction_α_1114_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1114_1
                                                                              jmp   n00312_assign_α
.Ldisjunction_α_1114_1:                                                       jmp   n00312_assign_α
n00310_disjunction_β:    mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1031_af
                                                                              jmp   .Ldisjunction_ω_1031_af
.Ldisjunction_γ_1031_af:
.Ldisjunction_ω_1031_af:
                        add              dword ptr [rbp + 832], 1
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 1;                              je    n00313_lit_integer_α
                                                                              jmp   n00314_line_mark_α
                        .size            n00310_disjunction_bx, .-n00310_disjunction_bx
                        .type            n00312_assign_bx, @function
n00312_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_assign_α:         mov              rax, qword ptr [rsp + 0]             # disjunction
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11872], rax          # colmax
                        mov              qword ptr [r9 + 11880], rdx;         jmp   n00314_line_mark_α
                        .size            n00312_assign_bx, .-n00312_assign_bx
                        .type            n00314_line_mark_bx, @function
n00314_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1116_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1116_stno
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
n00315_disjunction_α:    mov              qword ptr [rbp + 672], 0
                        mov              qword ptr [rbp + 680], 0
                        mov              dword ptr [rbp + 688], 0;            jmp   n00316_var_ref_α
.Ldisjunction_γ_1034_as:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1119_0
                                                                              jmp   n00317_assign_α
.Ldisjunction_α_1119_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1119_1
                                                                              jmp   n00317_assign_α
.Ldisjunction_α_1119_1:                                                       jmp   n00317_assign_α
n00315_disjunction_β:    mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1034_af
                                                                              jmp   .Ldisjunction_ω_1034_af
.Ldisjunction_γ_1034_af:
.Ldisjunction_ω_1034_af:
                        add              dword ptr [rbp + 688], 1
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 1;                              je    n00318_lit_integer_α
                                                                              jmp   n00319_line_mark_α
                        .size            n00315_disjunction_bx, .-n00315_disjunction_bx
                        .type            n00317_assign_bx, @function
n00317_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00317_assign_α:         mov              rax, qword ptr [rsp + 0]             # disjunction
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11888], rax          # namewidth
                        mov              qword ptr [r9 + 11896], rdx;         jmp   n00319_line_mark_α
                        .size            n00317_assign_bx, .-n00317_assign_bx
                        .type            n00319_line_mark_bx, @function
n00319_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1121_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1121_stno
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
n00320_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_1123_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00321_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_1123_0: .quad .Llit_string_α_1123_0_s; .popsection
.Llit_string_α_1123_0_s:
                        .string          ""
                        .size            n00320_lit_string_bx, .-n00320_lit_string_bx
                        .type            n00321_line_mark_bx, @function
n00321_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1124_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1124_stno
                        .long            0
                        .long            46
                        .quad            .Lstnof1
                        .popsection
n00321_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 46;             jmp   n00322_call_byname_α
                        .size            n00321_line_mark_bx, .-n00321_line_mark_bx
                        .type            n00322_call_byname_bx, @function
n00322_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00322_call_byname_α:    sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd1127: .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd1127]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_8:        mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_9:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_1126_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00323_line_mark_α
.Lcall_byname_α_1126_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00324_assign_α
                        .size            n00322_call_byname_bx, .-n00322_call_byname_bx
                        .type            n00324_assign_bx, @function
n00324_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_assign_α:         mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11856], rax          # uses
                        mov              qword ptr [r9 + 11864], rdx;         jmp   n00323_line_mark_α
                        .size            n00324_assign_bx, .-n00324_assign_bx
                        .type            n00323_line_mark_bx, @function
n00323_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1129_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1129_stno
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
n00325_lit_integer_α:    sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1131_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00326_assign_α
.Llit_integer_α_1131_0: .quad            0
                        .size            n00325_lit_integer_bx, .-n00325_lit_integer_bx
                        .type            n00326_assign_bx, @function
n00326_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00326_assign_α:         mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11904], rax          # lineno
                        mov              qword ptr [r9 + 11912], rdx;         jmp   n00327_line_mark_α
                        .size            n00326_assign_bx, .-n00326_assign_bx
                        .type            n00327_line_mark_bx, @function
n00327_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1133_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1133_stno
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
.Lline_mark_α_1135_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1135_stno
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
n00329_proc_gen_α:       sub              rsp, 16
                        mov              qword ptr [rbp + 528], 152           # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
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
                        lea              rcx, [rip + .Lproc_gen_α_1138_4]
                        push             rcx
                        lea              rcx, [rip + .Lproc_gen_α_1138_3]
                        push             rcx
                        sub              rsp, 0
                        lea              rdx, [rip + .Lproc_gen_α_1138_4]
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 264];          jmp   rax
.Lproc_gen_α_1138_3:
.Lgcsite_main_14:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 48
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        cmp              al, 104;                             je    .Lproc_gen_α_1138_8
                        mov              rdi, qword ptr [rdx + -1168]
                        mov              rsi, qword ptr [rdx + -1160]
                        mov              qword ptr [rbp + 536], rdx;          jmp   .Lproc_gen_α_1138_9
.Lproc_gen_α_1138_8:    mov              edi, 104
                        mov              esi, 0
                        mov              qword ptr [rbp + 536], 0
.Lproc_gen_α_1138_9:    mov              rax, qword ptr [rbp + 528]
                        shr              rax, 8
                        test             rax, rax;                            jne   .Lproc_gen_α_1138_5
                        mov              qword ptr [rbp + 528], 408
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], -1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lproc_gen_α_1138_2
.Lproc_gen_α_1138_5:    call             qword ptr [rip + rt_gen_spine_pass_γ@GOTPCREL]
.Lgcsite_main_13:                                                             jmp   .Lproc_gen_α_1138_2
.Lproc_gen_α_1138_4:
.Lgcsite_main_12:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 48
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        add              rsp, 8
                        mov              qword ptr [rbp + 536], 0
                        mov              rax, qword ptr [rbp + 528]
                        shr              rax, 8
                        test             rax, rax;                            jne   .Lproc_gen_α_1138_6
                        mov              qword ptr [rbp + 528], 408
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], -1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              eax, 104
                        xor              edx, edx;                            jmp   .Lproc_gen_α_1138_2
.Lproc_gen_α_1138_6:    call             qword ptr [rip + rt_gen_spine_pass_ω@GOTPCREL]
.Lgcsite_main_11:                                                             jmp   .Lproc_gen_α_1138_2
.Lproc_gen_α_1138_2:    mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             jne   .Lproc_gen_α_1138_999
                        add              rsp, 16;                             jmp   n00330_line_mark_α
.Lproc_gen_α_1138_999:                                                        jmp   n00331_var_ref_α
n00329_proc_gen_β:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 48
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        call             qword ptr [rip + rt_gen_spine_resume_enter@GOTPCREL]
.Lgcsite_main_10:       mov              rax, qword ptr [rbp + 536];          jmp   qword ptr [rax + 32]
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lproc_gen_β_1138_0: .quad .Lproc_gen_β_1138_0_s; .popsection
.Lproc_gen_β_1138_0_s:  .string          "item"
                        .size            n00329_proc_gen_bx, .-n00329_proc_gen_bx
                        .type            n00331_var_ref_bx, @function
n00331_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00331_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064192                      # lineno
                        mov              qword ptr [rsp + 8], rax;            jmp   n00332_deref_α
n00331_var_ref_β:        add              rsp, 16;                             jmp   n00329_proc_gen_β
                        .size            n00331_var_ref_bx, .-n00331_var_ref_bx
                        .type            n00332_deref_bx, @function
n00332_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00332_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 512]           # proc_gen
                        mov              rsi, qword ptr [rbp + 520]           # d
                        call             rt_deref@PLT
.Lgcsite_main_16:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1141_999
                        add              rsp, 16;                             jmp   n00331_var_ref_β
.Lderef_α_1141_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_15:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00333_deref_α
n00332_deref_β:          add              rsp, 16;                             jmp   n00331_var_ref_β
                        .size            n00332_deref_bx, .-n00332_deref_bx
                        .type            n00333_deref_bx, @function
n00333_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00333_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_main_18:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1142_999
                        add              rsp, 16;                             jmp   n00332_deref_β
.Lderef_α_1142_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_17:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00334_line_mark_α
n00333_deref_β:          add              rsp, 16;                             jmp   n00332_deref_β
                        .size            n00333_deref_bx, .-n00333_deref_bx
                        .type            n00334_line_mark_bx, @function
n00334_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1143_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1143_stno
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
                        sub              rsp, 16
                        lea              rcx, [rip + .Lcall_proc_staged_α_1146_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1146_3]
                        push             rcx
                        sub              rsp, 32
                        mov              rcx, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rcx, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rcx
                        mov              rcx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 8];            jmp   rax
.Lcall_proc_staged_α_1146_3:
.Lgcsite_main_20:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 48
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1146_2
.Lcall_proc_staged_α_1146_4:
.Lgcsite_main_19:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 48
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1146_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_1146_999
                        add              rsp, 16;                             jmp   n00333_deref_β
.Lcall_proc_staged_α_1146_999:
                                                                              jmp   n00336_deref_α
n00335_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 48
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16;                             jmp   n00333_deref_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_1146_0: .quad .Lcall_proc_staged_β_1146_0_s; .popsection
.Lcall_proc_staged_β_1146_0_s:
                        .string          "tabulate"
                        .size            n00335_call_proc_staged_bx, .-n00335_call_proc_staged_bx
                        .type            n00336_deref_bx, @function
n00336_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00336_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_22:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1147_999
                        add              rsp, 16;                             jmp   n00335_call_proc_staged_β
.Lderef_α_1147_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_21:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 16;                             jmp   n00335_call_proc_staged_β
                        .size            n00336_deref_bx, .-n00336_deref_bx
                        .type            n00330_line_mark_bx, @function
n00330_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1148_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1148_stno
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
n00337_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064144                      # uses
                        mov              qword ptr [rsp + 8], rax;            jmp   n00338_lit_integer_α
                        .size            n00337_var_ref_bx, .-n00337_var_ref_bx
                        .type            n00338_lit_integer_bx, @function
n00338_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00338_lit_integer_α:    sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1152_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00339_deref_α
.Llit_integer_α_1152_0: .quad            3
                        .size            n00338_lit_integer_bx, .-n00338_lit_integer_bx
                        .type            n00339_deref_bx, @function
n00339_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00339_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_main_24:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1153_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00340_line_mark_α
.Lderef_α_1153_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_23:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00341_line_mark_α
                        .size            n00339_deref_bx, .-n00339_deref_bx
                        .type            n00341_line_mark_bx, @function
n00341_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1154_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1154_stno
                        .long            0
                        .long            49
                        .quad            .Lstnof1
                        .popsection
n00341_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 49;             jmp   n00342_call_byname_α
                        .size            n00341_line_mark_bx, .-n00341_line_mark_bx
                        .type            n00342_call_byname_bx, @function
n00342_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00342_call_byname_α:    sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd1157: .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd1157]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 262305
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_25:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_26:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_1156_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00340_line_mark_α
.Lcall_byname_α_1156_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00343_assign_α
                        .size            n00342_call_byname_bx, .-n00342_call_byname_bx
                        .type            n00343_assign_bx, @function
n00343_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00343_assign_α:         mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n00340_line_mark_α
                        .size            n00343_assign_bx, .-n00343_assign_bx
                        .type            n00340_line_mark_bx, @function
n00340_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1159_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1159_stno
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
n00344_bound_α:          mov              qword ptr [rbp + 128], rsp;          jmp   n00345_var_ref_α
                        .size            n00344_bound_bx, .-n00344_bound_bx
                        .type            n00345_var_ref_bx, @function
n00345_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00345_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 1088]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00346_deref_α
                        .size            n00345_var_ref_bx, .-n00345_var_ref_bx
                        .type            n00346_deref_bx, @function
n00346_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00346_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_28:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1165_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   main_ω
.Lderef_α_1165_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_27:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00347_line_mark_α
                        .size            n00346_deref_bx, .-n00346_deref_bx
                        .type            n00347_line_mark_bx, @function
n00347_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1166_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1166_stno
                        .long            0
                        .long            50
                        .quad            .Lstnof1
                        .popsection
n00347_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 50;             jmp   n00348_call_byname_α
                        .size            n00347_line_mark_bx, .-n00347_line_mark_bx
                        .type            n00348_call_byname_bx, @function
n00348_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00348_call_byname_α:    sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd1169: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd1169]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_29:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_30:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_1168_999
                        add              rsp, 16
                        add              rsp, 96;                             jmp   main_ω
.Lcall_byname_α_1168_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00349_assign_α
                        .size            n00348_call_byname_bx, .-n00348_call_byname_bx
                        .type            n00349_assign_bx, @function
n00349_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00349_assign_α:         mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n00350_line_mark_α
                        .size            n00349_assign_bx, .-n00349_assign_bx
                        .type            n00350_line_mark_bx, @function
n00350_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1171_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1171_stno
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
n00351_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 1072]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00352_var_ref_α
                        .size            n00351_var_ref_bx, .-n00351_var_ref_bx
                        .type            n00352_var_ref_bx, @function
n00352_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00352_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064176                      # namewidth
                        mov              qword ptr [rsp + 8], rax;            jmp   n00353_deref_α
                        .size            n00352_var_ref_bx, .-n00352_var_ref_bx
                        .type            n00353_deref_bx, @function
n00353_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00353_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_main_32:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1177_999
                        add              rsp, 16
                        add              rsp, -144;                           jmp   n00354_unmark_α
.Lderef_α_1177_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_31:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00355_deref_α
                        .size            n00353_deref_bx, .-n00353_deref_bx
                        .type            n00355_deref_bx, @function
n00355_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00355_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_main_34:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1178_999
                        add              rsp, 16
                        add              rsp, -128;                           jmp   n00354_unmark_α
.Lderef_α_1178_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_33:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00356_line_mark_α
                        .size            n00355_deref_bx, .-n00355_deref_bx
                        .type            n00356_line_mark_bx, @function
n00356_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1179_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1179_stno
                        .long            0
                        .long            51
                        .quad            .Lstnof1
                        .popsection
n00356_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51;             jmp   n00357_call_byname_α
                        .size            n00356_line_mark_bx, .-n00356_line_mark_bx
                        .type            n00357_call_byname_bx, @function
n00357_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00357_call_byname_α:    sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd1182: .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd1182]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 262275
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_35:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_36:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_1181_999
                        add              rsp, 16
                        add              rsp, -112;                           jmp   n00354_unmark_α
.Lcall_byname_α_1181_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00358_var_ref_α
                        .size            n00357_call_byname_bx, .-n00357_call_byname_bx
                        .type            n00358_var_ref_bx, @function
n00358_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00358_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 1088]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00359_deref_α
                        .size            n00358_var_ref_bx, .-n00358_var_ref_bx
                        .type            n00359_deref_bx, @function
n00359_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00359_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_38:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1185_999
                        add              rsp, 16
                        add              rsp, -80;                            jmp   n00354_unmark_α
.Lderef_α_1185_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_37:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00360_line_mark_α
                        .size            n00359_deref_bx, .-n00359_deref_bx
                        .type            n00360_line_mark_bx, @function
n00360_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1186_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1186_stno
                        .long            0
                        .long            51
                        .quad            .Lstnof1
                        .popsection
n00360_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51;             jmp   n00361_call_byname_α
                        .size            n00360_line_mark_bx, .-n00360_line_mark_bx
                        .type            n00361_call_byname_bx, @function
n00361_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00361_call_byname_α:    sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd1189: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd1189]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_39:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_40:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_1188_999
                        add              rsp, 16
                        add              rsp, -64;                            jmp   n00354_unmark_α
.Lcall_byname_α_1188_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00362_binop_α
                        .size            n00361_call_byname_bx, .-n00361_call_byname_bx
                        .type            n00362_binop_bx, @function
n00362_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00362_binop_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # call
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_main_43:       cmp              al, 255;                             jne   .Lbinop_vd_1190_48
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_main_42:       mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_1190_48:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_41:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_1190_999
                        add              rsp, 16
                        add              rsp, -48;                            jmp   n00354_unmark_α
.Lbinop_α_1190_999:                                                           jmp   n00363_line_mark_α
                        .size            n00362_binop_bx, .-n00362_binop_bx
                        .type            n00363_line_mark_bx, @function
n00363_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1191_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1191_stno
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
                        sub              rsp, 16
                        lea              rcx, [rip + .Lcall_proc_staged_α_1194_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1194_3]
                        push             rcx
                        sub              rsp, 16
                        mov              rcx, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 136];          jmp   rax
.Lcall_proc_staged_α_1194_3:
.Lgcsite_main_45:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 51
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1194_2
.Lcall_proc_staged_α_1194_4:
.Lgcsite_main_44:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 51
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1194_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_1194_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00354_unmark_α
.Lcall_proc_staged_α_1194_999:
                                                                              jmp   n00365_deref_α
n00364_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 51
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00354_unmark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_1194_0: .quad .Lcall_proc_staged_β_1194_0_s; .popsection
.Lcall_proc_staged_β_1194_0_s:
                        .string          "format"
                        .size            n00364_call_proc_staged_bx, .-n00364_call_proc_staged_bx
                        .type            n00365_deref_bx, @function
n00365_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00365_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_47:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1195_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00354_unmark_α
.Lderef_α_1195_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_46:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00354_unmark_α
                        .size            n00365_deref_bx, .-n00365_deref_bx
                        .type            n00354_unmark_bx, @function
n00354_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00354_unmark_α:         mov              rsp, qword ptr [rbp + 128]
                        mov              rax, qword ptr [rbp + 536]
                        mov              rcx, rax
                        sub              rcx, rsp
                        shr              rcx, 63
                        sub              rcx, 1
                        and              rax, rcx
                        mov              qword ptr [rbp + 536], rax;          jmp   n00366_line_mark_α
                        .size            n00354_unmark_bx, .-n00354_unmark_bx
                        .type            n00366_line_mark_bx, @function
n00366_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1198_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1198_stno
                        .long            0
                        .long            50
                        .quad            .Lstnof1
                        .popsection
n00366_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 50
                        add              rsp, 224;                            jmp   n00344_bound_α
                        .size            n00366_line_mark_bx, .-n00366_line_mark_bx
                        .type            n00318_lit_integer_bx, @function
n00318_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00318_lit_integer_α:    sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1200_0]
                        mov              qword ptr [rsp + 8], rax
                        add              rsp, 48;                             jmp   .Ldisjunction_γ_1034_as
n00318_lit_integer_β:    add              rsp, 16
                        add              rsp, -176;                           jmp   .Ldisjunction_ω_1034_af
.Llit_integer_α_1200_0: .quad            15
                        .size            n00318_lit_integer_bx, .-n00318_lit_integer_bx
                        .type            n00316_var_ref_bx, @function
n00316_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00316_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 160]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00367_lit_string_α
n00316_var_ref_β:        add              rsp, 16
                        add              rsp, -176;                           jmp   .Ldisjunction_ω_1034_af
                        .size            n00316_var_ref_bx, .-n00316_var_ref_bx
                        .type            n00367_lit_string_bx, @function
n00367_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00367_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1203_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00368_subscript_α
n00367_lit_string_β:     add              rsp, 16;                             jmp   n00316_var_ref_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_1203_0: .quad .Llit_string_α_1203_0_s; .popsection
.Llit_string_α_1203_0_s:
                        .string          "w"
                        .size            n00367_lit_string_bx, .-n00367_lit_string_bx
                        .type            n00368_subscript_bx, @function
n00368_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00368_subscript_α:      sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_1204_1:   mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        test             eax, eax;                            jne   .Lsubscript_α_1204_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_main_53:       cmp              al, 255;                             jne   .Lsubscript_vd_1204_50
                        call             c_rt_subscript_val_strict@PLT
.Lgcsite_main_52:       mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_1204_50: cmp              al, 255;                             jne   .Lsubscript_α_1204_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_1204_1
.Lsubscript_α_1204_4:   push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_51:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_1204_3
.Lsubscript_α_1204_2:   call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_50:       cmp              al, 255;                             jne   .Lsubscript_vd_1204_49
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_main_49:       mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_1204_49: push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_48:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_1204_3:   cmp              al, 104;                             jne   .Lsubscript_α_1204_999
                        add              rsp, 16;                             jmp   n00367_lit_string_β
.Lsubscript_α_1204_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00369_deref_α
n00368_subscript_β:      add              rsp, 16;                             jmp   n00367_lit_string_β
                        .size            n00368_subscript_bx, .-n00368_subscript_bx
                        .type            n00369_deref_bx, @function
n00369_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00369_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_55:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1205_999
                        add              rsp, 16;                             jmp   n00368_subscript_β
.Lderef_α_1205_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_54:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00370_unop_test_α
n00369_deref_β:          add              rsp, 16;                             jmp   n00368_subscript_β
                        .size            n00369_deref_bx, .-n00369_deref_bx
                        .type            n00370_unop_test_bx, @function
n00370_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00370_unop_test_α:      sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 104;                             jne   .Lunop_test_α_1206_998
                        add              rsp, 16;                             jmp   n00369_deref_β
.Lunop_test_α_1206_998: cmp              eax, 0;                              jne   .Lunop_test_α_1206_999
                        add              rsp, 16;                             jmp   n00369_deref_β
.Lunop_test_α_1206_999: mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax
                        add              rsp, 112;                            jmp   .Ldisjunction_γ_1034_as
n00370_unop_test_β:      add              rsp, 16;                             jmp   n00369_deref_β
                        .size            n00370_unop_test_bx, .-n00370_unop_test_bx
                        .type            n00313_lit_integer_bx, @function
n00313_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00313_lit_integer_α:    sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1207_0]
                        mov              qword ptr [rsp + 8], rax
                        add              rsp, 48;                             jmp   .Ldisjunction_γ_1031_as
n00313_lit_integer_β:    add              rsp, 16
                        add              rsp, -144;                           jmp   .Ldisjunction_ω_1031_af
.Llit_integer_α_1207_0: .quad            72
                        .size            n00313_lit_integer_bx, .-n00313_lit_integer_bx
                        .type            n00311_var_ref_bx, @function
n00311_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 128]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00371_lit_string_α
n00311_var_ref_β:        add              rsp, 16
                        add              rsp, -144;                           jmp   .Ldisjunction_ω_1031_af
                        .size            n00311_var_ref_bx, .-n00311_var_ref_bx
                        .type            n00371_lit_string_bx, @function
n00371_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00371_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1210_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00372_subscript_α
n00371_lit_string_β:     add              rsp, 16;                             jmp   n00311_var_ref_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_1210_0: .quad .Llit_string_α_1210_0_s; .popsection
.Llit_string_α_1210_0_s:
                        .string          "l"
                        .size            n00371_lit_string_bx, .-n00371_lit_string_bx
                        .type            n00372_subscript_bx, @function
n00372_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00372_subscript_α:      sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_1211_1:   mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        test             eax, eax;                            jne   .Lsubscript_α_1211_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_main_61:       cmp              al, 255;                             jne   .Lsubscript_vd_1211_52
                        call             c_rt_subscript_val_strict@PLT
.Lgcsite_main_60:       mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_1211_52: cmp              al, 255;                             jne   .Lsubscript_α_1211_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_1211_1
.Lsubscript_α_1211_4:   push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_59:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_1211_3
.Lsubscript_α_1211_2:   call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_58:       cmp              al, 255;                             jne   .Lsubscript_vd_1211_51
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_main_57:       mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_1211_51: push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_56:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_1211_3:   cmp              al, 104;                             jne   .Lsubscript_α_1211_999
                        add              rsp, 16;                             jmp   n00371_lit_string_β
.Lsubscript_α_1211_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00373_deref_α
n00372_subscript_β:      add              rsp, 16;                             jmp   n00371_lit_string_β
                        .size            n00372_subscript_bx, .-n00372_subscript_bx
                        .type            n00373_deref_bx, @function
n00373_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00373_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_63:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1212_999
                        add              rsp, 16;                             jmp   n00372_subscript_β
.Lderef_α_1212_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_62:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00374_unop_test_α
n00373_deref_β:          add              rsp, 16;                             jmp   n00372_subscript_β
                        .size            n00373_deref_bx, .-n00373_deref_bx
                        .type            n00374_unop_test_bx, @function
n00374_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00374_unop_test_α:      sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 104;                             jne   .Lunop_test_α_1213_998
                        add              rsp, 16;                             jmp   n00373_deref_β
.Lunop_test_α_1213_998: cmp              eax, 0;                              jne   .Lunop_test_α_1213_999
                        add              rsp, 16;                             jmp   n00373_deref_β
.Lunop_test_α_1213_999: mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax
                        add              rsp, 112;                            jmp   .Ldisjunction_γ_1031_as
n00374_unop_test_β:      add              rsp, 16;                             jmp   n00373_deref_β
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
                        lea              rsp, [rbp + 1264]
                        mov              rbp, qword ptr [rbp + 1256];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 1264]
                        mov              rbp, qword ptr [rbp + 1256];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_main:
                        .quad            5430185119066
                        .quad            382252089472
                        .quad            .Lgcmap_main_s
                        .quad            1120
                        .quad            10
                        .quad            140737488355328
                        .quad            17596481011840
                        .quad            422212465066128
                        .quad            8800387990032
                        .quad            8817567859224
                        .quad            158329674400288
                        .quad            17596481012400
                        .quad            140737488356032
                        .quad            17596481012544
                        .quad            299067162755920
.Lgcmap_main_s:         .string          "main"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_main_4:       .quad            64
                        .quad            .Lgcmap_main
                        .quad            9223389626893337840
                        .quad            .Lgccode_main_4
                        .quad            .Lgcsite_main_0-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_1-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_3-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_2-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_5-.Lgccode_main_4
                        .quad            65538
                        .quad            .Lgcsite_main_4-.Lgccode_main_4
                        .quad            65538
                        .quad            .Lgcsite_main_7-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_6-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_8-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_9-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_14-.Lgccode_main_4
                        .quad            65538
                        .quad            .Lgcsite_main_13-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_12-.Lgccode_main_4
                        .quad            65538
                        .quad            .Lgcsite_main_11-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_10-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_16-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_15-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_18-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_17-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_20-.Lgccode_main_4
                        .quad            65538
                        .quad            .Lgcsite_main_19-.Lgccode_main_4
                        .quad            65538
                        .quad            .Lgcsite_main_22-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_21-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_24-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_23-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_25-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_26-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_28-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_27-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_29-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_30-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_32-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_31-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_34-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_33-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_35-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_36-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_38-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_37-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_39-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_40-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_43-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_42-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_41-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_45-.Lgccode_main_4
                        .quad            65538
                        .quad            .Lgcsite_main_44-.Lgccode_main_4
                        .quad            65538
                        .quad            .Lgcsite_main_47-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_46-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_53-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_52-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_51-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_50-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_49-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_48-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_55-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_54-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_61-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_60-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_59-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_58-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_57-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_56-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_63-.Lgccode_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_62-.Lgccode_main_4
                        .quad            65537
                        .popsection
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
                        .section         .data.rel.ro,"aw",@progbits
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
                        .long            1104
                        .long            1088
                        .long            1072
                        .long            -1
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_ipnames9000]
                        mov              edx, 1
                        lea              rcx, [rip + .Lstartup_ilnames9000]
                        mov              r8d, 4
                        lea              r9, [rip + .Lstartup_iloffs9000]
                        call             rt_proc_loc_add@PLT
                        .section         .data.rel.ro,"aw",@progbits
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
                        .long            1552
                        .long            1568
                        .long            1536
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
                        .long            1584
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
                        lea              rcx, [rip + .Lstartup_ilnames0]
                        mov              r8d, 4
                        lea              r9, [rip + .Lstartup_iloffs0]
                        call             rt_proc_loc_add@PLT
                        .section         .data.rel.ro,"aw",@progbits
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
                        .long            976
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__format
                        .quad            0
                        .quad            0
                        .quad            .Lstartup_ipnames1
                        .long            1
                        .long            0
                        .long            992
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
                        lea              rcx, [rip + .Lstartup_ilnames1]
                        mov              r8d, 1
                        lea              r9, [rip + .Lstartup_iloffs1]
                        call             rt_proc_loc_add@PLT
                        .section         .data.rel.ro,"aw",@progbits
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
                        .long            1024
                        .long            1008
                        .long            992
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
                        .long            1040
                        .long            56
                        .long            0
                        .long            0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        xor              esi, esi
                        xor              edx, edx
                        lea              rcx, [rip + .Lstartup_ilnames2]
                        mov              r8d, 4
                        lea              r9, [rip + .Lstartup_iloffs2]
                        call             rt_proc_loc_add@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1168
                        call             rt_proc_set_gen_region_ft@PLT
                        .section         .data.rel.ro,"aw",@progbits
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
                        .long            3040
                        .long            3104
                        .long            3056
                        .long            2992
                        .long            3008
                        .long            3072
                        .long            3088
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
                        .long            3120
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
                        lea              rcx, [rip + .Lstartup_ilnames3]
                        mov              r8d, 8
                        lea              r9, [rip + .Lstartup_iloffs3]
                        call             rt_proc_loc_add@PLT
                        .section         .data.rel.ro,"aw",@progbits
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
                        .section         .data.rel.ro,"aw",@progbits
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
