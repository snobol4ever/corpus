                        .intel_syntax    noprefix
                        .text
                        .file            1 "concord.icn"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_tabulate_0:
FN__tabulate:
                        sub              rsp, 256
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
                        mov              qword ptr [rdi + 240], rax
                        mov              eax, 0                               # GCANCHOR .Lgcmap_tabulate qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
tabulate_α_body:
                        .type            n0_line_mark_bx, @function
n0_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 59 0
                        .pushsection     .rodata
.Lstnof1:               .string          "concord.icn"
                        .popsection
.Lline_mark_α_93_stno:  .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_93_stno
                        .long            0
                        .long            59
                        .quad            .Lstnof1
                        .popsection
n0_line_mark_α:         mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 59
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_94_0]
                        mov              qword ptr [rax + 608], rcx;          jmp   n1_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_94_0: .quad .Lline_mark_α_94_0_s; .popsection
.Lline_mark_α_94_0_s:   .string          "concord.icn"
                        .size            n0_line_mark_bx, .-n0_line_mark_bx
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 60 0
.Lline_mark_α_95_stno:  .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_95_stno
                        .long            0
                        .long            60
                        .quad            .Lstnof1
                        .popsection
n1_line_mark_α:         mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 60;           jmp   n2_var_ref_α
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_var_ref_bx, @function
n2_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 272]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_deref_α
                        .size            n2_var_ref_bx, .-n2_var_ref_bx
                        .type            n3_deref_bx, @function
n3_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_deref_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_tabulate_1:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_99_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n7_line_mark_α
.Lderef_α_99_999:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_0:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
n4_line_mark_α:         mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 60;           jmp   n5_call_byname_α
                        .size            n4_line_mark_bx, .-n4_line_mark_bx
                        .type            n5_call_byname_bx, @function
n5_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_byname_α:       sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd103: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd103]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_tabulate_2:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_tabulate_3:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_102_999
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n7_line_mark_α
.Lcall_byname_α_102_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n6_assign_α
                        .size            n5_call_byname_bx, .-n5_call_byname_bx
                        .type            n6_assign_bx, @function
n6_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        add              rsp, 64;                             jmp   n7_line_mark_α
                        .size            n6_assign_bx, .-n6_assign_bx
                        .type            n7_line_mark_bx, @function
n7_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 61 0
.Lline_mark_α_105_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_105_stno
                        .long            0
                        .long            61
                        .quad            .Lstnof1
                        .popsection
n7_line_mark_α:         mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 61;           jmp   n8_lit_string_α
                        .size            n7_line_mark_bx, .-n7_line_mark_bx
                        .type            n8_lit_string_bx, @function
n8_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        sub              rsp, 16
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
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        add              rsp, 16;                             jmp   n10_line_mark_α
                        .size            n9_assign_bx, .-n9_assign_bx
                        .type            n10_line_mark_bx, @function
n10_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 62 0
.Lline_mark_α_109_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_109_stno
                        .long            0
                        .long            62
                        .quad            .Lstnof1
                        .popsection
n10_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 62;           jmp   n11_var_ref_α
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
                        mov              rdx, qword ptr [rbp + 256]           # var
                        mov              rcx, qword ptr [rbp + 264]
                        test             eax, eax;                            jne   .Lsubscript_α_115_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_tabulate_7:    cmp              al, 255;                             jne   .Lsubscript_α_115_4
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
.Lgcsite_tabulate_6:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_115_3
.Lsubscript_α_115_2:    call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_tabulate_5:    push             rax
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
.Lgcsite_tabulate_4:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_115_3:    cmp              al, 104;                             jne   .Lsubscript_α_115_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   tabulate_ω
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
.Lgcsite_tabulate_9:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_116_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   tabulate_ω
.Lderef_α_116_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_8:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n15_scan_enter_α
                        .size            n14_deref_bx, .-n14_deref_bx
                        .type            n15_scan_enter_bx, @function
n15_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_scan_enter_α:       sub              rsp, 32
                        mov              rcx, 2
                        mov              qword ptr [rsp + 0], rcx
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], r14
                        mov              qword ptr [rsp + 24], r15
                        mov              rax, qword ptr [rsp + 32]
                        cmp              eax, 2;                              jne   .Lscan_enter_α_118_1
                        shr              rax, 32
                        test             eax, eax;                            je    .Lscan_enter_α_118_1
                        cmp              eax, -1;                             je    .Lscan_enter_α_118_1
                        mov              r13, qword ptr [rsp + 40]
                        mov              r15d, eax;                           jmp   .Lscan_enter_α_118_2
.Lscan_enter_α_118_1:   mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              edx, 2
                        call             rt_icn_subject_coerce@PLT
.Lgcsite_tabulate_11:   mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_tabulate_10:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jne   .Lscan_enter_α_118_999
                        add              rsp, 32
                        add              rsp, 48;                             jmp   tabulate_ω
.Lscan_enter_α_118_999: mov              r13, rax
                        mov              r15, rdx
.Lscan_enter_α_118_2:   xor              r14d, r14d;                          jmp   n16_line_mark_α
                        .size            n15_scan_enter_bx, .-n15_scan_enter_bx
                        .type            n16_line_mark_bx, @function
n16_line_mark_bx:
#=======================================================================================================================
# nstmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 63 0
.Lline_mark_α_119_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_119_stno
                        .long            0
                        .long            63
                        .quad            .Lstnof1
                        .popsection
n16_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 63;           jmp   n17_bound_α
                        .size            n16_line_mark_bx, .-n16_line_mark_bx
                        .type            n17_bound_bx, @function
n17_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_bound_α:            sub              rsp, 16
                        mov              qword ptr [rsp + 0], rsp;            jmp   n18_var_α
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
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_charset_α_125_0: .quad .Llit_charset_α_125_0_s; .popsection
                        .quad            14260561861161254922
                        .quad            287948901175001088
                        .quad            0
                        .quad            0
                        .quad            0
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
n20_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 63;           jmp   n21_scan_upto_α
                        .size            n20_line_mark_bx, .-n20_line_mark_bx
                        .type            n21_scan_upto_bx, @function
n21_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_scan_upto_α:        sub              rsp, 32
                        mov              qword ptr [rsp + 16], r14
.Lscan_upto_α_129_0:    mov              rax, qword ptr [rsp + 16]
                        cmp              rax, r15;                            jl    .Lscan_upto_α_129_999
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n42_line_mark_α
.Lscan_upto_α_129_999:  mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .Lscan_upto_α_129_3]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_upto_α_129_1
                        mov              qword ptr [rsp + 0], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_line_mark_α
.Lscan_upto_α_129_1:    inc              qword ptr [rsp + 16];                jmp   .Lscan_upto_α_129_0
n21_scan_upto_β:        inc              qword ptr [rsp + 16];                jmp   .Lscan_upto_α_129_0
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
n22_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 63;           jmp   n23_scan_tab_α
                        .size            n22_line_mark_bx, .-n22_line_mark_bx
                        .type            n23_scan_tab_bx, @function
n23_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_scan_tab_α:         sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_tabulate_15:   test             eax, eax;                            jne   .Lscan_tab_α_133_997
                        add              rsp, 32;                             jmp   n21_scan_upto_β
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
.Lgcsite_tabulate_14:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rsp + 32]            # lo
                        mov              rsi, qword ptr [rsp + 40]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_tabulate_13:   mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_tabulate_12:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_133_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_133_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_133_998
                        add              rsp, 32;                             jmp   n21_scan_upto_β
.Lscan_tab_α_133_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_133_999
                        add              rsp, 32;                             jmp   n21_scan_upto_β
.Lscan_tab_α_133_999:   mov              qword ptr [rsp + 16], r14
                        mov              rcx, rax
                        sub              rcx, 1
                        mov              rdx, r14
                        mov              r14, rcx
                        sub              rdx, rcx;                            jge   .Lscan_tab_α_133_1
                        add              rcx, rdx
                        neg              rdx
.Lscan_tab_α_133_1:     lea              rsi, [r13 + rcx]
                        test             rdx, rdx;                            jnz   .Lscan_tab_α_133_2
                        lea              rsi, [rip + .S0]
.Lscan_tab_α_133_2:     shl              rdx, 32
                        or               rdx, 2
                        mov              qword ptr [rsp + 0], rdx
                        mov              qword ptr [rsp + 8], rsi;            jmp   n24_binop_α
n23_scan_tab_β:         mov              r14, qword ptr [rsp + 16]
                        add              rsp, 32;                             jmp   n21_scan_upto_β
                        .size            n23_scan_tab_bx, .-n23_scan_tab_bx
                        .type            n24_binop_bx, @function
n24_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 32]            # var
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # scan_tab
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_tabulate_18:   cmp              al, 255;                             jne   .Lbinop_vd_134_0
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_17:   mov              r9,  qword ptr [rip + g_rtccb+48]
.Lbinop_vd_134_0:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_16:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_134_999
                        add              rsp, 16
                        add              rsp, 96;                             jmp   n42_line_mark_α
.Lbinop_α_134_999:                                                            jmp   n25_assign_α
                        .size            n24_binop_bx, .-n24_binop_bx
                        .type            n25_assign_bx, @function
n25_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx;           jmp   n26_line_mark_α
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
n26_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 64;           jmp   n27_line_mark_α
                        .size            n26_line_mark_bx, .-n26_line_mark_bx
                        .type            n27_line_mark_bx, @function
n27_line_mark_bx:
#=======================================================================================================================
# nstmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 64 0
.Lline_mark_α_138_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_138_stno
                        .long            0
                        .long            64
                        .quad            .Lstnof1
                        .popsection
n27_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 64;           jmp   n28_lit_charset_α
                        .size            n27_line_mark_bx, .-n27_line_mark_bx
                        .type            n28_lit_charset_bx, @function
n28_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_charset_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4294967295
                        mov              rax, qword ptr [rip + .Llit_charset_α_140_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n29_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_charset_α_140_0: .quad .Llit_charset_α_140_0_s; .popsection
                        .quad            14260561861161254922
                        .quad            287948901175001088
                        .quad            0
                        .quad            0
                        .quad            0
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
n29_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 64;           jmp   n30_scan_many_α
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
                        add              rsp, 16;                             jmp   n34_line_mark_α
.Lscan_many_α_144_999:  mov              qword ptr [rsp + 0], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 8], rcx;            jmp   n31_line_mark_α
n30_scan_many_β:        add              rsp, 16
                        add              rsp, 16;                             jmp   n34_line_mark_α
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
n31_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 64;           jmp   n32_scan_tab_α
                        .size            n31_line_mark_bx, .-n31_line_mark_bx
                        .type            n32_scan_tab_bx, @function
n32_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_scan_tab_α:         sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_tabulate_22:   test             eax, eax;                            jne   .Lscan_tab_α_148_997
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n34_line_mark_α
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
.Lgcsite_tabulate_21:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rsp + 32]            # lo
                        mov              rsi, qword ptr [rsp + 40]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_tabulate_20:   mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_tabulate_19:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_148_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_148_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_148_998
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n34_line_mark_α
.Lscan_tab_α_148_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_148_999
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n34_line_mark_α
.Lscan_tab_α_148_999:   mov              qword ptr [rsp + 16], r14
                        mov              rcx, rax
                        sub              rcx, 1
                        mov              rdx, r14
                        mov              r14, rcx
                        sub              rdx, rcx;                            jge   .Lscan_tab_α_148_1
                        add              rcx, rdx
                        neg              rdx
.Lscan_tab_α_148_1:     lea              rsi, [r13 + rcx]
                        test             rdx, rdx;                            jnz   .Lscan_tab_α_148_2
                        lea              rsi, [rip + .S0]
.Lscan_tab_α_148_2:     shl              rdx, 32
                        or               rdx, 2
                        mov              qword ptr [rsp + 0], rdx
                        mov              qword ptr [rsp + 8], rsi;            jmp   n33_assign_α
n32_scan_tab_β:         mov              r14, qword ptr [rsp + 16]
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n34_line_mark_α
                        .size            n32_scan_tab_bx, .-n32_scan_tab_bx
                        .type            n33_assign_bx, @function
n33_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:           mov              rax, qword ptr [rsp + 0]             # scan_tab
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        add              rsp, 64;                             jmp   n34_line_mark_α
                        .size            n33_assign_bx, .-n33_assign_bx
                        .type            n34_line_mark_bx, @function
n34_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 65 0
.Lline_mark_α_150_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_150_stno
                        .long            0
                        .long            65
                        .quad            .Lstnof1
                        .popsection
n34_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 65;           jmp   n35_var_α
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
                        mov              rdi, qword ptr [rbp + 32]            # var
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rbp + 16]
                        mov              rcx, qword ptr [rbp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_tabulate_25:   cmp              al, 255;                             jne   .Lbinop_vd_156_1
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_24:   mov              r9,  qword ptr [rip + g_rtccb+48]
.Lbinop_vd_156_1:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_23:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx;           jmp   n39_conjunction_α
                        .size            n38_assign_bx, .-n38_assign_bx
                        .type            n39_conjunction_bx, @function
n39_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_conjunction_α:                                                            jmp   n40_unmark_α
n39_conjunction_β:                                                            jmp   n40_unmark_α
                        .size            n39_conjunction_bx, .-n39_conjunction_bx
                        .type            n40_unmark_bx, @function
n40_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_unmark_α:                                                                 jmp   n41_line_mark_α
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
n41_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 63
                        add              rsp, 128;                            jmp   n17_bound_α
                        .size            n41_line_mark_bx, .-n41_line_mark_bx
                        .type            n42_line_mark_bx, @function
n42_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 67 0
.Lline_mark_α_163_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_163_stno
                        .long            0
                        .long            67
                        .quad            .Lstnof1
                        .popsection
n42_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 67;           jmp   n43_disjunction_α
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
n43_disjunction_β:      mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_β_166_302
                        add              rsp, 32;                             jmp   n87_scan_α
.Ldisjunction_β_166_302:
                        add              rsp, 32;                             jmp   n87_scan_α
.Ldisjunction_γ_43_af:
.Ldisjunction_ω_43_af:  add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 1;                              je    n46_line_mark_α
                        add              rsp, 32;                             jmp   n87_scan_α
                        .size            n43_disjunction_bx, .-n43_disjunction_bx
                        .type            n44_conjunction_bx, @function
n44_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_conjunction_α:                                                            jmp   n45_scan_α
n44_conjunction_β:                                                            jmp   n87_scan_α
                        .size            n44_conjunction_bx, .-n44_conjunction_bx
                        .type            n45_scan_bx, @function
n45_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_scan_α:             sub              rsp, 48
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 32], r14d
                        mov              dword ptr [rsp + 20], r15d
                        mov              qword ptr [rsp + 24], r13
                        mov              dword ptr [rsp + 16], 2
                        mov              r13, qword ptr [rsp + 88]
                        mov              r14, qword ptr [rsp + 96]
                        mov              r15, qword ptr [rsp + 104]
                        add              rsp, 80;                             jmp   tabulate_ω
n45_scan_β:             mov              qword ptr [rsp + 88], r13
                        mov              qword ptr [rsp + 96], r14
                        mov              qword ptr [rsp + 104], r15
                        mov              r13, qword ptr [rsp + 24]
                        mov              r15d, dword ptr [rsp + 20]
                        mov              r14d, dword ptr [rsp + 32]
                        add              rsp, 48;                             jmp   n43_disjunction_β
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
n46_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 70;           jmp   n47_line_mark_α
n46_line_mark_β:                                                              jmp   n47_line_mark_α
                        .size            n46_line_mark_bx, .-n46_line_mark_bx
                        .type            n47_line_mark_bx, @function
n47_line_mark_bx:
#=======================================================================================================================
# nstmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 70 0
.Lline_mark_α_172_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_172_stno
                        .long            0
                        .long            70
                        .quad            .Lstnof1
                        .popsection
n47_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 70;           jmp   n48_disjunction_α
                        .size            n47_line_mark_bx, .-n47_line_mark_bx
                        .type            n48_disjunction_bx, @function
n48_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_disjunction_α:      mov              qword ptr [rbp + 64], 0
                        mov              qword ptr [rbp + 72], 0
                        mov              dword ptr [rbp + 80], 0;             jmp   n67_lit_string_α
.Ldisjunction_γ_48_as:  mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_175_0
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 72], rax
                        add              rsp, 160;                            jmp   n49_line_mark_α
.Ldisjunction_α_175_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_175_1
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 72], rax
                        add              rsp, 160;                            jmp   n49_line_mark_α
.Ldisjunction_α_175_1:  add              rsp, 160;                            jmp   n49_line_mark_α
n48_disjunction_β:      mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0;                              je    n74_scan_tab_β
                                                                              jmp   n49_line_mark_α
.Ldisjunction_γ_48_af:
.Ldisjunction_ω_48_af:  add              dword ptr [rbp + 80], 1
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 1;                              je    n65_lit_integer_α
                                                                              jmp   n49_line_mark_α
                        .size            n48_disjunction_bx, .-n48_disjunction_bx
                        .type            n49_line_mark_bx, @function
n49_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 71 0
.Lline_mark_α_176_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_176_stno
                        .long            0
                        .long            71
                        .quad            .Lstnof1
                        .popsection
n49_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 71;           jmp   n50_var_ref_α
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
                        mov              rdx, qword ptr [rbp + 256]           # var
                        mov              rcx, qword ptr [rbp + 264]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_tabulate_27:   cmp              al, 104;                             jne   .Lsubscript_α_182_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n87_scan_α
.Lsubscript_α_182_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:83
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_26:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
                        mov              rdi, qword ptr [rbp + 32]            # var
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_tabulate_30:   cmp              al, 255;                             jne   .Lbinop_vd_186_2
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_29:   mov              r9,  qword ptr [rip + g_rtccb+48]
.Lbinop_vd_186_2:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_28:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_186_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n87_scan_α
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
                        mov              eax, dword ptr [rbp + 48]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_191_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_191_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_191_0
.Lcoerce_numeric_α_191_1:
                        mov              rax, qword ptr [rbp + 48]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rbp + 56]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_binop_α
.Lcoerce_numeric_α_191_0:
                        lea              rdi, [rbp + 48]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_tabulate_32:   push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_31:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_191_999
                        add              rsp, 16
                        add              rsp, 112;                            jmp   n87_scan_α
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
.Lgcsite_tabulate_34:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_192_999
                        add              rsp, 16
                        add              rsp, 128;                            jmp   n87_scan_α
.Lbinop_α_192_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_33:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
.Lgcsite_tabulate_37:   cmp              al, 255;                             jne   .Lbinop_vd_193_3
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_36:   mov              r9,  qword ptr [rip + g_rtccb+48]
.Lbinop_vd_193_3:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_35:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_193_999
                        add              rsp, 16
                        add              rsp, 144;                            jmp   n87_scan_α
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
.Lgcsite_tabulate_40:   cmp              al, 255;                             jne   .Lbinop_vd_195_4
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_39:   mov              r9,  qword ptr [rip + g_rtccb+48]
.Lbinop_vd_195_4:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_38:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_195_999
                        add              rsp, 16
                        add              rsp, 176;                            jmp   n87_scan_α
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
.Lgcsite_tabulate_42:   cmp              al, 104;                             jne   .Lassign_var_α_196_999
                        add              rsp, 16
                        add              rsp, 192;                            jmp   n87_scan_α
.Lassign_var_α_196_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:33
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_41:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n64_conjunction_α
                        .size            n63_assign_var_bx, .-n63_assign_var_bx
                        .type            n64_conjunction_bx, @function
n64_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_conjunction_α:      mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 184], rax
                        add              rsp, 176;                            jmp   .Ldisjunction_γ_43_as
n64_conjunction_β:      mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 184], rax
                        add              rsp, 176;                            jmp   n87_scan_α
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
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 72], rax
                        add              rsp, -144;                           jmp   .Ldisjunction_γ_48_as
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
n67_lit_string_β:       add              rsp, 16;                             jmp   .Ldisjunction_ω_48_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_200_0: .quad .Llit_string_α_200_0_s; .popsection
.Llit_string_α_200_0_s: .string          "("
                        .size            n67_lit_string_bx, .-n67_lit_string_bx
                        .type            n68_scan_match_bx, @function
n68_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_scan_match_α:       sub              rsp, 32
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jge   .Lscan_match_α_202_998
                        add              rsp, 32;                             jmp   n67_lit_string_β
.Lscan_match_α_202_998: mov              rsi, qword ptr [rip + .Lscan_match_α_202_0]
                        mov              rdi, r13
                        add              rdi, r14
                        xor              rcx, rcx
.Lscan_match_α_202_3:   cmp              rcx, 1;                              jge   .Lscan_match_α_202_4
                        movzx            r10d, byte ptr [rsi + rcx]
                        movzx            r11d, byte ptr [rdi + rcx]
                        cmp              r10d, r11d;                          je    .Lscan_match_α_202_999
                        add              rsp, 32;                             jmp   n67_lit_string_β
.Lscan_match_α_202_999: inc              rcx;                                 jmp   .Lscan_match_α_202_3
.Lscan_match_α_202_4:   mov              qword ptr [rsp + 0], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_scan_tab_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lscan_match_α_202_0: .quad .Lscan_match_α_202_0_s; .popsection
.Lscan_match_α_202_0_s: .string          "("
                        .size            n68_scan_match_bx, .-n68_scan_match_bx
                        .type            n69_scan_tab_bx, @function
n69_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_scan_tab_α:         sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_tabulate_46:   test             eax, eax;                            jne   .Lscan_tab_α_204_997
                        add              rsp, 32
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_48_af
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
.Lgcsite_tabulate_45:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rsp + 32]            # lo
                        mov              rsi, qword ptr [rsp + 40]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_tabulate_44:   mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_tabulate_43:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_204_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_204_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_204_998
                        add              rsp, 32
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_48_af
.Lscan_tab_α_204_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_204_999
                        add              rsp, 32
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_48_af
.Lscan_tab_α_204_999:   mov              qword ptr [rsp + 16], r14
                        mov              rcx, rax
                        sub              rcx, 1
                        mov              rdx, r14
                        mov              r14, rcx
                        sub              rdx, rcx;                            jge   .Lscan_tab_α_204_1
                        add              rcx, rdx
                        neg              rdx
.Lscan_tab_α_204_1:     lea              rsi, [r13 + rcx]
                        test             rdx, rdx;                            jnz   .Lscan_tab_α_204_2
                        lea              rsi, [rip + .S0]
.Lscan_tab_α_204_2:     shl              rdx, 32
                        or               rdx, 2
                        mov              qword ptr [rsp + 0], rdx
                        mov              qword ptr [rsp + 8], rsi;            jmp   n70_lit_charset_α
n69_scan_tab_β:         mov              r14, qword ptr [rsp + 16]
                        add              rsp, 32
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_48_af
                        .size            n69_scan_tab_bx, .-n69_scan_tab_bx
                        .type            n70_lit_charset_bx, @function
n70_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_charset_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4294967295
                        mov              rax, qword ptr [rip + .Llit_charset_α_205_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_charset_α_205_0: .quad .Llit_charset_α_205_0_s; .popsection
                        .quad            14260561861161254913
                        .quad            2199023255552
                        .quad            0
                        .quad            0
                        .quad            0
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
n71_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 70;           jmp   n72_scan_upto_α
                        .size            n71_line_mark_bx, .-n71_line_mark_bx
                        .type            n72_scan_upto_bx, @function
n72_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_scan_upto_α:        sub              rsp, 32
                        mov              qword ptr [rsp + 16], r14
.Lscan_upto_α_209_0:    mov              rax, qword ptr [rsp + 16]
                        cmp              rax, r15;                            jl    .Lscan_upto_α_209_999
                        add              rsp, 32
                        add              rsp, 96;                             jmp   n49_line_mark_α
.Lscan_upto_α_209_999:  mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .Lscan_upto_α_209_3]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_upto_α_209_1
                        mov              qword ptr [rsp + 0], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_line_mark_α
.Lscan_upto_α_209_1:    inc              qword ptr [rsp + 16];                jmp   .Lscan_upto_α_209_0
n72_scan_upto_β:        inc              qword ptr [rsp + 16];                jmp   .Lscan_upto_α_209_0
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
n73_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 70;           jmp   n74_scan_tab_α
                        .size            n73_line_mark_bx, .-n73_line_mark_bx
                        .type            n74_scan_tab_bx, @function
n74_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_scan_tab_α:         sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_tabulate_50:   test             eax, eax;                            jne   .Lscan_tab_α_213_997
                        add              rsp, 32;                             jmp   n72_scan_upto_β
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
.Lgcsite_tabulate_49:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rsp + 32]            # lo
                        mov              rsi, qword ptr [rsp + 40]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_tabulate_48:   mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_tabulate_47:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_213_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_213_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_213_998
                        add              rsp, 32;                             jmp   n72_scan_upto_β
.Lscan_tab_α_213_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_213_999
                        add              rsp, 32;                             jmp   n72_scan_upto_β
.Lscan_tab_α_213_999:   mov              qword ptr [rsp + 16], r14
                        mov              rcx, rax
                        sub              rcx, 1
                        mov              rdx, r14
                        mov              r14, rcx
                        sub              rdx, rcx;                            jge   .Lscan_tab_α_213_1
                        add              rcx, rdx
                        neg              rdx
.Lscan_tab_α_213_1:     lea              rsi, [r13 + rcx]
                        test             rdx, rdx;                            jnz   .Lscan_tab_α_213_2
                        lea              rsi, [rip + .S0]
.Lscan_tab_α_213_2:     shl              rdx, 32
                        or               rdx, 2
                        mov              qword ptr [rsp + 0], rdx
                        mov              qword ptr [rsp + 8], rsi;            jmp   n75_assign_α
n74_scan_tab_β:         mov              r14, qword ptr [rsp + 16]
                        add              rsp, 32;                             jmp   n72_scan_upto_β
                        .size            n74_scan_tab_bx, .-n74_scan_tab_bx
                        .type            n75_assign_bx, @function
n75_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:           mov              rax, qword ptr [rsp + 0]             # scan_tab
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 72], rax;           jmp   .Ldisjunction_γ_48_as
n75_assign_β:           add              rsp, 160;                            jmp   n49_line_mark_α
                        .size            n75_assign_bx, .-n75_assign_bx
                        .type            n76_disjunction_bx, @function
n76_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_disjunction_α:      sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n91_var_α
.Ldisjunction_γ_76_as:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_216_0
                                                                              jmp   n77_line_mark_α
.Ldisjunction_α_216_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_216_1
                                                                              jmp   n77_line_mark_α
.Ldisjunction_α_216_1:                                                        jmp   n77_line_mark_α
n76_disjunction_β:      mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_76_af
                                                                              jmp   .Ldisjunction_ω_76_af
.Ldisjunction_γ_76_af:
.Ldisjunction_ω_76_af:  add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 1;                              je    n88_var_α
                        add              rsp, 32;                             jmp   .Ldisjunction_ω_43_af
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
n77_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 68;           jmp   n78_var_ref_α
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
                        mov              rdx, qword ptr [rbp + 256]           # var
                        mov              rcx, qword ptr [rbp + 264]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_tabulate_52:   cmp              al, 104;                             jne   .Lsubscript_α_223_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n87_scan_α
.Lsubscript_α_223_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:83
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_51:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
                        mov              rdi, qword ptr [rbp + 272]           # var
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_tabulate_55:   cmp              al, 255;                             jne   .Lbinop_vd_227_5
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_54:   mov              r9,  qword ptr [rip + g_rtccb+48]
.Lbinop_vd_227_5:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_53:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
.Lgcsite_tabulate_57:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_228_999
                        add              rsp, 16
                        add              rsp, 128;                            jmp   n87_scan_α
.Lderef_α_228_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_56:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
.Lgcsite_tabulate_60:   cmp              al, 255;                             jne   .Lbinop_vd_229_6
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_tabulate_59:   mov              r9,  qword ptr [rip + g_rtccb+48]
.Lbinop_vd_229_6:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_58:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
.Lgcsite_tabulate_62:   cmp              al, 104;                             jne   .Lassign_var_α_230_999
                        add              rsp, 16
                        add              rsp, 160;                            jmp   n87_scan_α
.Lassign_var_α_230_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:33
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_61:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
n87_scan_α:             sub              rsp, 48
                        mov              dword ptr [rsp + 32], r14d
                        mov              dword ptr [rsp + 20], r15d
                        mov              qword ptr [rsp + 24], r13
                        mov              dword ptr [rsp + 16], 2
                        mov              r13, qword ptr [rsp + 56]
                        mov              r14, qword ptr [rsp + 64]
                        mov              r15, qword ptr [rsp + 72]
                        add              rsp, 48;                             jmp   tabulate_ω
n87_scan_β:             add              rsp, 48;                             jmp   tabulate_ω
                        .size            n87_scan_bx, .-n87_scan_bx
                        .type            n88_var_bx, @function
n88_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:                                                                    jmp   n89_var_α
n88_var_β:                                                                    jmp   .Ldisjunction_ω_76_af
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
.Lbinop_test_α_237_2:   mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              r8d, 17
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_tabulate_66:   push             rax
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
.Lgcsite_tabulate_65:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_237_999
                        add              rsp, 16;                             jmp   n89_var_β
.Lbinop_test_α_237_999: mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
.Lgcsite_tabulate_64:   mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_relop_val.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_tabulate_63:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 24], rax
                        add              rsp, 16;                             jmp   .Ldisjunction_γ_76_as
n90_binop_test_β:       add              rsp, 16;                             jmp   n89_var_β
                        .size            n90_binop_test_bx, .-n90_binop_test_bx
                        .type            n91_var_bx, @function
n91_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:                                                                    jmp   n92_unop_test_α
n91_var_β:                                                                    jmp   .Ldisjunction_ω_76_af
                        .size            n91_var_bx, .-n91_var_bx
                        .type            n92_unop_test_bx, @function
n92_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_unop_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 104;                             jne   .Lunop_test_α_240_998
                        add              rsp, 16;                             jmp   n91_var_β
.Lunop_test_α_240_998:  cmp              eax, 0;                              je    .Lunop_test_α_240_999
                        add              rsp, 16;                             jmp   n91_var_β
.Lunop_test_α_240_999:  mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 24], rax
                        add              rsp, 16;                             jmp   .Ldisjunction_γ_76_as
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
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
                        pop              rax
                        lea              rsp, [rbp + 288]
                        mov              rbp, qword ptr [rbp + 248];          jmp   qword ptr [rsp]
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
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
                        pop              rax
                        lea              rsp, [rbp + 288]
                        mov              rbp, qword ptr [rbp + 248];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_tabulate:
                        .quad            1100858084698
                        .quad            515396075664
                        .quad            .Lgcmap_tabulate_s
                        .quad            96
                        .quad            2
                        .quad            87960930222080
                        .quad            17596481011792
.Lgcmap_tabulate_s:     .string          "tabulate"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_tabulate_0:   .quad            67
                        .quad            .Lgcmap_tabulate
                        .quad            9223389618303402272
                        .quad            .Lgccode_tabulate_0
                        .quad            .Lgcsite_tabulate_1-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            8589936768
                        .quad            4
                        .quad            .Lgcsite_tabulate_0-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            8589936768
                        .quad            12
                        .quad            .Lgcsite_tabulate_2-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            17179871360
                        .quad            8
                        .quad            .Lgcsite_tabulate_3-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            17179871360
                        .quad            12
                        .quad            .Lgcsite_tabulate_7-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            8589936776
                        .quad            4
                        .quad            .Lgcsite_tabulate_6-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            8589936776
                        .quad            8
                        .quad            .Lgcsite_tabulate_5-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            8589936776
                        .quad            4
                        .quad            .Lgcsite_tabulate_4-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            8589936776
                        .quad            8
                        .quad            .Lgcsite_tabulate_9-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            17179871368
                        .quad            6
                        .quad            .Lgcsite_tabulate_8-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            17179871368
                        .quad            14
                        .quad            .Lgcsite_tabulate_11-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            25769805960
                        .quad            10
                        .quad            .Lgcsite_tabulate_10-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            25769805960
                        .quad            14
                        .quad            .Lgcsite_tabulate_15-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            77309413512
                        .quad            22
                        .quad            .Lgcsite_tabulate_14-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            77309413512
                        .quad            26
                        .quad            .Lgcsite_tabulate_13-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            77309413512
                        .quad            22
                        .quad            .Lgcsite_tabulate_12-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            77309413512
                        .quad            26
                        .quad            .Lgcsite_tabulate_18-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            94489282696
                        .quad            24
                        .quad            .Lgcsite_tabulate_17-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            94489282696
                        .quad            24
                        .quad            .Lgcsite_tabulate_16-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            94489282696
                        .quad            32
                        .quad            .Lgcsite_tabulate_22-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            120259086472
                        .quad            32
                        .quad            .Lgcsite_tabulate_21-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            120259086472
                        .quad            36
                        .quad            .Lgcsite_tabulate_20-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            120259086472
                        .quad            32
                        .quad            .Lgcsite_tabulate_19-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            120259086472
                        .quad            36
                        .quad            .Lgcsite_tabulate_25-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            103079217288
                        .quad            26
                        .quad            .Lgcsite_tabulate_24-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            103079217288
                        .quad            26
                        .quad            .Lgcsite_tabulate_23-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            103079217288
                        .quad            34
                        .quad            .Lgcsite_tabulate_27-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            68719478928
                        .quad            18
                        .quad            .Lgcsite_tabulate_26-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            68719478928
                        .quad            26
                        .quad            .Lgcsite_tabulate_30-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            85899348112
                        .quad            22
                        .quad            .Lgcsite_tabulate_29-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            85899348112
                        .quad            22
                        .quad            .Lgcsite_tabulate_28-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            85899348112
                        .quad            30
                        .quad            .Lgcsite_tabulate_32-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            103079217296
                        .quad            26
                        .quad            .Lgcsite_tabulate_31-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            103079217296
                        .quad            34
                        .quad            .Lgcsite_tabulate_34-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            111669151888
                        .quad            28
                        .quad            .Lgcsite_tabulate_33-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            111669151888
                        .quad            36
                        .quad            .Lgcsite_tabulate_37-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            120259086480
                        .quad            30
                        .quad            .Lgcsite_tabulate_36-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            120259086480
                        .quad            30
                        .quad            .Lgcsite_tabulate_35-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            120259086480
                        .quad            38
                        .quad            .Lgcsite_tabulate_40-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            137438955664
                        .quad            34
                        .quad            .Lgcsite_tabulate_39-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            137438955664
                        .quad            34
                        .quad            .Lgcsite_tabulate_38-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            137438955664
                        .quad            42
                        .quad            .Lgcsite_tabulate_42-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            146028890256
                        .quad            36
                        .quad            .Lgcsite_tabulate_41-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            146028890256
                        .quad            44
                        .quad            .Lgcsite_tabulate_46-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            85899348120
                        .quad            24
                        .quad            .Lgcsite_tabulate_45-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            85899348120
                        .quad            28
                        .quad            .Lgcsite_tabulate_44-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            85899348120
                        .quad            24
                        .quad            .Lgcsite_tabulate_43-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            85899348120
                        .quad            28
                        .quad            .Lgcsite_tabulate_50-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            128849021080
                        .quad            34
                        .quad            .Lgcsite_tabulate_49-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            128849021080
                        .quad            38
                        .quad            .Lgcsite_tabulate_48-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            128849021080
                        .quad            34
                        .quad            .Lgcsite_tabulate_47-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            128849021080
                        .quad            38
                        .quad            .Lgcsite_tabulate_52-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            85899348128
                        .quad            22
                        .quad            .Lgcsite_tabulate_51-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            85899348128
                        .quad            30
                        .quad            .Lgcsite_tabulate_55-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            103079217312
                        .quad            26
                        .quad            .Lgcsite_tabulate_54-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            103079217312
                        .quad            26
                        .quad            .Lgcsite_tabulate_53-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            103079217312
                        .quad            34
                        .quad            .Lgcsite_tabulate_57-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            111669151904
                        .quad            28
                        .quad            .Lgcsite_tabulate_56-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            111669151904
                        .quad            36
                        .quad            .Lgcsite_tabulate_60-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            120259086496
                        .quad            30
                        .quad            .Lgcsite_tabulate_59-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            120259086496
                        .quad            30
                        .quad            .Lgcsite_tabulate_58-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            120259086496
                        .quad            38
                        .quad            .Lgcsite_tabulate_62-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            128849021088
                        .quad            32
                        .quad            .Lgcsite_tabulate_61-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            128849021088
                        .quad            40
                        .quad            .Lgcsite_tabulate_66-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            77309413536
                        .quad            20
                        .quad            .Lgcsite_tabulate_65-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            77309413536
                        .quad            24
                        .quad            .Lgcsite_tabulate_64-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            77309413536
                        .quad            20
                        .quad            .Lgcsite_tabulate_63-.Lgccode_tabulate_0
                        .quad            65537
                        .quad            77309413536
                        .quad            28
                        .quad            10
                        .quad            178397738
                        .quad            11453243392
                        .quad            579379200
                        .quad            715792384
                        .popsection
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_format_1:
FN__format:
                        sub              rsp, 112
                        mov              rdi, rsp
                        xorps            xmm0, xmm0
                        xor              eax, eax
                        movups           xmmword ptr [rdi + 0], xmm0
                        movups           xmmword ptr [rdi + 16], xmm0
                        movups           xmmword ptr [rdi + 32], xmm0
                        movups           xmmword ptr [rdi + 48], xmm0
                        movups           xmmword ptr [rdi + 64], xmm0
                        movups           xmmword ptr [rdi + 80], xmm0
                        mov              qword ptr [rdi + 96], rax
                        mov              eax, 0                               # GCANCHOR .Lgcmap_format qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 104], rbp
                        mov              rbp, rsp
                        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
format_α_body:
                        .type            n00001_line_mark_bx, @function
n00001_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 79 0
.Lline_mark_α_305_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_305_stno
                        .long            0
                        .long            79
                        .quad            .Lstnof1
                        .popsection
n00001_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 79
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_306_0]
                        mov              qword ptr [rax + 608], rcx;          jmp   n00002_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_306_0: .quad .Lline_mark_α_306_0_s; .popsection
.Lline_mark_α_306_0_s:  .string          "concord.icn"
                        .size            n00001_line_mark_bx, .-n00001_line_mark_bx
                        .type            n00002_line_mark_bx, @function
n00002_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 80 0
.Lline_mark_α_307_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_307_stno
                        .long            0
                        .long            80
                        .quad            .Lstnof1
                        .popsection
n00002_line_mark_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 80;           jmp   n00003_bound_α
                        .size            n00002_line_mark_bx, .-n00002_line_mark_bx
                        .type            n00003_bound_bx, @function
n00003_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_bound_α:           sub              rsp, 16
                        mov              qword ptr [rsp + 0], rsp;            jmp   n00004_var_α
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
                        mov              rdi, qword ptr [rsp + 160]           # var
                        mov              rsi, qword ptr [rsp + 168]
                        call             qword ptr [rip + rt_size_d@GOTPCREL]
.Lgcsite_format_1:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_0:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
.Lgcsite_format_3:      push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_2:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_317_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n00010_line_mark_α
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
.Lgcsite_format_5:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_318_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n00010_line_mark_α
.Lbinop_α_318_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_4:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
                        add              rsp, 16
                        add              rsp, 96;                             jmp   n00010_line_mark_α
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
.Lgcsite_format_8:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_319_999
                        add              rsp, 16
                        add              rsp, 96;                             jmp   n00010_line_mark_α
.Lbinop_test_α_319_999: mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        lea              r8, [rsp + 0]
                        call             qword ptr [rip + rt_relop_val_coerce@GOTPCREL]
.Lgcsite_format_7:      push             rax                                  # gc_poll bb_binop_relop_val.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_6:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
n00012_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 81;           jmp   n00013_line_mark_α
                        .size            n00012_line_mark_bx, .-n00012_line_mark_bx
                        .type            n00013_line_mark_bx, @function
n00013_line_mark_bx:
#=======================================================================================================================
# nstmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 81 0
.Lline_mark_α_322_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_322_stno
                        .long            0
                        .long            81
                        .quad            .Lstnof1
                        .popsection
n00013_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 81;           jmp   n00014_lit_integer_α
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
.Lgcsite_format_11:     push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_10:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_327_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00018_line_mark_α
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
.Lgcsite_format_13:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_328_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00018_line_mark_α
.Lbinop_α_328_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_12:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00019_assign_α
                        .size            n00017_binop_bx, .-n00017_binop_bx
                        .type            n00019_assign_bx, @function
n00019_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        add              rsp, 64;                             jmp   n00018_line_mark_α
                        .size            n00019_assign_bx, .-n00019_assign_bx
                        .type            n00018_line_mark_bx, @function
n00018_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 82 0
.Lline_mark_α_330_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_330_stno
                        .long            0
                        .long            82
                        .quad            .Lstnof1
                        .popsection
n00018_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 82;           jmp   n00020_bound_α
                        .size            n00018_line_mark_bx, .-n00018_line_mark_bx
                        .type            n00020_bound_bx, @function
n00020_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_bound_α:           sub              rsp, 16
                        mov              qword ptr [rsp + 0], rsp;            jmp   n00021_var_ref_α
                        .size            n00020_bound_bx, .-n00020_bound_bx
                        .type            n00021_var_ref_bx, @function
n00021_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 272]
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
                        mov              eax, dword ptr [rsp + 176]           # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_340_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_340_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_340_0
.Lcoerce_numeric_α_340_1:
                        mov              rax, qword ptr [rsp + 176]           # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 184]           # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n00025_binop_α
.Lcoerce_numeric_α_340_0:
                        lea              rdi, [rsp + 176]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_format_15:     push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_14:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
.Lgcsite_format_17:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_341_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00026_unmark_α
.Lbinop_α_341_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_16:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00027_assign_α
                        .size            n00025_binop_bx, .-n00025_binop_bx
                        .type            n00027_assign_bx, @function
n00027_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00028_subscript_α
                        .size            n00027_assign_bx, .-n00027_assign_bx
                        .type            n00028_subscript_bx, @function
n00028_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_subscript_α:       sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_343_1:    mov              rdi, qword ptr [rsp + 64]            # var_ref
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 208]           # assign
                        mov              rcx, qword ptr [rsp + 216]
                        test             eax, eax;                            jne   .Lsubscript_α_343_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_format_21:     cmp              al, 255;                             jne   .Lsubscript_α_343_4
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
.Lgcsite_format_20:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_343_3
.Lsubscript_α_343_2:    call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_format_19:     push             rax
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
.Lgcsite_format_18:     mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_format_23:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_344_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n00026_unmark_α
.Lderef_α_344_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_22:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
.Lbinop_test_α_346_2:   mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_26:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_346_999
                        add              rsp, 16
                        add              rsp, 112;                            jmp   n00026_unmark_α
.Lbinop_test_α_346_999: mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
.Lgcsite_format_25:     mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_relop_val.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_24:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      add              rsp, 144;                            jmp   n00032_line_mark_α
                        .size            n00031_binop_test_bx, .-n00031_binop_test_bx
                        .type            n00032_line_mark_bx, @function
n00032_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 83 0
.Lline_mark_α_347_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_347_stno
                        .long            0
                        .long            83
                        .quad            .Lstnof1
                        .popsection
n00032_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 83;           jmp   n00033_var_ref_α
                        .size            n00032_line_mark_bx, .-n00032_line_mark_bx
                        .type            n00033_var_ref_bx, @function
n00033_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 256]
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
                        mov              r8, qword ptr [rsp + 160]            # var
                        mov              r9, qword ptr [rsp + 168]
                        call             rt_section_var_strict@PLT
.Lgcsite_format_29:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lsubscript_α_354_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00037_line_mark_α
.Lsubscript_α_354_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_section.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_28:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00038_deref_α
                        .size            n00036_subscript_bx, .-n00036_subscript_bx
                        .type            n00038_deref_bx, @function
n00038_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_format_31:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_355_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00037_line_mark_α
.Lderef_α_355_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_30:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
n00039_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 83;           jmp   n00040_call_byname_α
                        .size            n00039_line_mark_bx, .-n00039_line_mark_bx
                        .type            n00040_call_byname_bx, @function
n00040_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_call_byname_α:     sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd359: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd359]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_format_32:     mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_format_33:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_358_999
                        add              rsp, 32
                        add              rsp, 64;                             jmp   n00037_line_mark_α
.Lcall_byname_α_358_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 96;                             jmp   n00037_line_mark_α
                        .size            n00040_call_byname_bx, .-n00040_call_byname_bx
                        .type            n00037_line_mark_bx, @function
n00037_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 84 0
.Lline_mark_α_360_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_360_stno
                        .long            0
                        .long            84
                        .quad            .Lstnof1
                        .popsection
n00037_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 84;           jmp   n00041_lit_string_α
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
.Lgcsite_format_35:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_365_999
                        add              rsp, 16
                        add              rsp, -160;                           jmp   n00044_unmark_α
.Lderef_α_365_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_34:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
n00045_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 84;           jmp   n00046_call_byname_α
                        .size            n00045_line_mark_bx, .-n00045_line_mark_bx
                        .type            n00046_call_byname_bx, @function
n00046_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_call_byname_α:     sub              rsp, 48
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd369: .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd369]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_format_36:     mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_format_37:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_368_999
                        add              rsp, 48
                        add              rsp, -144;                           jmp   n00044_unmark_α
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
                        mov              eax, dword ptr [rsp + 240]           # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_376_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_376_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_376_0
.Lcoerce_numeric_α_376_1:
                        mov              rax, qword ptr [rsp + 240]           # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 248]           # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n00051_binop_α
.Lcoerce_numeric_α_376_0:
                        lea              rdi, [rsp + 240]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_format_39:     push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_38:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
.Lgcsite_format_41:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_377_999
                        add              rsp, 16
                        add              rsp, -64;                            jmp   n00044_unmark_α
.Lbinop_α_377_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_40:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
                        mov              rdi, qword ptr [rsp + 416]           # var
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 32]            # binop
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        call             subscript_get2_strict@PLT
.Lgcsite_format_43:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lsubscript_α_379_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00044_unmark_α
.Lsubscript_α_379_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_section.cpp:81
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_42:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
.Lgcsite_format_46:     cmp              al, 255;                             jne   .Lbinop_vd_380_7
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_format_45:     mov              r9,  qword ptr [rip + g_rtccb+48]
.Lbinop_vd_380_7:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_44:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n00056_conjunction_α
                        .size            n00055_assign_bx, .-n00055_assign_bx
                        .type            n00056_conjunction_bx, @function
n00056_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_conjunction_α:                                                           jmp   n00044_unmark_α
n00056_conjunction_β:                                                           jmp   n00044_unmark_α
                        .size            n00056_conjunction_bx, .-n00056_conjunction_bx
                        .type            n00044_unmark_bx, @function
n00044_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_unmark_α:                                                                jmp   n00057_line_mark_α
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
n00057_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 80
                        add              rsp, 304;                            jmp   n00003_bound_α
                        .size            n00057_line_mark_bx, .-n00057_line_mark_bx
                        .type            n00026_unmark_bx, @function
n00026_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_unmark_α:          add              rsp, 16;                             jmp   n00020_bound_α
                        .size            n00026_unmark_bx, .-n00026_unmark_bx
                        .type            n00010_line_mark_bx, @function
n00010_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 86 0
.Lline_mark_α_389_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_389_stno
                        .long            0
                        .long            86
                        .quad            .Lstnof1
                        .popsection
n00010_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 86;           jmp   n00058_var_ref_α
                        .size            n00010_line_mark_bx, .-n00010_line_mark_bx
                        .type            n00058_var_ref_bx, @function
n00058_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 144]
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
.Lgcsite_format_48:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lsubscript_α_395_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   format_ω
.Lsubscript_α_395_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_section.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_47:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00062_deref_α
                        .size            n00061_subscript_bx, .-n00061_subscript_bx
                        .type            n00062_deref_bx, @function
n00062_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_format_50:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_396_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   format_ω
.Lderef_α_396_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_format_49:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
n00063_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 86;           jmp   n00064_call_byname_α
                        .size            n00063_line_mark_bx, .-n00063_line_mark_bx
                        .type            n00064_call_byname_bx, @function
n00064_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_call_byname_α:     sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd400: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd400]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_format_51:     mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_format_52:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_399_999
                        add              rsp, 32
                        add              rsp, 80;                             jmp   format_ω
.Lcall_byname_α_399_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 112;                            jmp   format_ω
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
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
                        pop              rax
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 104];          jmp   qword ptr [rsp]
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
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
                        pop              rax
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 104];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_format:
                        .quad            482382794074
                        .quad            515396075600
                        .quad            .Lgcmap_format_s
                        .quad            16
                        .quad            1
                        .quad            17592186044416
.Lgcmap_format_s:       .string          "format"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_format_1:     .quad            53
                        .quad            .Lgcmap_format
                        .quad            9223389622598369408
                        .quad            .Lgccode_format_1
                        .quad            .Lgcsite_format_1-.Lgccode_format_1
                        .quad            65537
                        .quad            8589936320
                        .quad            6
                        .quad            .Lgcsite_format_0-.Lgccode_format_1
                        .quad            65537
                        .quad            8589936320
                        .quad            14
                        .quad            .Lgcsite_format_3-.Lgccode_format_1
                        .quad            65537
                        .quad            42949674688
                        .quad            12
                        .quad            .Lgcsite_format_2-.Lgccode_format_1
                        .quad            65537
                        .quad            42949674688
                        .quad            20
                        .quad            .Lgcsite_format_5-.Lgccode_format_1
                        .quad            65537
                        .quad            51539609280
                        .quad            14
                        .quad            .Lgcsite_format_4-.Lgccode_format_1
                        .quad            65537
                        .quad            51539609280
                        .quad            22
                        .quad            .Lgcsite_format_9-.Lgccode_format_1
                        .quad            65537
                        .quad            60129543872
                        .quad            16
                        .quad            .Lgcsite_format_8-.Lgccode_format_1
                        .quad            65537
                        .quad            60129543872
                        .quad            20
                        .quad            .Lgcsite_format_7-.Lgccode_format_1
                        .quad            65537
                        .quad            60129543872
                        .quad            16
                        .quad            .Lgcsite_format_6-.Lgccode_format_1
                        .quad            65537
                        .quad            60129543872
                        .quad            24
                        .quad            .Lgcsite_format_11-.Lgccode_format_1
                        .quad            65537
                        .quad            85899347648
                        .quad            22
                        .quad            .Lgcsite_format_10-.Lgccode_format_1
                        .quad            65537
                        .quad            85899347648
                        .quad            30
                        .quad            .Lgcsite_format_13-.Lgccode_format_1
                        .quad            65537
                        .quad            94489282240
                        .quad            24
                        .quad            .Lgcsite_format_12-.Lgccode_format_1
                        .quad            65537
                        .quad            94489282240
                        .quad            32
                        .quad            .Lgcsite_format_15-.Lgccode_format_1
                        .quad            65537
                        .quad            94489282248
                        .quad            24
                        .quad            .Lgcsite_format_14-.Lgccode_format_1
                        .quad            65537
                        .quad            94489282248
                        .quad            32
                        .quad            .Lgcsite_format_17-.Lgccode_format_1
                        .quad            65537
                        .quad            103079216840
                        .quad            26
                        .quad            .Lgcsite_format_16-.Lgccode_format_1
                        .quad            65537
                        .quad            103079216840
                        .quad            34
                        .quad            .Lgcsite_format_21-.Lgccode_format_1
                        .quad            65537
                        .quad            111669151432
                        .quad            28
                        .quad            .Lgcsite_format_20-.Lgccode_format_1
                        .quad            65537
                        .quad            111669151432
                        .quad            32
                        .quad            .Lgcsite_format_19-.Lgccode_format_1
                        .quad            65537
                        .quad            111669151432
                        .quad            28
                        .quad            .Lgcsite_format_18-.Lgccode_format_1
                        .quad            65537
                        .quad            111669151432
                        .quad            32
                        .quad            .Lgcsite_format_23-.Lgccode_format_1
                        .quad            65537
                        .quad            120259086024
                        .quad            30
                        .quad            .Lgcsite_format_22-.Lgccode_format_1
                        .quad            65537
                        .quad            120259086024
                        .quad            38
                        .quad            .Lgcsite_format_27-.Lgccode_format_1
                        .quad            65537
                        .quad            137438955208
                        .quad            34
                        .quad            .Lgcsite_format_26-.Lgccode_format_1
                        .quad            65537
                        .quad            137438955208
                        .quad            38
                        .quad            .Lgcsite_format_25-.Lgccode_format_1
                        .quad            65537
                        .quad            137438955208
                        .quad            34
                        .quad            .Lgcsite_format_24-.Lgccode_format_1
                        .quad            65537
                        .quad            137438955208
                        .quad            42
                        .quad            .Lgcsite_format_29-.Lgccode_format_1
                        .quad            65537
                        .quad            85899347664
                        .quad            22
                        .quad            .Lgcsite_format_28-.Lgccode_format_1
                        .quad            65537
                        .quad            85899347664
                        .quad            30
                        .quad            .Lgcsite_format_31-.Lgccode_format_1
                        .quad            65537
                        .quad            94489282256
                        .quad            24
                        .quad            .Lgcsite_format_30-.Lgccode_format_1
                        .quad            65537
                        .quad            94489282256
                        .quad            32
                        .quad            .Lgcsite_format_32-.Lgccode_format_1
                        .quad            65537
                        .quad            103079216848
                        .quad            28
                        .quad            .Lgcsite_format_33-.Lgccode_format_1
                        .quad            65537
                        .quad            103079216848
                        .quad            32
                        .quad            .Lgcsite_format_35-.Lgccode_format_1
                        .quad            65537
                        .quad            85899347672
                        .quad            22
                        .quad            .Lgcsite_format_34-.Lgccode_format_1
                        .quad            65537
                        .quad            85899347672
                        .quad            30
                        .quad            .Lgcsite_format_36-.Lgccode_format_1
                        .quad            65537
                        .quad            94489282264
                        .quad            28
                        .quad            .Lgcsite_format_37-.Lgccode_format_1
                        .quad            65537
                        .quad            94489282264
                        .quad            32
                        .quad            .Lgcsite_format_39-.Lgccode_format_1
                        .quad            65537
                        .quad            128849020632
                        .quad            32
                        .quad            .Lgcsite_format_38-.Lgccode_format_1
                        .quad            65537
                        .quad            128849020632
                        .quad            40
                        .quad            .Lgcsite_format_41-.Lgccode_format_1
                        .quad            65537
                        .quad            137438955224
                        .quad            34
                        .quad            .Lgcsite_format_40-.Lgccode_format_1
                        .quad            65537
                        .quad            137438955224
                        .quad            42
                        .quad            .Lgcsite_format_43-.Lgccode_format_1
                        .quad            65537
                        .quad            154618824408
                        .quad            38
                        .quad            .Lgcsite_format_42-.Lgccode_format_1
                        .quad            65537
                        .quad            154618824408
                        .quad            46
                        .quad            .Lgcsite_format_46-.Lgccode_format_1
                        .quad            65537
                        .quad            163208759000
                        .quad            40
                        .quad            .Lgcsite_format_45-.Lgccode_format_1
                        .quad            65537
                        .quad            163208759000
                        .quad            40
                        .quad            .Lgcsite_format_44-.Lgccode_format_1
                        .quad            65537
                        .quad            163208759000
                        .quad            48
                        .quad            .Lgcsite_format_48-.Lgccode_format_1
                        .quad            65537
                        .quad            34359740128
                        .quad            10
                        .quad            .Lgcsite_format_47-.Lgccode_format_1
                        .quad            65537
                        .quad            34359740128
                        .quad            18
                        .quad            .Lgcsite_format_50-.Lgccode_format_1
                        .quad            65537
                        .quad            42949674720
                        .quad            12
                        .quad            .Lgcsite_format_49-.Lgccode_format_1
                        .quad            65537
                        .quad            42949674720
                        .quad            20
                        .quad            .Lgcsite_format_51-.Lgccode_format_1
                        .quad            65537
                        .quad            51539609312
                        .quad            16
                        .quad            .Lgcsite_format_52-.Lgccode_format_1
                        .quad            65537
                        .quad            51539609312
                        .quad            20
                        .quad            2796194
                        .quad            2863180450
                        .quad            11184802
                        .quad            183251937954
                        .quad            2728
                        .popsection
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_item_2:
FN__item:
                        lea              rax, [rsp + -408]
                        mov              qword ptr [rax + 336], rbp
                        mov              rcx, qword ptr [rsp + 0]
                        mov              qword ptr [rax + 344], rcx
                        mov              rcx, qword ptr [rsp + 8]
                        mov              qword ptr [rax + 352], rcx
                        lea              rcx, [rsp + 40]
                        mov              qword ptr [rax + 360], rcx
                        lea              rbp, [rax + 336]
                        mov              rsp, rax
                        mov              eax, 0                               # GCANCHOR .Lgcmap_item qword ptr [rsp + 216]
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
                        mov              r9,  qword ptr [rip + g_rtccb+48]
item_α_body:
                        lea              rax, [rip + n00065_suspend_β]
                        mov              qword ptr [rbp + -320], rax
                        .type            n00066_line_mark_bx, @function
n00066_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 93 0
.Lline_mark_α_466_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_466_stno
                        .long            0
                        .long            93
                        .quad            .Lstnof1
                        .popsection
n00066_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 93
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_467_0]
                        mov              qword ptr [rax + 608], rcx;          jmp   n00067_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_467_0: .quad .Lline_mark_α_467_0_s; .popsection
.Lline_mark_α_467_0_s:  .string          "concord.icn"
                        .size            n00066_line_mark_bx, .-n00066_line_mark_bx
                        .type            n00067_line_mark_bx, @function
n00067_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 94 0
.Lline_mark_α_468_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_468_stno
                        .long            0
                        .long            94
                        .quad            .Lstnof1
                        .popsection
n00067_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 94;           jmp   n00068_bound_α
                        .size            n00067_line_mark_bx, .-n00067_line_mark_bx
                        .type            n00068_bound_bx, @function
n00068_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_bound_α:           mov              qword ptr [rbp + -240], rsp;         jmp   n00069_line_mark_α
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
n00069_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 94;           jmp   n00070_call_byname_α
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
.Lgcsite_item_0:        mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_item_1:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
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
                        mov              qword ptr [rbp + -304], rax
                        mov              qword ptr [rbp + -296], rdx;         jmp   n00072_line_mark_α
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
n00072_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 95;           jmp   n00073_line_mark_α
                        .size            n00072_line_mark_bx, .-n00072_line_mark_bx
                        .type            n00073_line_mark_bx, @function
n00073_line_mark_bx:
#=======================================================================================================================
# nstmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 95 0
.Lline_mark_α_479_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_479_stno
                        .long            0
                        .long            95
                        .quad            .Lstnof1
                        .popsection
n00073_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 95;           jmp   n00074_lit_integer_α
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
.Lgcsite_item_3:        push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_item_2:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_484_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00078_line_mark_α
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
.Lgcsite_item_5:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_485_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00078_line_mark_α
.Lbinop_α_485_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_item_4:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00079_assign_α
                        .size            n00077_binop_bx, .-n00077_binop_bx
                        .type            n00079_assign_bx, @function
n00079_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11904], rax          # lineno
                        mov              qword ptr [r9 + 11912], rdx
                        add              rsp, 64;                             jmp   n00078_line_mark_α
                        .size            n00079_assign_bx, .-n00079_assign_bx
                        .type            n00078_line_mark_bx, @function
n00078_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 96 0
.Lline_mark_α_487_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_487_stno
                        .long            0
                        .long            96
                        .quad            .Lstnof1
                        .popsection
n00078_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 96;           jmp   n00080_var_ref_α
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
.Lgcsite_item_7:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_492_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00083_line_mark_α
.Lderef_α_492_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_item_6:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
n00084_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 96;           jmp   n00085_call_byname_α
                        .size            n00084_line_mark_bx, .-n00084_line_mark_bx
                        .type            n00085_call_byname_bx, @function
n00085_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_call_byname_α:     sub              rsp, 48
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd496: .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd496]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 327837
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_item_8:        mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_item_9:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_495_999
                        add              rsp, 48
                        add              rsp, 48;                             jmp   n00083_line_mark_α
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
                        lea              rax, [rbp + -304]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00088_deref_α
                        .size            n00087_var_ref_bx, .-n00087_var_ref_bx
                        .type            n00088_deref_bx, @function
n00088_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_item_11:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_500_999
                        add              rsp, 16
                        add              rsp, 128;                            jmp   n00083_line_mark_α
.Lderef_α_500_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_item_10:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
n00089_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 96;           jmp   n00090_call_byname_α
                        .size            n00089_line_mark_bx, .-n00089_line_mark_bx
                        .type            n00090_call_byname_bx, @function
n00090_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_call_byname_α:     sub              rsp, 64
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd504: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd504]
                        lea              rsi, [rsp + 16]
                        mov              edx, 3
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_item_12:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_item_13:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_503_999
                        add              rsp, 64
                        add              rsp, 144;                            jmp   n00083_line_mark_α
.Lcall_byname_α_503_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 208;                            jmp   n00083_line_mark_α
                        .size            n00090_call_byname_bx, .-n00090_call_byname_bx
                        .type            n00083_line_mark_bx, @function
n00083_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 97 0
.Lline_mark_α_505_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_505_stno
                        .long            0
                        .long            97
                        .quad            .Lstnof1
                        .popsection
n00083_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 97;           jmp   n00091_var_ref_α
                        .size            n00083_line_mark_bx, .-n00083_line_mark_bx
                        .type            n00091_var_ref_bx, @function
n00091_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + -304]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00092_deref_α
                        .size            n00091_var_ref_bx, .-n00091_var_ref_bx
                        .type            n00092_deref_bx, @function
n00092_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_item_15:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_509_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00093_line_mark_α
.Lderef_α_509_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_item_14:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
n00094_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 97;           jmp   n00095_call_byname_α
                        .size            n00094_line_mark_bx, .-n00094_line_mark_bx
                        .type            n00095_call_byname_bx, @function
n00095_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_call_byname_α:     sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd513: .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd513]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 196743
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_item_16:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_item_17:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_512_999
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n00093_line_mark_α
.Lcall_byname_α_512_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00096_assign_α
                        .size            n00095_call_byname_bx, .-n00095_call_byname_bx
                        .type            n00096_assign_bx, @function
n00096_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + -304], rax
                        mov              qword ptr [rbp + -296], rdx
                        add              rsp, 64;                             jmp   n00093_line_mark_α
                        .size            n00096_assign_bx, .-n00096_assign_bx
                        .type            n00093_line_mark_bx, @function
n00093_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 98 0
.Lline_mark_α_515_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_515_stno
                        .long            0
                        .long            98
                        .quad            .Lstnof1
                        .popsection
n00093_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 98;           jmp   n00097_lit_integer_α
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
                        mov              qword ptr [rbp + -272], rax
                        mov              qword ptr [rbp + -264], rdx
                        add              rsp, 16;                             jmp   n00099_line_mark_α
                        .size            n00098_assign_bx, .-n00098_assign_bx
                        .type            n00099_line_mark_bx, @function
n00099_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 99 0
.Lline_mark_α_519_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_519_stno
                        .long            0
                        .long            99
                        .quad            .Lstnof1
                        .popsection
n00099_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 99;           jmp   n00100_var_α
                        .size            n00099_line_mark_bx, .-n00099_line_mark_bx
                        .type            n00100_var_bx, @function
n00100_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00100_var_α:                                                                   jmp   n00101_scan_enter_α
                        .size            n00100_var_bx, .-n00100_var_bx
                        .type            n00101_scan_enter_bx, @function
n00101_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_scan_enter_α:      mov              rcx, 2
                        mov              qword ptr [rbp + -208], rcx
                        mov              qword ptr [rbp + -200], r13
                        mov              qword ptr [rbp + -192], r14
                        mov              qword ptr [rbp + -184], r15
                        mov              rax, qword ptr [rbp + -304]
                        cmp              eax, 2;                              jne   .Lscan_enter_α_524_1
                        shr              rax, 32
                        test             eax, eax;                            je    .Lscan_enter_α_524_1
                        cmp              eax, -1;                             je    .Lscan_enter_α_524_1
                        mov              r13, qword ptr [rbp + -296]
                        mov              r15d, eax;                           jmp   .Lscan_enter_α_524_2
.Lscan_enter_α_524_1:   mov              rdi, qword ptr [rbp + -304]
                        mov              rsi, qword ptr [rbp + -296]
                        mov              edx, 2
                        call             rt_icn_subject_coerce@PLT
.Lgcsite_item_19:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_item_18:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jne   .Lscan_enter_α_524_999
                        add              rsp, 16;                             jmp   n00102_unmark_α
.Lscan_enter_α_524_999: mov              r13, rax
                        mov              r15, rdx
.Lscan_enter_α_524_2:   xor              r14d, r14d;                          jmp   n00103_bound_α
                        .size            n00101_scan_enter_bx, .-n00101_scan_enter_bx
                        .type            n00103_bound_bx, @function
n00103_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_bound_α:           mov              qword ptr [rbp + -160], rsp;         jmp   n00104_lit_charset_α
                        .size            n00103_bound_bx, .-n00103_bound_bx
                        .type            n00104_lit_charset_bx, @function
n00104_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_lit_charset_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4294967295
                        mov              rax, qword ptr [rip + .Llit_charset_α_527_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00105_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_charset_α_527_0: .quad .Llit_charset_α_527_0_s; .popsection
                        .quad            14260561861161254964
                        .quad            0
                        .quad            576460743847706622
                        .quad            0
                        .quad            0
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
n00105_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 100;          jmp   n00106_scan_upto_α
                        .size            n00105_line_mark_bx, .-n00105_line_mark_bx
                        .type            n00106_scan_upto_bx, @function
n00106_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_scan_upto_α:       sub              rsp, 32
                        mov              qword ptr [rsp + 16], r14
.Lscan_upto_α_531_0:    mov              rax, qword ptr [rsp + 16]
                        cmp              rax, r15;                            jl    .Lscan_upto_α_531_999
                        add              rsp, 32
                        add              rsp, 16;                             jmp   n00107_scan_α
.Lscan_upto_α_531_999:  mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .Lscan_upto_α_531_3]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_upto_α_531_1
                        mov              qword ptr [rsp + 0], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 8], rax;            jmp   n00108_line_mark_α
.Lscan_upto_α_531_1:    inc              qword ptr [rsp + 16];                jmp   .Lscan_upto_α_531_0
n00106_scan_upto_β:       inc              qword ptr [rsp + 16];                jmp   .Lscan_upto_α_531_0
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
n00108_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 100;          jmp   n00109_scan_tab_α
                        .size            n00108_line_mark_bx, .-n00108_line_mark_bx
                        .type            n00109_scan_tab_bx, @function
n00109_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_scan_tab_α:        sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_item_23:       test             eax, eax;                            jne   .Lscan_tab_α_535_997
                        add              rsp, 32;                             jmp   n00106_scan_upto_β
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
.Lgcsite_item_22:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rsp + 32]            # lo
                        mov              rsi, qword ptr [rsp + 40]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_item_21:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_item_20:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_535_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_535_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_535_998
                        add              rsp, 32;                             jmp   n00106_scan_upto_β
.Lscan_tab_α_535_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_535_999
                        add              rsp, 32;                             jmp   n00106_scan_upto_β
.Lscan_tab_α_535_999:   mov              qword ptr [rsp + 16], r14
                        mov              rcx, rax
                        sub              rcx, 1
                        mov              rdx, r14
                        mov              r14, rcx
                        sub              rdx, rcx;                            jge   .Lscan_tab_α_535_1
                        add              rcx, rdx
                        neg              rdx
.Lscan_tab_α_535_1:     lea              rsi, [r13 + rcx]
                        test             rdx, rdx;                            jnz   .Lscan_tab_α_535_2
                        lea              rsi, [rip + .S0]
.Lscan_tab_α_535_2:     shl              rdx, 32
                        or               rdx, 2
                        mov              qword ptr [rsp + 0], rdx
                        mov              qword ptr [rsp + 8], rsi;            jmp   n00110_line_mark_α
n00109_scan_tab_β:        mov              r14, qword ptr [rsp + 16]
                        add              rsp, 32;                             jmp   n00106_scan_upto_β
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
n00110_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 101;          jmp   n00111_line_mark_α
                        .size            n00110_line_mark_bx, .-n00110_line_mark_bx
                        .type            n00111_line_mark_bx, @function
n00111_line_mark_bx:
#=======================================================================================================================
# nstmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 101 0
.Lline_mark_α_538_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_538_stno
                        .long            0
                        .long            101
                        .quad            .Lstnof1
                        .popsection
n00111_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 101;          jmp   n00112_lit_charset_α
                        .size            n00111_line_mark_bx, .-n00111_line_mark_bx
                        .type            n00112_lit_charset_bx, @function
n00112_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_lit_charset_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4294967295
                        mov              rax, qword ptr [rip + .Llit_charset_α_540_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00113_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_charset_α_540_0: .quad .Llit_charset_α_540_0_s; .popsection
                        .quad            14260561861161254964
                        .quad            0
                        .quad            576460743847706622
                        .quad            0
                        .quad            0
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
n00113_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 101;          jmp   n00114_scan_many_α
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
                        add              rsp, 16;                             jmp   n00115_line_mark_α
.Lscan_many_α_544_999:  mov              qword ptr [rsp + 0], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 8], rcx;            jmp   n00116_line_mark_α
n00114_scan_many_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n00115_line_mark_α
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
n00116_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 101;          jmp   n00117_scan_tab_α
                        .size            n00116_line_mark_bx, .-n00116_line_mark_bx
                        .type            n00117_scan_tab_bx, @function
n00117_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_scan_tab_α:        sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_item_27:       test             eax, eax;                            jne   .Lscan_tab_α_548_997
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n00115_line_mark_α
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
.Lgcsite_item_26:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rsp + 32]            # lo
                        mov              rsi, qword ptr [rsp + 40]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_item_25:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_item_24:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_548_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_548_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_548_998
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n00115_line_mark_α
.Lscan_tab_α_548_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_548_999
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n00115_line_mark_α
.Lscan_tab_α_548_999:   mov              qword ptr [rsp + 16], r14
                        mov              rcx, rax
                        sub              rcx, 1
                        mov              rdx, r14
                        mov              r14, rcx
                        sub              rdx, rcx;                            jge   .Lscan_tab_α_548_1
                        add              rcx, rdx
                        neg              rdx
.Lscan_tab_α_548_1:     lea              rsi, [r13 + rcx]
                        test             rdx, rdx;                            jnz   .Lscan_tab_α_548_2
                        lea              rsi, [rip + .S0]
.Lscan_tab_α_548_2:     shl              rdx, 32
                        or               rdx, 2
                        mov              qword ptr [rsp + 0], rdx
                        mov              qword ptr [rsp + 8], rsi;            jmp   n00118_assign_α
n00117_scan_tab_β:        mov              r14, qword ptr [rsp + 16]
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n00115_line_mark_α
                        .size            n00117_scan_tab_bx, .-n00117_scan_tab_bx
                        .type            n00118_assign_bx, @function
n00118_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_assign_α:          mov              rax, qword ptr [rsp + 0]             # scan_tab
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + -288], rax
                        mov              qword ptr [rbp + -280], rdx
                        add              rsp, 64;                             jmp   n00115_line_mark_α
                        .size            n00118_assign_bx, .-n00118_assign_bx
                        .type            n00115_line_mark_bx, @function
n00115_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 102 0
.Lline_mark_α_550_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_550_stno
                        .long            0
                        .long            102
                        .quad            .Lstnof1
                        .popsection
n00115_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 102;          jmp   n00119_disjunction_α
                        .size            n00115_line_mark_bx, .-n00115_line_mark_bx
                        .type            n00119_disjunction_bx, @function
n00119_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00119_disjunction_α:     sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n00120_var_α
.Ldisjunction_γ_452_as: mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_553_0
                                                                              jmp   n00121_conjunction_α
.Ldisjunction_α_553_0:                                                        jmp   n00121_conjunction_α
n00119_disjunction_β:     mov              eax, dword ptr [rsp + 16];           jmp   n00122_unmark_α
.Ldisjunction_γ_452_af:
.Ldisjunction_ω_452_af: add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        add              rsp, 32
                        add              rsp, -32;                            jmp   n00122_unmark_α
                        .size            n00119_disjunction_bx, .-n00119_disjunction_bx
                        .type            n00121_conjunction_bx, @function
n00121_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_conjunction_α:                                                           jmp   n00122_unmark_α
n00121_conjunction_β:                                                           jmp   n00122_unmark_α
                        .size            n00121_conjunction_bx, .-n00121_conjunction_bx
                        .type            n00120_var_bx, @function
n00120_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_var_α:                                                                   jmp   n00123_unop_α
n00120_var_β:                                                                   jmp   .Ldisjunction_ω_452_af
                        .size            n00120_var_bx, .-n00120_var_bx
                        .type            n00123_unop_bx, @function
n00123_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00123_unop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -288]          # var
                        mov              rsi, qword ptr [rbp + -280]
                        call             qword ptr [rip + rt_size_d@GOTPCREL]
.Lgcsite_item_29:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_item_28:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
.Lgcsite_item_33:       push             rax
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
.Lgcsite_item_32:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_item_31:       push             rax                                  # gc_poll bb_binop_relop_val.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_item_30:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
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
                        mov              qword ptr [rbp + -320], rax
                        mov              rax, qword ptr [rbp + -288]          # var
                        mov              qword ptr [rbp + -336], rax
                        mov              rax, qword ptr [rbp + -280]
                        mov              qword ptr [rbp + -328], rax;         jmp   n00127_scan_α
n00065_suspend_β:                                                               jmp   n00127_scan_β
                        .size            n00065_suspend_bx, .-n00065_suspend_bx
                        .type            n00127_scan_bx, @function
n00127_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_scan_α:            sub              rsp, 48
                        mov              dword ptr [rsp + 32], r14d
                        mov              dword ptr [rsp + 20], r15d
                        mov              qword ptr [rsp + 24], r13
                        mov              dword ptr [rsp + 16], 2
                        mov              r13, qword ptr [rbp + -200]
                        mov              r14, qword ptr [rbp + -192]
                        mov              r15, qword ptr [rbp + -184];         jmp   item_γ
n00127_scan_β:            mov              qword ptr [rbp + -200], r13
                        mov              qword ptr [rbp + -192], r14
                        mov              qword ptr [rbp + -184], r15
                        mov              r13, qword ptr [rsp + 24]
                        mov              r15d, dword ptr [rsp + 20]
                        mov              r14d, dword ptr [rsp + 32]
                        add              rsp, 96;                             jmp   n00122_unmark_α
                        .size            n00127_scan_bx, .-n00127_scan_bx
                        .type            n00122_unmark_bx, @function
n00122_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_unmark_α:                                                                jmp   n00128_line_mark_α
n00122_unmark_β:                                                                jmp   n00128_line_mark_α
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
n00128_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 100
                        add              rsp, 112;                            jmp   n00103_bound_α
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
n00129_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 94;           jmp   n00068_bound_α
                        .size            n00129_line_mark_bx, .-n00129_line_mark_bx
                        .type            n00107_scan_bx, @function
n00107_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_scan_α:            sub              rsp, 48
                        mov              dword ptr [rsp + 32], r14d
                        mov              dword ptr [rsp + 20], r15d
                        mov              qword ptr [rsp + 24], r13
                        mov              dword ptr [rsp + 16], 2
                        mov              r13, qword ptr [rbp + -200]
                        mov              r14, qword ptr [rbp + -192]
                        mov              r15, qword ptr [rbp + -184]
                        add              rsp, 64;                             jmp   n00102_unmark_α
n00107_scan_β:            add              rsp, 48
                        add              rsp, 16;                             jmp   n00102_unmark_α
                        .size            n00107_scan_bx, .-n00107_scan_bx
#-----------------------------------------------------------------------------------------------------------------------
item_res:
                        mov              rbp, rax
                        mov              rdx, rax
                        mov              rcx, qword ptr [rdx + 48]
                        test             rcx, rcx;                            je    .Litem_α_575_238
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], rcx
                        mov              rcx, qword ptr [rdx + 56]
                        test             rcx, rcx;                            je    .Litem_α_575_238
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 608], rcx
.Litem_α_575_238:       mov              rax, rdx
                        mov              r9,  qword ptr [rip + g_rtccb+48]
#-----------------------------------------------------------------------------------------------------------------------
item_β:
                        mov              rax, qword ptr [rbp + -320];         jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
item_γ:
                        mov              rdx, rbp
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 592]
                        mov              qword ptr [rdx + 48], rcx
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 608]
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
                        .quad            1444455468378
                        .quad            249108103312
                        .quad            .Lgcmap_item_s
                        .quad            208
                        .quad            10
                        .quad            17592186044416
                        .quad            8808977924112
                        .quad            8800387989528
                        .quad            70368744177696
                        .quad            17596481011808
                        .quad            35184372088944
                        .quad            17596481011856
                        .quad            17592186044576
                        .quad            17596481011888
                        .quad            17592186044608
.Lgcmap_item_s:         .string          "item"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_item_2:       .quad            34
                        .quad            .Lgcmap_item
                        .quad            11529514111083741528
                        .quad            .Lgccode_item_2
                        .quad            .Lgcsite_item_0-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_item_1-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_item_3-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            25769804896
                        .quad            8
                        .quad            .Lgcsite_item_2-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            25769804896
                        .quad            16
                        .quad            .Lgcsite_item_5-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            34359739488
                        .quad            10
                        .quad            .Lgcsite_item_4-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            34359739488
                        .quad            18
                        .quad            .Lgcsite_item_7-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            25769804904
                        .quad            8
                        .quad            .Lgcsite_item_6-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            25769804904
                        .quad            16
                        .quad            .Lgcsite_item_8-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            34359739496
                        .quad            14
                        .quad            .Lgcsite_item_9-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            34359739496
                        .quad            18
                        .quad            .Lgcsite_item_11-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            77309412456
                        .quad            20
                        .quad            .Lgcsite_item_10-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            77309412456
                        .quad            28
                        .quad            .Lgcsite_item_12-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            85899347048
                        .quad            28
                        .quad            .Lgcsite_item_13-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            85899347048
                        .quad            32
                        .quad            .Lgcsite_item_15-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            17179870320
                        .quad            6
                        .quad            .Lgcsite_item_14-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            17179870320
                        .quad            14
                        .quad            .Lgcsite_item_16-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            25769804912
                        .quad            10
                        .quad            .Lgcsite_item_17-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            25769804912
                        .quad            14
                        .quad            .Lgcsite_item_19-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            8589935736
                        .quad            2
                        .quad            .Lgcsite_item_18-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            8589935736
                        .quad            6
                        .quad            .Lgcsite_item_23-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            34359739520
                        .quad            12
                        .quad            .Lgcsite_item_22-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            34359739520
                        .quad            16
                        .quad            .Lgcsite_item_21-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            34359739520
                        .quad            12
                        .quad            .Lgcsite_item_20-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            34359739520
                        .quad            16
                        .quad            .Lgcsite_item_27-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            68719477888
                        .quad            20
                        .quad            .Lgcsite_item_26-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            68719477888
                        .quad            24
                        .quad            .Lgcsite_item_25-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            68719477888
                        .quad            20
                        .quad            .Lgcsite_item_24-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            68719477888
                        .quad            24
                        .quad            .Lgcsite_item_29-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            68719477896
                        .quad            18
                        .quad            .Lgcsite_item_28-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            68719477896
                        .quad            26
                        .quad            .Lgcsite_item_33-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            85899347080
                        .quad            22
                        .quad            .Lgcsite_item_32-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            85899347080
                        .quad            26
                        .quad            .Lgcsite_item_31-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            85899347080
                        .quad            22
                        .quad            .Lgcsite_item_30-.Lgccode_item_2
                        .quad            1443109142529
                        .quad            85899347080
                        .quad            30
                        .quad            170
                        .quad            699050
                        .quad            42
                        .quad            2
                        .quad            43146
                        .quad            690314
                        .popsection
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_options_3:
FN__options:
                        sub              rsp, 592
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
                        mov              qword ptr [rdi + 576], rax
                        mov              eax, 0                               # GCANCHOR .Lgcmap_options qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 584], rbp
                        mov              rbp, rsp
                        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
options_α_body:
                        .type            n00130_line_mark_bx, @function
n00130_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 111 0
.Lline_mark_α_759_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_759_stno
                        .long            0
                        .long            111
                        .quad            .Lstnof1
                        .popsection
n00130_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 111
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_760_0]
                        mov              qword ptr [rax + 608], rcx;          jmp   n00131_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_760_0: .quad .Lline_mark_α_760_0_s; .popsection
.Lline_mark_α_760_0_s:  .string          "concord.icn"
                        .size            n00130_line_mark_bx, .-n00130_line_mark_bx
                        .type            n00131_line_mark_bx, @function
n00131_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 112 0
.Lline_mark_α_761_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_761_stno
                        .long            0
                        .long            112
                        .quad            .Lstnof1
                        .popsection
n00131_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 112;          jmp   n00132_var_ref_α
                        .size            n00131_line_mark_bx, .-n00131_line_mark_bx
                        .type            n00132_var_ref_bx, @function
n00132_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00132_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 608]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00133_nulltest_var_α
                        .size            n00132_var_ref_bx, .-n00132_var_ref_bx
                        .type            n00133_nulltest_var_bx, @function
n00133_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_nulltest_var_α:    sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 104;                             jne   .Lnulltest_var_α_765_997
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00134_line_mark_α
.Lnulltest_var_α_765_997:
                        mov              rdi, qword ptr [rsp + 16]            # d
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_1:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lnulltest_var_α_765_998
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00134_line_mark_α
.Lnulltest_var_α_765_998:
                        cmp              eax, 0;                              je    .Lnulltest_var_α_765_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00134_line_mark_α
.Lnulltest_var_α_765_999:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_unop.cpp:68
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_0:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00135_lit_charset_α
                        .size            n00133_nulltest_var_bx, .-n00133_nulltest_var_bx
                        .type            n00135_lit_charset_bx, @function
n00135_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_lit_charset_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4294967295
                        mov              rax, qword ptr [rip + .Llit_charset_α_766_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00136_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_charset_α_766_0: .quad .Llit_charset_α_766_0_s; .popsection
                        .quad            14260561861161254964
                        .quad            0
                        .quad            576460743847706622
                        .quad            0
                        .quad            0
.Llit_charset_α_766_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00135_lit_charset_bx, .-n00135_lit_charset_bx
                        .type            n00136_line_mark_bx, @function
n00136_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_767_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_767_stno
                        .long            0
                        .long            112
                        .quad            .Lstnof1
                        .popsection
n00136_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 112;          jmp   n00137_call_byname_α
                        .size            n00136_line_mark_bx, .-n00136_line_mark_bx
                        .type            n00137_call_byname_bx, @function
n00137_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_call_byname_α:     sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd770: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd770]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_2:     mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_options_3:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_769_999
                        add              rsp, 32
                        add              rsp, 48;                             jmp   n00134_line_mark_α
.Lcall_byname_α_769_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00138_assign_var_α
                        .size            n00137_call_byname_bx, .-n00137_call_byname_bx
                        .type            n00138_assign_var_bx, @function
n00138_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # nulltest_var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_options_5:     cmp              al, 104;                             jne   .Lassign_var_α_771_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n00134_line_mark_α
.Lassign_var_α_771_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:33
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_4:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      add              rsp, 96;                             jmp   n00134_line_mark_α
                        .size            n00138_assign_var_bx, .-n00138_assign_var_bx
                        .type            n00134_line_mark_bx, @function
n00134_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 113 0
.Lline_mark_α_772_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_772_stno
                        .long            0
                        .long            113
                        .quad            .Lstnof1
                        .popsection
n00134_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 113;          jmp   n00139_line_mark_α
                        .size            n00134_line_mark_bx, .-n00134_line_mark_bx
                        .type            n00139_line_mark_bx, @function
n00139_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_774_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_774_stno
                        .long            0
                        .long            113
                        .quad            .Lstnof1
                        .popsection
n00139_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 113;          jmp   n00140_call_byname_α
                        .size            n00139_line_mark_bx, .-n00139_line_mark_bx
                        .type            n00140_call_byname_bx, @function
n00140_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_call_byname_α:     sub              rsp, 16
                        .section         .rodata
.Lcall_byname_α_rkfnzd777: .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd777]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_6:     mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_options_7:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_776_999
                        add              rsp, 16;                             jmp   n00141_line_mark_α
.Lcall_byname_α_776_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00142_assign_α
                        .size            n00140_call_byname_bx, .-n00140_call_byname_bx
                        .type            n00142_assign_bx, @function
n00142_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        add              rsp, 16;                             jmp   n00141_line_mark_α
                        .size            n00142_assign_bx, .-n00142_assign_bx
                        .type            n00141_line_mark_bx, @function
n00141_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 114 0
.Lline_mark_α_779_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_779_stno
                        .long            0
                        .long            114
                        .quad            .Lstnof1
                        .popsection
n00141_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 114;          jmp   n00143_make_list_α
                        .size            n00141_line_mark_bx, .-n00141_line_mark_bx
                        .type            n00143_make_list_bx, @function
n00143_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_make_list_α:       sub              rsp, 16
                        xor              edi, edi
                        mov              esi, 0
                        call             rt_make_list@PLT
.Lgcsite_options_9:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_make_list.cpp:36
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_8:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00144_assign_α
                        .size            n00143_make_list_bx, .-n00143_make_list_bx
                        .type            n00144_assign_bx, @function
n00144_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_assign_α:          mov              rax, qword ptr [rsp + 0]             # make_list
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        add              rsp, 16;                             jmp   n00145_line_mark_α
                        .size            n00144_assign_bx, .-n00144_assign_bx
                        .type            n00145_line_mark_bx, @function
n00145_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 115 0
.Lline_mark_α_784_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_784_stno
                        .long            0
                        .long            115
                        .quad            .Lstnof1
                        .popsection
n00145_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 115;          jmp   n00146_bound_α
                        .size            n00145_line_mark_bx, .-n00145_line_mark_bx
                        .type            n00146_bound_bx, @function
n00146_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_bound_α:           sub              rsp, 16
                        mov              qword ptr [rsp + 0], rsp;            jmp   n00147_var_ref_α
n00146_bound_β:           add              rsp, 16
                        add              rsp, -16;                            jmp   n00147_var_ref_α
                        .size            n00146_bound_bx, .-n00146_bound_bx
                        .type            n00147_var_ref_bx, @function
n00147_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 592]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00148_deref_α
                        .size            n00147_var_ref_bx, .-n00147_var_ref_bx
                        .type            n00148_deref_bx, @function
n00148_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_11:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_790_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00149_line_mark_α
.Lderef_α_790_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_10:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00150_line_mark_α
                        .size            n00148_deref_bx, .-n00148_deref_bx
                        .type            n00150_line_mark_bx, @function
n00150_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_791_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_791_stno
                        .long            0
                        .long            115
                        .quad            .Lstnof1
                        .popsection
n00150_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 115;          jmp   n00151_call_byname_α
                        .size            n00150_line_mark_bx, .-n00150_line_mark_bx
                        .type            n00151_call_byname_bx, @function
n00151_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00151_call_byname_α:     sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd794: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd794]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_12:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_options_13:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_793_999
                        add              rsp, 32
                        add              rsp, 48;                             jmp   n00149_line_mark_α
.Lcall_byname_α_793_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00152_assign_α
                        .size            n00151_call_byname_bx, .-n00151_call_byname_bx
                        .type            n00152_assign_bx, @function
n00152_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx;           jmp   n00153_line_mark_α
                        .size            n00152_assign_bx, .-n00152_assign_bx
                        .type            n00153_line_mark_bx, @function
n00153_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_796_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_796_stno
                        .long            0
                        .long            116
                        .quad            .Lstnof1
                        .popsection
n00153_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 116;          jmp   n00154_var_α
                        .size            n00153_line_mark_bx, .-n00153_line_mark_bx
                        .type            n00154_var_bx, @function
n00154_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_var_α:                                                                   jmp   n00155_scan_enter_α
                        .size            n00154_var_bx, .-n00154_var_bx
                        .type            n00155_scan_enter_bx, @function
n00155_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_scan_enter_α:      sub              rsp, 32
                        mov              rcx, 2
                        mov              qword ptr [rsp + 0], rcx
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], r14
                        mov              qword ptr [rsp + 24], r15
                        mov              rax, qword ptr [rbp + 64]
                        cmp              eax, 2;                              jne   .Lscan_enter_α_801_1
                        shr              rax, 32
                        test             eax, eax;                            je    .Lscan_enter_α_801_1
                        cmp              eax, -1;                             je    .Lscan_enter_α_801_1
                        mov              r13, qword ptr [rbp + 72]
                        mov              r15d, eax;                           jmp   .Lscan_enter_α_801_2
.Lscan_enter_α_801_1:   mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              edx, 2
                        call             rt_icn_subject_coerce@PLT
.Lgcsite_options_15:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_options_14:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jne   .Lscan_enter_α_801_999
                        add              rsp, 32
                        add              rsp, -80;                            jmp   n00156_unmark_α
.Lscan_enter_α_801_999: mov              r13, rax
                        mov              r15, rdx
.Lscan_enter_α_801_2:   xor              r14d, r14d;                          jmp   n00157_disjunction_α
                        .size            n00155_scan_enter_bx, .-n00155_scan_enter_bx
                        .type            n00157_disjunction_bx, @function
n00157_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00157_disjunction_α:     mov              qword ptr [rbp + 176], 0
                        mov              qword ptr [rbp + 184], 0
                        mov              dword ptr [rbp + 192], 0
                        mov              qword ptr [rbp + 200], rsp;          jmp   n00158_lit_string_α
.Ldisjunction_γ_601_as: mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_803_0
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 184], rax;          jmp   n00159_scan_α
.Ldisjunction_α_803_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_803_1
                                                                              jmp   n00159_scan_α
.Ldisjunction_α_803_1:                                                        jmp   n00159_scan_α
n00157_disjunction_β:     mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 0;                              je    n00160_disjunction_β
                        add              rsp, 32;                             jmp   n00161_scan_α
.Ldisjunction_γ_601_af:
.Ldisjunction_ω_601_af: add              dword ptr [rbp + 192], 1
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 1;                              je    n00162_line_mark_α
                                                                              jmp   n00161_scan_α
                        .size            n00157_disjunction_bx, .-n00157_disjunction_bx
                        .type            n00159_scan_bx, @function
n00159_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_scan_α:            sub              rsp, 48
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 32], r14d
                        mov              dword ptr [rsp + 20], r15d
                        mov              qword ptr [rsp + 24], r13
                        mov              dword ptr [rsp + 16], 2
                        mov              r13, qword ptr [rsp + 56]
                        mov              r14, qword ptr [rsp + 64]
                        mov              r15, qword ptr [rsp + 72];           jmp   n00156_unmark_α
n00159_scan_β:            mov              qword ptr [rsp + 56], r13
                        mov              qword ptr [rsp + 64], r14
                        mov              qword ptr [rsp + 72], r15
                        mov              r13, qword ptr [rsp + 24]
                        mov              r15d, dword ptr [rsp + 20]
                        mov              r14d, dword ptr [rsp + 32]
                        add              rsp, 48;                             jmp   n00157_disjunction_β
                        .size            n00159_scan_bx, .-n00159_scan_bx
                        .type            n00163_conjunction_bx, @function
n00163_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_conjunction_α:     add              rsp, -112;                           jmp   .Ldisjunction_γ_601_as
n00163_conjunction_β:     add              rsp, -112;                           jmp   n00161_scan_α
                        .size            n00163_conjunction_bx, .-n00163_conjunction_bx
                        .type            n00162_line_mark_bx, @function
n00162_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_807_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_807_stno
                        .long            0
                        .long            136
                        .quad            .Lstnof1
                        .popsection
n00162_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 136;          jmp   n00164_var_ref_α
n00162_line_mark_β:                                                             jmp   n00164_var_ref_α
                        .size            n00162_line_mark_bx, .-n00162_line_mark_bx
                        .type            n00164_var_ref_bx, @function
n00164_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00164_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 32]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00165_var_ref_α
                        .size            n00164_var_ref_bx, .-n00164_var_ref_bx
                        .type            n00165_var_ref_bx, @function
n00165_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 64]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00166_deref_α
                        .size            n00165_var_ref_bx, .-n00165_var_ref_bx
                        .type            n00166_deref_bx, @function
n00166_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00166_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_options_17:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_813_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00161_scan_α
.Lderef_α_813_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_16:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00167_deref_α
                        .size            n00166_deref_bx, .-n00166_deref_bx
                        .type            n00167_deref_bx, @function
n00167_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00167_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_options_19:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_814_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00161_scan_α
.Lderef_α_814_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_18:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00168_line_mark_α
                        .size            n00167_deref_bx, .-n00167_deref_bx
                        .type            n00168_line_mark_bx, @function
n00168_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_815_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_815_stno
                        .long            0
                        .long            136
                        .quad            .Lstnof1
                        .popsection
n00168_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 136;          jmp   n00169_call_byname_α
                        .size            n00168_line_mark_bx, .-n00168_line_mark_bx
                        .type            n00169_call_byname_bx, @function
n00169_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_call_byname_α:     sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd818: .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd818]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 196758
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_20:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_options_21:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_817_999
                        add              rsp, 48
                        add              rsp, 64;                             jmp   n00161_scan_α
.Lcall_byname_α_817_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 184], rax
                        add              rsp, 112;                            jmp   .Ldisjunction_γ_601_as
n00169_call_byname_β:     add              rsp, 48
                        add              rsp, 64;                             jmp   n00161_scan_α
                        .size            n00169_call_byname_bx, .-n00169_call_byname_bx
                        .type            n00158_lit_string_bx, @function
n00158_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_819_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00170_scan_match_α
n00158_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_601_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_819_0: .quad .Llit_string_α_819_0_s; .popsection
.Llit_string_α_819_0_s: .string          "-"
                        .size            n00158_lit_string_bx, .-n00158_lit_string_bx
                        .type            n00170_scan_match_bx, @function
n00170_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00170_scan_match_α:      sub              rsp, 32
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jge   .Lscan_match_α_821_998
                        add              rsp, 32;                             jmp   n00158_lit_string_β
.Lscan_match_α_821_998: mov              rsi, qword ptr [rip + .Lscan_match_α_821_0]
                        mov              rdi, r13
                        add              rdi, r14
                        xor              rcx, rcx
.Lscan_match_α_821_3:   cmp              rcx, 1;                              jge   .Lscan_match_α_821_4
                        movzx            r10d, byte ptr [rsi + rcx]
                        movzx            r11d, byte ptr [rdi + rcx]
                        cmp              r10d, r11d;                          je    .Lscan_match_α_821_999
                        add              rsp, 32;                             jmp   n00158_lit_string_β
.Lscan_match_α_821_999: inc              rcx;                                 jmp   .Lscan_match_α_821_3
.Lscan_match_α_821_4:   mov              qword ptr [rsp + 0], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 8], rax;            jmp   n00171_scan_tab_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lscan_match_α_821_0: .quad .Lscan_match_α_821_0_s; .popsection
.Lscan_match_α_821_0_s: .string          "-"
                        .size            n00170_scan_match_bx, .-n00170_scan_match_bx
                        .type            n00171_scan_tab_bx, @function
n00171_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_scan_tab_α:        sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_options_25:    test             eax, eax;                            jne   .Lscan_tab_α_823_997
                        add              rsp, 32
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_601_af
.Lscan_tab_α_823_997:   push             rax
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
.Lgcsite_options_24:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rsp + 32]            # lo
                        mov              rsi, qword ptr [rsp + 40]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_options_23:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_options_22:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_823_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_823_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_823_998
                        add              rsp, 32
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_601_af
.Lscan_tab_α_823_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_823_999
                        add              rsp, 32
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_601_af
.Lscan_tab_α_823_999:   mov              qword ptr [rsp + 16], r14
                        mov              rcx, rax
                        sub              rcx, 1
                        mov              rdx, r14
                        mov              r14, rcx
                        sub              rdx, rcx;                            jge   .Lscan_tab_α_823_1
                        add              rcx, rdx
                        neg              rdx
.Lscan_tab_α_823_1:     lea              rsi, [r13 + rcx]
                        test             rdx, rdx;                            jnz   .Lscan_tab_α_823_2
                        lea              rsi, [rip + .S0]
.Lscan_tab_α_823_2:     shl              rdx, 32
                        or               rdx, 2
                        mov              qword ptr [rsp + 0], rdx
                        mov              qword ptr [rsp + 8], rsi;            jmp   n00172_lit_integer_α
n00171_scan_tab_β:        mov              r14, qword ptr [rsp + 16]
                        add              rsp, 32
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_601_af
                        .size            n00171_scan_tab_bx, .-n00171_scan_tab_bx
                        .type            n00172_lit_integer_bx, @function
n00172_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_824_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00173_line_mark_α
.Llit_integer_α_824_0:  .quad            0
                        .size            n00172_lit_integer_bx, .-n00172_lit_integer_bx
                        .type            n00173_line_mark_bx, @function
n00173_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_825_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_825_stno
                        .long            0
                        .long            117
                        .quad            .Lstnof1
                        .popsection
n00173_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 117;          jmp   n00174_scan_pos_α
                        .size            n00173_line_mark_bx, .-n00173_line_mark_bx
                        .type            n00174_scan_pos_bx, @function
n00174_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00174_scan_pos_α:        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_828_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_828_0:     cmp              rax, 1;                              jge   .Lscan_pos_α_828_997
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00175_var_α
.Lscan_pos_α_828_997:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_pos_α_828_998
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00175_var_α
.Lscan_pos_α_828_998:   mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            je    .Lscan_pos_α_828_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00175_var_α
.Lscan_pos_α_828_999:   mov              qword ptr [rsp + 0], 3
                        mov              qword ptr [rsp + 8], rax
                        add              rsp, 32;                             jmp   n00171_scan_tab_β
                        .size            n00174_scan_pos_bx, .-n00174_scan_pos_bx
                        .type            n00175_var_bx, @function
n00175_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_var_α:             sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   n00176_conjunction_α
                        .size            n00175_var_bx, .-n00175_var_bx
                        .type            n00176_conjunction_bx, @function
n00176_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_conjunction_α:                                                           jmp   n00177_line_mark_α
n00176_conjunction_β:                                                           jmp   .Ldisjunction_ω_601_af
                        .size            n00176_conjunction_bx, .-n00176_conjunction_bx
                        .type            n00177_line_mark_bx, @function
n00177_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_831_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_831_stno
                        .long            0
                        .long            118
                        .quad            .Lstnof1
                        .popsection
n00177_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 118;          jmp   n00178_line_mark_α
                        .size            n00177_line_mark_bx, .-n00177_line_mark_bx
                        .type            n00178_line_mark_bx, @function
n00178_line_mark_bx:
#=======================================================================================================================
# nstmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 118 0
.Lline_mark_α_833_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_833_stno
                        .long            0
                        .long            118
                        .quad            .Lstnof1
                        .popsection
n00178_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 118;          jmp   n00179_disjunction_α
                        .size            n00178_line_mark_bx, .-n00178_line_mark_bx
                        .type            n00179_disjunction_bx, @function
n00179_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_disjunction_α:     sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n00180_lit_string_α
.Ldisjunction_γ_621_as: mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_836_0
                        add              rsp, 32;                             jmp   n00181_line_mark_α
.Ldisjunction_α_836_0:  add              rsp, 32;                             jmp   n00181_line_mark_α
n00179_disjunction_β:     mov              eax, dword ptr [rsp + 16]
                        add              rsp, 32;                             jmp   n00181_line_mark_α
.Ldisjunction_γ_621_af:
.Ldisjunction_ω_621_af: add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        add              rsp, 32;                             jmp   n00181_line_mark_α
                        .size            n00179_disjunction_bx, .-n00179_disjunction_bx
                        .type            n00181_line_mark_bx, @function
n00181_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 119 0
.Lline_mark_α_837_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_837_stno
                        .long            0
                        .long            119
                        .quad            .Lstnof1
                        .popsection
n00181_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 119;          jmp   n00182_bound_α
                        .size            n00181_line_mark_bx, .-n00181_line_mark_bx
                        .type            n00182_bound_bx, @function
n00182_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_bound_α:           sub              rsp, 16
                        mov              qword ptr [rsp + 0], rsp;            jmp   n00183_lit_integer_α
n00182_bound_β:           add              rsp, 16
                        add              rsp, -16;                            jmp   n00183_lit_integer_α
                        .size            n00182_bound_bx, .-n00182_bound_bx
                        .type            n00183_lit_integer_bx, @function
n00183_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_841_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00184_line_mark_α
.Llit_integer_α_841_0:  .quad            1
                        .size            n00183_lit_integer_bx, .-n00183_lit_integer_bx
                        .type            n00184_line_mark_bx, @function
n00184_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_842_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_842_stno
                        .long            0
                        .long            119
                        .quad            .Lstnof1
                        .popsection
n00184_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 119;          jmp   n00185_scan_move_α
                        .size            n00184_line_mark_bx, .-n00184_line_mark_bx
                        .type            n00185_scan_move_bx, @function
n00185_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_scan_move_α:       sub              rsp, 32
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jge   .Lscan_move_α_845_998
                        add              rsp, 32
                        add              rsp, 128;                            jmp   n00161_scan_α
.Lscan_move_α_845_998:  mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_move_α_845_999
                        add              rsp, 32
                        add              rsp, 128;                            jmp   n00161_scan_α
.Lscan_move_α_845_999:  mov              qword ptr [rsp + 16], r14
                        mov              rcx, rax
                        sub              rcx, 1
                        mov              rdx, r14
                        mov              r14, rcx
                        sub              rdx, rcx;                            jge   .Lscan_move_α_845_1
                        add              rcx, rdx
                        neg              rdx
.Lscan_move_α_845_1:    lea              rsi, [r13 + rcx]
                        test             rdx, rdx;                            jnz   .Lscan_move_α_845_2
                        lea              rsi, [rip + .S0]
.Lscan_move_α_845_2:    shl              rdx, 32
                        or               rdx, 2
                        mov              qword ptr [rsp + 0], rdx
                        mov              qword ptr [rsp + 8], rsi;            jmp   n00186_assign_α
n00185_scan_move_β:       mov              r14, qword ptr [rsp + 16]
                        add              rsp, 32
                        add              rsp, 128;                            jmp   n00161_scan_α
                        .size            n00185_scan_move_bx, .-n00185_scan_move_bx
                        .type            n00186_assign_bx, @function
n00186_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_assign_α:          mov              rax, qword ptr [rsp + 0]             # scan_move
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00187_line_mark_α
                        .size            n00186_assign_bx, .-n00186_assign_bx
                        .type            n00187_line_mark_bx, @function
n00187_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_847_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_847_stno
                        .long            0
                        .long            120
                        .quad            .Lstnof1
                        .popsection
n00187_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 120;          jmp   n00160_disjunction_α
                        .size            n00187_line_mark_bx, .-n00187_line_mark_bx
                        .type            n00160_disjunction_bx, @function
n00160_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00160_disjunction_α:     mov              qword ptr [rbp + 208], 0
                        mov              qword ptr [rbp + 216], 0
                        mov              dword ptr [rbp + 224], 0
                        mov              qword ptr [rbp + 232], rsp;          jmp   n00188_var_α
.Ldisjunction_γ_629_as: mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_850_0
                                                                              jmp   n00189_unmark_α
.Ldisjunction_α_850_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_850_1
                                                                              jmp   n00189_unmark_α
.Ldisjunction_α_850_1:                                                        jmp   n00189_unmark_α
n00160_disjunction_β:     mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0;                              je    n00190_disjunction_β
                                                                              jmp   n00189_unmark_α
.Ldisjunction_γ_629_af:
.Ldisjunction_ω_629_af: add              dword ptr [rbp + 224], 1
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 1;                              je    n00191_line_mark_α
                                                                              jmp   n00189_unmark_α
                        .size            n00160_disjunction_bx, .-n00160_disjunction_bx
                        .type            n00191_line_mark_bx, @function
n00191_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_851_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_851_stno
                        .long            0
                        .long            134
                        .quad            .Lstnof1
                        .popsection
n00191_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 134;          jmp   n00192_lit_string_α
n00191_line_mark_β:                                                             jmp   n00192_lit_string_α
                        .size            n00191_line_mark_bx, .-n00191_line_mark_bx
                        .type            n00192_lit_string_bx, @function
n00192_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_853_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00193_var_ref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_853_0: .quad .Llit_string_α_853_0_s; .popsection
.Llit_string_α_853_0_s: .string          "Unrecognized option: -"
                        .size            n00192_lit_string_bx, .-n00192_lit_string_bx
                        .type            n00193_var_ref_bx, @function
n00193_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 80]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00194_deref_α
                        .size            n00193_var_ref_bx, .-n00193_var_ref_bx
                        .type            n00194_deref_bx, @function
n00194_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_27:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_856_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00189_unmark_α
.Lderef_α_856_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_26:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00195_line_mark_α
                        .size            n00194_deref_bx, .-n00194_deref_bx
                        .type            n00195_line_mark_bx, @function
n00195_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_857_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_857_stno
                        .long            0
                        .long            134
                        .quad            .Lstnof1
                        .popsection
n00195_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 134;          jmp   n00196_call_byname_α
                        .size            n00195_line_mark_bx, .-n00195_line_mark_bx
                        .type            n00196_call_byname_bx, @function
n00196_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_call_byname_α:     sub              rsp, 48
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd860: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd860]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_28:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_options_29:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_859_999
                        add              rsp, 48
                        add              rsp, 48;                             jmp   n00189_unmark_α
.Lcall_byname_α_859_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 216], rax
                        add              rsp, 96;                             jmp   .Ldisjunction_γ_629_as
n00196_call_byname_β:     add              rsp, 48
                        add              rsp, 48;                             jmp   n00189_unmark_α
                        .size            n00196_call_byname_bx, .-n00196_call_byname_bx
                        .type            n00188_var_bx, @function
n00188_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_var_α:                                                                   jmp   n00197_assign_α
n00188_var_β:                                                                   jmp   .Ldisjunction_ω_629_af
                        .size            n00188_var_bx, .-n00188_var_bx
                        .type            n00197_assign_bx, @function
n00197_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_assign_α:          mov              rax, qword ptr [rbp + 80]            # var
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n00198_var_α
n00197_assign_β:                                                                jmp   n00188_var_β
                        .size            n00197_assign_bx, .-n00197_assign_bx
                        .type            n00198_var_bx, @function
n00198_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_var_α:                                                                   jmp   n00199_var_α
n00198_var_β:                                                                   jmp   n00197_assign_β
                        .size            n00198_var_bx, .-n00198_var_bx
                        .type            n00199_var_bx, @function
n00199_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_var_α:             sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   n00200_var_α
n00199_var_β:             add              rsp, 16;                             jmp   n00198_var_β
                        .size            n00199_var_bx, .-n00199_var_bx
                        .type            n00200_var_bx, @function
n00200_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00200_var_α:             sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   n00201_scan_enter_α
n00200_var_β:             add              rsp, 16;                             jmp   n00199_var_β
                        .size            n00200_var_bx, .-n00200_var_bx
                        .type            n00201_scan_enter_bx, @function
n00201_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_scan_enter_α:      sub              rsp, 32
                        mov              rcx, 2
                        mov              qword ptr [rsp + 0], rcx
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], r14
                        mov              qword ptr [rsp + 24], r15
                        mov              rax, qword ptr [rbp + 608]
                        cmp              al, 0;                               je    .Lscan_enter_α_869_50
                        mov              rax, qword ptr [rbp + 608]
                        cmp              eax, 2;                              jne   .Lscan_enter_α_869_1
                        shr              rax, 32
                        test             eax, eax;                            je    .Lscan_enter_α_869_1
                        cmp              eax, -1;                             je    .Lscan_enter_α_869_1
                        mov              r13, qword ptr [rbp + 616]
                        mov              r15d, eax;                           jmp   .Lscan_enter_α_869_2
.Lscan_enter_α_869_1:   mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              edx, 2
                        call             rt_icn_subject_coerce@PLT
.Lgcsite_options_35:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_options_34:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jne   .Lscan_enter_α_869_999
                        add              rsp, 32;                             jmp   n00200_var_β
.Lscan_enter_α_869_999: mov              r13, rax
                        mov              r15, rdx
.Lscan_enter_α_869_2:   xor              r14d, r14d
.Lscan_enter_α_869_50:  mov              rcx, r15
                        add              rcx, 1
                        mov              rax, qword ptr [rsp + 48]
                        cmp              al, 0;                               jne   .Lscan_enter_α_869_30
                        mov              rax, 1
                        mov              rdx, qword ptr [rbp + 608]
                        cmp              dl, 0;                               jne   .Lscan_enter_α_869_38
                        mov              rax, qword ptr [rsp + 16]
                        add              rax, 1
.Lscan_enter_α_869_38:                                                        jmp   .Lscan_enter_α_869_32
.Lscan_enter_α_869_30:  cmp              al, 3;                               jne   .Lscan_enter_α_869_31
                        mov              rax, qword ptr [rsp + 56];           jmp   .Lscan_enter_α_869_33
.Lscan_enter_α_869_31:  mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        call             rt_icn_window_pos@PLT
.Lgcsite_options_33:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax                                  # gc_poll x86_icn.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_32:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      test             rdx, rdx;                            je    .Lscan_enter_α_869_35
                        mov              rcx, r15
                        add              rcx, 1
.Lscan_enter_α_869_33:  test             rax, rax;                            jg    .Lscan_enter_α_869_34
                        add              rax, rcx
.Lscan_enter_α_869_34:  cmp              rax, 1;                              jl    .Lscan_enter_α_869_35
                        cmp              rax, rcx;                            jg    .Lscan_enter_α_869_35
.Lscan_enter_α_869_32:  mov              r14, rax
                        mov              rcx, r15
                        add              rcx, 1
                        mov              rax, qword ptr [rsp + 32]
                        cmp              al, 0;                               jne   .Lscan_enter_α_869_40
                        mov              rax, rcx;                            jmp   .Lscan_enter_α_869_42
.Lscan_enter_α_869_40:  cmp              al, 3;                               jne   .Lscan_enter_α_869_41
                        mov              rax, qword ptr [rsp + 40];           jmp   .Lscan_enter_α_869_43
.Lscan_enter_α_869_41:  mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        call             rt_icn_window_pos@PLT
.Lgcsite_options_31:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax                                  # gc_poll x86_icn.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_30:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      test             rdx, rdx;                            je    .Lscan_enter_α_869_35
                        mov              rcx, r15
                        add              rcx, 1
.Lscan_enter_α_869_43:  test             rax, rax;                            jg    .Lscan_enter_α_869_44
                        add              rax, rcx
.Lscan_enter_α_869_44:  cmp              rax, 1;                              jl    .Lscan_enter_α_869_35
                        cmp              rax, rcx;                            jg    .Lscan_enter_α_869_35
.Lscan_enter_α_869_42:  mov              rdx, rax
                        mov              rax, r14
                        cmp              rax, rdx;                            jle   .Lscan_enter_α_869_36
                        mov              rcx, rax
                        mov              rax, rdx
                        mov              rdx, rcx
.Lscan_enter_α_869_36:  sub              rax, 1
                        mov              r14, rax
                        sub              rdx, 1
                        mov              r15, rdx;                            jmp   .Lscan_enter_α_869_37
.Lscan_enter_α_869_35:  mov              r13, qword ptr [rsp + 8]
                        mov              r14, qword ptr [rsp + 16]
                        mov              r15, qword ptr [rsp + 24]
                        add              rsp, 32;                             jmp   n00200_var_β
.Lscan_enter_α_869_37:                                                        jmp   n00202_var_ref_α
                        .size            n00201_scan_enter_bx, .-n00201_scan_enter_bx
                        .type            n00202_var_ref_bx, @function
n00202_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 160]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00203_deref_α
                        .size            n00202_var_ref_bx, .-n00202_var_ref_bx
                        .type            n00203_deref_bx, @function
n00203_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_37:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_872_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00204_scan_α
.Lderef_α_872_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_36:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00205_line_mark_α
                        .size            n00203_deref_bx, .-n00203_deref_bx
                        .type            n00205_line_mark_bx, @function
n00205_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_873_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_873_stno
                        .long            0
                        .long            120
                        .quad            .Lstnof1
                        .popsection
n00205_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 120;          jmp   n00206_scan_find_α
                        .size            n00205_line_mark_bx, .-n00205_line_mark_bx
                        .type            n00206_scan_find_bx, @function
n00206_scan_find_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00206_scan_find_α:       sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        cmp              al, 2;                               je    .Lscan_find_α_876_2
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              edx, 103
                        sub              rsp, 8
                        call             core_icn_argtype_check@PLT
.Lgcsite_options_41:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        add              rsp, 8
                        test             eax, eax;                            je    .Lscan_find_α_876_998
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n00204_scan_α
.Lscan_find_α_876_998:  push             rax
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
.Lgcsite_options_40:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:
.Lscan_find_α_876_2:    mov              qword ptr [rsp + 16], r14
.Lscan_find_α_876_7:    mov              rdx, qword ptr [rsp + 32]
                        cmp              dl, 2;                               jne   .Lscan_find_α_876_5
                        shr              rdx, 32
                        cmp              edx, -1;                             je    .Lscan_find_α_876_5
                        mov              rsi, qword ptr [rsp + 40];           jmp   .Lscan_find_α_876_0
.Lscan_find_α_876_5:    mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        sub              rsp, 8
                        call             rt_icn_needle_coerce@PLT
.Lgcsite_options_39:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        mov              dword ptr [rsp + 16], 2
                        mov              dword ptr [rsp + 20], edx
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_38:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              rax, qword ptr [rsp + 24]
                        mov              edx, dword ptr [rsp + 20]
                        add              rsp, 32
1:                      mov              rsi, rax
.Lscan_find_α_876_0:    mov              rax, qword ptr [rsp + 16]
                        mov              rcx, r15
                        sub              rcx, rdx
                        cmp              rax, rcx;                            jle   .Lscan_find_α_876_999
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n00204_scan_α
.Lscan_find_α_876_999:  mov              rdi, r13
                        add              rdi, rax
                        xor              rcx, rcx
.Lscan_find_α_876_3:    cmp              rcx, rdx;                            jge   .Lscan_find_α_876_4
                        movzx            r10d, byte ptr [rsi + rcx]
                        movzx            r11d, byte ptr [rdi + rcx]
                        cmp              r10d, r11d;                          jne   .Lscan_find_α_876_1
                        inc              rcx;                                 jmp   .Lscan_find_α_876_3
.Lscan_find_α_876_4:    mov              qword ptr [rsp + 0], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 8], rax;            jmp   n00207_scan_α
.Lscan_find_α_876_1:    inc              qword ptr [rsp + 16];                jmp   .Lscan_find_α_876_0
n00206_scan_find_β:       inc              qword ptr [rsp + 16];                jmp   .Lscan_find_α_876_7
                        .size            n00206_scan_find_bx, .-n00206_scan_find_bx
                        .type            n00207_scan_bx, @function
n00207_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_scan_α:            sub              rsp, 48
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 32], r14d
                        mov              dword ptr [rsp + 20], r15d
                        mov              qword ptr [rsp + 24], r13
                        mov              dword ptr [rsp + 16], 2
                        mov              r13, qword ptr [rsp + 120]
                        mov              r14, qword ptr [rsp + 128]
                        mov              r15, qword ptr [rsp + 136];          jmp   n00208_conjunction_α
n00207_scan_β:            mov              qword ptr [rsp + 120], r13
                        mov              qword ptr [rsp + 128], r14
                        mov              qword ptr [rsp + 136], r15
                        mov              r13, qword ptr [rsp + 24]
                        mov              r15d, dword ptr [rsp + 20]
                        mov              r14d, dword ptr [rsp + 32]
                        add              rsp, 48;                             jmp   n00206_scan_find_β
                        .size            n00207_scan_bx, .-n00207_scan_bx
                        .type            n00208_conjunction_bx, @function
n00208_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_conjunction_α:                                                           jmp   n00209_lit_integer_α
n00208_conjunction_β:                                                           jmp   .Ldisjunction_ω_629_af
                        .size            n00208_conjunction_bx, .-n00208_conjunction_bx
                        .type            n00209_lit_integer_bx, @function
n00209_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_880_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00210_coerce_numeric_α
.Llit_integer_α_880_0:  .quad            1
                        .size            n00209_lit_integer_bx, .-n00209_lit_integer_bx
                        .type            n00210_coerce_numeric_bx, @function
n00210_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # scan
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_882_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_882_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_882_0
.Lcoerce_numeric_α_882_1:
                        mov              rax, qword ptr [rsp + 32]            # scan
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # scan
                        mov              qword ptr [rsp + 8], rax;            jmp   n00211_binop_α
.Lcoerce_numeric_α_882_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_options_43:    push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_42:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_882_999
                        add              rsp, 16
                        add              rsp, 192;                            jmp   .Ldisjunction_ω_629_af
.Lcoerce_numeric_α_882_999:
                                                                              jmp   n00211_binop_α
n00210_coerce_numeric_β:  add              rsp, 16
                        add              rsp, 192;                            jmp   .Ldisjunction_ω_629_af
                        .size            n00210_coerce_numeric_bx, .-n00210_coerce_numeric_bx
                        .type            n00211_binop_bx, @function
n00211_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rax, qword ptr [rsp + 24]
                        cmp              cl, 3;                               jne   .Lbinop_α_883_2
                        add              rax, 1;                              jo    .Lbinop_α_883_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_883_7
.Lbinop_α_883_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_883_0
                        mov              rsi, qword ptr [rsp + 24]            # coerce_numeric
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_883_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_883_4
.Lbinop_α_883_3:        movq             xmm0, rsi
.Lbinop_α_883_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_883_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_883_7:                                                              jmp   n00212_assign_α
.Lbinop_α_883_0:        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        call             rt_add_big@PLT
.Lgcsite_options_45:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_883_999
                        add              rsp, 16;                             jmp   n00210_coerce_numeric_β
.Lbinop_α_883_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_44:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00212_assign_α
n00211_binop_β:           add              rsp, 16;                             jmp   n00210_coerce_numeric_β
                        .size            n00211_binop_bx, .-n00211_binop_bx
                        .type            n00212_assign_bx, @function
n00212_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n00213_line_mark_α
                        .size            n00212_assign_bx, .-n00212_assign_bx
                        .type            n00213_line_mark_bx, @function
n00213_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_885_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_885_stno
                        .long            0
                        .long            121
                        .quad            .Lstnof1
                        .popsection
n00213_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 121;          jmp   n00214_var_ref_α
                        .size            n00213_line_mark_bx, .-n00213_line_mark_bx
                        .type            n00214_var_ref_bx, @function
n00214_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 16]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00215_var_α
                        .size            n00214_var_ref_bx, .-n00214_var_ref_bx
                        .type            n00215_var_bx, @function
n00215_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_var_α:                                                                   jmp   n00216_subscript_α
                        .size            n00215_var_bx, .-n00215_var_bx
                        .type            n00216_subscript_bx, @function
n00216_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rbp + 80]            # var
                        mov              rcx, qword ptr [rbp + 88]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_options_47:    cmp              al, 104;                             jne   .Lsubscript_α_891_999
                        add              rsp, 16
                        add              rsp, 240;                            jmp   n00189_unmark_α
.Lsubscript_α_891_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:83
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_46:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00190_disjunction_α
                        .size            n00216_subscript_bx, .-n00216_subscript_bx
                        .type            n00190_disjunction_bx, @function
n00190_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_disjunction_α:     mov              qword ptr [rbp + 240], 0
                        mov              qword ptr [rbp + 248], 0
                        mov              dword ptr [rbp + 256], 0
                        mov              qword ptr [rbp + 264], rsp;          jmp   n00217_lit_charset_α
.Ldisjunction_γ_656_as: mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_893_0
                                                                              jmp   n00218_assign_var_α
.Ldisjunction_α_893_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_893_1
                                                                              jmp   n00218_assign_var_α
.Ldisjunction_α_893_1:                                                        jmp   n00218_assign_var_α
n00190_disjunction_β:     mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 0;                              je    n00219_disjunction_β
                        add              rsp, 272;                            jmp   n00189_unmark_α
.Ldisjunction_γ_656_af:
.Ldisjunction_ω_656_af: add              dword ptr [rbp + 256], 1
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 1;                              je    n00220_lit_integer_α
                        add              rsp, 256;                            jmp   n00189_unmark_α
                        .size            n00190_disjunction_bx, .-n00190_disjunction_bx
                        .type            n00218_assign_var_bx, @function
n00218_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rbp + 240]           # disjunction
                        mov              rcx, qword ptr [rbp + 248]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_options_49:    cmp              al, 104;                             jne   .Lassign_var_α_894_999
                        add              rsp, 16
                        add              rsp, 256;                            jmp   n00189_unmark_α
.Lassign_var_α_894_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:33
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_48:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 216], rax;          jmp   .Ldisjunction_γ_629_as
n00218_assign_var_β:      add              rsp, 16
                        add              rsp, 256;                            jmp   n00189_unmark_α
                        .size            n00218_assign_var_bx, .-n00218_assign_var_bx
                        .type            n00220_lit_integer_bx, @function
n00220_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_895_0]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 248], rax
                        add              rsp, 16;                             jmp   .Ldisjunction_γ_656_as
n00220_lit_integer_β:     add              rsp, 16
                        add              rsp, 256;                            jmp   n00189_unmark_α
.Llit_integer_α_895_0:  .quad            1
                        .size            n00220_lit_integer_bx, .-n00220_lit_integer_bx
                        .type            n00217_lit_charset_bx, @function
n00217_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_lit_charset_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4294967295
                        mov              rax, qword ptr [rip + .Llit_charset_α_896_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00221_assign_α
n00217_lit_charset_β:     add              rsp, 16;                             jmp   .Ldisjunction_ω_656_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_charset_α_896_0: .quad .Llit_charset_α_896_0_s; .popsection
                        .quad            14260561861161254915
                        .quad            288309540988911616
                        .quad            0
                        .quad            0
                        .quad            0
.Llit_charset_α_896_0_s:
                        .string          "+.:"
                        .size            n00217_lit_charset_bx, .-n00217_lit_charset_bx
                        .type            n00221_assign_bx, @function
n00221_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_charset
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n00222_var_ref_α
n00221_assign_β:          add              rsp, 16;                             jmp   .Ldisjunction_ω_656_af
                        .size            n00221_assign_bx, .-n00221_assign_bx
                        .type            n00222_var_ref_bx, @function
n00222_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 608]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00223_var_α
n00222_var_ref_β:         add              rsp, 16;                             jmp   n00221_assign_β
                        .size            n00222_var_ref_bx, .-n00222_var_ref_bx
                        .type            n00223_var_bx, @function
n00223_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_var_α:                                                                   jmp   n00224_subscript_α
n00223_var_β:                                                                   jmp   n00222_var_ref_β
                        .size            n00223_var_bx, .-n00223_var_bx
                        .type            n00224_subscript_bx, @function
n00224_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_subscript_α:       sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_902_1:    mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rbp + 144]           # var
                        mov              rcx, qword ptr [rbp + 152]
                        test             eax, eax;                            jne   .Lsubscript_α_902_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_options_53:    cmp              al, 255;                             jne   .Lsubscript_α_902_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_902_1
.Lsubscript_α_902_4:    push             rax
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
.Lgcsite_options_52:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_902_3
.Lsubscript_α_902_2:    call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_options_51:    push             rax
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
.Lgcsite_options_50:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_902_3:    cmp              al, 104;                             jne   .Lsubscript_α_902_999
                        add              rsp, 16;                             jmp   n00223_var_β
.Lsubscript_α_902_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00225_deref_α
                        .size            n00224_subscript_bx, .-n00224_subscript_bx
                        .type            n00225_deref_bx, @function
n00225_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_55:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_903_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_656_af
.Lderef_α_903_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_54:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00226_assign_α
n00225_deref_β:           add              rsp, 16
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_656_af
                        .size            n00225_deref_bx, .-n00225_deref_bx
                        .type            n00226_assign_bx, @function
n00226_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00227_var_α
n00226_assign_β:                                                                jmp   n00225_deref_β
                        .size            n00226_assign_bx, .-n00226_assign_bx
                        .type            n00227_var_bx, @function
n00227_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_var_α:             sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   n00228_var_α
n00227_var_β:             add              rsp, 16;                             jmp   n00226_assign_β
                        .size            n00227_var_bx, .-n00227_var_bx
                        .type            n00228_var_bx, @function
n00228_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00228_var_α:             sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   n00229_scan_enter_α
n00228_var_β:             add              rsp, 16;                             jmp   n00227_var_β
                        .size            n00228_var_bx, .-n00228_var_bx
                        .type            n00229_scan_enter_bx, @function
n00229_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_scan_enter_α:      sub              rsp, 32
                        mov              rcx, 2
                        mov              qword ptr [rsp + 0], rcx
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], r14
                        mov              qword ptr [rsp + 24], r15
                        mov              rax, qword ptr [rbp + 96]
                        cmp              al, 0;                               je    .Lscan_enter_α_908_50
                        mov              rax, qword ptr [rbp + 96]
                        cmp              eax, 2;                              jne   .Lscan_enter_α_908_1
                        shr              rax, 32
                        test             eax, eax;                            je    .Lscan_enter_α_908_1
                        cmp              eax, -1;                             je    .Lscan_enter_α_908_1
                        mov              r13, qword ptr [rbp + 104]
                        mov              r15d, eax;                           jmp   .Lscan_enter_α_908_2
.Lscan_enter_α_908_1:   mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              edx, 2
                        call             rt_icn_subject_coerce@PLT
.Lgcsite_options_61:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_options_60:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jne   .Lscan_enter_α_908_999
                        add              rsp, 32;                             jmp   n00228_var_β
.Lscan_enter_α_908_999: mov              r13, rax
                        mov              r15, rdx
.Lscan_enter_α_908_2:   xor              r14d, r14d
.Lscan_enter_α_908_50:  mov              rcx, r15
                        add              rcx, 1
                        mov              rax, qword ptr [rsp + 48]
                        cmp              al, 0;                               jne   .Lscan_enter_α_908_30
                        mov              rax, 1
                        mov              rdx, qword ptr [rbp + 96]
                        cmp              dl, 0;                               jne   .Lscan_enter_α_908_38
                        mov              rax, qword ptr [rsp + 16]
                        add              rax, 1
.Lscan_enter_α_908_38:                                                        jmp   .Lscan_enter_α_908_32
.Lscan_enter_α_908_30:  cmp              al, 3;                               jne   .Lscan_enter_α_908_31
                        mov              rax, qword ptr [rsp + 56];           jmp   .Lscan_enter_α_908_33
.Lscan_enter_α_908_31:  mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        call             rt_icn_window_pos@PLT
.Lgcsite_options_59:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax                                  # gc_poll x86_icn.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_58:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      test             rdx, rdx;                            je    .Lscan_enter_α_908_35
                        mov              rcx, r15
                        add              rcx, 1
.Lscan_enter_α_908_33:  test             rax, rax;                            jg    .Lscan_enter_α_908_34
                        add              rax, rcx
.Lscan_enter_α_908_34:  cmp              rax, 1;                              jl    .Lscan_enter_α_908_35
                        cmp              rax, rcx;                            jg    .Lscan_enter_α_908_35
.Lscan_enter_α_908_32:  mov              r14, rax
                        mov              rcx, r15
                        add              rcx, 1
                        mov              rax, qword ptr [rsp + 32]
                        cmp              al, 0;                               jne   .Lscan_enter_α_908_40
                        mov              rax, rcx;                            jmp   .Lscan_enter_α_908_42
.Lscan_enter_α_908_40:  cmp              al, 3;                               jne   .Lscan_enter_α_908_41
                        mov              rax, qword ptr [rsp + 40];           jmp   .Lscan_enter_α_908_43
.Lscan_enter_α_908_41:  mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        call             rt_icn_window_pos@PLT
.Lgcsite_options_57:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax                                  # gc_poll x86_icn.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_56:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      test             rdx, rdx;                            je    .Lscan_enter_α_908_35
                        mov              rcx, r15
                        add              rcx, 1
.Lscan_enter_α_908_43:  test             rax, rax;                            jg    .Lscan_enter_α_908_44
                        add              rax, rcx
.Lscan_enter_α_908_44:  cmp              rax, 1;                              jl    .Lscan_enter_α_908_35
                        cmp              rax, rcx;                            jg    .Lscan_enter_α_908_35
.Lscan_enter_α_908_42:  mov              rdx, rax
                        mov              rax, r14
                        cmp              rax, rdx;                            jle   .Lscan_enter_α_908_36
                        mov              rcx, rax
                        mov              rax, rdx
                        mov              rdx, rcx
.Lscan_enter_α_908_36:  sub              rax, 1
                        mov              r14, rax
                        sub              rdx, 1
                        mov              r15, rdx;                            jmp   .Lscan_enter_α_908_37
.Lscan_enter_α_908_35:  mov              r13, qword ptr [rsp + 8]
                        mov              r14, qword ptr [rsp + 16]
                        mov              r15, qword ptr [rsp + 24]
                        add              rsp, 32;                             jmp   n00228_var_β
.Lscan_enter_α_908_37:                                                        jmp   n00230_var_ref_α
                        .size            n00229_scan_enter_bx, .-n00229_scan_enter_bx
                        .type            n00230_var_ref_bx, @function
n00230_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 128]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00231_deref_α
                        .size            n00230_var_ref_bx, .-n00230_var_ref_bx
                        .type            n00231_deref_bx, @function
n00231_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00231_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_63:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_911_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00232_scan_α
.Lderef_α_911_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_62:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00233_line_mark_α
                        .size            n00231_deref_bx, .-n00231_deref_bx
                        .type            n00233_line_mark_bx, @function
n00233_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_912_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_912_stno
                        .long            0
                        .long            122
                        .quad            .Lstnof1
                        .popsection
n00233_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 122;          jmp   n00234_scan_any_α
                        .size            n00233_line_mark_bx, .-n00233_line_mark_bx
                        .type            n00234_scan_any_bx, @function
n00234_scan_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00234_scan_any_α:        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 16]
                        cmp              al, 2;                               je    .Lscan_any_α_915_2
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              edx, 104
                        sub              rsp, 8
                        call             core_icn_argtype_check@PLT
.Lgcsite_options_70:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        add              rsp, 8
                        test             eax, eax;                            je    .Lscan_any_α_915_995
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00232_scan_α
.Lscan_any_α_915_995:   push             rax
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
.Lgcsite_options_69:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:
.Lscan_any_α_915_2:     mov              eax, r14d
                        cmp              eax, r15d;                           jl    .Lscan_any_α_915_996
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00232_scan_α
.Lscan_any_α_915_996:   mov              rdx, qword ptr [rsp + 16]
                        cmp              dl, 2;                               jne   .Lscan_any_α_915_5
                        shr              rdx, 32
                        cmp              edx, -1;                             je    .Lscan_any_α_915_4
                        mov              rsi, qword ptr [rsp + 24]
                        movsxd           rcx, r14d
                        movzx            edi, byte ptr [r13+rcx]
                        call             rt_sg_member@PLT
.Lgcsite_options_68:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        test             eax, eax;                            jne   .Lscan_any_α_915_997
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00232_scan_α
.Lscan_any_α_915_997:                                                         jmp   .Lscan_any_α_915_6
.Lscan_any_α_915_4:     mov              rdi, qword ptr [rsp + 24]
                        sub              rdi, 32
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        bt               dword ptr [rdi], esi;                jb    .Lscan_any_α_915_998
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00232_scan_α
.Lscan_any_α_915_998:                                                         jmp   .Lscan_any_α_915_6
.Lscan_any_α_915_5:     mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        sub              rsp, 8
                        call             rt_icn_needle_coerce@PLT
.Lgcsite_options_67:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        mov              dword ptr [rsp + 16], 2
                        mov              dword ptr [rsp + 20], edx
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_66:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              rax, qword ptr [rsp + 24]
                        mov              edx, dword ptr [rsp + 20]
                        add              rsp, 32
1:                      mov              rsi, rax
                        movsxd           rcx, r14d
                        movzx            edi, byte ptr [r13+rcx]
                        call             rt_sg_member@PLT
.Lgcsite_options_65:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        test             eax, eax;                            jne   .Lscan_any_α_915_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00232_scan_α
.Lscan_any_α_915_999:
.Lscan_any_α_915_6:     mov              qword ptr [rsp + 0], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_scan_any.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_64:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00235_scan_α
                        .size            n00234_scan_any_bx, .-n00234_scan_any_bx
                        .type            n00235_scan_bx, @function
n00235_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00235_scan_α:            sub              rsp, 48
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 32], r14d
                        mov              dword ptr [rsp + 20], r15d
                        mov              qword ptr [rsp + 24], r13
                        mov              dword ptr [rsp + 16], 2
                        mov              r13, qword ptr [rsp + 104]
                        mov              r14, qword ptr [rsp + 112]
                        mov              r15, qword ptr [rsp + 120];          jmp   n00236_conjunction_α
n00235_scan_β:            add              rsp, 48
                        add              rsp, 176;                            jmp   .Ldisjunction_ω_656_af
                        .size            n00235_scan_bx, .-n00235_scan_bx
                        .type            n00236_conjunction_bx, @function
n00236_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_conjunction_α:                                                           jmp   n00237_line_mark_α
n00236_conjunction_β:                                                           jmp   .Ldisjunction_ω_656_af
                        .size            n00236_conjunction_bx, .-n00236_conjunction_bx
                        .type            n00237_line_mark_bx, @function
n00237_line_mark_bx:
#=======================================================================================================================
# nstmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 123 0
.Lline_mark_α_919_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_919_stno
                        .long            0
                        .long            123
                        .quad            .Lstnof1
                        .popsection
n00237_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 123;          jmp   n00238_disjunction_α
                        .size            n00237_line_mark_bx, .-n00237_line_mark_bx
                        .type            n00238_disjunction_bx, @function
n00238_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_disjunction_α:     mov              qword ptr [rbp + 304], 0
                        mov              qword ptr [rbp + 312], 0
                        mov              dword ptr [rbp + 320], 0;            jmp   n00239_lit_string_α
.Ldisjunction_γ_676_as: mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_922_0
                                                                              jmp   n00240_assign_α
.Ldisjunction_α_922_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_922_1
                                                                              jmp   n00240_assign_α
.Ldisjunction_α_922_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_922_2
                                                                              jmp   n00240_assign_α
.Ldisjunction_α_922_2:                                                        jmp   n00240_assign_α
n00238_disjunction_β:     mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0;                              jne   .Ldisjunction_β_922_303
                        add              rsp, 16;                             jmp   n00241_scan_tab_β
.Ldisjunction_β_922_303:
                        cmp              eax, 1;                              jne   .Ldisjunction_β_922_304
                        add              rsp, 80;                             jmp   .Ldisjunction_ω_676_af
.Ldisjunction_β_922_304:
                        add              rsp, 80;                             jmp   .Ldisjunction_ω_676_af
.Ldisjunction_γ_676_af:
.Ldisjunction_ω_676_af: add              dword ptr [rbp + 320], 1
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 1;                              je    n00242_var_ref_α
                        cmp              eax, 2;                              je    n00243_lit_string_α
                                                                              jmp   n00244_line_mark_α
                        .size            n00238_disjunction_bx, .-n00238_disjunction_bx
                        .type            n00240_assign_bx, @function
n00240_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00240_assign_α:          mov              rax, qword ptr [rbp + 304]           # disjunction
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        add              rsp, 80;                             jmp   n00244_line_mark_α
                        .size            n00240_assign_bx, .-n00240_assign_bx
                        .type            n00244_line_mark_bx, @function
n00244_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 125 0
.Lline_mark_α_924_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_924_stno
                        .long            0
                        .long            125
                        .quad            .Lstnof1
                        .popsection
n00244_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 125;          jmp   n00245_var_α
                        .size            n00244_line_mark_bx, .-n00244_line_mark_bx
                        .type            n00245_var_bx, @function
n00245_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_var_α:                                                                   jmp   n00219_disjunction_α
                        .size            n00245_var_bx, .-n00245_var_bx
                        .type            n00219_disjunction_bx, @function
n00219_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00219_disjunction_α:     mov              qword ptr [rbp + 272], 0
                        mov              qword ptr [rbp + 280], 0
                        mov              dword ptr [rbp + 288], 0;            jmp   n00246_lit_string_α
.Ldisjunction_γ_680_as: mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_929_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 280], rax;          jmp   n00247_conjunction_α
.Ldisjunction_α_929_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_929_1
                                                                              jmp   n00247_conjunction_α
.Ldisjunction_α_929_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_929_2
                                                                              jmp   n00247_conjunction_α
.Ldisjunction_α_929_2:                                                        jmp   n00247_conjunction_α
n00219_disjunction_β:     mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 0;                              je    n00189_unmark_α
                        cmp              eax, 1;                              je    n00248_disjunction_β
                                                                              jmp   n00249_disjunction_β
.Ldisjunction_γ_680_af:
.Ldisjunction_ω_680_af: add              dword ptr [rbp + 288], 1
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 1;                              je    n00250_lit_string_α
                        cmp              eax, 2;                              je    n00251_lit_string_α
                        add              rsp, 480;                            jmp   n00189_unmark_α
                        .size            n00219_disjunction_bx, .-n00219_disjunction_bx
                        .type            n00247_conjunction_bx, @function
n00247_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_conjunction_α:     mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        add              rsp, 288;                            jmp   .Ldisjunction_γ_656_as
n00247_conjunction_β:     mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        add              rsp, 288;                            jmp   n00189_unmark_α
                        .size            n00247_conjunction_bx, .-n00247_conjunction_bx
                        .type            n00251_lit_string_bx, @function
n00251_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_931_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00252_binop_test_α
n00251_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_680_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_931_0: .quad .Llit_string_α_931_0_s; .popsection
.Llit_string_α_931_0_s: .string          "."
                        .size            n00251_lit_string_bx, .-n00251_lit_string_bx
                        .type            n00252_binop_test_bx, @function
n00252_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_binop_test_α:      sub              rsp, 16
.Lbinop_test_α_932_2:   mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 22
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_options_73:    push             rax
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
.Lgcsite_options_72:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_932_999
                        add              rsp, 16;                             jmp   n00251_lit_string_β
.Lbinop_test_α_932_999: mov              rcx, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rcx
                        push             rax                                  # gc_poll bb_binop_relop_val.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_71:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00253_line_mark_α
                        .size            n00252_binop_test_bx, .-n00252_binop_test_bx
                        .type            n00253_line_mark_bx, @function
n00253_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_933_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_933_stno
                        .long            0
                        .long            129
                        .quad            .Lstnof1
                        .popsection
n00253_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 129;          jmp   n00249_disjunction_α
                        .size            n00253_line_mark_bx, .-n00253_line_mark_bx
                        .type            n00249_disjunction_bx, @function
n00249_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00249_disjunction_α:     sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n00254_var_ref_α
.Ldisjunction_γ_685_as: mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_936_0
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 280], rax;          jmp   .Ldisjunction_γ_680_as
.Ldisjunction_α_936_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_936_1
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 280], rax;          jmp   .Ldisjunction_γ_680_as
.Ldisjunction_α_936_1:  mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 280], rax;          jmp   .Ldisjunction_γ_680_as
n00249_disjunction_β:     mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_685_af
                                                                              jmp   .Ldisjunction_ω_685_af
.Ldisjunction_γ_685_af:
.Ldisjunction_ω_685_af: add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 1;                              je    n00255_lit_string_α
                        add              rsp, 32
                        add              rsp, 512;                            jmp   n00189_unmark_α
                        .size            n00249_disjunction_bx, .-n00249_disjunction_bx
                        .type            n00255_lit_string_bx, @function
n00255_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00255_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_937_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00256_var_ref_α
n00255_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_685_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_937_0: .quad .Llit_string_α_937_0_s; .popsection
.Llit_string_α_937_0_s: .string          "-"
                        .size            n00255_lit_string_bx, .-n00255_lit_string_bx
                        .type            n00256_var_ref_bx, @function
n00256_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 80]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00257_lit_string_α
n00256_var_ref_β:         add              rsp, 16;                             jmp   n00255_lit_string_β
                        .size            n00256_var_ref_bx, .-n00256_var_ref_bx
                        .type            n00257_lit_string_bx, @function
n00257_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00257_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_940_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00258_deref_α
n00257_lit_string_β:      add              rsp, 16;                             jmp   n00256_var_ref_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_940_0: .quad .Llit_string_α_940_0_s; .popsection
.Llit_string_α_940_0_s: .string          " needs numeric parameter"
                        .size            n00257_lit_string_bx, .-n00257_lit_string_bx
                        .type            n00258_deref_bx, @function
n00258_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_options_75:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_941_999
                        add              rsp, 16;                             jmp   n00257_lit_string_β
.Lderef_α_941_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_74:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00259_line_mark_α
n00258_deref_β:           add              rsp, 16;                             jmp   n00257_lit_string_β
                        .size            n00258_deref_bx, .-n00258_deref_bx
                        .type            n00259_line_mark_bx, @function
n00259_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_942_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_942_stno
                        .long            0
                        .long            130
                        .quad            .Lstnof1
                        .popsection
n00259_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 130;          jmp   n00260_call_byname_α
                        .size            n00259_line_mark_bx, .-n00259_line_mark_bx
                        .type            n00260_call_byname_bx, @function
n00260_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_call_byname_α:     sub              rsp, 64
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd945: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd945]
                        lea              rsi, [rsp + 16]
                        mov              edx, 3
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_76:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_options_77:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_944_999
                        add              rsp, 64;                             jmp   n00258_deref_β
.Lcall_byname_α_944_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 136], rax
                        add              rsp, 128;                            jmp   .Ldisjunction_γ_685_as
n00260_call_byname_β:     add              rsp, 64;                             jmp   n00258_deref_β
                        .size            n00260_call_byname_bx, .-n00260_call_byname_bx
                        .type            n00254_var_ref_bx, @function
n00254_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 112]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00261_deref_α
n00254_var_ref_β:         add              rsp, 16;                             jmp   .Ldisjunction_ω_685_af
                        .size            n00254_var_ref_bx, .-n00254_var_ref_bx
                        .type            n00261_deref_bx, @function
n00261_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00261_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_79:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_948_999
                        add              rsp, 16;                             jmp   n00254_var_ref_β
.Lderef_α_948_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_78:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00262_line_mark_α
n00261_deref_β:           add              rsp, 16;                             jmp   n00254_var_ref_β
                        .size            n00261_deref_bx, .-n00261_deref_bx
                        .type            n00262_line_mark_bx, @function
n00262_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_949_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_949_stno
                        .long            0
                        .long            129
                        .quad            .Lstnof1
                        .popsection
n00262_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 129;          jmp   n00263_call_byname_α
                        .size            n00262_line_mark_bx, .-n00262_line_mark_bx
                        .type            n00263_call_byname_bx, @function
n00263_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_call_byname_α:     sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd952: .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd952]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 262297
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_80:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_options_81:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_951_999
                        add              rsp, 32;                             jmp   n00261_deref_β
.Lcall_byname_α_951_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 72], rax
                        add              rsp, 64;                             jmp   .Ldisjunction_γ_685_as
n00263_call_byname_β:     add              rsp, 32;                             jmp   n00261_deref_β
                        .size            n00263_call_byname_bx, .-n00263_call_byname_bx
                        .type            n00250_lit_string_bx, @function
n00250_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_953_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00264_binop_test_α
n00250_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_680_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_953_0: .quad .Llit_string_α_953_0_s; .popsection
.Llit_string_α_953_0_s: .string          "+"
                        .size            n00250_lit_string_bx, .-n00250_lit_string_bx
                        .type            n00264_binop_test_bx, @function
n00264_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_binop_test_α:      sub              rsp, 16
.Lbinop_test_α_954_2:   mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 22
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_options_84:    push             rax
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
.Lgcsite_options_83:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_954_999
                        add              rsp, 16;                             jmp   n00250_lit_string_β
.Lbinop_test_α_954_999: mov              rcx, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rcx
                        push             rax                                  # gc_poll bb_binop_relop_val.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_82:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00265_line_mark_α
                        .size            n00264_binop_test_bx, .-n00264_binop_test_bx
                        .type            n00265_line_mark_bx, @function
n00265_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_955_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_955_stno
                        .long            0
                        .long            127
                        .quad            .Lstnof1
                        .popsection
n00265_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 127;          jmp   n00248_disjunction_α
                        .size            n00265_line_mark_bx, .-n00265_line_mark_bx
                        .type            n00248_disjunction_bx, @function
n00248_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_disjunction_α:     sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n00266_var_ref_α
.Ldisjunction_γ_699_as: mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_958_0
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 280], rax;          jmp   .Ldisjunction_γ_680_as
.Ldisjunction_α_958_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_958_1
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 280], rax;          jmp   .Ldisjunction_γ_680_as
.Ldisjunction_α_958_1:  mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 280], rax;          jmp   .Ldisjunction_γ_680_as
n00248_disjunction_β:     mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_699_af
                                                                              jmp   .Ldisjunction_ω_699_af
.Ldisjunction_γ_699_af:
.Ldisjunction_ω_699_af: add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 1;                              je    n00267_lit_string_α
                        add              rsp, 32
                        add              rsp, 512;                            jmp   n00189_unmark_α
                        .size            n00248_disjunction_bx, .-n00248_disjunction_bx
                        .type            n00267_lit_string_bx, @function
n00267_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_959_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00268_var_ref_α
n00267_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_699_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_959_0: .quad .Llit_string_α_959_0_s; .popsection
.Llit_string_α_959_0_s: .string          "-"
                        .size            n00267_lit_string_bx, .-n00267_lit_string_bx
                        .type            n00268_var_ref_bx, @function
n00268_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00268_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 80]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00269_lit_string_α
n00268_var_ref_β:         add              rsp, 16;                             jmp   n00267_lit_string_β
                        .size            n00268_var_ref_bx, .-n00268_var_ref_bx
                        .type            n00269_lit_string_bx, @function
n00269_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_962_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00270_deref_α
n00269_lit_string_β:      add              rsp, 16;                             jmp   n00268_var_ref_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_962_0: .quad .Llit_string_α_962_0_s; .popsection
.Llit_string_α_962_0_s: .string          " needs numeric parameter"
                        .size            n00269_lit_string_bx, .-n00269_lit_string_bx
                        .type            n00270_deref_bx, @function
n00270_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_options_86:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_963_999
                        add              rsp, 16;                             jmp   n00269_lit_string_β
.Lderef_α_963_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_85:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00271_line_mark_α
n00270_deref_β:           add              rsp, 16;                             jmp   n00269_lit_string_β
                        .size            n00270_deref_bx, .-n00270_deref_bx
                        .type            n00271_line_mark_bx, @function
n00271_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_964_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_964_stno
                        .long            0
                        .long            128
                        .quad            .Lstnof1
                        .popsection
n00271_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 128;          jmp   n00272_call_byname_α
                        .size            n00271_line_mark_bx, .-n00271_line_mark_bx
                        .type            n00272_call_byname_bx, @function
n00272_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_call_byname_α:     sub              rsp, 64
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd967: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd967]
                        lea              rsi, [rsp + 16]
                        mov              edx, 3
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_87:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_options_88:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_966_999
                        add              rsp, 64;                             jmp   n00270_deref_β
.Lcall_byname_α_966_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 136], rax
                        add              rsp, 128;                            jmp   .Ldisjunction_γ_699_as
n00272_call_byname_β:     add              rsp, 64;                             jmp   n00270_deref_β
                        .size            n00272_call_byname_bx, .-n00272_call_byname_bx
                        .type            n00266_var_ref_bx, @function
n00266_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 112]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00273_deref_α
n00266_var_ref_β:         add              rsp, 16;                             jmp   .Ldisjunction_ω_699_af
                        .size            n00266_var_ref_bx, .-n00266_var_ref_bx
                        .type            n00273_deref_bx, @function
n00273_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_90:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_970_999
                        add              rsp, 16;                             jmp   n00266_var_ref_β
.Lderef_α_970_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_89:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00274_line_mark_α
n00273_deref_β:           add              rsp, 16;                             jmp   n00266_var_ref_β
                        .size            n00273_deref_bx, .-n00273_deref_bx
                        .type            n00274_line_mark_bx, @function
n00274_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_971_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_971_stno
                        .long            0
                        .long            127
                        .quad            .Lstnof1
                        .popsection
n00274_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 127;          jmp   n00275_call_byname_α
                        .size            n00274_line_mark_bx, .-n00274_line_mark_bx
                        .type            n00275_call_byname_bx, @function
n00275_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_call_byname_α:     sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd974: .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd974]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 458878
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_91:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_options_92:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_973_999
                        add              rsp, 32;                             jmp   n00273_deref_β
.Lcall_byname_α_973_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 72], rax
                        add              rsp, 64;                             jmp   .Ldisjunction_γ_699_as
n00275_call_byname_β:     add              rsp, 32;                             jmp   n00273_deref_β
                        .size            n00275_call_byname_bx, .-n00275_call_byname_bx
                        .type            n00246_lit_string_bx, @function
n00246_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_975_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00276_binop_test_α
n00246_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_680_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_975_0: .quad .Llit_string_α_975_0_s; .popsection
.Llit_string_α_975_0_s: .string          ":"
                        .size            n00246_lit_string_bx, .-n00246_lit_string_bx
                        .type            n00276_binop_test_bx, @function
n00276_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_binop_test_α:      sub              rsp, 16
.Lbinop_test_α_976_2:   mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 22
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_options_95:    push             rax
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
.Lgcsite_options_94:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_976_999
                        add              rsp, 16;                             jmp   n00246_lit_string_β
.Lbinop_test_α_976_999: mov              rcx, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rcx
                        push             rax                                  # gc_poll bb_binop_relop_val.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_93:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00277_var_α
                        .size            n00276_binop_test_bx, .-n00276_binop_test_bx
                        .type            n00277_var_bx, @function
n00277_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_var_α:             add              rsp, -32;                            jmp   .Ldisjunction_γ_680_as
n00277_var_β:             add              rsp, 512;                            jmp   n00189_unmark_α
                        .size            n00277_var_bx, .-n00277_var_bx
                        .type            n00243_lit_string_bx, @function
n00243_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_979_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00278_var_ref_α
n00243_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_676_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_979_0: .quad .Llit_string_α_979_0_s; .popsection
.Llit_string_α_979_0_s: .string          "No parameter following -"
                        .size            n00243_lit_string_bx, .-n00243_lit_string_bx
                        .type            n00278_var_ref_bx, @function
n00278_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 80]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00279_deref_α
n00278_var_ref_β:         add              rsp, 16;                             jmp   n00243_lit_string_β
                        .size            n00278_var_ref_bx, .-n00278_var_ref_bx
                        .type            n00279_deref_bx, @function
n00279_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00279_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_97:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_982_999
                        add              rsp, 16;                             jmp   n00278_var_ref_β
.Lderef_α_982_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_96:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00280_line_mark_α
n00279_deref_β:           add              rsp, 16;                             jmp   n00278_var_ref_β
                        .size            n00279_deref_bx, .-n00279_deref_bx
                        .type            n00280_line_mark_bx, @function
n00280_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_983_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_983_stno
                        .long            0
                        .long            124
                        .quad            .Lstnof1
                        .popsection
n00280_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 124;          jmp   n00281_call_byname_α
                        .size            n00280_line_mark_bx, .-n00280_line_mark_bx
                        .type            n00281_call_byname_bx, @function
n00281_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_call_byname_α:     sub              rsp, 48
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd986: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd986]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_98:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_options_99:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_985_999
                        add              rsp, 48;                             jmp   n00279_deref_β
.Lcall_byname_α_985_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 312], rax
                        add              rsp, 16;                             jmp   .Ldisjunction_γ_676_as
n00281_call_byname_β:     add              rsp, 48;                             jmp   n00279_deref_β
                        .size            n00281_call_byname_bx, .-n00281_call_byname_bx
                        .type            n00242_var_ref_bx, @function
n00242_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 592]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00282_deref_α
n00242_var_ref_β:         add              rsp, 16;                             jmp   .Ldisjunction_ω_676_af
                        .size            n00242_var_ref_bx, .-n00242_var_ref_bx
                        .type            n00282_deref_bx, @function
n00282_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_101:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_989_999
                        add              rsp, 16;                             jmp   n00242_var_ref_β
.Lderef_α_989_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_100:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00283_line_mark_α
n00282_deref_β:           add              rsp, 16;                             jmp   n00242_var_ref_β
                        .size            n00282_deref_bx, .-n00282_deref_bx
                        .type            n00283_line_mark_bx, @function
n00283_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_990_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_990_stno
                        .long            0
                        .long            123
                        .quad            .Lstnof1
                        .popsection
n00283_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 123;          jmp   n00284_call_byname_α
                        .size            n00283_line_mark_bx, .-n00283_line_mark_bx
                        .type            n00284_call_byname_bx, @function
n00284_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_call_byname_α:     sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd993: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd993]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_102:   mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_options_103:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_992_999
                        add              rsp, 32;                             jmp   n00282_deref_β
.Lcall_byname_α_992_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 312], rax
                        add              rsp, -16;                            jmp   .Ldisjunction_γ_676_as
n00284_call_byname_β:     add              rsp, 32;                             jmp   n00282_deref_β
                        .size            n00284_call_byname_bx, .-n00284_call_byname_bx
                        .type            n00239_lit_string_bx, @function
n00239_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_994_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00285_lit_integer_α
n00239_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_676_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_994_0: .quad .Llit_string_α_994_0_s; .popsection
.Llit_string_α_994_0_s: .string          ""
                        .size            n00239_lit_string_bx, .-n00239_lit_string_bx
                        .type            n00285_lit_integer_bx, @function
n00285_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_995_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00286_line_mark_α
n00285_lit_integer_β:     add              rsp, 16;                             jmp   n00239_lit_string_β
.Llit_integer_α_995_0:  .quad            0
                        .size            n00285_lit_integer_bx, .-n00285_lit_integer_bx
                        .type            n00286_line_mark_bx, @function
n00286_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_996_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_996_stno
                        .long            0
                        .long            123
                        .quad            .Lstnof1
                        .popsection
n00286_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 123;          jmp   n00241_scan_tab_α
                        .size            n00286_line_mark_bx, .-n00286_line_mark_bx
                        .type            n00241_scan_tab_bx, @function
n00241_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_scan_tab_α:        sub              rsp, 32
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_999_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_999_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_999_998
                        add              rsp, 32;                             jmp   n00285_lit_integer_β
.Lscan_tab_α_999_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_999_999
                        add              rsp, 32;                             jmp   n00285_lit_integer_β
.Lscan_tab_α_999_999:   mov              qword ptr [rsp + 16], r14
                        mov              rcx, rax
                        sub              rcx, 1
                        mov              rdx, r14
                        mov              r14, rcx
                        sub              rdx, rcx;                            jge   .Lscan_tab_α_999_1
                        add              rcx, rdx
                        neg              rdx
.Lscan_tab_α_999_1:     lea              rsi, [r13 + rcx]
                        test             rdx, rdx;                            jnz   .Lscan_tab_α_999_2
                        lea              rsi, [rip + .S0]
.Lscan_tab_α_999_2:     shl              rdx, 32
                        or               rdx, 2
                        mov              qword ptr [rsp + 0], rdx
                        mov              qword ptr [rsp + 8], rsi;            jmp   n00287_binop_test_α
n00241_scan_tab_β:        mov              r14, qword ptr [rsp + 16]
                        add              rsp, 32;                             jmp   n00285_lit_integer_β
                        .size            n00241_scan_tab_bx, .-n00241_scan_tab_bx
                        .type            n00287_binop_test_bx, @function
n00287_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_binop_test_α:      sub              rsp, 16
.Lbinop_test_α_1000_2:  mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 17
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_options_107:   push             rax
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
.Lgcsite_options_106:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_1000_999
                        add              rsp, 16;                             jmp   n00241_scan_tab_β
.Lbinop_test_α_1000_999:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
.Lgcsite_options_105:   mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_relop_val.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_104:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 312], rax;          jmp   .Ldisjunction_γ_676_as
n00287_binop_test_β:      add              rsp, 16;                             jmp   n00241_scan_tab_β
                        .size            n00287_binop_test_bx, .-n00287_binop_test_bx
                        .type            n00232_scan_bx, @function
n00232_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_scan_α:            sub              rsp, 48
                        mov              dword ptr [rsp + 32], r14d
                        mov              dword ptr [rsp + 20], r15d
                        mov              qword ptr [rsp + 24], r13
                        mov              dword ptr [rsp + 16], 2
                        mov              r13, qword ptr [rsp + 56]
                        mov              r14, qword ptr [rsp + 64]
                        mov              r15, qword ptr [rsp + 72]
                        add              rsp, 176;                            jmp   .Ldisjunction_γ_656_af
n00232_scan_β:            add              rsp, 48
                        add              rsp, 128;                            jmp   .Ldisjunction_ω_656_af
                        .size            n00232_scan_bx, .-n00232_scan_bx
                        .type            n00189_unmark_bx, @function
n00189_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00189_unmark_α:          add              rsp, 64;                             jmp   n00288_line_mark_α
                        .size            n00189_unmark_bx, .-n00189_unmark_bx
                        .type            n00288_line_mark_bx, @function
n00288_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1005_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1005_stno
                        .long            0
                        .long            119
                        .quad            .Lstnof1
                        .popsection
n00288_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 119
                        mov              rsp, qword ptr [rbp + 232]
                        add              rsp, 64;                             jmp   n00182_bound_α
                        .size            n00288_line_mark_bx, .-n00288_line_mark_bx
                        .type            n00204_scan_bx, @function
n00204_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_scan_α:            sub              rsp, 48
                        mov              dword ptr [rsp + 32], r14d
                        mov              dword ptr [rsp + 20], r15d
                        mov              qword ptr [rsp + 24], r13
                        mov              dword ptr [rsp + 16], 2
                        mov              r13, qword ptr [rsp + 56]
                        mov              r14, qword ptr [rsp + 64]
                        mov              r15, qword ptr [rsp + 72]
                        add              rsp, 112;                            jmp   .Ldisjunction_γ_629_af
n00204_scan_β:            add              rsp, 48
                        add              rsp, 64;                             jmp   .Ldisjunction_ω_629_af
                        .size            n00204_scan_bx, .-n00204_scan_bx
                        .type            n00161_scan_bx, @function
n00161_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_scan_α:            sub              rsp, 48
                        mov              dword ptr [rsp + 32], r14d
                        mov              dword ptr [rsp + 20], r15d
                        mov              qword ptr [rsp + 24], r13
                        mov              dword ptr [rsp + 16], 2
                        mov              r13, qword ptr [rsp + 56]
                        mov              r14, qword ptr [rsp + 64]
                        mov              r15, qword ptr [rsp + 72];           jmp   n00156_unmark_α
n00161_scan_β:            add              rsp, 48
                        add              rsp, -48;                            jmp   n00156_unmark_α
                        .size            n00161_scan_bx, .-n00161_scan_bx
                        .type            n00180_lit_string_bx, @function
n00180_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1011_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00289_scan_match_α
n00180_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_621_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_1011_0: .quad .Llit_string_α_1011_0_s; .popsection
.Llit_string_α_1011_0_s:
                        .string          "-"
                        .size            n00180_lit_string_bx, .-n00180_lit_string_bx
                        .type            n00289_scan_match_bx, @function
n00289_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_scan_match_α:      sub              rsp, 32
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jge   .Lscan_match_α_1013_998
                        add              rsp, 32;                             jmp   n00180_lit_string_β
.Lscan_match_α_1013_998:
                        mov              rsi, qword ptr [rip + .Lscan_match_α_1013_0]
                        mov              rdi, r13
                        add              rdi, r14
                        xor              rcx, rcx
.Lscan_match_α_1013_3:  cmp              rcx, 1;                              jge   .Lscan_match_α_1013_4
                        movzx            r10d, byte ptr [rsi + rcx]
                        movzx            r11d, byte ptr [rdi + rcx]
                        cmp              r10d, r11d;                          je    .Lscan_match_α_1013_999
                        add              rsp, 32;                             jmp   n00180_lit_string_β
.Lscan_match_α_1013_999:
                        inc              rcx;                                 jmp   .Lscan_match_α_1013_3
.Lscan_match_α_1013_4:  mov              qword ptr [rsp + 0], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 8], rax;            jmp   n00290_scan_tab_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lscan_match_α_1013_0: .quad .Lscan_match_α_1013_0_s; .popsection
.Lscan_match_α_1013_0_s:
                        .string          "-"
                        .size            n00289_scan_match_bx, .-n00289_scan_match_bx
                        .type            n00290_scan_tab_bx, @function
n00290_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00290_scan_tab_α:        sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_options_111:   test             eax, eax;                            jne   .Lscan_tab_α_1015_997
                        add              rsp, 32
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_621_af
.Lscan_tab_α_1015_997:  push             rax
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
.Lgcsite_options_110:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rsp + 32]            # lo
                        mov              rsi, qword ptr [rsp + 40]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_options_109:   mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_options_108:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_1015_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_1015_0:    cmp              rax, 1;                              jge   .Lscan_tab_α_1015_998
                        add              rsp, 32
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_621_af
.Lscan_tab_α_1015_998:  mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_1015_999
                        add              rsp, 32
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_621_af
.Lscan_tab_α_1015_999:  mov              qword ptr [rsp + 16], r14
                        mov              rcx, rax
                        sub              rcx, 1
                        mov              rdx, r14
                        mov              r14, rcx
                        sub              rdx, rcx;                            jge   .Lscan_tab_α_1015_1
                        add              rcx, rdx
                        neg              rdx
.Lscan_tab_α_1015_1:    lea              rsi, [r13 + rcx]
                        test             rdx, rdx;                            jnz   .Lscan_tab_α_1015_2
                        lea              rsi, [rip + .S0]
.Lscan_tab_α_1015_2:    shl              rdx, 32
                        or               rdx, 2
                        mov              qword ptr [rsp + 0], rdx
                        mov              qword ptr [rsp + 8], rsi;            jmp   n00291_lit_integer_α
n00290_scan_tab_β:        mov              r14, qword ptr [rsp + 16]
                        add              rsp, 32
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_621_af
                        .size            n00290_scan_tab_bx, .-n00290_scan_tab_bx
                        .type            n00291_lit_integer_bx, @function
n00291_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00291_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1016_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00292_line_mark_α
n00291_lit_integer_β:     add              rsp, 16;                             jmp   n00290_scan_tab_β
.Llit_integer_α_1016_0: .quad            0
                        .size            n00291_lit_integer_bx, .-n00291_lit_integer_bx
                        .type            n00292_line_mark_bx, @function
n00292_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1017_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1017_stno
                        .long            0
                        .long            118
                        .quad            .Lstnof1
                        .popsection
n00292_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 118;          jmp   n00293_scan_pos_α
                        .size            n00292_line_mark_bx, .-n00292_line_mark_bx
                        .type            n00293_scan_pos_bx, @function
n00293_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_scan_pos_α:        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_1020_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_1020_0:    cmp              rax, 1;                              jge   .Lscan_pos_α_1020_997
                        add              rsp, 16;                             jmp   n00291_lit_integer_β
.Lscan_pos_α_1020_997:  mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_pos_α_1020_998
                        add              rsp, 16;                             jmp   n00291_lit_integer_β
.Lscan_pos_α_1020_998:  mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            je    .Lscan_pos_α_1020_999
                        add              rsp, 16;                             jmp   n00291_lit_integer_β
.Lscan_pos_α_1020_999:  mov              qword ptr [rsp + 0], 3
                        mov              qword ptr [rsp + 8], rax;            jmp   n00294_conjunction_α
                        .size            n00293_scan_pos_bx, .-n00293_scan_pos_bx
                        .type            n00294_conjunction_bx, @function
n00294_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_conjunction_α:                                                           jmp   n00295_scan_α
n00294_conjunction_β:                                                           jmp   .Ldisjunction_ω_621_af
                        .size            n00294_conjunction_bx, .-n00294_conjunction_bx
                        .type            n00295_scan_bx, @function
n00295_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_scan_α:            sub              rsp, 48
                        mov              dword ptr [rsp + 32], r14d
                        mov              dword ptr [rsp + 20], r15d
                        mov              qword ptr [rsp + 24], r13
                        mov              dword ptr [rsp + 16], 2
                        mov              r13, qword ptr [rsp + 296]
                        mov              r14, qword ptr [rsp + 304]
                        mov              r15, qword ptr [rsp + 312];          jmp   n00296_var_α
n00295_scan_β:            add              rsp, 48
                        add              rsp, -48;                            jmp   n00296_var_α
                        .size            n00295_scan_bx, .-n00295_scan_bx
                        .type            n00296_var_bx, @function
n00296_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_var_α:             sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   n00297_assign_α
                        .size            n00296_var_bx, .-n00296_var_bx
                        .type            n00297_assign_bx, @function
n00297_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00297_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n00298_var_α
                        .size            n00297_assign_bx, .-n00297_assign_bx
                        .type            n00298_var_bx, @function
n00298_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_var_α:             add              rsp, 416;                            jmp   n00149_line_mark_α
                        .size            n00298_var_bx, .-n00298_var_bx
                        .type            n00156_unmark_bx, @function
n00156_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_unmark_α:          add              rsp, 160;                            jmp   n00299_line_mark_α
                        .size            n00156_unmark_bx, .-n00156_unmark_bx
                        .type            n00299_line_mark_bx, @function
n00299_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1030_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1030_stno
                        .long            0
                        .long            115
                        .quad            .Lstnof1
                        .popsection
n00299_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 115;          jmp   n00146_bound_α
                        .size            n00299_line_mark_bx, .-n00299_line_mark_bx
                        .type            n00149_line_mark_bx, @function
n00149_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 138 0
.Lline_mark_α_1032_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1032_stno
                        .long            0
                        .long            138
                        .quad            .Lstnof1
                        .popsection
n00149_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 138;          jmp   n00300_bound_α
                        .size            n00149_line_mark_bx, .-n00149_line_mark_bx
                        .type            n00300_bound_bx, @function
n00300_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00300_bound_α:           sub              rsp, 16
                        mov              qword ptr [rsp + 0], rsp;            jmp   n00301_var_ref_α
n00300_bound_β:           add              rsp, 16
                        add              rsp, -16;                            jmp   n00301_var_ref_α
                        .size            n00300_bound_bx, .-n00300_bound_bx
                        .type            n00301_var_ref_bx, @function
n00301_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00301_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 592]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00302_var_ref_α
                        .size            n00301_var_ref_bx, .-n00301_var_ref_bx
                        .type            n00302_var_ref_bx, @function
n00302_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 32]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00303_deref_α
                        .size            n00302_var_ref_bx, .-n00302_var_ref_bx
                        .type            n00303_deref_bx, @function
n00303_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_113:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1040_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00304_line_mark_α
.Lderef_α_1040_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_112:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00305_line_mark_α
                        .size            n00303_deref_bx, .-n00303_deref_bx
                        .type            n00305_line_mark_bx, @function
n00305_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1041_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1041_stno
                        .long            0
                        .long            138
                        .quad            .Lstnof1
                        .popsection
n00305_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 138;          jmp   n00306_call_byname_α
                        .size            n00305_line_mark_bx, .-n00305_line_mark_bx
                        .type            n00306_call_byname_bx, @function
n00306_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00306_call_byname_α:     sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd1044: .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd1044]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 262292
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_114:   mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_options_115:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_1043_999
                        add              rsp, 32
                        add              rsp, 64;                             jmp   n00304_line_mark_α
.Lcall_byname_α_1043_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00307_deref_α
                        .size            n00306_call_byname_bx, .-n00306_call_byname_bx
                        .type            n00307_deref_bx, @function
n00307_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00307_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]            # var_ref
                        mov              rsi, qword ptr [rsp + 88]            # d
                        call             rt_deref@PLT
.Lgcsite_options_117:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1045_999
                        add              rsp, 16
                        add              rsp, 96;                             jmp   n00304_line_mark_α
.Lderef_α_1045_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_116:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00308_line_mark_α
                        .size            n00307_deref_bx, .-n00307_deref_bx
                        .type            n00308_line_mark_bx, @function
n00308_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1046_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1046_stno
                        .long            0
                        .long            138
                        .quad            .Lstnof1
                        .popsection
n00308_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 138;          jmp   n00309_call_byname_α
                        .size            n00308_line_mark_bx, .-n00308_line_mark_bx
                        .type            n00309_call_byname_bx, @function
n00309_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00309_call_byname_α:     sub              rsp, 48
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd1049: .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd1049]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 262293
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_118:   mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_options_119:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_1048_999
                        add              rsp, 48
                        add              rsp, 112;                            jmp   n00304_line_mark_α
.Lcall_byname_α_1048_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00310_unmark_α
                        .size            n00309_call_byname_bx, .-n00309_call_byname_bx
                        .type            n00310_unmark_bx, @function
n00310_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00310_unmark_α:          add              rsp, 160;                            jmp   n00300_bound_α
                        .size            n00310_unmark_bx, .-n00310_unmark_bx
                        .type            n00304_line_mark_bx, @function
n00304_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 139 0
.Lline_mark_α_1052_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1052_stno
                        .long            0
                        .long            139
                        .quad            .Lstnof1
                        .popsection
n00304_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 139;          jmp   n00311_var_α
                        .size            n00304_line_mark_bx, .-n00304_line_mark_bx
                        .type            n00311_var_bx, @function
n00311_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_var_α:                                                                   jmp   n00312_return_α
                        .size            n00311_var_bx, .-n00311_var_bx
                        .type            n00312_return_bx, @function
n00312_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_return_α:          mov              rax, qword ptr [rbp + 16]            # var
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   options_γ
                        .size            n00312_return_bx, .-n00312_return_bx
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
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
                        pop              rax
                        lea              rsp, [rbp + 624]
                        mov              rbp, qword ptr [rbp + 584];          jmp   qword ptr [rsp]
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
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
                        pop              rax
                        lea              rsp, [rbp + 624]
                        mov              rbp, qword ptr [rbp + 584];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_options:
                        .quad            2543967096154
                        .quad            515396075760
                        .quad            .Lgcmap_options_s
                        .quad            336
                        .quad            10
                        .quad            211106232532992
                        .quad            17596481011904
                        .quad            17592186044624
                        .quad            17596481011936
                        .quad            17592186044656
                        .quad            17596481011968
                        .quad            17592186044688
                        .quad            17596481012000
                        .quad            17592186044720
                        .quad            17596481012032
.Lgcmap_options_s:      .string          "options"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_options_3:    .quad            120
                        .quad            .Lgcmap_options
                        .quad            9223389618303402608
                        .quad            .Lgccode_options_3
                        .quad            .Lgcsite_options_1-.Lgccode_options_3
                        .quad            65537
                        .quad            8589938464
                        .quad            4
                        .quad            .Lgcsite_options_0-.Lgccode_options_3
                        .quad            65537
                        .quad            8589938464
                        .quad            12
                        .quad            .Lgcsite_options_2-.Lgccode_options_3
                        .quad            65537
                        .quad            25769807648
                        .quad            10
                        .quad            .Lgcsite_options_3-.Lgccode_options_3
                        .quad            65537
                        .quad            25769807648
                        .quad            14
                        .quad            .Lgcsite_options_5-.Lgccode_options_3
                        .quad            65537
                        .quad            42949676832
                        .quad            12
                        .quad            .Lgcsite_options_4-.Lgccode_options_3
                        .quad            65537
                        .quad            42949676832
                        .quad            20
                        .quad            .Lgcsite_options_6-.Lgccode_options_3
                        .quad            65537
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_options_7-.Lgccode_options_3
                        .quad            65537
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_options_9-.Lgccode_options_3
                        .quad            65537
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_options_8-.Lgccode_options_3
                        .quad            65537
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_options_11-.Lgccode_options_3
                        .quad            65537
                        .quad            17179873064
                        .quad            6
                        .quad            .Lgcsite_options_10-.Lgccode_options_3
                        .quad            65537
                        .quad            17179873064
                        .quad            14
                        .quad            .Lgcsite_options_12-.Lgccode_options_3
                        .quad            65537
                        .quad            25769807656
                        .quad            10
                        .quad            .Lgcsite_options_13-.Lgccode_options_3
                        .quad            65537
                        .quad            25769807656
                        .quad            14
                        .quad            .Lgcsite_options_15-.Lgccode_options_3
                        .quad            65537
                        .quad            42949676840
                        .quad            14
                        .quad            .Lgcsite_options_14-.Lgccode_options_3
                        .quad            65537
                        .quad            42949676840
                        .quad            18
                        .quad            .Lgcsite_options_17-.Lgccode_options_3
                        .quad            65537
                        .quad            77309415216
                        .quad            20
                        .quad            .Lgcsite_options_16-.Lgccode_options_3
                        .quad            65537
                        .quad            77309415216
                        .quad            28
                        .quad            .Lgcsite_options_19-.Lgccode_options_3
                        .quad            65537
                        .quad            85899349808
                        .quad            22
                        .quad            .Lgcsite_options_18-.Lgccode_options_3
                        .quad            65537
                        .quad            85899349808
                        .quad            30
                        .quad            .Lgcsite_options_20-.Lgccode_options_3
                        .quad            65537
                        .quad            94489284400
                        .quad            28
                        .quad            .Lgcsite_options_21-.Lgccode_options_3
                        .quad            65537
                        .quad            94489284400
                        .quad            32
                        .quad            .Lgcsite_options_25-.Lgccode_options_3
                        .quad            65537
                        .quad            85899349816
                        .quad            24
                        .quad            .Lgcsite_options_24-.Lgccode_options_3
                        .quad            65537
                        .quad            85899349816
                        .quad            28
                        .quad            .Lgcsite_options_23-.Lgccode_options_3
                        .quad            65537
                        .quad            85899349816
                        .quad            24
                        .quad            .Lgcsite_options_22-.Lgccode_options_3
                        .quad            65537
                        .quad            85899349816
                        .quad            28
                        .quad            .Lgcsite_options_27-.Lgccode_options_3
                        .quad            65537
                        .quad            163208761152
                        .quad            40
                        .quad            .Lgcsite_options_26-.Lgccode_options_3
                        .quad            65537
                        .quad            163208761152
                        .quad            48
                        .quad            .Lgcsite_options_28-.Lgccode_options_3
                        .quad            65537
                        .quad            171798695744
                        .quad            46
                        .quad            .Lgcsite_options_29-.Lgccode_options_3
                        .quad            65537
                        .quad            171798695744
                        .quad            50
                        .quad            .Lgcsite_options_35-.Lgccode_options_3
                        .quad            65537
                        .quad            163208761160
                        .quad            42
                        .quad            .Lgcsite_options_34-.Lgccode_options_3
                        .quad            65537
                        .quad            163208761160
                        .quad            46
                        .quad            .Lgcsite_options_33-.Lgccode_options_3
                        .quad            65537
                        .quad            163208761160
                        .quad            42
                        .quad            .Lgcsite_options_32-.Lgccode_options_3
                        .quad            65537
                        .quad            163208761160
                        .quad            50
                        .quad            .Lgcsite_options_31-.Lgccode_options_3
                        .quad            65537
                        .quad            163208761160
                        .quad            42
                        .quad            .Lgcsite_options_30-.Lgccode_options_3
                        .quad            65537
                        .quad            163208761160
                        .quad            50
                        .quad            .Lgcsite_options_37-.Lgccode_options_3
                        .quad            65537
                        .quad            188978564936
                        .quad            46
                        .quad            .Lgcsite_options_36-.Lgccode_options_3
                        .quad            65537
                        .quad            188978564936
                        .quad            54
                        .quad            .Lgcsite_options_41-.Lgccode_options_3
                        .quad            65537
                        .quad            197568499528
                        .quad            51
                        .quad            .Lgcsite_options_40-.Lgccode_options_3
                        .quad            65537
                        .quad            197568499528
                        .quad            54
                        .quad            .Lgcsite_options_39-.Lgccode_options_3
                        .quad            65537
                        .quad            197568499528
                        .quad            51
                        .quad            .Lgcsite_options_38-.Lgccode_options_3
                        .quad            65537
                        .quad            197568499528
                        .quad            54
                        .quad            .Lgcsite_options_43-.Lgccode_options_3
                        .quad            65537
                        .quad            249108107080
                        .quad            60
                        .quad            .Lgcsite_options_42-.Lgccode_options_3
                        .quad            65537
                        .quad            249108107080
                        .quad            68
                        .quad            .Lgcsite_options_45-.Lgccode_options_3
                        .quad            65537
                        .quad            257698041672
                        .quad            62
                        .quad            .Lgcsite_options_44-.Lgccode_options_3
                        .quad            65537
                        .quad            257698041672
                        .quad            70
                        .quad            .Lgcsite_options_47-.Lgccode_options_3
                        .quad            65537
                        .quad            274877910856
                        .quad            66
                        .quad            .Lgcsite_options_46-.Lgccode_options_3
                        .quad            65537
                        .quad            274877910856
                        .quad            74
                        .quad            .Lgcsite_options_49-.Lgccode_options_3
                        .quad            65537
                        .quad            283467845448
                        .quad            68
                        .quad            .Lgcsite_options_48-.Lgccode_options_3
                        .quad            65537
                        .quad            283467845448
                        .quad            76
                        .quad            .Lgcsite_options_53-.Lgccode_options_3
                        .quad            65537
                        .quad            300647714648
                        .quad            72
                        .quad            .Lgcsite_options_52-.Lgccode_options_3
                        .quad            65537
                        .quad            300647714648
                        .quad            76
                        .quad            .Lgcsite_options_51-.Lgccode_options_3
                        .quad            65537
                        .quad            300647714648
                        .quad            72
                        .quad            .Lgcsite_options_50-.Lgccode_options_3
                        .quad            65537
                        .quad            300647714648
                        .quad            76
                        .quad            .Lgcsite_options_55-.Lgccode_options_3
                        .quad            65537
                        .quad            309237649240
                        .quad            74
                        .quad            .Lgcsite_options_54-.Lgccode_options_3
                        .quad            65537
                        .quad            309237649240
                        .quad            82
                        .quad            .Lgcsite_options_61-.Lgccode_options_3
                        .quad            65537
                        .quad            335007453016
                        .quad            82
                        .quad            .Lgcsite_options_60-.Lgccode_options_3
                        .quad            65537
                        .quad            335007453016
                        .quad            86
                        .quad            .Lgcsite_options_59-.Lgccode_options_3
                        .quad            65537
                        .quad            335007453016
                        .quad            82
                        .quad            .Lgcsite_options_58-.Lgccode_options_3
                        .quad            65537
                        .quad            335007453016
                        .quad            90
                        .quad            .Lgcsite_options_57-.Lgccode_options_3
                        .quad            65537
                        .quad            335007453016
                        .quad            82
                        .quad            .Lgcsite_options_56-.Lgccode_options_3
                        .quad            65537
                        .quad            335007453016
                        .quad            90
                        .quad            .Lgcsite_options_63-.Lgccode_options_3
                        .quad            65537
                        .quad            360777256792
                        .quad            86
                        .quad            .Lgcsite_options_62-.Lgccode_options_3
                        .quad            65537
                        .quad            360777256792
                        .quad            94
                        .quad            .Lgcsite_options_70-.Lgccode_options_3
                        .quad            65537
                        .quad            369367191384
                        .quad            89
                        .quad            .Lgcsite_options_69-.Lgccode_options_3
                        .quad            65537
                        .quad            369367191384
                        .quad            92
                        .quad            .Lgcsite_options_68-.Lgccode_options_3
                        .quad            65537
                        .quad            369367191384
                        .quad            88
                        .quad            .Lgcsite_options_67-.Lgccode_options_3
                        .quad            65537
                        .quad            369367191384
                        .quad            89
                        .quad            .Lgcsite_options_66-.Lgccode_options_3
                        .quad            65537
                        .quad            369367191384
                        .quad            92
                        .quad            .Lgcsite_options_65-.Lgccode_options_3
                        .quad            65537
                        .quad            369367191384
                        .quad            88
                        .quad            .Lgcsite_options_64-.Lgccode_options_3
                        .quad            65537
                        .quad            369367191384
                        .quad            96
                        .quad            .Lgcsite_options_73-.Lgccode_options_3
                        .quad            65537
                        .quad            412316864344
                        .quad            98
                        .quad            .Lgcsite_options_72-.Lgccode_options_3
                        .quad            65537
                        .quad            412316864344
                        .quad            102
                        .quad            .Lgcsite_options_71-.Lgccode_options_3
                        .quad            65537
                        .quad            412316864344
                        .quad            106
                        .quad            .Lgcsite_options_75-.Lgccode_options_3
                        .quad            65537
                        .quad            463856471896
                        .quad            110
                        .quad            .Lgcsite_options_74-.Lgccode_options_3
                        .quad            65537
                        .quad            463856471896
                        .quad            118
                        .quad            .Lgcsite_options_76-.Lgccode_options_3
                        .quad            65537
                        .quad            472446406488
                        .quad            118
                        .quad            .Lgcsite_options_77-.Lgccode_options_3
                        .quad            65537
                        .quad            472446406488
                        .quad            122
                        .quad            .Lgcsite_options_79-.Lgccode_options_3
                        .quad            65537
                        .quad            446676602728
                        .quad            106
                        .quad            .Lgcsite_options_78-.Lgccode_options_3
                        .quad            65537
                        .quad            446676602728
                        .quad            114
                        .quad            .Lgcsite_options_80-.Lgccode_options_3
                        .quad            65537
                        .quad            455266537320
                        .quad            110
                        .quad            .Lgcsite_options_81-.Lgccode_options_3
                        .quad            65537
                        .quad            455266537320
                        .quad            114
                        .quad            .Lgcsite_options_84-.Lgccode_options_3
                        .quad            65537
                        .quad            412316864376
                        .quad            98
                        .quad            .Lgcsite_options_83-.Lgccode_options_3
                        .quad            65537
                        .quad            412316864376
                        .quad            102
                        .quad            .Lgcsite_options_82-.Lgccode_options_3
                        .quad            65537
                        .quad            412316864376
                        .quad            106
                        .quad            .Lgcsite_options_86-.Lgccode_options_3
                        .quad            65537
                        .quad            463856471928
                        .quad            110
                        .quad            .Lgcsite_options_85-.Lgccode_options_3
                        .quad            65537
                        .quad            463856471928
                        .quad            118
                        .quad            .Lgcsite_options_87-.Lgccode_options_3
                        .quad            65537
                        .quad            472446406520
                        .quad            118
                        .quad            .Lgcsite_options_88-.Lgccode_options_3
                        .quad            65537
                        .quad            472446406520
                        .quad            122
                        .quad            .Lgcsite_options_90-.Lgccode_options_3
                        .quad            65537
                        .quad            446676602760
                        .quad            106
                        .quad            .Lgcsite_options_89-.Lgccode_options_3
                        .quad            65537
                        .quad            446676602760
                        .quad            114
                        .quad            .Lgcsite_options_91-.Lgccode_options_3
                        .quad            65537
                        .quad            455266537352
                        .quad            110
                        .quad            .Lgcsite_options_92-.Lgccode_options_3
                        .quad            65537
                        .quad            455266537352
                        .quad            114
                        .quad            .Lgcsite_options_95-.Lgccode_options_3
                        .quad            65537
                        .quad            412316864408
                        .quad            98
                        .quad            .Lgcsite_options_94-.Lgccode_options_3
                        .quad            65537
                        .quad            412316864408
                        .quad            102
                        .quad            .Lgcsite_options_93-.Lgccode_options_3
                        .quad            65537
                        .quad            412316864408
                        .quad            106
                        .quad            .Lgcsite_options_97-.Lgccode_options_3
                        .quad            65537
                        .quad            420906799016
                        .quad            100
                        .quad            .Lgcsite_options_96-.Lgccode_options_3
                        .quad            65537
                        .quad            420906799016
                        .quad            108
                        .quad            .Lgcsite_options_98-.Lgccode_options_3
                        .quad            65537
                        .quad            429496733608
                        .quad            106
                        .quad            .Lgcsite_options_99-.Lgccode_options_3
                        .quad            65537
                        .quad            429496733608
                        .quad            110
                        .quad            .Lgcsite_options_101-.Lgccode_options_3
                        .quad            65537
                        .quad            412316864440
                        .quad            98
                        .quad            .Lgcsite_options_100-.Lgccode_options_3
                        .quad            65537
                        .quad            412316864440
                        .quad            106
                        .quad            .Lgcsite_options_102-.Lgccode_options_3
                        .quad            65537
                        .quad            420906799032
                        .quad            102
                        .quad            .Lgcsite_options_103-.Lgccode_options_3
                        .quad            65537
                        .quad            420906799032
                        .quad            106
                        .quad            .Lgcsite_options_107-.Lgccode_options_3
                        .quad            65537
                        .quad            438086668232
                        .quad            104
                        .quad            .Lgcsite_options_106-.Lgccode_options_3
                        .quad            65537
                        .quad            438086668232
                        .quad            108
                        .quad            .Lgcsite_options_105-.Lgccode_options_3
                        .quad            65537
                        .quad            438086668232
                        .quad            104
                        .quad            .Lgcsite_options_104-.Lgccode_options_3
                        .quad            65537
                        .quad            438086668232
                        .quad            112
                        .quad            .Lgcsite_options_111-.Lgccode_options_3
                        .quad            65537
                        .quad            154618826712
                        .quad            40
                        .quad            .Lgcsite_options_110-.Lgccode_options_3
                        .quad            65537
                        .quad            154618826712
                        .quad            44
                        .quad            .Lgcsite_options_109-.Lgccode_options_3
                        .quad            65537
                        .quad            154618826712
                        .quad            40
                        .quad            .Lgcsite_options_108-.Lgccode_options_3
                        .quad            65537
                        .quad            154618826712
                        .quad            44
                        .quad            .Lgcsite_options_113-.Lgccode_options_3
                        .quad            65537
                        .quad            25769807840
                        .quad            8
                        .quad            .Lgcsite_options_112-.Lgccode_options_3
                        .quad            65537
                        .quad            25769807840
                        .quad            16
                        .quad            .Lgcsite_options_114-.Lgccode_options_3
                        .quad            65537
                        .quad            34359742432
                        .quad            12
                        .quad            .Lgcsite_options_115-.Lgccode_options_3
                        .quad            65537
                        .quad            34359742432
                        .quad            16
                        .quad            .Lgcsite_options_117-.Lgccode_options_3
                        .quad            65537
                        .quad            51539611616
                        .quad            14
                        .quad            .Lgcsite_options_116-.Lgccode_options_3
                        .quad            65537
                        .quad            51539611616
                        .quad            22
                        .quad            .Lgcsite_options_118-.Lgccode_options_3
                        .quad            65537
                        .quad            60129546208
                        .quad            20
                        .quad            .Lgcsite_options_119-.Lgccode_options_3
                        .quad            65537
                        .quad            60129546208
                        .quad            24
                        .quad            682
                        .quad            680
                        .quad            2794152
                        .quad            565928
                        .quad            730714865664
                        .quad            12295436293122293760
                        .quad            2
                        .quad            12295436293122293760
                        .quad            46878102792874
                        .quad            12295436293122293760
                        .quad            2897637681834
                        .quad            12295436293122293760
                        .quad            46878102792874
                        .quad            12295436293122293760
                        .quad            2897637681834
                        .quad            12295436293122293760
                        .quad            2829724330
                        .quad            12295436293122293760
                        .quad            45779397290
                        .quad            12295436293122293760
                        .quad            11419658922
                        .quad            12295436293122293760
                        .quad            148858612394
                        .quad            37077647360
                        .quad            10920
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
                        sub              rsp, 8
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
                        sub              rsp, 256
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
                        mov              qword ptr [rdi + 240], rax
                        mov              eax, 0                               # GCANCHOR .Lgcmap_main qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              ecx, dword ptr [rax + 12]
                        mov              rax, qword ptr [rax + 0]
                        cmp              ecx, 0;                              jbe   .Lmain_α_1056_220
                        mov              rdx, qword ptr [rax + 0]
                        mov              qword ptr [rsp + 16], rdx
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rsp + 24], rdx
.Lmain_α_1056_220:
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
main_α_body:
                        .type            n00313_call_direct_bx, @function
n00313_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00313_call_direct_α:    sub              rsp, 16
                        lea              rdi, [rsp + 16]
                        mov              esi, 0
                        call             rt_quit_trap_300@PLT
.Lgcsite_main_0:        mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_1:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_1133_999
                        add              rsp, 16;                             jmp   n00314_line_mark_α
.Lcall_direct_α_1133_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 16;                             jmp   n00314_line_mark_α
n00313_call_direct_β:    add              rsp, 16;                             jmp   n00314_line_mark_α
                        .size            n00313_call_direct_bx, .-n00313_call_direct_bx
                        .type            n00314_line_mark_bx, @function
n00314_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
.Lline_mark_α_1134_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1134_stno
                        .long            0
                        .long            40
                        .quad            .Lstnof1
                        .popsection
n00314_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 40
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_1135_0]
                        mov              qword ptr [rax + 608], rcx;          jmp   n00315_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_1135_0: .quad .Lline_mark_α_1135_0_s; .popsection
.Lline_mark_α_1135_0_s: .string          "concord.icn"
                        .size            n00314_line_mark_bx, .-n00314_line_mark_bx
                        .type            n00315_line_mark_bx, @function
n00315_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 43 0
.Lline_mark_α_1136_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1136_stno
                        .long            0
                        .long            43
                        .quad            .Lstnof1
                        .popsection
n00315_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 43;           jmp   n00316_var_ref_α
                        .size            n00315_line_mark_bx, .-n00315_line_mark_bx
                        .type            n00316_var_ref_bx, @function
n00316_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00316_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 16]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00317_lit_string_α
                        .size            n00316_var_ref_bx, .-n00316_var_ref_bx
                        .type            n00317_lit_string_bx, @function
n00317_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00317_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1140_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00318_deref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_1140_0: .quad .Llit_string_α_1140_0_s; .popsection
.Llit_string_α_1140_0_s:
                        .string          "l+w+"
                        .size            n00317_lit_string_bx, .-n00317_lit_string_bx
                        .type            n00318_deref_bx, @function
n00318_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00318_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_main_3:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1141_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00319_line_mark_α
.Lderef_α_1141_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_2:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00320_line_mark_α
                        .size            n00318_deref_bx, .-n00318_deref_bx
                        .type            n00320_line_mark_bx, @function
n00320_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1142_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1142_stno
                        .long            0
                        .long            43
                        .quad            .Lstnof1
                        .popsection
n00320_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 43;           jmp   n00321_call_proc_staged_α
                        .size            n00320_line_mark_bx, .-n00320_line_mark_bx
                        .type            n00321_call_proc_staged_bx, @function
n00321_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00321_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rcx, [rip + .Lcall_proc_staged_α_1145_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1145_3]
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
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 17600]
                        mov              rax, qword ptr [rax + 392];          jmp   rax
.Lcall_proc_staged_α_1145_3:
.Lgcsite_main_5:        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 43
                        lea              r11, [rip + .S1]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1145_2
.Lcall_proc_staged_α_1145_4:
.Lgcsite_main_4:        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 43
                        lea              r11, [rip + .S1]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1145_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_1145_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00319_line_mark_α
.Lcall_proc_staged_α_1145_999:
                                                                              jmp   n00322_deref_α
n00321_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 43
                        lea              r11, [rip + .S1]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00319_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_1145_0: .quad .Lcall_proc_staged_β_1145_0_s; .popsection
.Lcall_proc_staged_β_1145_0_s:
                        .string          "options"
                        .size            n00321_call_proc_staged_bx, .-n00321_call_proc_staged_bx
                        .type            n00322_deref_bx, @function
n00322_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00322_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_7:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1146_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n00319_line_mark_α
.Lderef_α_1146_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_6:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00323_assign_α
                        .size            n00322_deref_bx, .-n00322_deref_bx
                        .type            n00323_assign_bx, @function
n00323_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00323_assign_α:         mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        add              rsp, 80;                             jmp   n00319_line_mark_α
                        .size            n00323_assign_bx, .-n00323_assign_bx
                        .type            n00319_line_mark_bx, @function
n00319_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 44 0
.Lline_mark_α_1148_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1148_stno
                        .long            0
                        .long            44
                        .quad            .Lstnof1
                        .popsection
n00319_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 44;           jmp   n00324_disjunction_α
                        .size            n00319_line_mark_bx, .-n00319_line_mark_bx
                        .type            n00324_disjunction_bx, @function
n00324_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_disjunction_α:    sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n00325_var_ref_α
.Ldisjunction_γ_1068_as:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1151_0
                                                                              jmp   n00326_assign_α
.Ldisjunction_α_1151_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1151_1
                                                                              jmp   n00326_assign_α
.Ldisjunction_α_1151_1:                                                       jmp   n00326_assign_α
n00324_disjunction_β:    mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1068_af
                                                                              jmp   .Ldisjunction_ω_1068_af
.Ldisjunction_γ_1068_af:
.Ldisjunction_ω_1068_af:
                        add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 1;                              je    n00327_lit_integer_α
                        add              rsp, 32;                             jmp   n00328_line_mark_α
                        .size            n00324_disjunction_bx, .-n00324_disjunction_bx
                        .type            n00326_assign_bx, @function
n00326_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00326_assign_α:         mov              rax, qword ptr [rsp + 0]             # disjunction
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11872], rax          # colmax
                        mov              qword ptr [r9 + 11880], rdx
                        add              rsp, 32;                             jmp   n00328_line_mark_α
                        .size            n00326_assign_bx, .-n00326_assign_bx
                        .type            n00328_line_mark_bx, @function
n00328_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 45 0
.Lline_mark_α_1153_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1153_stno
                        .long            0
                        .long            45
                        .quad            .Lstnof1
                        .popsection
n00328_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 45;           jmp   n00329_disjunction_α
                        .size            n00328_line_mark_bx, .-n00328_line_mark_bx
                        .type            n00329_disjunction_bx, @function
n00329_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00329_disjunction_α:    sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n00330_var_ref_α
.Ldisjunction_γ_1071_as:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1156_0
                                                                              jmp   n00331_assign_α
.Ldisjunction_α_1156_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1156_1
                                                                              jmp   n00331_assign_α
.Ldisjunction_α_1156_1:                                                       jmp   n00331_assign_α
n00329_disjunction_β:    mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1071_af
                                                                              jmp   .Ldisjunction_ω_1071_af
.Ldisjunction_γ_1071_af:
.Ldisjunction_ω_1071_af:
                        add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 1;                              je    n00332_lit_integer_α
                        add              rsp, 32;                             jmp   n00333_line_mark_α
                        .size            n00329_disjunction_bx, .-n00329_disjunction_bx
                        .type            n00331_assign_bx, @function
n00331_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00331_assign_α:         mov              rax, qword ptr [rsp + 0]             # disjunction
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11888], rax          # namewidth
                        mov              qword ptr [r9 + 11896], rdx
                        add              rsp, 32;                             jmp   n00333_line_mark_α
                        .size            n00331_assign_bx, .-n00331_assign_bx
                        .type            n00333_line_mark_bx, @function
n00333_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 46 0
.Lline_mark_α_1158_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1158_stno
                        .long            0
                        .long            46
                        .quad            .Lstnof1
                        .popsection
n00333_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 46;           jmp   n00334_lit_string_α
                        .size            n00333_line_mark_bx, .-n00333_line_mark_bx
                        .type            n00334_lit_string_bx, @function
n00334_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00334_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_1160_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00335_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_1160_0: .quad .Llit_string_α_1160_0_s; .popsection
.Llit_string_α_1160_0_s:
                        .string          ""
                        .size            n00334_lit_string_bx, .-n00334_lit_string_bx
                        .type            n00335_line_mark_bx, @function
n00335_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1161_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1161_stno
                        .long            0
                        .long            46
                        .quad            .Lstnof1
                        .popsection
n00335_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 46;           jmp   n00336_call_byname_α
                        .size            n00335_line_mark_bx, .-n00335_line_mark_bx
                        .type            n00336_call_byname_bx, @function
n00336_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00336_call_byname_α:    sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd1164: .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd1164]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_8:        mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_9:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_1163_999
                        add              rsp, 32
                        add              rsp, 16;                             jmp   n00337_line_mark_α
.Lcall_byname_α_1163_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00338_assign_α
                        .size            n00336_call_byname_bx, .-n00336_call_byname_bx
                        .type            n00338_assign_bx, @function
n00338_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00338_assign_α:         mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11856], rax          # uses
                        mov              qword ptr [r9 + 11864], rdx
                        add              rsp, 48;                             jmp   n00337_line_mark_α
                        .size            n00338_assign_bx, .-n00338_assign_bx
                        .type            n00337_line_mark_bx, @function
n00337_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 47 0
.Lline_mark_α_1166_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1166_stno
                        .long            0
                        .long            47
                        .quad            .Lstnof1
                        .popsection
n00337_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 47;           jmp   n00339_lit_integer_α
                        .size            n00337_line_mark_bx, .-n00337_line_mark_bx
                        .type            n00339_lit_integer_bx, @function
n00339_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00339_lit_integer_α:    sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1168_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00340_assign_α
.Llit_integer_α_1168_0: .quad            0
                        .size            n00339_lit_integer_bx, .-n00339_lit_integer_bx
                        .type            n00340_assign_bx, @function
n00340_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00340_assign_α:         mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11904], rax          # lineno
                        mov              qword ptr [r9 + 11912], rdx
                        add              rsp, 16;                             jmp   n00341_line_mark_α
                        .size            n00340_assign_bx, .-n00340_assign_bx
                        .type            n00341_line_mark_bx, @function
n00341_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 48 0
.Lline_mark_α_1170_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1170_stno
                        .long            0
                        .long            48
                        .quad            .Lstnof1
                        .popsection
n00341_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 48;           jmp   n00342_line_mark_α
                        .size            n00341_line_mark_bx, .-n00341_line_mark_bx
                        .type            n00342_line_mark_bx, @function
n00342_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1172_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1172_stno
                        .long            0
                        .long            48
                        .quad            .Lstnof1
                        .popsection
n00342_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 48;           jmp   n00343_proc_gen_α
                        .size            n00342_line_mark_bx, .-n00342_line_mark_bx
                        .type            n00343_proc_gen_bx, @function
n00343_proc_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00343_proc_gen_α:       sub              rsp, 16
                        mov              qword ptr [rbp + 96], 152            # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
                        sub              rsp, 24
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lproc_gen_α_1175_4]
                        push             rcx
                        lea              rcx, [rip + .Lproc_gen_α_1175_3]
                        push             rcx
                        sub              rsp, 0
                        lea              rdx, [rip + .Lproc_gen_α_1175_4]
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 17600]
                        mov              rax, qword ptr [rax + 264];          jmp   rax
.Lproc_gen_α_1175_3:
.Lgcsite_main_14:       mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 48
                        lea              r11, [rip + .S1]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        cmp              al, 104;                             je    .Lproc_gen_α_1175_8
                        mov              rdi, qword ptr [rdx + -336]
                        mov              rsi, qword ptr [rdx + -328]
                        mov              qword ptr [rbp + 104], rdx;          jmp   .Lproc_gen_α_1175_9
.Lproc_gen_α_1175_8:    mov              edi, 104
                        mov              esi, 0
                        mov              qword ptr [rbp + 104], 0
.Lproc_gen_α_1175_9:    mov              rax, qword ptr [rbp + 96]
                        shr              rax, 8
                        test             rax, rax;                            jne   .Lproc_gen_α_1175_5
                        mov              qword ptr [rbp + 96], 408
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], -1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lproc_gen_α_1175_2
.Lproc_gen_α_1175_5:    call             qword ptr [rip + rt_gen_spine_pass_γ@GOTPCREL]
.Lgcsite_main_13:                                                             jmp   .Lproc_gen_α_1175_2
.Lproc_gen_α_1175_4:
.Lgcsite_main_12:       mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 48
                        lea              r11, [rip + .S1]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16
                        add              rsp, 8
                        mov              qword ptr [rbp + 104], 0
                        mov              rax, qword ptr [rbp + 96]
                        shr              rax, 8
                        test             rax, rax;                            jne   .Lproc_gen_α_1175_6
                        mov              qword ptr [rbp + 96], 408
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], -1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
                        mov              eax, 104
                        xor              edx, edx;                            jmp   .Lproc_gen_α_1175_2
.Lproc_gen_α_1175_6:    call             qword ptr [rip + rt_gen_spine_pass_ω@GOTPCREL]
.Lgcsite_main_11:                                                             jmp   .Lproc_gen_α_1175_2
.Lproc_gen_α_1175_2:    mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             jne   .Lproc_gen_α_1175_999
                        add              rsp, 16;                             jmp   n00344_line_mark_α
.Lproc_gen_α_1175_999:                                                        jmp   n00345_var_ref_α
n00343_proc_gen_β:       mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 48
                        lea              r11, [rip + .S1]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        call             qword ptr [rip + rt_gen_spine_resume_enter@GOTPCREL]
.Lgcsite_main_10:       mov              rax, qword ptr [rbp + 104];          jmp   qword ptr [rax + 32]
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lproc_gen_β_1175_0: .quad .Lproc_gen_β_1175_0_s; .popsection
.Lproc_gen_β_1175_0_s:  .string          "item"
                        .size            n00343_proc_gen_bx, .-n00343_proc_gen_bx
                        .type            n00345_var_ref_bx, @function
n00345_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00345_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064192                      # lineno
                        mov              qword ptr [rsp + 8], rax;            jmp   n00346_deref_α
n00345_var_ref_β:        add              rsp, 16;                             jmp   n00343_proc_gen_β
                        .size            n00345_var_ref_bx, .-n00345_var_ref_bx
                        .type            n00346_deref_bx, @function
n00346_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00346_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 80]            # proc_gen
                        mov              rsi, qword ptr [rbp + 88]            # d
                        call             rt_deref@PLT
.Lgcsite_main_16:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1178_999
                        add              rsp, 16;                             jmp   n00345_var_ref_β
.Lderef_α_1178_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_15:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00347_deref_α
n00346_deref_β:          add              rsp, 16;                             jmp   n00345_var_ref_β
                        .size            n00346_deref_bx, .-n00346_deref_bx
                        .type            n00347_deref_bx, @function
n00347_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00347_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_main_18:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1179_999
                        add              rsp, 16;                             jmp   n00346_deref_β
.Lderef_α_1179_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_17:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00348_line_mark_α
n00347_deref_β:          add              rsp, 16;                             jmp   n00346_deref_β
                        .size            n00347_deref_bx, .-n00347_deref_bx
                        .type            n00348_line_mark_bx, @function
n00348_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1180_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1180_stno
                        .long            0
                        .long            48
                        .quad            .Lstnof1
                        .popsection
n00348_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 48;           jmp   n00349_call_proc_staged_α
                        .size            n00348_line_mark_bx, .-n00348_line_mark_bx
                        .type            n00349_call_proc_staged_bx, @function
n00349_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00349_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rcx, [rip + .Lcall_proc_staged_α_1183_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1183_3]
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
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 17600]
                        mov              rax, qword ptr [rax + 8];            jmp   rax
.Lcall_proc_staged_α_1183_3:
.Lgcsite_main_20:       mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 48
                        lea              r11, [rip + .S1]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1183_2
.Lcall_proc_staged_α_1183_4:
.Lgcsite_main_19:       mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 48
                        lea              r11, [rip + .S1]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1183_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_1183_999
                        add              rsp, 16;                             jmp   n00347_deref_β
.Lcall_proc_staged_α_1183_999:
                                                                              jmp   n00350_deref_α
n00349_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 48
                        lea              r11, [rip + .S1]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16;                             jmp   n00347_deref_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_1183_0: .quad .Lcall_proc_staged_β_1183_0_s; .popsection
.Lcall_proc_staged_β_1183_0_s:
                        .string          "tabulate"
                        .size            n00349_call_proc_staged_bx, .-n00349_call_proc_staged_bx
                        .type            n00350_deref_bx, @function
n00350_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00350_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_22:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1184_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n00343_proc_gen_β
.Lderef_α_1184_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_21:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      add              rsp, 80;                             jmp   n00343_proc_gen_β
                        .size            n00350_deref_bx, .-n00350_deref_bx
                        .type            n00344_line_mark_bx, @function
n00344_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 49 0
.Lline_mark_α_1185_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1185_stno
                        .long            0
                        .long            49
                        .quad            .Lstnof1
                        .popsection
n00344_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 49;           jmp   n00351_var_ref_α
                        .size            n00344_line_mark_bx, .-n00344_line_mark_bx
                        .type            n00351_var_ref_bx, @function
n00351_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00351_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064144                      # uses
                        mov              qword ptr [rsp + 8], rax;            jmp   n00352_lit_integer_α
                        .size            n00351_var_ref_bx, .-n00351_var_ref_bx
                        .type            n00352_lit_integer_bx, @function
n00352_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00352_lit_integer_α:    sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1189_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00353_deref_α
.Llit_integer_α_1189_0: .quad            3
                        .size            n00352_lit_integer_bx, .-n00352_lit_integer_bx
                        .type            n00353_deref_bx, @function
n00353_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00353_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_main_24:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1190_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00354_line_mark_α
.Lderef_α_1190_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_23:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00355_line_mark_α
                        .size            n00353_deref_bx, .-n00353_deref_bx
                        .type            n00355_line_mark_bx, @function
n00355_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1191_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1191_stno
                        .long            0
                        .long            49
                        .quad            .Lstnof1
                        .popsection
n00355_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 49;           jmp   n00356_call_byname_α
                        .size            n00355_line_mark_bx, .-n00355_line_mark_bx
                        .type            n00356_call_byname_bx, @function
n00356_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00356_call_byname_α:    sub              rsp, 48
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd1194: .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd1194]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 262305
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_25:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_26:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_1193_999
                        add              rsp, 48
                        add              rsp, 48;                             jmp   n00354_line_mark_α
.Lcall_byname_α_1193_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00357_assign_α
                        .size            n00356_call_byname_bx, .-n00356_call_byname_bx
                        .type            n00357_assign_bx, @function
n00357_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00357_assign_α:         mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        add              rsp, 96;                             jmp   n00354_line_mark_α
                        .size            n00357_assign_bx, .-n00357_assign_bx
                        .type            n00354_line_mark_bx, @function
n00354_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 50 0
.Lline_mark_α_1196_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1196_stno
                        .long            0
                        .long            50
                        .quad            .Lstnof1
                        .popsection
n00354_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 50;           jmp   n00358_bound_α
                        .size            n00354_line_mark_bx, .-n00354_line_mark_bx
                        .type            n00358_bound_bx, @function
n00358_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00358_bound_α:          sub              rsp, 16
                        mov              qword ptr [rsp + 0], rsp;            jmp   n00359_var_ref_α
                        .size            n00358_bound_bx, .-n00358_bound_bx
                        .type            n00359_var_ref_bx, @function
n00359_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00359_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 48]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00360_deref_α
                        .size            n00359_var_ref_bx, .-n00359_var_ref_bx
                        .type            n00360_deref_bx, @function
n00360_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00360_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_28:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1202_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   main_ω
.Lderef_α_1202_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_27:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00361_line_mark_α
                        .size            n00360_deref_bx, .-n00360_deref_bx
                        .type            n00361_line_mark_bx, @function
n00361_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1203_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1203_stno
                        .long            0
                        .long            50
                        .quad            .Lstnof1
                        .popsection
n00361_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 50;           jmp   n00362_call_byname_α
                        .size            n00361_line_mark_bx, .-n00361_line_mark_bx
                        .type            n00362_call_byname_bx, @function
n00362_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00362_call_byname_α:    sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd1206: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd1206]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_29:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_30:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_1205_999
                        add              rsp, 32
                        add              rsp, 48;                             jmp   main_ω
.Lcall_byname_α_1205_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00363_assign_α
                        .size            n00362_call_byname_bx, .-n00362_call_byname_bx
                        .type            n00363_assign_bx, @function
n00363_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00363_assign_α:         mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx;           jmp   n00364_line_mark_α
                        .size            n00363_assign_bx, .-n00363_assign_bx
                        .type            n00364_line_mark_bx, @function
n00364_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1208_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1208_stno
                        .long            0
                        .long            51
                        .quad            .Lstnof1
                        .popsection
n00364_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 51;           jmp   n00365_var_ref_α
                        .size            n00364_line_mark_bx, .-n00364_line_mark_bx
                        .type            n00365_var_ref_bx, @function
n00365_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00365_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 32]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00366_var_ref_α
                        .size            n00365_var_ref_bx, .-n00365_var_ref_bx
                        .type            n00366_var_ref_bx, @function
n00366_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00366_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064176                      # namewidth
                        mov              qword ptr [rsp + 8], rax;            jmp   n00367_deref_α
                        .size            n00366_var_ref_bx, .-n00366_var_ref_bx
                        .type            n00367_deref_bx, @function
n00367_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00367_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_main_32:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1214_999
                        add              rsp, 16
                        add              rsp, -192;                           jmp   n00368_unmark_α
.Lderef_α_1214_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_31:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00369_deref_α
                        .size            n00367_deref_bx, .-n00367_deref_bx
                        .type            n00369_deref_bx, @function
n00369_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00369_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_main_34:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1215_999
                        add              rsp, 16
                        add              rsp, -176;                           jmp   n00368_unmark_α
.Lderef_α_1215_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_33:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00370_line_mark_α
                        .size            n00369_deref_bx, .-n00369_deref_bx
                        .type            n00370_line_mark_bx, @function
n00370_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1216_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1216_stno
                        .long            0
                        .long            51
                        .quad            .Lstnof1
                        .popsection
n00370_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 51;           jmp   n00371_call_byname_α
                        .size            n00370_line_mark_bx, .-n00370_line_mark_bx
                        .type            n00371_call_byname_bx, @function
n00371_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00371_call_byname_α:    sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd1219: .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd1219]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 262275
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_35:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_36:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_1218_999
                        add              rsp, 48
                        add              rsp, -160;                           jmp   n00368_unmark_α
.Lcall_byname_α_1218_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00372_var_ref_α
                        .size            n00371_call_byname_bx, .-n00371_call_byname_bx
                        .type            n00372_var_ref_bx, @function
n00372_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00372_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 48]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00373_deref_α
                        .size            n00372_var_ref_bx, .-n00372_var_ref_bx
                        .type            n00373_deref_bx, @function
n00373_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00373_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_38:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1222_999
                        add              rsp, 16
                        add              rsp, -96;                            jmp   n00368_unmark_α
.Lderef_α_1222_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_37:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00374_line_mark_α
                        .size            n00373_deref_bx, .-n00373_deref_bx
                        .type            n00374_line_mark_bx, @function
n00374_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1223_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1223_stno
                        .long            0
                        .long            51
                        .quad            .Lstnof1
                        .popsection
n00374_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 51;           jmp   n00375_call_byname_α
                        .size            n00374_line_mark_bx, .-n00374_line_mark_bx
                        .type            n00375_call_byname_bx, @function
n00375_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00375_call_byname_α:    sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd1226: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd1226]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_39:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_40:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_1225_999
                        add              rsp, 32
                        add              rsp, -80;                            jmp   n00368_unmark_α
.Lcall_byname_α_1225_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00376_binop_α
                        .size            n00375_call_byname_bx, .-n00375_call_byname_bx
                        .type            n00376_binop_bx, @function
n00376_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00376_binop_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]            # call
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_main_43:       cmp              al, 255;                             jne   .Lbinop_vd_1227_8
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_main_42:       mov              r9,  qword ptr [rip + g_rtccb+48]
.Lbinop_vd_1227_8:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_41:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_1227_999
                        add              rsp, 16
                        add              rsp, -48;                            jmp   n00368_unmark_α
.Lbinop_α_1227_999:                                                           jmp   n00377_line_mark_α
                        .size            n00376_binop_bx, .-n00376_binop_bx
                        .type            n00377_line_mark_bx, @function
n00377_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1228_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1228_stno
                        .long            0
                        .long            51
                        .quad            .Lstnof1
                        .popsection
n00377_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 51;           jmp   n00378_call_proc_staged_α
                        .size            n00377_line_mark_bx, .-n00377_line_mark_bx
                        .type            n00378_call_proc_staged_bx, @function
n00378_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00378_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rcx, [rip + .Lcall_proc_staged_α_1231_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1231_3]
                        push             rcx
                        sub              rsp, 16
                        mov              rcx, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 17600]
                        mov              rax, qword ptr [rax + 136];          jmp   rax
.Lcall_proc_staged_α_1231_3:
.Lgcsite_main_45:       mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 51
                        lea              r11, [rip + .S1]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1231_2
.Lcall_proc_staged_α_1231_4:
.Lgcsite_main_44:       mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 51
                        lea              r11, [rip + .S1]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1231_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_1231_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00368_unmark_α
.Lcall_proc_staged_α_1231_999:
                                                                              jmp   n00379_deref_α
n00378_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 51
                        lea              r11, [rip + .S1]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00368_unmark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_1231_0: .quad .Lcall_proc_staged_β_1231_0_s; .popsection
.Lcall_proc_staged_β_1231_0_s:
                        .string          "format"
                        .size            n00378_call_proc_staged_bx, .-n00378_call_proc_staged_bx
                        .type            n00379_deref_bx, @function
n00379_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00379_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_47:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1232_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00368_unmark_α
.Lderef_α_1232_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_46:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00368_unmark_α
                        .size            n00379_deref_bx, .-n00379_deref_bx
                        .type            n00368_unmark_bx, @function
n00368_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00368_unmark_α:         mov              rsp, qword ptr [rsp + 288]
                        mov              rax, qword ptr [rbp + 104]
                        mov              rcx, rax
                        sub              rcx, rsp
                        shr              rcx, 63
                        sub              rcx, 1
                        and              rax, rcx
                        mov              qword ptr [rbp + 104], rax;          jmp   n00380_line_mark_α
                        .size            n00368_unmark_bx, .-n00368_unmark_bx
                        .type            n00380_line_mark_bx, @function
n00380_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1235_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1235_stno
                        .long            0
                        .long            50
                        .quad            .Lstnof1
                        .popsection
n00380_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 50
                        add              rsp, 16;                             jmp   n00358_bound_α
                        .size            n00380_line_mark_bx, .-n00380_line_mark_bx
                        .type            n00332_lit_integer_bx, @function
n00332_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00332_lit_integer_α:    sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1237_0]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 24], rax
                        add              rsp, 16;                             jmp   .Ldisjunction_γ_1071_as
n00332_lit_integer_β:    add              rsp, 16;                             jmp   .Ldisjunction_ω_1071_af
.Llit_integer_α_1237_0: .quad            15
                        .size            n00332_lit_integer_bx, .-n00332_lit_integer_bx
                        .type            n00330_var_ref_bx, @function
n00330_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00330_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 64]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00381_lit_string_α
n00330_var_ref_β:        add              rsp, 16;                             jmp   .Ldisjunction_ω_1071_af
                        .size            n00330_var_ref_bx, .-n00330_var_ref_bx
                        .type            n00381_lit_string_bx, @function
n00381_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00381_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1240_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00382_subscript_α
n00381_lit_string_β:     add              rsp, 16;                             jmp   n00330_var_ref_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_1240_0: .quad .Llit_string_α_1240_0_s; .popsection
.Llit_string_α_1240_0_s:
                        .string          "w"
                        .size            n00381_lit_string_bx, .-n00381_lit_string_bx
                        .type            n00382_subscript_bx, @function
n00382_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00382_subscript_α:      sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_1241_1:   mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        test             eax, eax;                            jne   .Lsubscript_α_1241_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_main_51:       cmp              al, 255;                             jne   .Lsubscript_α_1241_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_1241_1
.Lsubscript_α_1241_4:   push             rax
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
.Lgcsite_main_50:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_1241_3
.Lsubscript_α_1241_2:   call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_49:       push             rax
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
.Lgcsite_main_48:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_1241_3:   cmp              al, 104;                             jne   .Lsubscript_α_1241_999
                        add              rsp, 16;                             jmp   n00381_lit_string_β
.Lsubscript_α_1241_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00383_deref_α
                        .size            n00382_subscript_bx, .-n00382_subscript_bx
                        .type            n00383_deref_bx, @function
n00383_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00383_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_53:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1242_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_1071_af
.Lderef_α_1242_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_52:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00384_unop_test_α
n00383_deref_β:          add              rsp, 16
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_1071_af
                        .size            n00383_deref_bx, .-n00383_deref_bx
                        .type            n00384_unop_test_bx, @function
n00384_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00384_unop_test_α:      sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 104;                             jne   .Lunop_test_α_1243_998
                        add              rsp, 16;                             jmp   n00383_deref_β
.Lunop_test_α_1243_998: cmp              eax, 0;                              jne   .Lunop_test_α_1243_999
                        add              rsp, 16;                             jmp   n00383_deref_β
.Lunop_test_α_1243_999: mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 88], rax
                        add              rsp, 80;                             jmp   .Ldisjunction_γ_1071_as
n00384_unop_test_β:      add              rsp, 16;                             jmp   n00383_deref_β
                        .size            n00384_unop_test_bx, .-n00384_unop_test_bx
                        .type            n00327_lit_integer_bx, @function
n00327_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00327_lit_integer_α:    sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1244_0]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 24], rax
                        add              rsp, 16;                             jmp   .Ldisjunction_γ_1068_as
n00327_lit_integer_β:    add              rsp, 16;                             jmp   .Ldisjunction_ω_1068_af
.Llit_integer_α_1244_0: .quad            72
                        .size            n00327_lit_integer_bx, .-n00327_lit_integer_bx
                        .type            n00325_var_ref_bx, @function
n00325_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00325_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 64]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00385_lit_string_α
n00325_var_ref_β:        add              rsp, 16;                             jmp   .Ldisjunction_ω_1068_af
                        .size            n00325_var_ref_bx, .-n00325_var_ref_bx
                        .type            n00385_lit_string_bx, @function
n00385_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00385_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1247_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00386_subscript_α
n00385_lit_string_β:     add              rsp, 16;                             jmp   n00325_var_ref_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_1247_0: .quad .Llit_string_α_1247_0_s; .popsection
.Llit_string_α_1247_0_s:
                        .string          "l"
                        .size            n00385_lit_string_bx, .-n00385_lit_string_bx
                        .type            n00386_subscript_bx, @function
n00386_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00386_subscript_α:      sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_1248_1:   mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        test             eax, eax;                            jne   .Lsubscript_α_1248_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_main_57:       cmp              al, 255;                             jne   .Lsubscript_α_1248_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_1248_1
.Lsubscript_α_1248_4:   push             rax
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
.Lgcsite_main_56:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_1248_3
.Lsubscript_α_1248_2:   call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_55:       push             rax
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
.Lgcsite_main_54:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_1248_3:   cmp              al, 104;                             jne   .Lsubscript_α_1248_999
                        add              rsp, 16;                             jmp   n00385_lit_string_β
.Lsubscript_α_1248_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00387_deref_α
                        .size            n00386_subscript_bx, .-n00386_subscript_bx
                        .type            n00387_deref_bx, @function
n00387_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00387_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_59:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1249_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_1068_af
.Lderef_α_1249_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_58:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00388_unop_test_α
n00387_deref_β:          add              rsp, 16
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_1068_af
                        .size            n00387_deref_bx, .-n00387_deref_bx
                        .type            n00388_unop_test_bx, @function
n00388_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00388_unop_test_α:      sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 104;                             jne   .Lunop_test_α_1250_998
                        add              rsp, 16;                             jmp   n00387_deref_β
.Lunop_test_α_1250_998: cmp              eax, 0;                              jne   .Lunop_test_α_1250_999
                        add              rsp, 16;                             jmp   n00387_deref_β
.Lunop_test_α_1250_999: mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 88], rax
                        add              rsp, 80;                             jmp   .Ldisjunction_γ_1068_as
n00388_unop_test_β:      add              rsp, 16;                             jmp   n00387_deref_β
                        .size            n00388_unop_test_bx, .-n00388_unop_test_bx
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
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
                        pop              rax
                        lea              rsp, [rbp + 256]
                        mov              rbp, qword ptr [rbp + 248];          jmp   qword ptr [rsp]
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
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
                        pop              rax
                        lea              rsp, [rbp + 256]
                        mov              rbp, qword ptr [rbp + 248];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_main:
                        .quad            1100858084698
                        .quad            382252089472
                        .quad            .Lgcmap_main_s
                        .quad            112
                        .quad            3
                        .quad            105553116266496
                        .quad            8800387989600
                        .quad            8817567858792
.Lgcmap_main_s:         .string          "main"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_main_4:       .quad            60
                        .quad            .Lgcmap_main
                        .quad            9223389626893336832
                        .quad            .Lgccode_main_4
                        .quad            .Lgcsite_main_0-.Lgccode_main_4
                        .quad            65537
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_1-.Lgccode_main_4
                        .quad            65537
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_3-.Lgccode_main_4
                        .quad            65537
                        .quad            17179871136
                        .quad            6
                        .quad            .Lgcsite_main_2-.Lgccode_main_4
                        .quad            65537
                        .quad            17179871136
                        .quad            14
                        .quad            .Lgcsite_main_5-.Lgccode_main_4
                        .quad            65538
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_4-.Lgccode_main_4
                        .quad            65538
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_7-.Lgccode_main_4
                        .quad            65537
                        .quad            34359740320
                        .quad            10
                        .quad            .Lgcsite_main_6-.Lgccode_main_4
                        .quad            65537
                        .quad            34359740320
                        .quad            18
                        .quad            .Lgcsite_main_8-.Lgccode_main_4
                        .quad            65537
                        .quad            8589936552
                        .quad            6
                        .quad            .Lgcsite_main_9-.Lgccode_main_4
                        .quad            65537
                        .quad            8589936552
                        .quad            10
                        .quad            .Lgcsite_main_14-.Lgccode_main_4
                        .quad            65538
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_13-.Lgccode_main_4
                        .quad            65537
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_12-.Lgccode_main_4
                        .quad            65538
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_11-.Lgccode_main_4
                        .quad            65537
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_10-.Lgccode_main_4
                        .quad            65537
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_16-.Lgccode_main_4
                        .quad            65537
                        .quad            17179871152
                        .quad            6
                        .quad            .Lgcsite_main_15-.Lgccode_main_4
                        .quad            65537
                        .quad            17179871152
                        .quad            14
                        .quad            .Lgcsite_main_18-.Lgccode_main_4
                        .quad            65537
                        .quad            25769805744
                        .quad            8
                        .quad            .Lgcsite_main_17-.Lgccode_main_4
                        .quad            65537
                        .quad            25769805744
                        .quad            16
                        .quad            .Lgcsite_main_20-.Lgccode_main_4
                        .quad            65538
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_19-.Lgccode_main_4
                        .quad            65538
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_22-.Lgccode_main_4
                        .quad            65537
                        .quad            42949674928
                        .quad            12
                        .quad            .Lgcsite_main_21-.Lgccode_main_4
                        .quad            65537
                        .quad            42949674928
                        .quad            20
                        .quad            .Lgcsite_main_24-.Lgccode_main_4
                        .quad            65537
                        .quad            17179871160
                        .quad            6
                        .quad            .Lgcsite_main_23-.Lgccode_main_4
                        .quad            65537
                        .quad            17179871160
                        .quad            14
                        .quad            .Lgcsite_main_25-.Lgccode_main_4
                        .quad            65537
                        .quad            25769805752
                        .quad            12
                        .quad            .Lgcsite_main_26-.Lgccode_main_4
                        .quad            65537
                        .quad            25769805752
                        .quad            16
                        .quad            .Lgcsite_main_28-.Lgccode_main_4
                        .quad            65537
                        .quad            17179871168
                        .quad            6
                        .quad            .Lgcsite_main_27-.Lgccode_main_4
                        .quad            65537
                        .quad            17179871168
                        .quad            14
                        .quad            .Lgcsite_main_29-.Lgccode_main_4
                        .quad            65537
                        .quad            25769805760
                        .quad            10
                        .quad            .Lgcsite_main_30-.Lgccode_main_4
                        .quad            65537
                        .quad            25769805760
                        .quad            14
                        .quad            .Lgcsite_main_32-.Lgccode_main_4
                        .quad            65537
                        .quad            60129544128
                        .quad            16
                        .quad            .Lgcsite_main_31-.Lgccode_main_4
                        .quad            65537
                        .quad            60129544128
                        .quad            24
                        .quad            .Lgcsite_main_34-.Lgccode_main_4
                        .quad            65537
                        .quad            68719478720
                        .quad            18
                        .quad            .Lgcsite_main_33-.Lgccode_main_4
                        .quad            65537
                        .quad            68719478720
                        .quad            26
                        .quad            .Lgcsite_main_35-.Lgccode_main_4
                        .quad            65537
                        .quad            77309413312
                        .quad            24
                        .quad            .Lgcsite_main_36-.Lgccode_main_4
                        .quad            65537
                        .quad            77309413312
                        .quad            28
                        .quad            .Lgcsite_main_38-.Lgccode_main_4
                        .quad            65537
                        .quad            111669151680
                        .quad            28
                        .quad            .Lgcsite_main_37-.Lgccode_main_4
                        .quad            65537
                        .quad            111669151680
                        .quad            36
                        .quad            .Lgcsite_main_39-.Lgccode_main_4
                        .quad            65537
                        .quad            120259086272
                        .quad            32
                        .quad            .Lgcsite_main_40-.Lgccode_main_4
                        .quad            65537
                        .quad            120259086272
                        .quad            36
                        .quad            .Lgcsite_main_43-.Lgccode_main_4
                        .quad            65537
                        .quad            137438955456
                        .quad            34
                        .quad            .Lgcsite_main_42-.Lgccode_main_4
                        .quad            65537
                        .quad            137438955456
                        .quad            34
                        .quad            .Lgcsite_main_41-.Lgccode_main_4
                        .quad            65537
                        .quad            137438955456
                        .quad            42
                        .quad            .Lgcsite_main_45-.Lgccode_main_4
                        .quad            65538
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_44-.Lgccode_main_4
                        .quad            65538
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_47-.Lgccode_main_4
                        .quad            65537
                        .quad            154618824640
                        .quad            38
                        .quad            .Lgcsite_main_46-.Lgccode_main_4
                        .quad            65537
                        .quad            154618824640
                        .quad            46
                        .quad            .Lgcsite_main_51-.Lgccode_main_4
                        .quad            65537
                        .quad            34359740360
                        .quad            10
                        .quad            .Lgcsite_main_50-.Lgccode_main_4
                        .quad            65537
                        .quad            34359740360
                        .quad            14
                        .quad            .Lgcsite_main_49-.Lgccode_main_4
                        .quad            65537
                        .quad            34359740360
                        .quad            10
                        .quad            .Lgcsite_main_48-.Lgccode_main_4
                        .quad            65537
                        .quad            34359740360
                        .quad            14
                        .quad            .Lgcsite_main_53-.Lgccode_main_4
                        .quad            65537
                        .quad            42949674952
                        .quad            12
                        .quad            .Lgcsite_main_52-.Lgccode_main_4
                        .quad            65537
                        .quad            42949674952
                        .quad            20
                        .quad            .Lgcsite_main_57-.Lgccode_main_4
                        .quad            65537
                        .quad            34359740368
                        .quad            10
                        .quad            .Lgcsite_main_56-.Lgccode_main_4
                        .quad            65537
                        .quad            34359740368
                        .quad            14
                        .quad            .Lgcsite_main_55-.Lgccode_main_4
                        .quad            65537
                        .quad            34359740368
                        .quad            10
                        .quad            .Lgcsite_main_54-.Lgccode_main_4
                        .quad            65537
                        .quad            34359740368
                        .quad            14
                        .quad            .Lgcsite_main_59-.Lgccode_main_4
                        .quad            65537
                        .quad            42949674960
                        .quad            12
                        .quad            .Lgcsite_main_58-.Lgccode_main_4
                        .quad            65537
                        .quad            42949674960
                        .quad            20
                        .quad            170
                        .quad            2
                        .quad            682
                        .quad            42
                        .quad            45812984488
                        .quad            680
                        .quad            680
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
.Lstartup_ign20:        .string          "put"
.Lstartup_ign21:        .string          "uses"
.Lstartup_ign22:        .string          "colmax"
.Lstartup_ign23:        .string          "namewidth"
.Lstartup_ign24:        .string          "lineno"
                        .section         .data.rel.ro,"aw",@progbits
                        .balign          8
                        .quad            4851575594099624754
                        .quad            232
                        .quad            0
                        .quad            0
.Lstartup_gnames:
                        .quad            .Lstartup_ign0
                        .quad            .Lstartup_ign1
                        .quad            .Lstartup_ign2
                        .quad            .Lstartup_ign3
                        .quad            .Lstartup_ign4
                        .quad            .Lstartup_ign5
                        .quad            .Lstartup_ign6
                        .quad            .Lstartup_ign7
                        .quad            .Lstartup_ign8
                        .quad            .Lstartup_ign9
                        .quad            .Lstartup_ign10
                        .quad            .Lstartup_ign11
                        .quad            .Lstartup_ign12
                        .quad            .Lstartup_ign13
                        .quad            .Lstartup_ign14
                        .quad            .Lstartup_ign15
                        .quad            .Lstartup_ign16
                        .quad            .Lstartup_ign17
                        .quad            .Lstartup_ign18
                        .quad            .Lstartup_ign19
                        .quad            .Lstartup_ign20
                        .quad            .Lstartup_ign21
                        .quad            .Lstartup_ign22
                        .quad            .Lstartup_ign23
                        .quad            .Lstartup_ign24
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .data.rel.ro,"aw",@progbits
.Lstartup_rootnm:       .string          "main"
.Lstartup_ipp00389_0:    .string          "args"
                        .align           8
.Lstartup_ipnames9000:
                        .quad            .Lstartup_ipp00389_0
                        .quad            0
.Lstartup_iln00389_0:    .string          "opts"
.Lstartup_iln00389_1:    .string          "uselist"
.Lstartup_iln00389_2:    .string          "name"
.Lstartup_iln00389_3:    .string          "line"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00389_0
                        .quad            .Lstartup_iln00389_1
                        .quad            .Lstartup_iln00389_2
                        .quad            .Lstartup_iln00389_3
                        .quad            0
                        .align           4
.Lstartup_iloffs9000:
                        .long            64
                        .long            48
                        .long            32
                        .long            -1
                        .section         .text
                        .intel_syntax    noprefix
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
                        .long            32
                        .long            48
                        .long            16
                        .long            -1
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
                        .long            128
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
                        .long            64
                        .long            48
                        .long            32
                        .long            -1
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
.Lstartup_iln3_8:       .string          "$rep1"
.Lstartup_iln3_9:       .string          "$rep2"
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
                        .quad            .Lstartup_iln3_8
                        .quad            .Lstartup_iln3_9
                        .quad            0
                        .align           4
.Lstartup_iloffs3:
                        .long            64
                        .long            144
                        .long            80
                        .long            16
                        .long            32
                        .long            96
                        .long            112
                        .long            -1
                        .long            128
                        .long            160
                        .section         .rodata
.Lstartup_rootcall:     .string          "main"
                        .section         .data
                        .balign          16
                        .quad            0
                        .long            41
                        .short           232
                        .short           0
.Lstartup_procs:
                        .quad            .Lstartup_pname0
                        .quad            FN__tabulate
                        .quad            .Lstartup_ipnames0
                        .long            2
                        .long            -1
                        .long            0
                        .long            -1
                        .quad            0
                        .long            96
                        .long            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            1
                        .long            65536
                        .long            0
                        .long            0
                        .long            0
                        .quad            .Lstartup_pname1
                        .quad            FN__format
                        .quad            .Lstartup_ipnames1
                        .long            1
                        .long            -1
                        .long            0
                        .long            -1
                        .quad            0
                        .long            16
                        .long            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            1
                        .long            65536
                        .long            0
                        .long            0
                        .long            0
                        .quad            .Lstartup_pname2
                        .quad            FN__item
                        .quad            0
                        .long            0
                        .long            -1
                        .long            0
                        .long            -1
                        .quad            0
                        .long            208
                        .long            336
                        .quad            0
                        .quad            0
                        .long            0
                        .long            1
                        .long            0
                        .long            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            1
                        .long            65536
                        .long            0
                        .long            0
                        .long            0
                        .quad            .Lstartup_pname3
                        .quad            FN__options
                        .quad            .Lstartup_ipnames3
                        .long            2
                        .long            -1
                        .long            0
                        .long            -1
                        .quad            0
                        .long            336
                        .long            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            1
                        .long            65536
                        .long            0
                        .long            0
                        .long            0
                        .quad            .Lstartup_rootcall
                        .quad            main_α
                        .quad            0
                        .long            1
                        .long            -1
                        .long            0
                        .long            -1
                        .quad            0
                        .long            0
                        .long            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            1
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .balign          16
                        .quad            0
                        .long            17
                        .short           215
                        .short           0
.Lstartup_phash:
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            1
                        .long            5
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            2
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            4
                        .long            3
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_procs]
                        mov              esi, 5
                        lea              rdx, [rip + .Lstartup_phash]
                        mov              ecx, 64
                        call             rt_procs_install@PLT
                        lea              rdi, [rip + .Lstartup_gnames]
                        mov              esi, 25
                        lea              rdx, [rip + .Lstartup_icn_loc]
                        mov              ecx, 5
                        call             rt_icn_tabs_install@PLT
                        add              rsp, 8
                        ret
                        .section         .data.rel.ro,"aw",@progbits
                        .balign          8
                        .quad            4851575594099624754
                        .quad            272
                        .quad            0
                        .quad            0
.Lstartup_icn_loc:
                        .quad            .Lstartup_rootnm
                        .quad            .Lstartup_ilnames9000
                        .long            4
                        .long            0
                        .quad            .Lstartup_iloffs9000
                        .quad            .Lstartup_ipnames9000
                        .long            1
                        .long            0
                        .quad            .Lstartup_pname0
                        .quad            .Lstartup_ilnames0
                        .long            4
                        .long            0
                        .quad            .Lstartup_iloffs0
                        .quad            .Lstartup_ipnames0
                        .long            2
                        .long            0
                        .quad            .Lstartup_pname1
                        .quad            .Lstartup_ilnames1
                        .long            1
                        .long            0
                        .quad            .Lstartup_iloffs1
                        .quad            .Lstartup_ipnames1
                        .long            1
                        .long            0
                        .quad            .Lstartup_pname2
                        .quad            .Lstartup_ilnames2
                        .long            4
                        .long            0
                        .quad            .Lstartup_iloffs2
                        .quad            0
                        .long            0
                        .long            0
                        .quad            .Lstartup_pname3
                        .quad            .Lstartup_ilnames3
                        .long            10
                        .long            0
                        .quad            .Lstartup_iloffs3
                        .quad            .Lstartup_ipnames3
                        .long            2
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
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
.S0:                    .string          ""
.S1:                    .string          "concord.icn"
                        .text
                        .section         .data
                        .align           8
__alpha_cellp_tab:      .quad            0
                        .section         .rodata
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
