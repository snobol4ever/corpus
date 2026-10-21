                        .intel_syntax    noprefix
                        .text
                        .file            1 "deal.icn"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_display_0:
FN__display:
                        sub              rsp, 1792
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 223
                        rep              stosq
                        mov              eax, 0                               # GCANCHOR .Lgcmap_display qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1784], rbp
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
display_α_body:
                        .type            n0_line_mark_bx, @function
n0_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 72 0
                        .pushsection     .rodata
.Lstnof1:               .string          "deal.icn"
                        .popsection
.Lline_mark_α_115_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_115_stno
                        .long            0
                        .long            72
                        .quad            .Lstnof1
                        .popsection
n0_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 72
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_116_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n1_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_116_0: .quad .Lline_mark_α_116_0_s; .popsection
.Lline_mark_α_116_0_s:  .string          "deal.icn"
                        .size            n0_line_mark_bx, .-n0_line_mark_bx
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 73 0
.Lline_mark_α_117_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_117_stno
                        .long            0
                        .long            73
                        .quad            .Lstnof1
                        .popsection
n1_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 73;             jmp   n2_line_mark_α
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 75 0
.Lline_mark_α_119_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_119_stno
                        .long            0
                        .long            75
                        .quad            .Lstnof1
                        .popsection
n2_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 75;             jmp   n3_disjunction_α
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_disjunction_bx, @function
n3_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_disjunction_α:       mov              qword ptr [rbp + 1296], 0
                        mov              qword ptr [rbp + 1304], 0
                        mov              dword ptr [rbp + 1312], 0
                        mov              qword ptr [rbp + 1320], rsp;         jmp   n4_var_α
.Ldisjunction_γ_3_as:   mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_122_0
                                                                              jmp   n25_line_mark_α
.Ldisjunction_α_122_0:                                                        jmp   n25_line_mark_α
n3_disjunction_β:       mov              eax, dword ptr [rbp + 1312];         jmp   n24_goto_β
.Ldisjunction_γ_3_af:
.Ldisjunction_ω_3_af:   add              dword ptr [rbp + 1312], 1
                        mov              eax, dword ptr [rbp + 1312];         jmp   n25_line_mark_α
                        .size            n3_disjunction_bx, .-n3_disjunction_bx
                        .type            n4_var_bx, @function
n4_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               sub              rsp, 16
                        mov              rax, qword ptr [r9 + 12000]          # display__INITFLAG__0
                        mov              rdx, qword ptr [r9 + 12008]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n5_unop_test_α
n4_var_β:               add              rsp, 16;                             jmp   .Ldisjunction_ω_3_af
                        .size            n4_var_bx, .-n4_var_bx
                        .type            n5_unop_test_bx, @function
n5_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_unop_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 104;                             jne   .Lunop_test_α_124_998
                        add              rsp, 16;                             jmp   n4_var_β
.Lunop_test_α_124_998:  cmp              eax, 0;                              je    .Lunop_test_α_124_999
                        add              rsp, 16;                             jmp   n4_var_β
.Lunop_test_α_124_999:  mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   n6_lit_integer_α
                        .size            n5_unop_test_bx, .-n5_unop_test_bx
                        .type            n6_lit_integer_bx, @function
n6_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_125_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_assign_α
.Llit_integer_α_125_0:  .quad            1
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_assign_bx, @function
n7_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 12000], rax          # display__INITFLAG__0
                        mov              qword ptr [r9 + 12008], rdx;         jmp   n8_line_mark_α
                        .size            n7_assign_bx, .-n7_assign_bx
                        .type            n8_line_mark_bx, @function
n8_line_mark_bx:
#=======================================================================================================================
# nstmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 76 0
.Lline_mark_α_127_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_127_stno
                        .long            0
                        .long            76
                        .quad            .Lstnof1
                        .popsection
n8_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 76;             jmp   n9_lit_string_α
                        .size            n8_line_mark_bx, .-n8_line_mark_bx
                        .type            n9_lit_string_bx, @function
n9_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_129_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_lit_string_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_129_0: .quad .Llit_string_α_129_0_s; .popsection
.Llit_string_α_129_0_s: .string          "\n"
                        .size            n9_lit_string_bx, .-n9_lit_string_bx
                        .type            n10_lit_string_bx, @function
n10_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_130_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n11_lit_integer_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_130_0: .quad .Llit_string_α_130_0_s; .popsection
.Llit_string_α_130_0_s: .string          "-"
                        .size            n10_lit_string_bx, .-n10_lit_string_bx
                        .type            n11_lit_integer_bx, @function
n11_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_131_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_line_mark_α
.Llit_integer_α_131_0:  .quad            33
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_line_mark_bx, @function
n12_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_132_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_132_stno
                        .long            0
                        .long            76
                        .quad            .Lstnof1
                        .popsection
n12_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 76;             jmp   n13_call_byname_α
                        .size            n12_line_mark_bx, .-n12_line_mark_bx
                        .type            n13_call_byname_bx, @function
n13_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_call_byname_α:      sub              rsp, 16
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
.Lcall_byname_α_rkfnzd135: .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd135]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_0:     mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_display_1:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_134_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n16_line_mark_α
.Lcall_byname_α_134_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_binop_α
                        .size            n13_call_byname_bx, .-n13_call_byname_bx
                        .type            n14_binop_bx, @function
n14_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_display_4:     cmp              al, 255;                             jne   .Lbinop_vd_136_0
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_display_3:     mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_136_0:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_2:     mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_136_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n16_line_mark_α
.Lbinop_α_136_999:                                                            jmp   n15_assign_α
                        .size            n14_binop_bx, .-n14_binop_bx
                        .type            n15_assign_bx, @function
n15_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11968], rax          # display__STATIC__bar
                        mov              qword ptr [r9 + 11976], rdx
                        add              rsp, 80;                             jmp   n16_line_mark_α
                        .size            n15_assign_bx, .-n15_assign_bx
                        .type            n16_line_mark_bx, @function
n16_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 77 0
.Lline_mark_α_138_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_138_stno
                        .long            0
                        .long            77
                        .quad            .Lstnof1
                        .popsection
n16_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 77;             jmp   n17_lit_string_α
                        .size            n16_line_mark_bx, .-n16_line_mark_bx
                        .type            n17_lit_string_bx, @function
n17_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_140_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_lit_integer_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_140_0: .quad .Llit_string_α_140_0_s; .popsection
.Llit_string_α_140_0_s: .string          " "
                        .size            n17_lit_string_bx, .-n17_lit_string_bx
                        .type            n18_lit_integer_bx, @function
n18_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_141_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_line_mark_α
.Llit_integer_α_141_0:  .quad            10
                        .size            n18_lit_integer_bx, .-n18_lit_integer_bx
                        .type            n19_line_mark_bx, @function
n19_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_142_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_142_stno
                        .long            0
                        .long            77
                        .quad            .Lstnof1
                        .popsection
n19_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 77;             jmp   n20_call_byname_α
                        .size            n19_line_mark_bx, .-n19_line_mark_bx
                        .type            n20_call_byname_bx, @function
n20_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_byname_α:      sub              rsp, 16
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
.Lcall_byname_α_rkfnzd145: .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd145]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_5:     mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_display_6:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_144_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n25_line_mark_α
.Lcall_byname_α_144_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n21_assign_α
                        .size            n20_call_byname_bx, .-n20_call_byname_bx
                        .type            n21_assign_bx, @function
n21_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11984], rax          # display__STATIC__offset
                        mov              qword ptr [r9 + 11992], rdx;         jmp   n22_conjunction_α
                        .size            n21_assign_bx, .-n21_assign_bx
                        .type            n22_conjunction_bx, @function
n22_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_conjunction_α:      mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n23_conjunction_α
n22_conjunction_β:                                                            jmp   n25_line_mark_α
                        .size            n22_conjunction_bx, .-n22_conjunction_bx
                        .type            n23_conjunction_bx, @function
n23_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_conjunction_α:      mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 1304], rax
                        add              rsp, 96;                             jmp   .Ldisjunction_γ_3_as
n23_conjunction_β:      mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 1304], rax
                        add              rsp, 96;                             jmp   n25_line_mark_α
                        .size            n23_conjunction_bx, .-n23_conjunction_bx
                        .type            n24_goto_bx, @function
n24_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_goto_α:                                                                   jmp   n25_line_mark_α
n24_goto_β:                                                                   jmp   n25_line_mark_α
                        .size            n24_goto_bx, .-n24_goto_bx
                        .type            n25_line_mark_bx, @function
n25_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 80 0
.Lline_mark_α_150_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_150_stno
                        .long            0
                        .long            80
                        .quad            .Lstnof1
                        .popsection
n25_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 80;             jmp   n26_var_ref_α
                        .size            n25_line_mark_bx, .-n25_line_mark_bx
                        .type            n26_var_ref_bx, @function
n26_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064144                      # deck
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_deref_α
                        .size            n26_var_ref_bx, .-n26_var_ref_bx
                        .type            n27_deref_bx, @function
n27_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_display_8:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_154_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n32_line_mark_α
.Lderef_α_154_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_7:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n28_line_mark_α
                        .size            n27_deref_bx, .-n27_deref_bx
                        .type            n28_line_mark_bx, @function
n28_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_155_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_155_stno
                        .long            0
                        .long            80
                        .quad            .Lstnof1
                        .popsection
n28_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 80;             jmp   n29_call_proc_staged_α
                        .size            n28_line_mark_bx, .-n28_line_mark_bx
                        .type            n29_call_proc_staged_bx, @function
n29_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_call_proc_staged_α: sub              rsp, 16
                        lea              rcx, [rip + .Lcall_proc_staged_α_158_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_158_3]
                        push             rcx
                        sub              rsp, 16
                        mov              rcx, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 520];          jmp   rax
.Lcall_proc_staged_α_158_3:
.Lgcsite_display_10:    mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 80
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_158_2
.Lcall_proc_staged_α_158_4:
.Lgcsite_display_9:     mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 80
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_158_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_158_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n32_line_mark_α
.Lcall_proc_staged_α_158_999:
                                                                              jmp   n30_deref_α
n29_call_proc_staged_β: mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 80
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n32_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_158_0: .quad .Lcall_proc_staged_β_158_0_s; .popsection
.Lcall_proc_staged_β_158_0_s:
                        .string          "shuffle"
                        .size            n29_call_proc_staged_bx, .-n29_call_proc_staged_bx
                        .type            n30_deref_bx, @function
n30_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_display_12:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_159_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n32_line_mark_α
.Lderef_α_159_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_11:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n31_assign_α
                        .size            n30_deref_bx, .-n30_deref_bx
                        .type            n31_assign_bx, @function
n31_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:           mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11856], rax          # deck
                        mov              qword ptr [r9 + 11864], rdx
                        add              rsp, 64;                             jmp   n32_line_mark_α
                        .size            n31_assign_bx, .-n31_assign_bx
                        .type            n32_line_mark_bx, @function
n32_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 81 0
.Lline_mark_α_161_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_161_stno
                        .long            0
                        .long            81
                        .quad            .Lstnof1
                        .popsection
n32_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 81;             jmp   n33_make_list_α
                        .size            n32_line_mark_bx, .-n32_line_mark_bx
                        .type            n33_make_list_bx, @function
n33_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_make_list_α:        sub              rsp, 16
                        xor              edi, edi
                        mov              esi, 0
                        call             rt_make_list@PLT
.Lgcsite_display_14:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_make_list.cpp:33
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_13:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n34_assign_α
                        .size            n33_make_list_bx, .-n33_make_list_bx
                        .type            n34_assign_bx, @function
n34_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              rax, qword ptr [rsp + 0]             # make_list
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        add              rsp, 16;                             jmp   n35_line_mark_α
                        .size            n34_assign_bx, .-n34_assign_bx
                        .type            n35_line_mark_bx, @function
n35_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 82 0
.Lline_mark_α_166_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_166_stno
                        .long            0
                        .long            82
                        .quad            .Lstnof1
                        .popsection
n35_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 82;             jmp   n36_var_ref_α
                        .size            n35_line_mark_bx, .-n35_line_mark_bx
                        .type            n36_var_ref_bx, @function
n36_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 1664]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_var_ref_α
                        .size            n36_var_ref_bx, .-n36_var_ref_bx
                        .type            n37_var_ref_bx, @function
n37_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064144                      # deck
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_lit_integer_α
                        .size            n37_var_ref_bx, .-n37_var_ref_bx
                        .type            n38_lit_integer_bx, @function
n38_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_172_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_lit_integer_α
.Llit_integer_α_172_0:  .quad            0
                        .size            n38_lit_integer_bx, .-n38_lit_integer_bx
                        .type            n39_lit_integer_bx, @function
n39_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_173_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_to_α
.Llit_integer_α_173_0:  .quad            3
                        .size            n39_lit_integer_bx, .-n39_lit_integer_bx
                        .type            n40_to_bx, @function
n40_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_to_α:               sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 48]            # lit_integer
                        mov              rsi, qword ptr [rsp + 56]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_display_24:    cmp              eax, -2;                             jne   .Lto_vd_175_2
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_display_23:    mov              r9,  qword ptr [rip + rtccb+48]
.Lto_vd_175_2:          test             eax, eax;                            jne   .Lto_α_175_996
                        add              rsp, 32
                        add              rsp, 64;                             jmp   n58_line_mark_α
.Lto_α_175_996:         push             rax                                  # gc_poll bb_to.cpp:35
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_22:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 32]            # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_display_21:    cmp              eax, -2;                             jne   .Lto_vd_175_1
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_display_20:    mov              r9,  qword ptr [rip + rtccb+48]
.Lto_vd_175_1:          test             eax, eax;                            jne   .Lto_α_175_997
                        add              rsp, 32
                        add              rsp, 64;                             jmp   n58_line_mark_α
.Lto_α_175_997:         push             rax                                  # gc_poll bb_to.cpp:35
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_19:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 48]            # lit_integer
                        mov              rsi, qword ptr [rsp + 56]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_display_18:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 1072], rax
                        push             rax                                  # gc_poll bb_to.cpp:106
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_17:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 32]            # lit_integer
                        mov              rsi, qword ptr [rsp + 40]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_display_16:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 1080], rax
.Lto_α_175_0:           mov              rax, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        cmp              rax, rcx;                            jle   .Lto_α_175_998
                        add              rsp, 32
                        add              rsp, 64;                             jmp   n58_line_mark_α
.Lto_α_175_998:         mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_to.cpp:126
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_15:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n41_var_α
n40_to_β:               inc              qword ptr [rbp + 1072];              jno   .Lto_β_175_999
                        add              rsp, 32
                        add              rsp, 64;                             jmp   n58_line_mark_α
.Lto_β_175_999:                                                               jmp   .Lto_α_175_0
                        .size            n40_to_bx, .-n40_to_bx
                        .type            n41_var_bx, @function
n41_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11888]          # handsize
                        mov              rdx, qword ptr [r9 + 11896]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n42_coerce_numeric_α
                        .size            n41_var_bx, .-n41_var_bx
                        .type            n42_coerce_numeric_bx, @function
n42_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # to
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_178_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_178_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_178_0
.Lcoerce_numeric_α_178_1:
                        mov              rax, qword ptr [rsp + 32]            # to
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # to
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_coerce_numeric_α
.Lcoerce_numeric_α_178_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 12901679206
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_display_27:    cmp              al, 255;                             jne   .Lcoerce_numeric_vd_178_3
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_display_26:    mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_178_3:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_25:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_178_999
                        add              rsp, 16
                        add              rsp, 112;                            jmp   n58_line_mark_α
.Lcoerce_numeric_α_178_999:
                                                                              jmp   n43_coerce_numeric_α
                        .size            n42_coerce_numeric_bx, .-n42_coerce_numeric_bx
                        .type            n43_coerce_numeric_bx, @function
n43_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_180_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_180_0
                        mov              eax, dword ptr [rsp + 48]            # to
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_180_0
.Lcoerce_numeric_α_180_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_binop_α
.Lcoerce_numeric_α_180_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # to
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 281487878389862
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_display_30:    cmp              al, 255;                             jne   .Lcoerce_numeric_vd_180_4
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_display_29:    mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_180_4:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_28:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_180_999
                        add              rsp, 16
                        add              rsp, 128;                            jmp   n58_line_mark_α
.Lcoerce_numeric_α_180_999:
                                                                              jmp   n44_binop_α
                        .size            n43_coerce_numeric_bx, .-n43_coerce_numeric_bx
                        .type            n44_binop_bx, @function
n44_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_181_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx;                            jo    .Lbinop_α_181_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_181_7
.Lbinop_α_181_2:        and              edx, 1;                              jz    .Lbinop_α_181_0
                        mov              rsi, qword ptr [rsp + 40]            # coerce_numeric
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_181_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_181_4
.Lbinop_α_181_3:        movq             xmm0, rsi
.Lbinop_α_181_4:        cmp              cl, 5;                               je    .Lbinop_α_181_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_181_6
.Lbinop_α_181_5:        movq             xmm1, rdi
.Lbinop_α_181_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_181_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_181_7:                                                              jmp   n45_lit_integer_α
.Lbinop_α_181_0:        mov              rdi, qword ptr [rsp + 32]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul_big@PLT
.Lgcsite_display_32:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_181_999
                        add              rsp, 16
                        add              rsp, 144;                            jmp   n58_line_mark_α
.Lbinop_α_181_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_31:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n45_lit_integer_α
                        .size            n44_binop_bx, .-n44_binop_bx
                        .type            n45_lit_integer_bx, @function
n45_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_182_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_coerce_numeric_α
.Llit_integer_α_182_0:  .quad            1
                        .size            n45_lit_integer_bx, .-n45_lit_integer_bx
                        .type            n46_coerce_numeric_bx, @function
n46_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_184_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_184_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_184_0
.Lcoerce_numeric_α_184_1:
                        mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_binop_α
.Lcoerce_numeric_α_184_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_display_35:    cmp              al, 255;                             jne   .Lcoerce_numeric_vd_184_5
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_display_34:    mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_184_5:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_33:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_184_999
                        add              rsp, 16
                        add              rsp, 176;                            jmp   n58_line_mark_α
.Lcoerce_numeric_α_184_999:
                                                                              jmp   n47_binop_α
                        .size            n46_coerce_numeric_bx, .-n46_coerce_numeric_bx
                        .type            n47_binop_bx, @function
n47_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rax, qword ptr [rsp + 24]
                        cmp              cl, 3;                               jne   .Lbinop_α_185_2
                        add              rax, 1;                              jo    .Lbinop_α_185_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_185_7
.Lbinop_α_185_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_185_0
                        mov              rsi, qword ptr [rsp + 24]            # coerce_numeric
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_185_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_185_4
.Lbinop_α_185_3:        movq             xmm0, rsi
.Lbinop_α_185_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_185_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_185_7:                                                              jmp   n48_var_α
.Lbinop_α_185_0:        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        call             rt_add_big@PLT
.Lgcsite_display_37:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_185_999
                        add              rsp, 16
                        add              rsp, 192;                            jmp   n58_line_mark_α
.Lbinop_α_185_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_36:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n48_var_α
                        .size            n47_binop_bx, .-n47_binop_bx
                        .type            n48_var_bx, @function
n48_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11888]          # handsize
                        mov              rdx, qword ptr [r9 + 11896]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n49_binop_α
n48_var_β:              add              rsp, 16
                        add              rsp, 112;                            jmp   n40_to_β
                        .size            n48_var_bx, .-n48_var_bx
                        .type            n49_binop_bx, @function
n49_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_187_2
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # var
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_187_7
.Lbinop_α_187_2:        and              edx, 1;                              jz    .Lbinop_α_187_0
                        mov              rsi, qword ptr [rsp + 40]            # binop
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lbinop_α_187_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_187_4
.Lbinop_α_187_3:        movq             xmm0, rsi
.Lbinop_α_187_4:        cmp              cl, 5;                               je    .Lbinop_α_187_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_187_6
.Lbinop_α_187_5:        movq             xmm1, rdi
.Lbinop_α_187_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_187_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_187_7:                                                              jmp   n50_subscript_α
.Lbinop_α_187_0:        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             c_rt_add@PLT
.Lgcsite_display_39:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_187_999
                        add              rsp, 16;                             jmp   n48_var_β
.Lbinop_α_187_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_38:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n50_subscript_α
n49_binop_β:            add              rsp, 16;                             jmp   n48_var_β
                        .size            n49_binop_bx, .-n49_binop_bx
                        .type            n50_subscript_bx, @function
n50_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 224]           # var_ref
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 48]            # binop
                        mov              rcx, qword ptr [rsp + 56]
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             rt_section_var_strict@PLT
.Lgcsite_display_41:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lsubscript_α_188_999
                        add              rsp, 16;                             jmp   n49_binop_β
.Lsubscript_α_188_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_section.cpp:58
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_40:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n51_deref_α
                        .size            n50_subscript_bx, .-n50_subscript_bx
                        .type            n51_deref_bx, @function
n51_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_display_43:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_189_999
                        add              rsp, 16
                        add              rsp, 160;                            jmp   n40_to_β
.Lderef_α_189_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_42:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n52_line_mark_α
n51_deref_β:            add              rsp, 16
                        add              rsp, 160;                            jmp   n40_to_β
                        .size            n51_deref_bx, .-n51_deref_bx
                        .type            n52_line_mark_bx, @function
n52_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_190_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_190_stno
                        .long            0
                        .long            82
                        .quad            .Lstnof1
                        .popsection
n52_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 82;             jmp   n53_call_proc_staged_α
                        .size            n52_line_mark_bx, .-n52_line_mark_bx
                        .type            n53_call_proc_staged_bx, @function
n53_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_call_proc_staged_α: sub              rsp, 16
                        lea              rcx, [rip + .Lcall_proc_staged_α_193_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_193_3]
                        push             rcx
                        sub              rsp, 16
                        mov              rcx, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 136];          jmp   rax
.Lcall_proc_staged_α_193_3:
.Lgcsite_display_45:    mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 82
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_193_2
.Lcall_proc_staged_α_193_4:
.Lgcsite_display_44:    mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 82
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_193_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_193_999
                        add              rsp, 16;                             jmp   n51_deref_β
.Lcall_proc_staged_α_193_999:
                                                                              jmp   n54_deref_α
n53_call_proc_staged_β: mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 82
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16;                             jmp   n51_deref_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_193_0: .quad .Lcall_proc_staged_β_193_0_s; .popsection
.Lcall_proc_staged_β_193_0_s:
                        .string          "show"
                        .size            n53_call_proc_staged_bx, .-n53_call_proc_staged_bx
                        .type            n54_deref_bx, @function
n54_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 288]           # var_ref
                        mov              rsi, qword ptr [rsp + 296]           # d
                        call             rt_deref@PLT
.Lgcsite_display_47:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_194_999
                        add              rsp, 16
                        add              rsp, 192;                            jmp   n40_to_β
.Lderef_α_194_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_46:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n55_deref_α
n54_deref_β:            add              rsp, 16
                        add              rsp, 192;                            jmp   n40_to_β
                        .size            n54_deref_bx, .-n54_deref_bx
                        .type            n55_deref_bx, @function
n55_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_display_49:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_195_999
                        add              rsp, 16;                             jmp   n54_deref_β
.Lderef_α_195_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_48:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n56_line_mark_α
n55_deref_β:            add              rsp, 16;                             jmp   n54_deref_β
                        .size            n55_deref_bx, .-n55_deref_bx
                        .type            n56_line_mark_bx, @function
n56_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_196_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_196_stno
                        .long            0
                        .long            82
                        .quad            .Lstnof1
                        .popsection
n56_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 82;             jmp   n57_call_byname_α
                        .size            n56_line_mark_bx, .-n56_line_mark_bx
                        .type            n57_call_byname_bx, @function
n57_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_call_byname_α:      sub              rsp, 16
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
.Lcall_byname_α_rkfnzd199: .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd199]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 262293
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_50:    mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_display_51:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_198_999
                        add              rsp, 16;                             jmp   n55_deref_β
.Lcall_byname_α_198_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 16;                             jmp   n55_deref_β
                        .size            n57_call_byname_bx, .-n57_call_byname_bx
                        .type            n58_line_mark_bx, @function
n58_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 84 0
.Lline_mark_α_200_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_200_stno
                        .long            0
                        .long            84
                        .quad            .Lstnof1
                        .popsection
n58_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 84;             jmp   n59_line_mark_α
                        .size            n58_line_mark_bx, .-n58_line_mark_bx
                        .type            n59_line_mark_bx, @function
n59_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_202_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_202_stno
                        .long            0
                        .long            84
                        .quad            .Lstnof1
                        .popsection
n59_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 84;             jmp   n60_call_byname_α
                        .size            n59_line_mark_bx, .-n59_line_mark_bx
                        .type            n60_call_byname_bx, @function
n60_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_call_byname_α:      sub              rsp, 16
                        .section         .rodata
.Lcall_byname_α_rkfnzd205: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd205]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_52:    mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_display_53:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_204_999
                        add              rsp, 16;                             jmp   n61_line_mark_α
.Lcall_byname_α_204_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 16;                             jmp   n61_line_mark_α
                        .size            n60_call_byname_bx, .-n60_call_byname_bx
                        .type            n61_line_mark_bx, @function
n61_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 85 0
.Lline_mark_α_206_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_206_stno
                        .long            0
                        .long            85
                        .quad            .Lstnof1
                        .popsection
n61_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 85;             jmp   n62_var_α
                        .size            n61_line_mark_bx, .-n61_line_mark_bx
                        .type            n62_var_bx, @function
n62_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11984]          # display__STATIC__offset
                        mov              rdx, qword ptr [r9 + 11992]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n63_var_ref_α
                        .size            n62_var_bx, .-n62_var_bx
                        .type            n63_var_ref_bx, @function
n63_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 1664]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_lit_integer_α
                        .size            n63_var_ref_bx, .-n63_var_ref_bx
                        .type            n64_lit_integer_bx, @function
n64_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_211_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n65_subscript_α
.Llit_integer_α_211_0:  .quad            1
                        .size            n64_lit_integer_bx, .-n64_lit_integer_bx
                        .type            n65_subscript_bx, @function
n65_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_subscript_α:        sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_212_1:    mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        test             eax, eax;                            jne   .Lsubscript_α_212_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_display_59:    cmp              al, 255;                             jne   .Lsubscript_vd_212_7
                        call             c_rt_subscript_val_strict@PLT
.Lgcsite_display_58:    mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_212_7:   cmp              al, 255;                             jne   .Lsubscript_α_212_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_212_1
.Lsubscript_α_212_4:    push             rax
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
.Lgcsite_display_57:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_212_3
.Lsubscript_α_212_2:    call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_display_56:    cmp              al, 255;                             jne   .Lsubscript_vd_212_6
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_display_55:    mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_212_6:   push             rax
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
.Lgcsite_display_54:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_212_3:    cmp              al, 104;                             jne   .Lsubscript_α_212_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n70_line_mark_α
.Lsubscript_α_212_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n66_deref_α
                        .size            n65_subscript_bx, .-n65_subscript_bx
                        .type            n66_deref_bx, @function
n66_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_display_61:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_213_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n70_line_mark_α
.Lderef_α_213_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_60:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n67_iterate_α
                        .size            n66_deref_bx, .-n66_deref_bx
                        .type            n67_iterate_bx, @function
n67_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_iterate_α:          sub              rsp, 16
                        mov              qword ptr [rbp + 768], 0
.Literate_α_215_0:      mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rbp + 768]
                        call             qword ptr [rip + rt_list_bang_at@GOTPCREL]
.Lgcsite_display_63:    mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Literate_α_215_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n70_line_mark_α
.Literate_α_215_999:    push             rax                                  # gc_poll bb_iterate.cpp:32
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_62:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n68_line_mark_α
n67_iterate_β:          inc              qword ptr [rbp + 768];               jmp   .Literate_α_215_0
                        .size            n67_iterate_bx, .-n67_iterate_bx
                        .type            n68_line_mark_bx, @function
n68_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_216_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_216_stno
                        .long            0
                        .long            85
                        .quad            .Lstnof1
                        .popsection
n68_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 85;             jmp   n69_call_byname_α
                        .size            n68_line_mark_bx, .-n68_line_mark_bx
                        .type            n69_call_byname_bx, @function
n69_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_call_byname_α:      sub              rsp, 16
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
.Lcall_byname_α_rkfnzd219: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd219]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_64:    mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_display_65:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_218_999
                        add              rsp, 16;                             jmp   n67_iterate_β
.Lcall_byname_α_218_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 16;                             jmp   n67_iterate_β
                        .size            n69_call_byname_bx, .-n69_call_byname_bx
                        .type            n70_line_mark_bx, @function
n70_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 86 0
.Lline_mark_α_220_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_220_stno
                        .long            0
                        .long            86
                        .quad            .Lstnof1
                        .popsection
n70_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 86;             jmp   n71_line_mark_α
                        .size            n70_line_mark_bx, .-n70_line_mark_bx
                        .type            n71_line_mark_bx, @function
n71_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_222_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_222_stno
                        .long            0
                        .long            86
                        .quad            .Lstnof1
                        .popsection
n71_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 86;             jmp   n72_call_byname_α
                        .size            n71_line_mark_bx, .-n71_line_mark_bx
                        .type            n72_call_byname_bx, @function
n72_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_call_byname_α:      sub              rsp, 16
                        .section         .rodata
.Lcall_byname_α_rkfnzd225: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd225]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_66:    mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_display_67:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_224_999
                        add              rsp, 16;                             jmp   n73_line_mark_α
.Lcall_byname_α_224_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 16;                             jmp   n73_line_mark_α
                        .size            n72_call_byname_bx, .-n72_call_byname_bx
                        .type            n73_line_mark_bx, @function
n73_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 87 0
.Lline_mark_α_226_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_226_stno
                        .long            0
                        .long            87
                        .quad            .Lstnof1
                        .popsection
n73_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 87;             jmp   n74_lit_integer_α
                        .size            n73_line_mark_bx, .-n73_line_mark_bx
                        .type            n74_lit_integer_bx, @function
n74_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_228_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n75_lit_integer_α
.Llit_integer_α_228_0:  .quad            1
                        .size            n74_lit_integer_bx, .-n74_lit_integer_bx
                        .type            n75_lit_integer_bx, @function
n75_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_229_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_to_α
.Llit_integer_α_229_0:  .quad            4
                        .size            n75_lit_integer_bx, .-n75_lit_integer_bx
                        .type            n76_to_bx, @function
n76_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_to_α:               sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 48]            # lit_integer
                        mov              rsi, qword ptr [rsp + 56]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_display_77:    cmp              eax, -2;                             jne   .Lto_vd_231_9
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_display_76:    mov              r9,  qword ptr [rip + rtccb+48]
.Lto_vd_231_9:          test             eax, eax;                            jne   .Lto_α_231_996
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n99_line_mark_α
.Lto_α_231_996:         push             rax                                  # gc_poll bb_to.cpp:35
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_75:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 32]            # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_display_74:    cmp              eax, -2;                             jne   .Lto_vd_231_8
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_display_73:    mov              r9,  qword ptr [rip + rtccb+48]
.Lto_vd_231_8:          test             eax, eax;                            jne   .Lto_α_231_997
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n99_line_mark_α
.Lto_α_231_997:         push             rax                                  # gc_poll bb_to.cpp:35
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_72:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 48]            # lit_integer
                        mov              rsi, qword ptr [rsp + 56]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_display_71:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 272], rax
                        push             rax                                  # gc_poll bb_to.cpp:106
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_70:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 32]            # lit_integer
                        mov              rsi, qword ptr [rsp + 40]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_display_69:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 280], rax
.Lto_α_231_0:           mov              rax, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        cmp              rax, rcx;                            jle   .Lto_α_231_998
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n99_line_mark_α
.Lto_α_231_998:         mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_to.cpp:126
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_68:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n77_assign_α
n76_to_β:               inc              qword ptr [rbp + 272];               jno   .Lto_β_231_999
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n99_line_mark_α
.Lto_β_231_999:                                                               jmp   .Lto_α_231_0
                        .size            n76_to_bx, .-n76_to_bx
                        .type            n77_assign_bx, @function
n77_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_assign_α:           mov              rax, qword ptr [rsp + 0]             # to
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx;         jmp   n78_bound_α
                        .size            n77_assign_bx, .-n77_assign_bx
                        .type            n78_bound_bx, @function
n78_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_bound_α:            mov              qword ptr [rbp + 336], rsp;          jmp   n79_line_mark_α
n78_bound_β:                                                                  jmp   n79_line_mark_α
                        .size            n78_bound_bx, .-n78_bound_bx
                        .type            n79_line_mark_bx, @function
n79_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_235_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_235_stno
                        .long            0
                        .long            88
                        .quad            .Lstnof1
                        .popsection
n79_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 88;             jmp   n80_var_ref_α
                        .size            n79_line_mark_bx, .-n79_line_mark_bx
                        .type            n80_var_ref_bx, @function
n80_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 1664]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_lit_integer_α
                        .size            n80_var_ref_bx, .-n80_var_ref_bx
                        .type            n81_lit_integer_bx, @function
n81_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_239_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_subscript_α
.Llit_integer_α_239_0:  .quad            4
                        .size            n81_lit_integer_bx, .-n81_lit_integer_bx
                        .type            n82_subscript_bx, @function
n82_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_display_80:    cmp              al, 255;                             jne   .Lsubscript_vd_240_10
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_display_79:    mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_240_10:  cmp              al, 104;                             jne   .Lsubscript_α_240_999
                        add              rsp, 16
                        add              rsp, -176;                           jmp   n97_unmark_α
.Lsubscript_α_240_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:78
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_78:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n83_var_α
                        .size            n82_subscript_bx, .-n82_subscript_bx
                        .type            n83_var_bx, @function
n83_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:                                                                    jmp   n84_subscript_α
                        .size            n83_var_bx, .-n83_var_bx
                        .type            n84_subscript_bx, @function
n84_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rbp + 1680]          # var
                        mov              rcx, qword ptr [rbp + 1688]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_display_83:    cmp              al, 255;                             jne   .Lsubscript_vd_243_11
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_display_82:    mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_243_11:  cmp              al, 104;                             jne   .Lsubscript_α_243_999
                        add              rsp, 16
                        add              rsp, -160;                           jmp   n97_unmark_α
.Lsubscript_α_243_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:78
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_81:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n85_lit_integer_α
                        .size            n84_subscript_bx, .-n84_subscript_bx
                        .type            n85_lit_integer_bx, @function
n85_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_244_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_deref_α
.Llit_integer_α_244_0:  .quad            20
                        .size            n85_lit_integer_bx, .-n85_lit_integer_bx
                        .type            n86_deref_bx, @function
n86_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_display_85:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_245_999
                        add              rsp, 16
                        add              rsp, -128;                           jmp   n97_unmark_α
.Lderef_α_245_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_84:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n87_line_mark_α
                        .size            n86_deref_bx, .-n86_deref_bx
                        .type            n87_line_mark_bx, @function
n87_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_246_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_246_stno
                        .long            0
                        .long            88
                        .quad            .Lstnof1
                        .popsection
n87_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 88;             jmp   n88_call_byname_α
                        .size            n87_line_mark_bx, .-n87_line_mark_bx
                        .type            n88_call_byname_bx, @function
n88_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_call_byname_α:      sub              rsp, 16
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
.Lcall_byname_α_rkfnzd249: .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd249]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 262275
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_86:    mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_display_87:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_248_999
                        add              rsp, 16
                        add              rsp, -112;                           jmp   n97_unmark_α
.Lcall_byname_α_248_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_var_ref_α
                        .size            n88_call_byname_bx, .-n88_call_byname_bx
                        .type            n89_var_ref_bx, @function
n89_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 1664]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_lit_integer_α
                        .size            n89_var_ref_bx, .-n89_var_ref_bx
                        .type            n90_lit_integer_bx, @function
n90_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_252_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_subscript_α
.Llit_integer_α_252_0:  .quad            2
                        .size            n90_lit_integer_bx, .-n90_lit_integer_bx
                        .type            n91_subscript_bx, @function
n91_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_display_90:    cmp              al, 255;                             jne   .Lsubscript_vd_253_12
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_display_89:    mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_253_12:  cmp              al, 104;                             jne   .Lsubscript_α_253_999
                        add              rsp, 16
                        add              rsp, -64;                            jmp   n97_unmark_α
.Lsubscript_α_253_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:78
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_88:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n92_var_α
                        .size            n91_subscript_bx, .-n91_subscript_bx
                        .type            n92_var_bx, @function
n92_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:                                                                    jmp   n93_subscript_α
                        .size            n92_var_bx, .-n92_var_bx
                        .type            n93_subscript_bx, @function
n93_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rbp + 1680]          # var
                        mov              rcx, qword ptr [rbp + 1688]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_display_93:    cmp              al, 255;                             jne   .Lsubscript_vd_256_13
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_display_92:    mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_256_13:  cmp              al, 104;                             jne   .Lsubscript_α_256_999
                        add              rsp, 16
                        add              rsp, -48;                            jmp   n97_unmark_α
.Lsubscript_α_256_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:78
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_91:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n94_deref_α
                        .size            n93_subscript_bx, .-n93_subscript_bx
                        .type            n94_deref_bx, @function
n94_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_display_95:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_257_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n97_unmark_α
.Lderef_α_257_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_94:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n95_line_mark_α
                        .size            n94_deref_bx, .-n94_deref_bx
                        .type            n95_line_mark_bx, @function
n95_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_258_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_258_stno
                        .long            0
                        .long            88
                        .quad            .Lstnof1
                        .popsection
n95_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 88;             jmp   n96_call_byname_α
                        .size            n95_line_mark_bx, .-n95_line_mark_bx
                        .type            n96_call_byname_bx, @function
n96_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_call_byname_α:      sub              rsp, 16
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
.Lcall_byname_α_rkfnzd261: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd261]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_96:    mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_display_97:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_260_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n97_unmark_α
.Lcall_byname_α_260_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_unmark_α
                        .size            n96_call_byname_bx, .-n96_call_byname_bx
                        .type            n97_unmark_bx, @function
n97_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_unmark_α:           add              rsp, 208;                            jmp   n98_line_mark_α
                        .size            n97_unmark_bx, .-n97_unmark_bx
                        .type            n98_line_mark_bx, @function
n98_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_264_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_264_stno
                        .long            0
                        .long            87
                        .quad            .Lstnof1
                        .popsection
n98_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 87;             jmp   n76_to_β
                        .size            n98_line_mark_bx, .-n98_line_mark_bx
                        .type            n99_line_mark_bx, @function
n99_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 89 0
.Lline_mark_α_266_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_266_stno
                        .long            0
                        .long            89
                        .quad            .Lstnof1
                        .popsection
n99_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 89;             jmp   n00001_line_mark_α
                        .size            n99_line_mark_bx, .-n99_line_mark_bx
                        .type            n00001_line_mark_bx, @function
n00001_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_268_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_268_stno
                        .long            0
                        .long            89
                        .quad            .Lstnof1
                        .popsection
n00001_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 89;             jmp   n00002_call_byname_α
                        .size            n00001_line_mark_bx, .-n00001_line_mark_bx
                        .type            n00002_call_byname_bx, @function
n00002_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_call_byname_α:     sub              rsp, 16
                        .section         .rodata
.Lcall_byname_α_rkfnzd271: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd271]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_98:    mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_display_99:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_270_999
                        add              rsp, 16;                             jmp   n00003_line_mark_α
.Lcall_byname_α_270_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 16;                             jmp   n00003_line_mark_α
                        .size            n00002_call_byname_bx, .-n00002_call_byname_bx
                        .type            n00003_line_mark_bx, @function
n00003_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 90 0
.Lline_mark_α_272_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_272_stno
                        .long            0
                        .long            90
                        .quad            .Lstnof1
                        .popsection
n00003_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 90;             jmp   n00004_var_α
                        .size            n00003_line_mark_bx, .-n00003_line_mark_bx
                        .type            n00004_var_bx, @function
n00004_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11984]          # display__STATIC__offset
                        mov              rdx, qword ptr [r9 + 11992]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00005_var_ref_α
                        .size            n00004_var_bx, .-n00004_var_bx
                        .type            n00005_var_ref_bx, @function
n00005_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 1664]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00006_lit_integer_α
                        .size            n00005_var_ref_bx, .-n00005_var_ref_bx
                        .type            n00006_lit_integer_bx, @function
n00006_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_277_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00007_subscript_α
.Llit_integer_α_277_0:  .quad            3
                        .size            n00006_lit_integer_bx, .-n00006_lit_integer_bx
                        .type            n00007_subscript_bx, @function
n00007_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_subscript_α:       sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_278_1:    mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        test             eax, eax;                            jne   .Lsubscript_α_278_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_display_105:   cmp              al, 255;                             jne   .Lsubscript_vd_278_15
                        call             c_rt_subscript_val_strict@PLT
.Lgcsite_display_104:   mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_278_15:  cmp              al, 255;                             jne   .Lsubscript_α_278_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_278_1
.Lsubscript_α_278_4:    push             rax
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
.Lgcsite_display_103:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_278_3
.Lsubscript_α_278_2:    call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_display_102:   cmp              al, 255;                             jne   .Lsubscript_vd_278_14
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_display_101:   mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_278_14:  push             rax
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
.Lgcsite_display_100:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_278_3:    cmp              al, 104;                             jne   .Lsubscript_α_278_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00008_line_mark_α
.Lsubscript_α_278_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00009_deref_α
                        .size            n00007_subscript_bx, .-n00007_subscript_bx
                        .type            n00009_deref_bx, @function
n00009_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_display_107:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_279_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n00008_line_mark_α
.Lderef_α_279_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_106:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00010_iterate_α
                        .size            n00009_deref_bx, .-n00009_deref_bx
                        .type            n00010_iterate_bx, @function
n00010_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_iterate_α:         sub              rsp, 16
                        mov              qword ptr [rbp + 144], 0
.Literate_α_281_0:      mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rbp + 144]
                        call             qword ptr [rip + rt_list_bang_at@GOTPCREL]
.Lgcsite_display_109:   mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Literate_α_281_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n00008_line_mark_α
.Literate_α_281_999:    push             rax                                  # gc_poll bb_iterate.cpp:32
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_108:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00011_line_mark_α
n00010_iterate_β:         inc              qword ptr [rbp + 144];               jmp   .Literate_α_281_0
                        .size            n00010_iterate_bx, .-n00010_iterate_bx
                        .type            n00011_line_mark_bx, @function
n00011_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_282_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_282_stno
                        .long            0
                        .long            90
                        .quad            .Lstnof1
                        .popsection
n00011_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 90;             jmp   n00012_call_byname_α
                        .size            n00011_line_mark_bx, .-n00011_line_mark_bx
                        .type            n00012_call_byname_bx, @function
n00012_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_call_byname_α:     sub              rsp, 16
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
.Lcall_byname_α_rkfnzd285: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd285]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_110:   mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_display_111:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_284_999
                        add              rsp, 16;                             jmp   n00010_iterate_β
.Lcall_byname_α_284_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 16;                             jmp   n00010_iterate_β
                        .size            n00012_call_byname_bx, .-n00012_call_byname_bx
                        .type            n00008_line_mark_bx, @function
n00008_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 91 0
.Lline_mark_α_286_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_286_stno
                        .long            0
                        .long            91
                        .quad            .Lstnof1
                        .popsection
n00008_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 91;             jmp   n00013_var_α
                        .size            n00008_line_mark_bx, .-n00008_line_mark_bx
                        .type            n00013_var_bx, @function
n00013_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11968]          # display__STATIC__bar
                        mov              rdx, qword ptr [r9 + 11976]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00014_line_mark_α
                        .size            n00013_var_bx, .-n00013_var_bx
                        .type            n00014_line_mark_bx, @function
n00014_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_289_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_289_stno
                        .long            0
                        .long            91
                        .quad            .Lstnof1
                        .popsection
n00014_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 91;             jmp   n00015_call_byname_α
                        .size            n00014_line_mark_bx, .-n00014_line_mark_bx
                        .type            n00015_call_byname_bx, @function
n00015_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd292: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd292]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_112:   mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_display_113:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_291_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   display_ω
.Lcall_byname_α_291_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   display_ω
                        .size            n00015_call_byname_bx, .-n00015_call_byname_bx
#-----------------------------------------------------------------------------------------------------------------------
display_β:
                                                                              jmp   display_ω
#-----------------------------------------------------------------------------------------------------------------------
display_γ:
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
                        lea              rsp, [rbp + 1792]
                        mov              rbp, qword ptr [rbp + 1784];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
display_ω:
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
                        lea              rsp, [rbp + 1792]
                        mov              rbp, qword ptr [rbp + 1784];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_display:
                        .quad            7697927851354
                        .quad            515396075600
                        .quad            .Lgcmap_display_s
                        .quad            1696
                        .quad            13
                        .quad            158329674399744
                        .quad            17596481011856
                        .quad            123145302311072
                        .quad            17596481011984
                        .quad            52776558133536
                        .quad            17596481012048
                        .quad            457396837155168
                        .quad            17596481012480
                        .quad            316659348800272
                        .quad            17596481012784
                        .quad            246290604622912
                        .quad            17596481013024
                        .quad            404620279022896
.Lgcmap_display_s:      .string          "display"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_display_0:    .quad            114
                        .quad            .Lgcmap_display
                        .quad            9223389626893338368
                        .quad            .Lgccode_display_0
                        .quad            .Lgcsite_display_0-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_1-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_4-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_3-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_2-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_5-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_6-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_8-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_7-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_10-.Lgccode_display_0
                        .quad            65538
                        .quad            .Lgcsite_display_9-.Lgccode_display_0
                        .quad            65538
                        .quad            .Lgcsite_display_12-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_11-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_14-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_13-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_24-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_23-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_22-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_21-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_20-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_19-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_18-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_17-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_16-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_15-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_27-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_26-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_25-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_30-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_29-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_28-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_32-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_31-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_35-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_34-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_33-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_37-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_36-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_39-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_38-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_41-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_40-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_43-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_42-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_45-.Lgccode_display_0
                        .quad            65538
                        .quad            .Lgcsite_display_44-.Lgccode_display_0
                        .quad            65538
                        .quad            .Lgcsite_display_47-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_46-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_49-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_48-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_50-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_51-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_52-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_53-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_59-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_58-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_57-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_56-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_55-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_54-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_61-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_60-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_63-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_62-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_64-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_65-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_66-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_67-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_77-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_76-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_75-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_74-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_73-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_72-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_71-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_70-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_69-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_68-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_80-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_79-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_78-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_83-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_82-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_81-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_85-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_84-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_86-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_87-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_90-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_89-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_88-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_93-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_92-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_91-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_95-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_94-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_96-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_97-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_98-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_99-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_105-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_104-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_103-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_102-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_101-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_100-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_107-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_106-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_109-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_108-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_110-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_111-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_112-.Lgccode_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_113-.Lgccode_display_0
                        .quad            65537
                        .popsection
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_show_1:
FN__show:
                        sub              rsp, 1408
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 175
                        rep              stosq
                        mov              eax, 0                               # GCANCHOR .Lgcmap_show qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1400], rbp
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
show_α_body:
                        .type            n00016_line_mark_bx, @function
n00016_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 97 0
.Lline_mark_α_378_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_378_stno
                        .long            0
                        .long            97
                        .quad            .Lstnof1
                        .popsection
n00016_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_379_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00017_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_379_0: .quad .Lline_mark_α_379_0_s; .popsection
.Lline_mark_α_379_0_s:  .string          "deal.icn"
                        .size            n00016_line_mark_bx, .-n00016_line_mark_bx
                        .type            n00017_line_mark_bx, @function
n00017_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 98 0
.Lline_mark_α_380_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_380_stno
                        .long            0
                        .long            98
                        .quad            .Lstnof1
                        .popsection
n00017_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 98;             jmp   n00018_disjunction_α
                        .size            n00017_line_mark_bx, .-n00017_line_mark_bx
                        .type            n00018_disjunction_bx, @function
n00018_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_disjunction_α:     mov              qword ptr [rbp + 608], 0
                        mov              qword ptr [rbp + 616], 0
                        mov              dword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], rsp;          jmp   n00019_var_α
.Ldisjunction_γ_295_as: mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_383_0
                                                                              jmp   n00020_line_mark_α
.Ldisjunction_α_383_0:                                                        jmp   n00020_line_mark_α
n00018_disjunction_β:     mov              eax, dword ptr [rbp + 624];          jmp   n00021_goto_β
.Ldisjunction_γ_295_af:
.Ldisjunction_ω_295_af: add              dword ptr [rbp + 624], 1
                        mov              eax, dword ptr [rbp + 624];          jmp   n00020_line_mark_α
                        .size            n00018_disjunction_bx, .-n00018_disjunction_bx
                        .type            n00019_var_bx, @function
n00019_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 12080]          # show__INITFLAG__0
                        mov              rdx, qword ptr [r9 + 12088]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00022_unop_test_α
n00019_var_β:             add              rsp, 16;                             jmp   .Ldisjunction_ω_295_af
                        .size            n00019_var_bx, .-n00019_var_bx
                        .type            n00022_unop_test_bx, @function
n00022_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_unop_test_α:       sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 104;                             jne   .Lunop_test_α_385_998
                        add              rsp, 16;                             jmp   n00019_var_β
.Lunop_test_α_385_998:  cmp              eax, 0;                              je    .Lunop_test_α_385_999
                        add              rsp, 16;                             jmp   n00019_var_β
.Lunop_test_α_385_999:  mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   n00023_lit_integer_α
                        .size            n00022_unop_test_bx, .-n00022_unop_test_bx
                        .type            n00023_lit_integer_bx, @function
n00023_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_386_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00024_assign_α
.Llit_integer_α_386_0:  .quad            1
                        .size            n00023_lit_integer_bx, .-n00023_lit_integer_bx
                        .type            n00024_assign_bx, @function
n00024_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 12080], rax          # show__INITFLAG__0
                        mov              qword ptr [r9 + 12088], rdx;         jmp   n00025_line_mark_α
                        .size            n00024_assign_bx, .-n00024_assign_bx
                        .type            n00025_line_mark_bx, @function
n00025_line_mark_bx:
#=======================================================================================================================
# nstmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 99 0
.Lline_mark_α_388_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_388_stno
                        .long            0
                        .long            99
                        .quad            .Lstnof1
                        .popsection
n00025_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 99;             jmp   n00026_var_ref_α
                        .size            n00025_line_mark_bx, .-n00025_line_mark_bx
                        .type            n00026_var_ref_bx, @function
n00026_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064240                      # blanker
                        mov              qword ptr [rsp + 8], rax;            jmp   n00027_lit_integer_α
                        .size            n00026_var_ref_bx, .-n00026_var_ref_bx
                        .type            n00027_lit_integer_bx, @function
n00027_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_392_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00028_deref_α
.Llit_integer_α_392_0:  .quad            3
                        .size            n00027_lit_integer_bx, .-n00027_lit_integer_bx
                        .type            n00028_deref_bx, @function
n00028_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_show_1:        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_393_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00029_line_mark_α
.Lderef_α_393_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_0:        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00030_line_mark_α
                        .size            n00028_deref_bx, .-n00028_deref_bx
                        .type            n00030_line_mark_bx, @function
n00030_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_394_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_394_stno
                        .long            0
                        .long            99
                        .quad            .Lstnof1
                        .popsection
n00030_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 99;             jmp   n00031_call_byname_α
                        .size            n00030_line_mark_bx, .-n00030_line_mark_bx
                        .type            n00031_call_byname_bx, @function
n00031_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_call_byname_α:     sub              rsp, 16
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
.Lcall_byname_α_rkfnzd397: .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd397]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_2:        mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_show_3:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_396_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00029_line_mark_α
.Lcall_byname_α_396_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00032_var_α
                        .size            n00031_call_byname_bx, .-n00031_call_byname_bx
                        .type            n00032_var_bx, @function
n00032_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # denom
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00033_binop_α
                        .size            n00032_var_bx, .-n00032_var_bx
                        .type            n00033_binop_bx, @function
n00033_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]            # call
                        mov              rcx, qword ptr [rsp + 40]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_show_6:        cmp              al, 255;                             jne   .Lbinop_vd_399_16
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_show_5:        mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_399_16:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_4:        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_399_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n00029_line_mark_α
.Lbinop_α_399_999:                                                            jmp   n00034_assign_α
                        .size            n00033_binop_bx, .-n00033_binop_bx
                        .type            n00034_assign_bx, @function
n00034_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 12016], rax          # show__STATIC__clubmap
                        mov              qword ptr [r9 + 12024], rdx
                        add              rsp, 96;                             jmp   n00029_line_mark_α
                        .size            n00034_assign_bx, .-n00034_assign_bx
                        .type            n00029_line_mark_bx, @function
n00029_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 100 0
.Lline_mark_α_401_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_401_stno
                        .long            0
                        .long            100
                        .quad            .Lstnof1
                        .popsection
n00029_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00035_var_α
                        .size            n00029_line_mark_bx, .-n00029_line_mark_bx
                        .type            n00035_var_bx, @function
n00035_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # denom
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00036_var_α
                        .size            n00035_var_bx, .-n00035_var_bx
                        .type            n00036_var_bx, @function
n00036_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11952]          # blanker
                        mov              rdx, qword ptr [r9 + 11960]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00037_binop_α
                        .size            n00036_var_bx, .-n00036_var_bx
                        .type            n00037_binop_bx, @function
n00037_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_show_9:        cmp              al, 255;                             jne   .Lbinop_vd_405_17
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_show_8:        mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_405_17:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_7:        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_405_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00038_line_mark_α
.Lbinop_α_405_999:                                                            jmp   n00039_var_ref_α
                        .size            n00037_binop_bx, .-n00037_binop_bx
                        .type            n00039_var_ref_bx, @function
n00039_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064240                      # blanker
                        mov              qword ptr [rsp + 8], rax;            jmp   n00040_lit_integer_α
                        .size            n00039_var_ref_bx, .-n00039_var_ref_bx
                        .type            n00040_lit_integer_bx, @function
n00040_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_408_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00041_deref_α
.Llit_integer_α_408_0:  .quad            2
                        .size            n00040_lit_integer_bx, .-n00040_lit_integer_bx
                        .type            n00041_deref_bx, @function
n00041_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_show_11:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_409_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n00038_line_mark_α
.Lderef_α_409_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_10:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00042_line_mark_α
                        .size            n00041_deref_bx, .-n00041_deref_bx
                        .type            n00042_line_mark_bx, @function
n00042_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_410_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_410_stno
                        .long            0
                        .long            100
                        .quad            .Lstnof1
                        .popsection
n00042_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00043_call_byname_α
                        .size            n00042_line_mark_bx, .-n00042_line_mark_bx
                        .type            n00043_call_byname_bx, @function
n00043_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_call_byname_α:     sub              rsp, 16
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
.Lcall_byname_α_rkfnzd413: .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd413]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_12:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_show_13:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_412_999
                        add              rsp, 16
                        add              rsp, 96;                             jmp   n00038_line_mark_α
.Lcall_byname_α_412_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00044_binop_α
                        .size            n00043_call_byname_bx, .-n00043_call_byname_bx
                        .type            n00044_binop_bx, @function
n00044_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]            # binop
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_show_16:       cmp              al, 255;                             jne   .Lbinop_vd_414_18
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_show_15:       mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_414_18:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_14:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_414_999
                        add              rsp, 16
                        add              rsp, 112;                            jmp   n00038_line_mark_α
.Lbinop_α_414_999:                                                            jmp   n00045_assign_α
                        .size            n00044_binop_bx, .-n00044_binop_bx
                        .type            n00045_assign_bx, @function
n00045_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 12032], rax          # show__STATIC__diamondmap
                        mov              qword ptr [r9 + 12040], rdx
                        add              rsp, 128;                            jmp   n00038_line_mark_α
                        .size            n00045_assign_bx, .-n00045_assign_bx
                        .type            n00038_line_mark_bx, @function
n00038_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 101 0
.Lline_mark_α_416_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_416_stno
                        .long            0
                        .long            101
                        .quad            .Lstnof1
                        .popsection
n00038_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 101;            jmp   n00046_var_ref_α
                        .size            n00038_line_mark_bx, .-n00038_line_mark_bx
                        .type            n00046_var_ref_bx, @function
n00046_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064240                      # blanker
                        mov              qword ptr [rsp + 8], rax;            jmp   n00047_lit_integer_α
                        .size            n00046_var_ref_bx, .-n00046_var_ref_bx
                        .type            n00047_lit_integer_bx, @function
n00047_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_420_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00048_deref_α
.Llit_integer_α_420_0:  .quad            2
                        .size            n00047_lit_integer_bx, .-n00047_lit_integer_bx
                        .type            n00048_deref_bx, @function
n00048_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_show_18:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_421_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00049_line_mark_α
.Lderef_α_421_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_17:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00050_line_mark_α
                        .size            n00048_deref_bx, .-n00048_deref_bx
                        .type            n00050_line_mark_bx, @function
n00050_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_422_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_422_stno
                        .long            0
                        .long            101
                        .quad            .Lstnof1
                        .popsection
n00050_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 101;            jmp   n00051_call_byname_α
                        .size            n00050_line_mark_bx, .-n00050_line_mark_bx
                        .type            n00051_call_byname_bx, @function
n00051_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_call_byname_α:     sub              rsp, 16
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
.Lcall_byname_α_rkfnzd425: .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd425]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_19:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_show_20:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_424_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00049_line_mark_α
.Lcall_byname_α_424_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00052_var_α
                        .size            n00051_call_byname_bx, .-n00051_call_byname_bx
                        .type            n00052_var_bx, @function
n00052_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # denom
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00053_binop_α
                        .size            n00052_var_bx, .-n00052_var_bx
                        .type            n00053_binop_bx, @function
n00053_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_show_23:       cmp              al, 255;                             jne   .Lbinop_vd_427_19
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_show_22:       mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_427_19:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_21:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_427_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n00049_line_mark_α
.Lbinop_α_427_999:                                                            jmp   n00054_var_α
                        .size            n00053_binop_bx, .-n00053_binop_bx
                        .type            n00054_var_bx, @function
n00054_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11952]          # blanker
                        mov              rdx, qword ptr [r9 + 11960]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00055_binop_α
                        .size            n00054_var_bx, .-n00054_var_bx
                        .type            n00055_binop_bx, @function
n00055_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_show_26:       cmp              al, 255;                             jne   .Lbinop_vd_429_20
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_show_25:       mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_429_20:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_24:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_429_999
                        add              rsp, 16
                        add              rsp, 112;                            jmp   n00049_line_mark_α
.Lbinop_α_429_999:                                                            jmp   n00056_assign_α
                        .size            n00055_binop_bx, .-n00055_binop_bx
                        .type            n00056_assign_bx, @function
n00056_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 12048], rax          # show__STATIC__heartmap
                        mov              qword ptr [r9 + 12056], rdx
                        add              rsp, 128;                            jmp   n00049_line_mark_α
                        .size            n00056_assign_bx, .-n00056_assign_bx
                        .type            n00049_line_mark_bx, @function
n00049_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 102 0
.Lline_mark_α_431_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_431_stno
                        .long            0
                        .long            102
                        .quad            .Lstnof1
                        .popsection
n00049_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 102;            jmp   n00057_var_ref_α
                        .size            n00049_line_mark_bx, .-n00049_line_mark_bx
                        .type            n00057_var_ref_bx, @function
n00057_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064240                      # blanker
                        mov              qword ptr [rsp + 8], rax;            jmp   n00058_lit_integer_α
                        .size            n00057_var_ref_bx, .-n00057_var_ref_bx
                        .type            n00058_lit_integer_bx, @function
n00058_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_435_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00059_deref_α
.Llit_integer_α_435_0:  .quad            3
                        .size            n00058_lit_integer_bx, .-n00058_lit_integer_bx
                        .type            n00059_deref_bx, @function
n00059_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_show_28:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_436_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n00020_line_mark_α
.Lderef_α_436_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_27:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00060_line_mark_α
                        .size            n00059_deref_bx, .-n00059_deref_bx
                        .type            n00060_line_mark_bx, @function
n00060_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_437_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_437_stno
                        .long            0
                        .long            102
                        .quad            .Lstnof1
                        .popsection
n00060_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 102;            jmp   n00061_call_byname_α
                        .size            n00060_line_mark_bx, .-n00060_line_mark_bx
                        .type            n00061_call_byname_bx, @function
n00061_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_call_byname_α:     sub              rsp, 16
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
.Lcall_byname_α_rkfnzd440: .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd440]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_29:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_show_30:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_439_999
                        add              rsp, 16
                        add              rsp, 96;                             jmp   n00020_line_mark_α
.Lcall_byname_α_439_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00062_var_α
                        .size            n00061_call_byname_bx, .-n00061_call_byname_bx
                        .type            n00062_var_bx, @function
n00062_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # denom
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00063_binop_α
                        .size            n00062_var_bx, .-n00062_var_bx
                        .type            n00063_binop_bx, @function
n00063_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_show_33:       cmp              al, 255;                             jne   .Lbinop_vd_442_21
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_show_32:       mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_442_21:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_31:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_442_999
                        add              rsp, 16
                        add              rsp, 128;                            jmp   n00020_line_mark_α
.Lbinop_α_442_999:                                                            jmp   n00064_assign_α
                        .size            n00063_binop_bx, .-n00063_binop_bx
                        .type            n00064_assign_bx, @function
n00064_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 12064], rax          # show__STATIC__spademap
                        mov              qword ptr [r9 + 12072], rdx;         jmp   n00065_conjunction_α
                        .size            n00064_assign_bx, .-n00064_assign_bx
                        .type            n00065_conjunction_bx, @function
n00065_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_conjunction_α:     mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 664], rax;          jmp   n00066_conjunction_α
n00065_conjunction_β:                                                           jmp   n00020_line_mark_α
                        .size            n00065_conjunction_bx, .-n00065_conjunction_bx
                        .type            n00066_conjunction_bx, @function
n00066_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_conjunction_α:     mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 616], rax
                        add              rsp, 144;                            jmp   .Ldisjunction_γ_295_as
n00066_conjunction_β:     mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 616], rax
                        add              rsp, 144;                            jmp   n00020_line_mark_α
                        .size            n00066_conjunction_bx, .-n00066_conjunction_bx
                        .type            n00021_goto_bx, @function
n00021_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_goto_α:                                                                  jmp   n00020_line_mark_α
n00021_goto_β:                                                                  jmp   n00020_line_mark_α
                        .size            n00021_goto_bx, .-n00021_goto_bx
                        .type            n00020_line_mark_bx, @function
n00020_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 104 0
.Lline_mark_α_447_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_447_stno
                        .long            0
                        .long            104
                        .quad            .Lstnof1
                        .popsection
n00020_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 104;            jmp   n00067_lit_string_α
                        .size            n00020_line_mark_bx, .-n00020_line_mark_bx
                        .type            n00067_lit_string_bx, @function
n00067_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_449_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00068_var_ref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_449_0: .quad .Llit_string_α_449_0_s; .popsection
.Llit_string_α_449_0_s: .string          "S: "
                        .size            n00067_lit_string_bx, .-n00067_lit_string_bx
                        .type            n00068_var_ref_bx, @function
n00068_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 1408]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00069_var_α
                        .size            n00068_var_ref_bx, .-n00068_var_ref_bx
                        .type            n00069_var_bx, @function
n00069_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 12064]          # show__STATIC__spademap
                        mov              rdx, qword ptr [r9 + 12072]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00070_deref_α
                        .size            n00069_var_bx, .-n00069_var_bx
                        .type            n00070_deref_bx, @function
n00070_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_show_35:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_453_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   show_ω
.Lderef_α_453_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_34:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00071_line_mark_α
                        .size            n00070_deref_bx, .-n00070_deref_bx
                        .type            n00071_line_mark_bx, @function
n00071_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_454_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_454_stno
                        .long            0
                        .long            105
                        .quad            .Lstnof1
                        .popsection
n00071_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 105;            jmp   n00072_call_proc_staged_α
                        .size            n00071_line_mark_bx, .-n00071_line_mark_bx
                        .type            n00072_call_proc_staged_bx, @function
n00072_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rcx, [rip + .Lcall_proc_staged_α_457_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_457_3]
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
                        mov              rax, qword ptr [rax + 264];          jmp   rax
.Lcall_proc_staged_α_457_3:
.Lgcsite_show_37:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 105
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_457_2
.Lcall_proc_staged_α_457_4:
.Lgcsite_show_36:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 105
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_457_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_457_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   show_ω
.Lcall_proc_staged_α_457_999:
                                                                              jmp   n00073_deref_α
n00072_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 105
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        add              rsp, 64;                             jmp   show_ω
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_457_0: .quad .Lcall_proc_staged_β_457_0_s; .popsection
.Lcall_proc_staged_β_457_0_s:
                        .string          "arrange"
                        .size            n00072_call_proc_staged_bx, .-n00072_call_proc_staged_bx
                        .type            n00073_deref_bx, @function
n00073_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_show_39:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_458_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   show_ω
.Lderef_α_458_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_38:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00074_binop_α
                        .size            n00073_deref_bx, .-n00073_deref_bx
                        .type            n00074_binop_bx, @function
n00074_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 96]            # lit_string
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_show_42:       cmp              al, 255;                             jne   .Lbinop_vd_459_22
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_show_41:       mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_459_22:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_40:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_459_999
                        add              rsp, 16
                        add              rsp, 96;                             jmp   show_ω
.Lbinop_α_459_999:                                                            jmp   n00075_lit_string_α
                        .size            n00074_binop_bx, .-n00074_binop_bx
                        .type            n00075_lit_string_bx, @function
n00075_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_460_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00076_var_ref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_460_0: .quad .Llit_string_α_460_0_s; .popsection
.Llit_string_α_460_0_s: .string          "H: "
                        .size            n00075_lit_string_bx, .-n00075_lit_string_bx
                        .type            n00076_var_ref_bx, @function
n00076_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 1408]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00077_var_α
                        .size            n00076_var_ref_bx, .-n00076_var_ref_bx
                        .type            n00077_var_bx, @function
n00077_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 12048]          # show__STATIC__heartmap
                        mov              rdx, qword ptr [r9 + 12056]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00078_deref_α
                        .size            n00077_var_bx, .-n00077_var_bx
                        .type            n00078_deref_bx, @function
n00078_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_show_44:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_464_999
                        add              rsp, 16
                        add              rsp, 160;                            jmp   show_ω
.Lderef_α_464_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_43:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00079_line_mark_α
                        .size            n00078_deref_bx, .-n00078_deref_bx
                        .type            n00079_line_mark_bx, @function
n00079_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_465_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_465_stno
                        .long            0
                        .long            106
                        .quad            .Lstnof1
                        .popsection
n00079_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 106;            jmp   n00080_call_proc_staged_α
                        .size            n00079_line_mark_bx, .-n00079_line_mark_bx
                        .type            n00080_call_proc_staged_bx, @function
n00080_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rcx, [rip + .Lcall_proc_staged_α_468_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_468_3]
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
                        mov              rax, qword ptr [rax + 264];          jmp   rax
.Lcall_proc_staged_α_468_3:
.Lgcsite_show_46:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 106
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_468_2
.Lcall_proc_staged_α_468_4:
.Lgcsite_show_45:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 106
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_468_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_468_999
                        add              rsp, 16
                        add              rsp, 176;                            jmp   show_ω
.Lcall_proc_staged_α_468_999:
                                                                              jmp   n00081_deref_α
n00080_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 106
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        add              rsp, 176;                            jmp   show_ω
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_468_0: .quad .Lcall_proc_staged_β_468_0_s; .popsection
.Lcall_proc_staged_β_468_0_s:
                        .string          "arrange"
                        .size            n00080_call_proc_staged_bx, .-n00080_call_proc_staged_bx
                        .type            n00081_deref_bx, @function
n00081_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_show_48:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_469_999
                        add              rsp, 16
                        add              rsp, 192;                            jmp   show_ω
.Lderef_α_469_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_47:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00082_binop_α
                        .size            n00081_deref_bx, .-n00081_deref_bx
                        .type            n00082_binop_bx, @function
n00082_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 96]            # lit_string
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_show_51:       cmp              al, 255;                             jne   .Lbinop_vd_470_23
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_show_50:       mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_470_23:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_49:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_470_999
                        add              rsp, 16
                        add              rsp, 208;                            jmp   show_ω
.Lbinop_α_470_999:                                                            jmp   n00083_lit_string_α
                        .size            n00082_binop_bx, .-n00082_binop_bx
                        .type            n00083_lit_string_bx, @function
n00083_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00083_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_471_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00084_var_ref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_471_0: .quad .Llit_string_α_471_0_s; .popsection
.Llit_string_α_471_0_s: .string          "D: "
                        .size            n00083_lit_string_bx, .-n00083_lit_string_bx
                        .type            n00084_var_ref_bx, @function
n00084_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00084_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 1408]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00085_var_α
                        .size            n00084_var_ref_bx, .-n00084_var_ref_bx
                        .type            n00085_var_bx, @function
n00085_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 12032]          # show__STATIC__diamondmap
                        mov              rdx, qword ptr [r9 + 12040]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00086_deref_α
                        .size            n00085_var_bx, .-n00085_var_bx
                        .type            n00086_deref_bx, @function
n00086_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_show_53:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_475_999
                        add              rsp, 16
                        add              rsp, 272;                            jmp   show_ω
.Lderef_α_475_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_52:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00087_line_mark_α
                        .size            n00086_deref_bx, .-n00086_deref_bx
                        .type            n00087_line_mark_bx, @function
n00087_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_476_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_476_stno
                        .long            0
                        .long            107
                        .quad            .Lstnof1
                        .popsection
n00087_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 107;            jmp   n00088_call_proc_staged_α
                        .size            n00087_line_mark_bx, .-n00087_line_mark_bx
                        .type            n00088_call_proc_staged_bx, @function
n00088_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rcx, [rip + .Lcall_proc_staged_α_479_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_479_3]
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
                        mov              rax, qword ptr [rax + 264];          jmp   rax
.Lcall_proc_staged_α_479_3:
.Lgcsite_show_55:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 107
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_479_2
.Lcall_proc_staged_α_479_4:
.Lgcsite_show_54:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 107
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_479_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_479_999
                        add              rsp, 16
                        add              rsp, 288;                            jmp   show_ω
.Lcall_proc_staged_α_479_999:
                                                                              jmp   n00089_deref_α
n00088_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 107
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        add              rsp, 288;                            jmp   show_ω
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_479_0: .quad .Lcall_proc_staged_β_479_0_s; .popsection
.Lcall_proc_staged_β_479_0_s:
                        .string          "arrange"
                        .size            n00088_call_proc_staged_bx, .-n00088_call_proc_staged_bx
                        .type            n00089_deref_bx, @function
n00089_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_show_57:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_480_999
                        add              rsp, 16
                        add              rsp, 304;                            jmp   show_ω
.Lderef_α_480_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_56:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00090_binop_α
                        .size            n00089_deref_bx, .-n00089_deref_bx
                        .type            n00090_binop_bx, @function
n00090_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 96]            # lit_string
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_show_60:       cmp              al, 255;                             jne   .Lbinop_vd_481_24
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_show_59:       mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_481_24:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_58:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_481_999
                        add              rsp, 16
                        add              rsp, 320;                            jmp   show_ω
.Lbinop_α_481_999:                                                            jmp   n00091_lit_string_α
                        .size            n00090_binop_bx, .-n00090_binop_bx
                        .type            n00091_lit_string_bx, @function
n00091_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_482_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00092_var_ref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_482_0: .quad .Llit_string_α_482_0_s; .popsection
.Llit_string_α_482_0_s: .string          "C: "
                        .size            n00091_lit_string_bx, .-n00091_lit_string_bx
                        .type            n00092_var_ref_bx, @function
n00092_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 1408]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00093_var_α
                        .size            n00092_var_ref_bx, .-n00092_var_ref_bx
                        .type            n00093_var_bx, @function
n00093_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 12016]          # show__STATIC__clubmap
                        mov              rdx, qword ptr [r9 + 12024]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00094_deref_α
                        .size            n00093_var_bx, .-n00093_var_bx
                        .type            n00094_deref_bx, @function
n00094_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_show_62:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_486_999
                        add              rsp, 16
                        add              rsp, 384;                            jmp   show_ω
.Lderef_α_486_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_61:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00095_line_mark_α
                        .size            n00094_deref_bx, .-n00094_deref_bx
                        .type            n00095_line_mark_bx, @function
n00095_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_487_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_487_stno
                        .long            0
                        .long            108
                        .quad            .Lstnof1
                        .popsection
n00095_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 108;            jmp   n00096_call_proc_staged_α
                        .size            n00095_line_mark_bx, .-n00095_line_mark_bx
                        .type            n00096_call_proc_staged_bx, @function
n00096_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rcx, [rip + .Lcall_proc_staged_α_490_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_490_3]
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
                        mov              rax, qword ptr [rax + 264];          jmp   rax
.Lcall_proc_staged_α_490_3:
.Lgcsite_show_64:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 108
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_490_2
.Lcall_proc_staged_α_490_4:
.Lgcsite_show_63:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 108
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_490_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_490_999
                        add              rsp, 16
                        add              rsp, 400;                            jmp   show_ω
.Lcall_proc_staged_α_490_999:
                                                                              jmp   n00097_deref_α
n00096_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 108
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        add              rsp, 400;                            jmp   show_ω
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_490_0: .quad .Lcall_proc_staged_β_490_0_s; .popsection
.Lcall_proc_staged_β_490_0_s:
                        .string          "arrange"
                        .size            n00096_call_proc_staged_bx, .-n00096_call_proc_staged_bx
                        .type            n00097_deref_bx, @function
n00097_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00097_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_show_66:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_491_999
                        add              rsp, 16
                        add              rsp, 416;                            jmp   show_ω
.Lderef_α_491_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_65:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00098_binop_α
                        .size            n00097_deref_bx, .-n00097_deref_bx
                        .type            n00098_binop_bx, @function
n00098_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 96]            # lit_string
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_show_69:       cmp              al, 255;                             jne   .Lbinop_vd_492_25
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_show_68:       mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_492_25:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_67:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_492_999
                        add              rsp, 16
                        add              rsp, 432;                            jmp   show_ω
.Lbinop_α_492_999:                                                            jmp   n00099_make_list_α
                        .size            n00098_binop_bx, .-n00098_binop_bx
                        .type            n00099_make_list_bx, @function
n00099_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_make_list_α:       sub              rsp, 16
                        sub              rsp, 64
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 4
                        call             rt_make_list@PLT
.Lgcsite_show_71:       mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 64
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_make_list.cpp:33
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_70:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00100_return_α
                        .size            n00099_make_list_bx, .-n00099_make_list_bx
                        .type            n00100_return_bx, @function
n00100_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00100_return_α:          mov              rax, qword ptr [rsp + 0]             # make_list
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        add              rsp, 464;                            jmp   show_γ
                        .size            n00100_return_bx, .-n00100_return_bx
#-----------------------------------------------------------------------------------------------------------------------
show_β:
                                                                              jmp   show_ω
#-----------------------------------------------------------------------------------------------------------------------
show_γ:
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
                        lea              rsp, [rbp + 1424]
                        mov              rbp, qword ptr [rbp + 1400];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
show_ω:
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
                        lea              rsp, [rbp + 1424]
                        mov              rbp, qword ptr [rbp + 1400];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_show:
                        .quad            6048660409690
                        .quad            515396075584
                        .quad            .Lgcmap_show_s
                        .quad            1328
                        .quad            3
                        .quad            686095255732224
                        .quad            17596481012336
                        .quad            756463999910528
.Lgcmap_show_s:         .string          "show"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_show_1:       .quad            72
                        .quad            .Lgcmap_show
                        .quad            9223389622598370704
                        .quad            .Lgccode_show_1
                        .quad            .Lgcsite_show_1-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_0-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_2-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_3-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_6-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_5-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_4-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_9-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_8-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_7-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_11-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_10-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_12-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_13-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_16-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_15-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_14-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_18-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_17-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_19-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_20-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_23-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_22-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_21-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_26-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_25-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_24-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_28-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_27-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_29-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_30-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_33-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_32-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_31-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_35-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_34-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_37-.Lgccode_show_1
                        .quad            65538
                        .quad            .Lgcsite_show_36-.Lgccode_show_1
                        .quad            65538
                        .quad            .Lgcsite_show_39-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_38-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_42-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_41-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_40-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_44-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_43-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_46-.Lgccode_show_1
                        .quad            65538
                        .quad            .Lgcsite_show_45-.Lgccode_show_1
                        .quad            65538
                        .quad            .Lgcsite_show_48-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_47-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_51-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_50-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_49-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_53-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_52-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_55-.Lgccode_show_1
                        .quad            65538
                        .quad            .Lgcsite_show_54-.Lgccode_show_1
                        .quad            65538
                        .quad            .Lgcsite_show_57-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_56-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_60-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_59-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_58-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_62-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_61-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_64-.Lgccode_show_1
                        .quad            65538
                        .quad            .Lgcsite_show_63-.Lgccode_show_1
                        .quad            65538
                        .quad            .Lgcsite_show_66-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_65-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_69-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_68-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_67-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_71-.Lgccode_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_70-.Lgccode_show_1
                        .quad            65537
                        .popsection
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_arrange_2:
FN__arrange:
                        sub              rsp, 448
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
                        mov              qword ptr [rdi + 432], rax
                        mov              eax, 0                               # GCANCHOR .Lgcmap_arrange qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 440], rbp
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
arrange_α_body:
                        .type            n00101_line_mark_bx, @function
n00101_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 115 0
.Lline_mark_α_514_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_514_stno
                        .long            0
                        .long            115
                        .quad            .Lstnof1
                        .popsection
n00101_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_515_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00102_var_ref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_515_0: .quad .Lline_mark_α_515_0_s; .popsection
.Lline_mark_α_515_0_s:  .string          "deal.icn"
                        .size            n00101_line_mark_bx, .-n00101_line_mark_bx
                        .type            n00102_var_ref_bx, @function
n00102_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 464]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00103_var_ref_α
                        .size            n00102_var_ref_bx, .-n00102_var_ref_bx
                        .type            n00103_var_ref_bx, @function
n00103_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064160                      # deckimage
                        mov              qword ptr [rsp + 8], rax;            jmp   n00104_var_ref_α
                        .size            n00103_var_ref_bx, .-n00103_var_ref_bx
                        .type            n00104_var_ref_bx, @function
n00104_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 512]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00105_deref_α
                        .size            n00104_var_ref_bx, .-n00104_var_ref_bx
                        .type            n00105_deref_bx, @function
n00105_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00105_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # var_ref
                        mov              rsi, qword ptr [rsp + 56]            # d
                        call             rt_deref@PLT
.Lgcsite_arrange_1:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_522_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   arrange_ω
.Lderef_α_522_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_arrange_0:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00106_deref_α
                        .size            n00105_deref_bx, .-n00105_deref_bx
                        .type            n00106_deref_bx, @function
n00106_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # var_ref
                        mov              rsi, qword ptr [rsp + 56]            # d
                        call             rt_deref@PLT
.Lgcsite_arrange_3:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_523_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   arrange_ω
.Lderef_α_523_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_arrange_2:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00107_deref_α
                        .size            n00106_deref_bx, .-n00106_deref_bx
                        .type            n00107_deref_bx, @function
n00107_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # var_ref
                        mov              rsi, qword ptr [rsp + 56]            # d
                        call             rt_deref@PLT
.Lgcsite_arrange_5:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_524_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   arrange_ω
.Lderef_α_524_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_arrange_4:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00108_line_mark_α
                        .size            n00107_deref_bx, .-n00107_deref_bx
                        .type            n00108_line_mark_bx, @function
n00108_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_525_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_525_stno
                        .long            0
                        .long            115
                        .quad            .Lstnof1
                        .popsection
n00108_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00109_call_byname_α
                        .size            n00108_line_mark_bx, .-n00108_line_mark_bx
                        .type            n00109_call_byname_bx, @function
n00109_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_call_byname_α:     sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd528: .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd528]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 196743
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_arrange_6:     mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_arrange_7:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_byname_α_527_999
                        add              rsp, 16
                        add              rsp, 96;                             jmp   arrange_ω
.Lcall_byname_α_527_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00110_lit_charset_α
                        .size            n00109_call_byname_bx, .-n00109_call_byname_bx
                        .type            n00110_lit_charset_bx, @function
n00110_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00110_lit_charset_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4294967295
                        mov              rax, qword ptr [rip + .Llit_charset_α_529_0]
                        mov              qword ptr [rsp + 8], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_529_0] # ptr
                        mov              rsi, 1                               # len
                        call             rt_icn_cset_register@PLT
.Lgcsite_arrange_9:     mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:124
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_arrange_8:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00111_binop_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_charset_α_529_0: .quad .Llit_charset_α_529_0_s; .popsection
.Llit_charset_α_529_0_s:
                        .string          " "
                        .size            n00110_lit_charset_bx, .-n00110_lit_charset_bx
                        .type            n00111_binop_bx, @function
n00111_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00111_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_charset
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_cdiff_strict@PLT
.Lgcsite_arrange_11:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_530_999
                        add              rsp, 16
                        add              rsp, 128;                            jmp   arrange_ω
.Lbinop_α_530_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:322
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_arrange_10:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00112_var_ref_α
                        .size            n00111_binop_bx, .-n00111_binop_bx
                        .type            n00112_var_ref_bx, @function
n00112_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064208                      # denom
                        mov              qword ptr [rsp + 8], rax;            jmp   n00113_var_ref_α
                        .size            n00112_var_ref_bx, .-n00112_var_ref_bx
                        .type            n00113_var_ref_bx, @function
n00113_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00113_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064224                      # rank
                        mov              qword ptr [rsp + 8], rax;            jmp   n00114_deref_α
                        .size            n00113_var_ref_bx, .-n00113_var_ref_bx
                        .type            n00114_deref_bx, @function
n00114_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00114_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_arrange_13:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_535_999
                        add              rsp, 16
                        add              rsp, 176;                            jmp   arrange_ω
.Lderef_α_535_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_arrange_12:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00115_deref_α
                        .size            n00114_deref_bx, .-n00114_deref_bx
                        .type            n00115_deref_bx, @function
n00115_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00115_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_arrange_15:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_536_999
                        add              rsp, 16
                        add              rsp, 192;                            jmp   arrange_ω
.Lderef_α_536_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_arrange_14:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00116_line_mark_α
                        .size            n00115_deref_bx, .-n00115_deref_bx
                        .type            n00116_line_mark_bx, @function
n00116_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_537_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_537_stno
                        .long            0
                        .long            115
                        .quad            .Lstnof1
                        .popsection
n00116_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00117_call_byname_α
                        .size            n00116_line_mark_bx, .-n00116_line_mark_bx
                        .type            n00117_call_byname_bx, @function
n00117_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_call_byname_α:     sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd540: .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd540]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 196743
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_arrange_16:    mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_arrange_17:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_byname_α_539_999
                        add              rsp, 16
                        add              rsp, 208;                            jmp   arrange_ω
.Lcall_byname_α_539_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00118_return_α
                        .size            n00117_call_byname_bx, .-n00117_call_byname_bx
                        .type            n00118_return_bx, @function
n00118_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_return_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        add              rsp, 224;                            jmp   arrange_γ
                        .size            n00118_return_bx, .-n00118_return_bx
#-----------------------------------------------------------------------------------------------------------------------
arrange_β:
                                                                              jmp   arrange_ω
#-----------------------------------------------------------------------------------------------------------------------
arrange_γ:
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
                        lea              rsp, [rbp + 480]
                        mov              rbp, qword ptr [rbp + 440];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
arrange_ω:
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
                        lea              rsp, [rbp + 480]
                        mov              rbp, qword ptr [rbp + 440];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_arrange:
                        .quad            1925491805530
                        .quad            515396075600
                        .quad            .Lgcmap_arrange_s
                        .quad            352
                        .quad            1
                        .quad            387028092977152
.Lgcmap_arrange_s:      .string          "arrange"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_arrange_2:    .quad            18
                        .quad            .Lgcmap_arrange
                        .quad            9223389618303402464
                        .quad            .Lgccode_arrange_2
                        .quad            .Lgcsite_arrange_1-.Lgccode_arrange_2
                        .quad            65537
                        .quad            .Lgcsite_arrange_0-.Lgccode_arrange_2
                        .quad            65537
                        .quad            .Lgcsite_arrange_3-.Lgccode_arrange_2
                        .quad            65537
                        .quad            .Lgcsite_arrange_2-.Lgccode_arrange_2
                        .quad            65537
                        .quad            .Lgcsite_arrange_5-.Lgccode_arrange_2
                        .quad            65537
                        .quad            .Lgcsite_arrange_4-.Lgccode_arrange_2
                        .quad            65537
                        .quad            .Lgcsite_arrange_6-.Lgccode_arrange_2
                        .quad            65537
                        .quad            .Lgcsite_arrange_7-.Lgccode_arrange_2
                        .quad            65537
                        .quad            .Lgcsite_arrange_9-.Lgccode_arrange_2
                        .quad            65537
                        .quad            .Lgcsite_arrange_8-.Lgccode_arrange_2
                        .quad            65537
                        .quad            .Lgcsite_arrange_11-.Lgccode_arrange_2
                        .quad            65537
                        .quad            .Lgcsite_arrange_10-.Lgccode_arrange_2
                        .quad            65537
                        .quad            .Lgcsite_arrange_13-.Lgccode_arrange_2
                        .quad            65537
                        .quad            .Lgcsite_arrange_12-.Lgccode_arrange_2
                        .quad            65537
                        .quad            .Lgcsite_arrange_15-.Lgccode_arrange_2
                        .quad            65537
                        .quad            .Lgcsite_arrange_14-.Lgccode_arrange_2
                        .quad            65537
                        .quad            .Lgcsite_arrange_16-.Lgccode_arrange_2
                        .quad            65537
                        .quad            .Lgcsite_arrange_17-.Lgccode_arrange_2
                        .quad            65537
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
                        .type            n00119_line_mark_bx, @function
n00119_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 121 0
.Lline_mark_α_711_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_711_stno
                        .long            0
                        .long            121
                        .quad            .Lstnof1
                        .popsection
n00119_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 121
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_712_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00120_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_712_0: .quad .Lline_mark_α_712_0_s; .popsection
.Lline_mark_α_712_0_s:  .string          "deal.icn"
                        .size            n00119_line_mark_bx, .-n00119_line_mark_bx
                        .type            n00120_line_mark_bx, @function
n00120_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 122 0
.Lline_mark_α_713_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_713_stno
                        .long            0
                        .long            122
                        .quad            .Lstnof1
                        .popsection
n00120_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 122;            jmp   n00121_var_ref_α
                        .size            n00120_line_mark_bx, .-n00120_line_mark_bx
                        .type            n00121_var_ref_bx, @function
n00121_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3360]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00122_nulltest_var_α
                        .size            n00121_var_ref_bx, .-n00121_var_ref_bx
                        .type            n00122_nulltest_var_bx, @function
n00122_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_nulltest_var_α:    sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 104;                             jne   .Lnulltest_var_α_717_997
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00123_line_mark_α
.Lnulltest_var_α_717_997:
                        mov              rdi, qword ptr [rsp + 16]            # d
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_1:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lnulltest_var_α_717_998
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00123_line_mark_α
.Lnulltest_var_α_717_998:
                        cmp              eax, 0;                              je    .Lnulltest_var_α_717_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00123_line_mark_α
.Lnulltest_var_α_717_999:
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
1:                                                                            jmp   n00124_lit_charset_α
                        .size            n00122_nulltest_var_bx, .-n00122_nulltest_var_bx
                        .type            n00124_lit_charset_bx, @function
n00124_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_lit_charset_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4294967295
                        mov              rax, qword ptr [rip + .Llit_charset_α_718_0]
                        mov              qword ptr [rsp + 8], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_718_0] # ptr
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
1:                                                                            jmp   n00125_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_charset_α_718_0: .quad .Llit_charset_α_718_0_s; .popsection
.Llit_charset_α_718_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00124_lit_charset_bx, .-n00124_lit_charset_bx
                        .type            n00125_line_mark_bx, @function
n00125_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_719_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_719_stno
                        .long            0
                        .long            122
                        .quad            .Lstnof1
                        .popsection
n00125_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 122;            jmp   n00126_call_byname_α
                        .size            n00125_line_mark_bx, .-n00125_line_mark_bx
                        .type            n00126_call_byname_bx, @function
n00126_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd722: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd722]
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
                        cmp              al, 104;                             jne   .Lcall_byname_α_721_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00123_line_mark_α
.Lcall_byname_α_721_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00127_assign_var_α
                        .size            n00126_call_byname_bx, .-n00126_call_byname_bx
                        .type            n00127_assign_var_bx, @function
n00127_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # nulltest_var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_options_8:     cmp              al, 255;                             jne   .Lassign_var_vd_723_26
                        call             c_rt_assign_var_strict@PLT
.Lgcsite_options_7:     mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_723_26: cmp              al, 104;                             jne   .Lassign_var_α_723_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n00123_line_mark_α
.Lassign_var_α_723_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:31
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_6:     mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 80;                             jmp   n00123_line_mark_α
                        .size            n00127_assign_var_bx, .-n00127_assign_var_bx
                        .type            n00123_line_mark_bx, @function
n00123_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 123 0
.Lline_mark_α_724_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_724_stno
                        .long            0
                        .long            123
                        .quad            .Lstnof1
                        .popsection
n00123_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00128_line_mark_α
                        .size            n00123_line_mark_bx, .-n00123_line_mark_bx
                        .type            n00128_line_mark_bx, @function
n00128_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_726_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_726_stno
                        .long            0
                        .long            123
                        .quad            .Lstnof1
                        .popsection
n00128_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00129_call_byname_α
                        .size            n00128_line_mark_bx, .-n00128_line_mark_bx
                        .type            n00129_call_byname_bx, @function
n00129_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00129_call_byname_α:     sub              rsp, 16
                        .section         .rodata
.Lcall_byname_α_rkfnzd729: .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd729]
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
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_728_999
                        add              rsp, 16;                             jmp   n00130_line_mark_α
.Lcall_byname_α_728_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00131_assign_α
                        .size            n00129_call_byname_bx, .-n00129_call_byname_bx
                        .type            n00131_assign_bx, @function
n00131_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00131_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        add              rsp, 16;                             jmp   n00130_line_mark_α
                        .size            n00131_assign_bx, .-n00131_assign_bx
                        .type            n00130_line_mark_bx, @function
n00130_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 124 0
.Lline_mark_α_731_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_731_stno
                        .long            0
                        .long            124
                        .quad            .Lstnof1
                        .popsection
n00130_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 124;            jmp   n00132_make_list_α
                        .size            n00130_line_mark_bx, .-n00130_line_mark_bx
                        .type            n00132_make_list_bx, @function
n00132_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00132_make_list_α:       sub              rsp, 16
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
1:                                                                            jmp   n00133_assign_α
                        .size            n00132_make_list_bx, .-n00132_make_list_bx
                        .type            n00133_assign_bx, @function
n00133_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_assign_α:          mov              rax, qword ptr [rsp + 0]             # make_list
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                        add              rsp, 16;                             jmp   n00134_line_mark_α
                        .size            n00133_assign_bx, .-n00133_assign_bx
                        .type            n00134_line_mark_bx, @function
n00134_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 125 0
.Lline_mark_α_736_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_736_stno
                        .long            0
                        .long            125
                        .quad            .Lstnof1
                        .popsection
n00134_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 125;            jmp   n00135_bound_α
                        .size            n00134_line_mark_bx, .-n00134_line_mark_bx
                        .type            n00135_bound_bx, @function
n00135_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_bound_α:           mov              qword ptr [rbp + 336], rsp;          jmp   n00136_var_ref_α
n00135_bound_β:                                                                 jmp   n00136_var_ref_α
                        .size            n00135_bound_bx, .-n00135_bound_bx
                        .type            n00136_var_ref_bx, @function
n00136_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00136_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3344]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00137_deref_α
                        .size            n00136_var_ref_bx, .-n00136_var_ref_bx
                        .type            n00137_deref_bx, @function
n00137_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_14:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_742_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00138_line_mark_α
.Lderef_α_742_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_13:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00139_line_mark_α
                        .size            n00137_deref_bx, .-n00137_deref_bx
                        .type            n00139_line_mark_bx, @function
n00139_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_743_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_743_stno
                        .long            0
                        .long            125
                        .quad            .Lstnof1
                        .popsection
n00139_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 125;            jmp   n00140_call_byname_α
                        .size            n00139_line_mark_bx, .-n00139_line_mark_bx
                        .type            n00140_call_byname_bx, @function
n00140_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd746: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd746]
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
                        cmp              al, 104;                             jne   .Lcall_byname_α_745_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00138_line_mark_α
.Lcall_byname_α_745_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00141_assign_α
                        .size            n00140_call_byname_bx, .-n00140_call_byname_bx
                        .type            n00141_assign_bx, @function
n00141_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00141_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx;         jmp   n00142_line_mark_α
                        .size            n00141_assign_bx, .-n00141_assign_bx
                        .type            n00142_line_mark_bx, @function
n00142_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_748_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_748_stno
                        .long            0
                        .long            126
                        .quad            .Lstnof1
                        .popsection
n00142_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 126;            jmp   n00143_var_α
                        .size            n00142_line_mark_bx, .-n00142_line_mark_bx
                        .type            n00143_var_bx, @function
n00143_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_var_α:                                                                   jmp   n00144_scan_enter_α
                        .size            n00143_var_bx, .-n00143_var_bx
                        .type            n00144_scan_enter_bx, @function
n00144_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_scan_enter_α:      sub              rsp, 16
                        mov              rcx, 2
                        mov              qword ptr [rbp + 384], rcx
                        mov              qword ptr [rbp + 392], r13
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
1:                      test             rax, rax;                            jne   .Lscan_enter_α_753_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00145_unmark_α
.Lscan_enter_α_753_999: mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n00146_disjunction_α
                        .size            n00144_scan_enter_bx, .-n00144_scan_enter_bx
                        .type            n00146_disjunction_bx, @function
n00146_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_disjunction_α:     mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                        mov              dword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], rsp;          jmp   n00147_lit_string_α
.Ldisjunction_γ_567_as: mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_755_0
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 520], rax;          jmp   n00148_scan_α
.Ldisjunction_α_755_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_755_1
                                                                              jmp   n00148_scan_α
.Ldisjunction_α_755_1:                                                        jmp   n00148_scan_α
n00146_disjunction_β:     mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0;                              je    n00149_disjunction_β
                        add              rsp, 16;                             jmp   n00150_scan_α
.Ldisjunction_γ_567_af:
.Ldisjunction_ω_567_af: add              dword ptr [rbp + 528], 1
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 1;                              je    n00151_line_mark_α
                                                                              jmp   n00150_scan_α
                        .size            n00146_disjunction_bx, .-n00146_disjunction_bx
                        .type            n00148_scan_bx, @function
n00148_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_scan_α:            sub              rsp, 16
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
                        mov              r15, qword ptr [rbp + 408];          jmp   n00145_unmark_α
n00148_scan_β:            call             rt_scan_sync_in@PLT
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
.Lgcsite_options_19:    mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16;                             jmp   n00146_disjunction_β
                        .size            n00148_scan_bx, .-n00148_scan_bx
                        .type            n00152_conjunction_bx, @function
n00152_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_conjunction_α:     add              rsp, -64;                            jmp   .Ldisjunction_γ_567_as
n00152_conjunction_β:     add              rsp, -64;                            jmp   n00150_scan_α
                        .size            n00152_conjunction_bx, .-n00152_conjunction_bx
                        .type            n00151_line_mark_bx, @function
n00151_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_759_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_759_stno
                        .long            0
                        .long            146
                        .quad            .Lstnof1
                        .popsection
n00151_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 146;            jmp   n00153_var_ref_α
n00151_line_mark_β:                                                             jmp   n00153_var_ref_α
                        .size            n00151_line_mark_bx, .-n00151_line_mark_bx
                        .type            n00153_var_ref_bx, @function
n00153_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00153_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3008]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00154_var_ref_α
                        .size            n00153_var_ref_bx, .-n00153_var_ref_bx
                        .type            n00154_var_ref_bx, @function
n00154_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3040]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00155_deref_α
                        .size            n00154_var_ref_bx, .-n00154_var_ref_bx
                        .type            n00155_deref_bx, @function
n00155_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_options_25:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_765_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00150_scan_α
.Lderef_α_765_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_24:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00156_deref_α
                        .size            n00155_deref_bx, .-n00155_deref_bx
                        .type            n00156_deref_bx, @function
n00156_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_options_27:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_766_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00150_scan_α
.Lderef_α_766_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_26:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00157_line_mark_α
                        .size            n00156_deref_bx, .-n00156_deref_bx
                        .type            n00157_line_mark_bx, @function
n00157_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_767_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_767_stno
                        .long            0
                        .long            146
                        .quad            .Lstnof1
                        .popsection
n00157_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 146;            jmp   n00158_call_byname_α
                        .size            n00157_line_mark_bx, .-n00157_line_mark_bx
                        .type            n00158_call_byname_bx, @function
n00158_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_call_byname_α:     sub              rsp, 16
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
.Lcall_byname_α_rkfnzd770: .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd770]
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
                        cmp              al, 104;                             jne   .Lcall_byname_α_769_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n00150_scan_α
.Lcall_byname_α_769_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 520], rax
                        add              rsp, 80;                             jmp   .Ldisjunction_γ_567_as
n00158_call_byname_β:     add              rsp, 16
                        add              rsp, 64;                             jmp   n00150_scan_α
                        .size            n00158_call_byname_bx, .-n00158_call_byname_bx
                        .type            n00147_lit_string_bx, @function
n00147_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_771_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00159_scan_match_α
n00147_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_567_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_771_0: .quad .Llit_string_α_771_0_s; .popsection
.Llit_string_α_771_0_s: .string          "-"
                        .size            n00147_lit_string_bx, .-n00147_lit_string_bx
                        .type            n00159_scan_match_bx, @function
n00159_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_scan_match_α:      sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jge   .Lscan_match_α_773_998
                        add              rsp, 16;                             jmp   n00147_lit_string_β
.Lscan_match_α_773_998: mov              rdi, qword ptr [rip + .Lscan_match_α_773_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        call             memcmp@PLT
.Lgcsite_options_30:    mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r12
                        test             eax, eax;                            je    .Lscan_match_α_773_999
                        add              rsp, 16;                             jmp   n00147_lit_string_β
.Lscan_match_α_773_999: mov              qword ptr [rsp + 0], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 8], rax;            jmp   n00160_scan_tab_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lscan_match_α_773_0: .quad .Lscan_match_α_773_0_s; .popsection
.Lscan_match_α_773_0_s: .string          "-"
                        .size            n00159_scan_match_bx, .-n00159_scan_match_bx
                        .type            n00160_scan_tab_bx, @function
n00160_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00160_scan_tab_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_options_37:    cmp              eax, -2;                             jne   .Lscan_tab_vd_775_27
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_options_36:    mov              r9,  qword ptr [rip + rtccb+48]
.Lscan_tab_vd_775_27:   test             eax, eax;                            jne   .Lscan_tab_α_775_997
                        add              rsp, 16
                        add              rsp, 32;                             jmp   .Ldisjunction_ω_567_af
.Lscan_tab_α_775_997:   push             rax
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
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_775_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_775_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_775_998
                        add              rsp, 16
                        add              rsp, 32;                             jmp   .Ldisjunction_ω_567_af
.Lscan_tab_α_775_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_775_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   .Ldisjunction_ω_567_af
.Lscan_tab_α_775_999:   mov              qword ptr [rbp + 2640], r14
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00161_lit_integer_α
n00160_scan_tab_β:        mov              r14, qword ptr [rbp + 2640]
                        add              rsp, 16
                        add              rsp, 32;                             jmp   .Ldisjunction_ω_567_af
                        .size            n00160_scan_tab_bx, .-n00160_scan_tab_bx
                        .type            n00161_lit_integer_bx, @function
n00161_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_776_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00162_line_mark_α
.Llit_integer_α_776_0:  .quad            0
                        .size            n00161_lit_integer_bx, .-n00161_lit_integer_bx
                        .type            n00162_line_mark_bx, @function
n00162_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_777_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_777_stno
                        .long            0
                        .long            127
                        .quad            .Lstnof1
                        .popsection
n00162_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 127;            jmp   n00163_scan_pos_α
                        .size            n00162_line_mark_bx, .-n00162_line_mark_bx
                        .type            n00163_scan_pos_bx, @function
n00163_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_scan_pos_α:        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_780_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_780_0:     cmp              rax, 1;                              jge   .Lscan_pos_α_780_997
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00164_var_α
.Lscan_pos_α_780_997:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_pos_α_780_998
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00164_var_α
.Lscan_pos_α_780_998:   mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            je    .Lscan_pos_α_780_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00164_var_α
.Lscan_pos_α_780_999:   mov              qword ptr [rsp + 0], 3
                        mov              qword ptr [rsp + 8], rax
                        add              rsp, 32;                             jmp   n00160_scan_tab_β
                        .size            n00163_scan_pos_bx, .-n00163_scan_pos_bx
                        .type            n00164_var_bx, @function
n00164_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00164_var_α:             sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   n00165_conjunction_α
                        .size            n00164_var_bx, .-n00164_var_bx
                        .type            n00165_conjunction_bx, @function
n00165_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_conjunction_α:     mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 2568], rax;         jmp   n00166_line_mark_α
n00165_conjunction_β:                                                           jmp   .Ldisjunction_ω_567_af
                        .size            n00165_conjunction_bx, .-n00165_conjunction_bx
                        .type            n00166_line_mark_bx, @function
n00166_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_783_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_783_stno
                        .long            0
                        .long            128
                        .quad            .Lstnof1
                        .popsection
n00166_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 128;            jmp   n00167_line_mark_α
                        .size            n00166_line_mark_bx, .-n00166_line_mark_bx
                        .type            n00167_line_mark_bx, @function
n00167_line_mark_bx:
#=======================================================================================================================
# nstmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 128 0
.Lline_mark_α_785_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_785_stno
                        .long            0
                        .long            128
                        .quad            .Lstnof1
                        .popsection
n00167_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 128;            jmp   n00168_disjunction_α
                        .size            n00167_line_mark_bx, .-n00167_line_mark_bx
                        .type            n00168_disjunction_bx, @function
n00168_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00168_disjunction_α:     sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n00169_lit_string_α
.Ldisjunction_γ_587_as: mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_788_0
                        add              rsp, 32;                             jmp   n00170_line_mark_α
.Ldisjunction_α_788_0:  add              rsp, 32;                             jmp   n00170_line_mark_α
n00168_disjunction_β:     mov              eax, dword ptr [rsp + 16]
                        add              rsp, 32;                             jmp   n00170_line_mark_α
.Ldisjunction_γ_587_af:
.Ldisjunction_ω_587_af: add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        add              rsp, 32;                             jmp   n00170_line_mark_α
                        .size            n00168_disjunction_bx, .-n00168_disjunction_bx
                        .type            n00170_line_mark_bx, @function
n00170_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 129 0
.Lline_mark_α_789_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_789_stno
                        .long            0
                        .long            129
                        .quad            .Lstnof1
                        .popsection
n00170_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00171_bound_α
                        .size            n00170_line_mark_bx, .-n00170_line_mark_bx
                        .type            n00171_bound_bx, @function
n00171_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_bound_α:           mov              qword ptr [rbp + 640], rsp;          jmp   n00172_lit_integer_α
n00171_bound_β:                                                                 jmp   n00172_lit_integer_α
                        .size            n00171_bound_bx, .-n00171_bound_bx
                        .type            n00172_lit_integer_bx, @function
n00172_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_793_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00173_line_mark_α
.Llit_integer_α_793_0:  .quad            1
                        .size            n00172_lit_integer_bx, .-n00172_lit_integer_bx
                        .type            n00173_line_mark_bx, @function
n00173_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_794_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_794_stno
                        .long            0
                        .long            129
                        .quad            .Lstnof1
                        .popsection
n00173_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00174_scan_move_α
                        .size            n00173_line_mark_bx, .-n00173_line_mark_bx
                        .type            n00174_scan_move_bx, @function
n00174_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00174_scan_move_α:       sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jge   .Lscan_move_α_797_998
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n00150_scan_α
.Lscan_move_α_797_998:  mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_move_α_797_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n00150_scan_α
.Lscan_move_α_797_999:  mov              qword ptr [rbp + 592], r14
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00175_assign_α
n00174_scan_move_β:       mov              r14, qword ptr [rbp + 592]
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n00150_scan_α
                        .size            n00174_scan_move_bx, .-n00174_scan_move_bx
                        .type            n00175_assign_bx, @function
n00175_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_assign_α:          mov              rax, qword ptr [rsp + 0]             # scan_move
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx;         jmp   n00176_line_mark_α
                        .size            n00175_assign_bx, .-n00175_assign_bx
                        .type            n00176_line_mark_bx, @function
n00176_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_799_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_799_stno
                        .long            0
                        .long            130
                        .quad            .Lstnof1
                        .popsection
n00176_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 130;            jmp   n00149_disjunction_α
                        .size            n00176_line_mark_bx, .-n00176_line_mark_bx
                        .type            n00149_disjunction_bx, @function
n00149_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00149_disjunction_α:     mov              qword ptr [rbp + 672], 0
                        mov              qword ptr [rbp + 680], 0
                        mov              dword ptr [rbp + 688], 0
                        mov              qword ptr [rbp + 696], rsp;          jmp   n00177_var_ref_α
.Ldisjunction_γ_595_as: mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_802_0
                                                                              jmp   n00178_unmark_α
.Ldisjunction_α_802_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_802_1
                                                                              jmp   n00178_unmark_α
.Ldisjunction_α_802_1:                                                        jmp   n00178_unmark_α
n00149_disjunction_β:     mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0;                              je    n00179_disjunction_β
                                                                              jmp   n00178_unmark_α
.Ldisjunction_γ_595_af:
.Ldisjunction_ω_595_af: add              dword ptr [rbp + 688], 1
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 1;                              je    n00180_line_mark_α
                                                                              jmp   n00178_unmark_α
                        .size            n00149_disjunction_bx, .-n00149_disjunction_bx
                        .type            n00180_line_mark_bx, @function
n00180_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_803_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_803_stno
                        .long            0
                        .long            144
                        .quad            .Lstnof1
                        .popsection
n00180_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 144;            jmp   n00181_lit_string_α
n00180_line_mark_β:                                                             jmp   n00181_lit_string_α
                        .size            n00180_line_mark_bx, .-n00180_line_mark_bx
                        .type            n00181_lit_string_bx, @function
n00181_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00181_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_805_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00182_var_ref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_805_0: .quad .Llit_string_α_805_0_s; .popsection
.Llit_string_α_805_0_s: .string          "Unrecognized option: -"
                        .size            n00181_lit_string_bx, .-n00181_lit_string_bx
                        .type            n00182_var_ref_bx, @function
n00182_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3056]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00183_deref_α
                        .size            n00182_var_ref_bx, .-n00182_var_ref_bx
                        .type            n00183_deref_bx, @function
n00183_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_41:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_808_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00178_unmark_α
.Lderef_α_808_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_40:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00184_line_mark_α
                        .size            n00183_deref_bx, .-n00183_deref_bx
                        .type            n00184_line_mark_bx, @function
n00184_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_809_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_809_stno
                        .long            0
                        .long            144
                        .quad            .Lstnof1
                        .popsection
n00184_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 144;            jmp   n00185_call_byname_α
                        .size            n00184_line_mark_bx, .-n00184_line_mark_bx
                        .type            n00185_call_byname_bx, @function
n00185_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_call_byname_α:     sub              rsp, 16
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
.Lcall_byname_α_rkfnzd812: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd812]
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
                        cmp              al, 104;                             jne   .Lcall_byname_α_811_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00178_unmark_α
.Lcall_byname_α_811_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 680], rax
                        add              rsp, 64;                             jmp   .Ldisjunction_γ_595_as
n00185_call_byname_β:     add              rsp, 16
                        add              rsp, 48;                             jmp   n00178_unmark_α
                        .size            n00185_call_byname_bx, .-n00185_call_byname_bx
                        .type            n00177_var_ref_bx, @function
n00177_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00177_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rbp + 2128], rax          # result
                        lea              rax, [rbp + 3056]
                        mov              qword ptr [rbp + 2136], rax;         jmp   n00186_var_ref_α
n00177_var_ref_β:         add              rsp, 16;                             jmp   .Ldisjunction_ω_595_af
                        .size            n00177_var_ref_bx, .-n00177_var_ref_bx
                        .type            n00186_var_ref_bx, @function
n00186_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3360]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00187_deref_α
n00186_var_ref_β:         add              rsp, 16;                             jmp   n00177_var_ref_β
                        .size            n00186_var_ref_bx, .-n00186_var_ref_bx
                        .type            n00187_deref_bx, @function
n00187_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00187_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 2128]          # var_ref
                        mov              rsi, qword ptr [rbp + 2136]          # d
                        call             rt_deref@PLT
.Lgcsite_options_45:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_817_999
                        add              rsp, 16;                             jmp   n00186_var_ref_β
.Lderef_α_817_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_44:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00188_deref_α
n00187_deref_β:           add              rsp, 16;                             jmp   n00186_var_ref_β
                        .size            n00187_deref_bx, .-n00187_deref_bx
                        .type            n00188_deref_bx, @function
n00188_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_options_47:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_818_999
                        add              rsp, 16;                             jmp   n00187_deref_β
.Lderef_α_818_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_46:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00189_line_mark_α
n00188_deref_β:           add              rsp, 16;                             jmp   n00187_deref_β
                        .size            n00188_deref_bx, .-n00188_deref_bx
                        .type            n00189_line_mark_bx, @function
n00189_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_819_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_819_stno
                        .long            0
                        .long            130
                        .quad            .Lstnof1
                        .popsection
n00189_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 130;            jmp   n00190_call_gen_α
                        .size            n00189_line_mark_bx, .-n00189_line_mark_bx
                        .type            n00190_call_gen_bx, @function
n00190_call_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_call_gen_α:        sub              rsp, 16
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
.Lcall_gen_α_821_60:    .section         .rodata
.Lcall_gen_α_bynamegenfn284: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_gen_α_bynamegenfn284]
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
                        cmp              al, 104;                             jne   .Lcall_gen_α_821_999
                        add              rsp, 16;                             jmp   n00188_deref_β
.Lcall_gen_α_821_999:                                                         jmp   n00191_lit_integer_α
n00190_call_gen_β:                                                              jmp   .Lcall_gen_α_821_60
                        .size            n00190_call_gen_bx, .-n00190_call_gen_bx
                        .type            n00191_lit_integer_bx, @function
n00191_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00191_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_822_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00192_coerce_numeric_α
.Llit_integer_α_822_0:  .quad            1
                        .size            n00191_lit_integer_bx, .-n00191_lit_integer_bx
                        .type            n00192_coerce_numeric_bx, @function
n00192_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rbp + 2064]          # call
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_824_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_824_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_824_0
.Lcoerce_numeric_α_824_1:
                        mov              rax, qword ptr [rbp + 2064]          # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rbp + 2072]          # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n00193_binop_α
.Lcoerce_numeric_α_824_0:
                        lea              rdi, [rbp + 2064]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_options_53:    cmp              al, 255;                             jne   .Lcoerce_numeric_vd_824_28
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_options_52:    mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_824_28:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_51:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_824_999
                        add              rsp, 16
                        add              rsp, 96;                             jmp   .Ldisjunction_ω_595_af
.Lcoerce_numeric_α_824_999:
                                                                              jmp   n00193_binop_α
n00192_coerce_numeric_β:  add              rsp, 16
                        add              rsp, 96;                             jmp   .Ldisjunction_ω_595_af
                        .size            n00192_coerce_numeric_bx, .-n00192_coerce_numeric_bx
                        .type            n00193_binop_bx, @function
n00193_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rax, qword ptr [rsp + 24]
                        cmp              cl, 3;                               jne   .Lbinop_α_825_2
                        add              rax, 1;                              jo    .Lbinop_α_825_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_825_7
.Lbinop_α_825_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_825_0
                        mov              rsi, qword ptr [rsp + 24]            # coerce_numeric
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_825_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_825_4
.Lbinop_α_825_3:        movq             xmm0, rsi
.Lbinop_α_825_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_825_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_825_7:                                                              jmp   n00194_assign_α
.Lbinop_α_825_0:        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        call             rt_add_big@PLT
.Lgcsite_options_55:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_825_999
                        add              rsp, 16;                             jmp   n00192_coerce_numeric_β
.Lbinop_α_825_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_54:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00194_assign_α
n00193_binop_β:           add              rsp, 16;                             jmp   n00192_coerce_numeric_β
                        .size            n00193_binop_bx, .-n00193_binop_bx
                        .type            n00194_assign_bx, @function
n00194_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx;         jmp   n00195_line_mark_α
                        .size            n00194_assign_bx, .-n00194_assign_bx
                        .type            n00195_line_mark_bx, @function
n00195_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_827_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_827_stno
                        .long            0
                        .long            131
                        .quad            .Lstnof1
                        .popsection
n00195_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 131;            jmp   n00196_var_ref_α
                        .size            n00195_line_mark_bx, .-n00195_line_mark_bx
                        .type            n00196_var_ref_bx, @function
n00196_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 2992]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00197_var_α
                        .size            n00196_var_ref_bx, .-n00196_var_ref_bx
                        .type            n00197_var_bx, @function
n00197_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_var_α:                                                                   jmp   n00198_subscript_α
                        .size            n00197_var_bx, .-n00197_var_bx
                        .type            n00198_subscript_bx, @function
n00198_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rbp + 3056]          # var
                        mov              rcx, qword ptr [rbp + 3064]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_options_58:    cmp              al, 255;                             jne   .Lsubscript_vd_833_29
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_options_57:    mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_833_29:  cmp              al, 104;                             jne   .Lsubscript_α_833_999
                        add              rsp, 16
                        add              rsp, 144;                            jmp   n00178_unmark_α
.Lsubscript_α_833_999:  mov              qword ptr [rbp + 736], rax           # result
                        mov              qword ptr [rbp + 744], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:78
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_56:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00179_disjunction_α
                        .size            n00198_subscript_bx, .-n00198_subscript_bx
                        .type            n00179_disjunction_bx, @function
n00179_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_disjunction_α:     mov              qword ptr [rbp + 768], 0
                        mov              qword ptr [rbp + 776], 0
                        mov              dword ptr [rbp + 784], 0
                        mov              qword ptr [rbp + 792], rsp;          jmp   n00199_lit_charset_α
.Ldisjunction_γ_616_as: mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_835_0
                                                                              jmp   n00200_assign_var_α
.Ldisjunction_α_835_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_835_1
                                                                              jmp   n00200_assign_var_α
.Ldisjunction_α_835_1:                                                        jmp   n00200_assign_var_α
n00179_disjunction_β:     mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0;                              je    n00201_disjunction_β
                        add              rsp, 176;                            jmp   n00178_unmark_α
.Ldisjunction_γ_616_af:
.Ldisjunction_ω_616_af: add              dword ptr [rbp + 784], 1
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 1;                              je    n00202_lit_integer_α
                        add              rsp, 160;                            jmp   n00178_unmark_α
                        .size            n00179_disjunction_bx, .-n00179_disjunction_bx
                        .type            n00200_assign_var_bx, @function
n00200_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00200_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 736]           # subscript
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 768]           # disjunction
                        mov              rcx, qword ptr [rbp + 776]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_options_61:    cmp              al, 255;                             jne   .Lassign_var_vd_836_30
                        call             c_rt_assign_var_strict@PLT
.Lgcsite_options_60:    mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_836_30: cmp              al, 104;                             jne   .Lassign_var_α_836_999
                        add              rsp, 16
                        add              rsp, 160;                            jmp   n00178_unmark_α
.Lassign_var_α_836_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:31
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_59:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 680], rax;          jmp   .Ldisjunction_γ_595_as
n00200_assign_var_β:      add              rsp, 16
                        add              rsp, 160;                            jmp   n00178_unmark_α
                        .size            n00200_assign_var_bx, .-n00200_assign_var_bx
                        .type            n00202_lit_integer_bx, @function
n00202_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_837_0]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 776], rax
                        add              rsp, 16;                             jmp   .Ldisjunction_γ_616_as
n00202_lit_integer_β:     add              rsp, 16
                        add              rsp, 160;                            jmp   n00178_unmark_α
.Llit_integer_α_837_0:  .quad            1
                        .size            n00202_lit_integer_bx, .-n00202_lit_integer_bx
                        .type            n00199_lit_charset_bx, @function
n00199_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_lit_charset_α:     sub              rsp, 16
                        mov              qword ptr [rbp + 1888], 2            # result
                        mov              dword ptr [rbp + 1892], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_838_0]
                        mov              qword ptr [rbp + 1896], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_838_0] # ptr
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
1:                                                                            jmp   n00203_var_ref_α
n00199_lit_charset_β:     add              rsp, 16;                             jmp   .Ldisjunction_ω_616_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_charset_α_838_0: .quad .Llit_charset_α_838_0_s; .popsection
.Llit_charset_α_838_0_s:
                        .string          "+.:"
                        .size            n00199_lit_charset_bx, .-n00199_lit_charset_bx
                        .type            n00203_var_ref_bx, @function
n00203_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3360]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00204_var_α
n00203_var_ref_β:         add              rsp, 16
                        add              rsp, 16;                             jmp   .Ldisjunction_ω_616_af
                        .size            n00203_var_ref_bx, .-n00203_var_ref_bx
                        .type            n00204_var_bx, @function
n00204_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_var_α:                                                                   jmp   n00205_subscript_α
n00204_var_β:                                                                   jmp   n00203_var_ref_β
                        .size            n00204_var_bx, .-n00204_var_bx
                        .type            n00205_subscript_bx, @function
n00205_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_subscript_α:       sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_843_1:    mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rbp + 3104]          # var
                        mov              rcx, qword ptr [rbp + 3112]
                        test             eax, eax;                            jne   .Lsubscript_α_843_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_options_69:    cmp              al, 255;                             jne   .Lsubscript_vd_843_32
                        call             c_rt_subscript_val_strict@PLT
.Lgcsite_options_68:    mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_843_32:  cmp              al, 255;                             jne   .Lsubscript_α_843_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_843_1
.Lsubscript_α_843_4:    push             rax
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
1:                                                                            jmp   .Lsubscript_α_843_3
.Lsubscript_α_843_2:    call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_options_66:    cmp              al, 255;                             jne   .Lsubscript_vd_843_31
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_options_65:    mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_843_31:  push             rax
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
.Lsubscript_α_843_3:    cmp              al, 104;                             jne   .Lsubscript_α_843_999
                        add              rsp, 16;                             jmp   n00204_var_β
.Lsubscript_α_843_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00206_deref_α
                        .size            n00205_subscript_bx, .-n00205_subscript_bx
                        .type            n00206_deref_bx, @function
n00206_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00206_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_71:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_844_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_616_af
.Lderef_α_844_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_70:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00207_assign_α
n00206_deref_β:           add              rsp, 16
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_616_af
                        .size            n00206_deref_bx, .-n00206_deref_bx
                        .type            n00207_assign_bx, @function
n00207_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx;         jmp   n00208_var_ref_α
n00207_assign_β:                                                                jmp   n00206_deref_β
                        .size            n00207_assign_bx, .-n00207_assign_bx
                        .type            n00208_var_ref_bx, @function
n00208_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3072]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00209_deref_α
n00208_var_ref_β:         add              rsp, 16;                             jmp   n00207_assign_β
                        .size            n00208_var_ref_bx, .-n00208_var_ref_bx
                        .type            n00209_deref_bx, @function
n00209_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_73:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_848_999
                        add              rsp, 16;                             jmp   n00208_var_ref_β
.Lderef_α_848_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_72:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00210_line_mark_α
n00209_deref_β:           add              rsp, 16;                             jmp   n00208_var_ref_β
                        .size            n00209_deref_bx, .-n00209_deref_bx
                        .type            n00210_line_mark_bx, @function
n00210_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_849_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_849_stno
                        .long            0
                        .long            132
                        .quad            .Lstnof1
                        .popsection
n00210_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 132;            jmp   n00211_call_byname_α
                        .size            n00210_line_mark_bx, .-n00210_line_mark_bx
                        .type            n00211_call_byname_bx, @function
n00211_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_call_byname_α:     sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, r14                             # delta
                        call             rt_scan_sync_out@PLT
.Lgcsite_options_74:    mov              r9,  qword ptr [rip + rtccb+48]
                        .section         .rodata
.Lcall_byname_α_bynamefnzd305: .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_bynamefnzd305]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 196712
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_75:    mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
.Lgcsite_options_77:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        call             rt_scan_live_subj@PLT
.Lgcsite_options_76:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        pop              rdx
                        pop              rax
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
.Lgcsite_options_78:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_851_999
                        add              rsp, 16;                             jmp   n00209_deref_β
.Lcall_byname_α_851_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00212_line_mark_α
                        .size            n00211_call_byname_bx, .-n00211_call_byname_bx
                        .type            n00212_line_mark_bx, @function
n00212_line_mark_bx:
#=======================================================================================================================
# nstmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 133 0
.Lline_mark_α_852_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_852_stno
                        .long            0
                        .long            133
                        .quad            .Lstnof1
                        .popsection
n00212_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00213_disjunction_α
                        .size            n00212_line_mark_bx, .-n00212_line_mark_bx
                        .type            n00213_disjunction_bx, @function
n00213_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_disjunction_α:     mov              qword ptr [rbp + 1536], 0
                        mov              qword ptr [rbp + 1544], 0
                        mov              dword ptr [rbp + 1552], 0;           jmp   n00214_lit_string_α
.Ldisjunction_γ_630_as: mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_855_0
                                                                              jmp   n00215_assign_α
.Ldisjunction_α_855_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_855_1
                                                                              jmp   n00215_assign_α
.Ldisjunction_α_855_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_855_2
                                                                              jmp   n00215_assign_α
.Ldisjunction_α_855_2:                                                        jmp   n00215_assign_α
n00213_disjunction_β:     mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 0;                              jne   .Ldisjunction_β_855_303
                        add              rsp, 16;                             jmp   n00216_scan_tab_β
.Ldisjunction_β_855_303:
                        cmp              eax, 1;                              jne   .Ldisjunction_β_855_304
                        add              rsp, 64;                             jmp   .Ldisjunction_ω_630_af
.Ldisjunction_β_855_304:
                        add              rsp, 64;                             jmp   .Ldisjunction_ω_630_af
.Ldisjunction_γ_630_af:
.Ldisjunction_ω_630_af: add              dword ptr [rbp + 1552], 1
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 1;                              je    n00217_var_ref_α
                        cmp              eax, 2;                              je    n00218_lit_string_α
                                                                              jmp   n00219_line_mark_α
                        .size            n00213_disjunction_bx, .-n00213_disjunction_bx
                        .type            n00215_assign_bx, @function
n00215_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_assign_α:          mov              rax, qword ptr [rbp + 1536]          # disjunction
                        mov              rdx, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                        add              rsp, 64;                             jmp   n00219_line_mark_α
                        .size            n00215_assign_bx, .-n00215_assign_bx
                        .type            n00219_line_mark_bx, @function
n00219_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 135 0
.Lline_mark_α_857_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_857_stno
                        .long            0
                        .long            135
                        .quad            .Lstnof1
                        .popsection
n00219_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 135;            jmp   n00220_var_α
                        .size            n00219_line_mark_bx, .-n00219_line_mark_bx
                        .type            n00220_var_bx, @function
n00220_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_var_α:                                                                   jmp   n00201_disjunction_α
                        .size            n00220_var_bx, .-n00220_var_bx
                        .type            n00201_disjunction_bx, @function
n00201_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_disjunction_α:     mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 840], 0
                        mov              dword ptr [rbp + 848], 0;            jmp   n00221_lit_string_α
.Ldisjunction_γ_634_as: mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_862_0
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00222_conjunction_α
.Ldisjunction_α_862_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_862_1
                                                                              jmp   n00222_conjunction_α
.Ldisjunction_α_862_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_862_2
                                                                              jmp   n00222_conjunction_α
.Ldisjunction_α_862_2:                                                        jmp   n00222_conjunction_α
n00201_disjunction_β:     mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0;                              je    n00178_unmark_α
                        cmp              eax, 1;                              je    n00223_disjunction_β
                                                                              jmp   n00224_disjunction_β
.Ldisjunction_γ_634_af:
.Ldisjunction_ω_634_af: add              dword ptr [rbp + 848], 1
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 1;                              je    n00225_lit_string_α
                        cmp              eax, 2;                              je    n00226_lit_string_α
                        add              rsp, 272;                            jmp   n00178_unmark_α
                        .size            n00201_disjunction_bx, .-n00201_disjunction_bx
                        .type            n00222_conjunction_bx, @function
n00222_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_conjunction_α:     mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                        add              rsp, 176;                            jmp   .Ldisjunction_γ_616_as
n00222_conjunction_β:     mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                        add              rsp, 176;                            jmp   n00178_unmark_α
                        .size            n00222_conjunction_bx, .-n00222_conjunction_bx
                        .type            n00226_lit_string_bx, @function
n00226_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_864_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00227_binop_test_α
n00226_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_634_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_864_0: .quad .Llit_string_α_864_0_s; .popsection
.Llit_string_α_864_0_s: .string          "."
                        .size            n00226_lit_string_bx, .-n00226_lit_string_bx
                        .type            n00227_binop_test_bx, @function
n00227_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_binop_test_α:      sub              rsp, 16
.Lbinop_test_α_865_2:   mov              rdi, qword ptr [rbp + 3072]
                        mov              rsi, qword ptr [rbp + 3080]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 22
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_options_82:    cmp              al, 255;                             jne   .Lbinop_test_vd_865_33
                        call             c_rt_jct_relop@PLT
.Lgcsite_options_81:    mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_test_vd_865_33: push             rax
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
.Lgcsite_options_80:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_865_999
                        add              rsp, 16;                             jmp   n00226_lit_string_β
.Lbinop_test_α_865_999: mov              rcx, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rcx
                        push             rax                                  # gc_poll bb_binop_relop_val.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_79:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00228_line_mark_α
                        .size            n00227_binop_test_bx, .-n00227_binop_test_bx
                        .type            n00228_line_mark_bx, @function
n00228_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_866_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_866_stno
                        .long            0
                        .long            139
                        .quad            .Lstnof1
                        .popsection
n00228_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 139;            jmp   n00224_disjunction_α
                        .size            n00228_line_mark_bx, .-n00228_line_mark_bx
                        .type            n00224_disjunction_bx, @function
n00224_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_disjunction_α:     sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n00229_var_ref_α
.Ldisjunction_γ_639_as: mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_869_0
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 840], rax;          jmp   .Ldisjunction_γ_634_as
.Ldisjunction_α_869_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_869_1
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 840], rax;          jmp   .Ldisjunction_γ_634_as
.Ldisjunction_α_869_1:  mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 840], rax;          jmp   .Ldisjunction_γ_634_as
n00224_disjunction_β:     mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_639_af
                                                                              jmp   .Ldisjunction_ω_639_af
.Ldisjunction_γ_639_af:
.Ldisjunction_ω_639_af: add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 1;                              je    n00230_lit_string_α
                        add              rsp, 32
                        add              rsp, 304;                            jmp   n00178_unmark_α
                        .size            n00224_disjunction_bx, .-n00224_disjunction_bx
                        .type            n00230_lit_string_bx, @function
n00230_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_870_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00231_var_ref_α
n00230_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_639_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_870_0: .quad .Llit_string_α_870_0_s; .popsection
.Llit_string_α_870_0_s: .string          "-"
                        .size            n00230_lit_string_bx, .-n00230_lit_string_bx
                        .type            n00231_var_ref_bx, @function
n00231_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00231_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3056]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00232_lit_string_α
n00231_var_ref_β:         add              rsp, 16;                             jmp   n00230_lit_string_β
                        .size            n00231_var_ref_bx, .-n00231_var_ref_bx
                        .type            n00232_lit_string_bx, @function
n00232_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_873_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00233_deref_α
n00232_lit_string_β:      add              rsp, 16;                             jmp   n00231_var_ref_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_873_0: .quad .Llit_string_α_873_0_s; .popsection
.Llit_string_α_873_0_s: .string          " needs numeric parameter"
                        .size            n00232_lit_string_bx, .-n00232_lit_string_bx
                        .type            n00233_deref_bx, @function
n00233_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_options_84:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_874_999
                        add              rsp, 16;                             jmp   n00232_lit_string_β
.Lderef_α_874_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_83:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00234_line_mark_α
n00233_deref_β:           add              rsp, 16;                             jmp   n00232_lit_string_β
                        .size            n00233_deref_bx, .-n00233_deref_bx
                        .type            n00234_line_mark_bx, @function
n00234_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_875_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_875_stno
                        .long            0
                        .long            140
                        .quad            .Lstnof1
                        .popsection
n00234_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 140;            jmp   n00235_call_byname_α
                        .size            n00234_line_mark_bx, .-n00234_line_mark_bx
                        .type            n00235_call_byname_bx, @function
n00235_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00235_call_byname_α:     sub              rsp, 16
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
.Lcall_byname_α_rkfnzd878: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd878]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 262308
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
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_byname_α_877_999
                        add              rsp, 16;                             jmp   n00233_deref_β
.Lcall_byname_α_877_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 88], rax
                        add              rsp, 80;                             jmp   .Ldisjunction_γ_639_as
n00235_call_byname_β:     add              rsp, 16;                             jmp   n00233_deref_β
                        .size            n00235_call_byname_bx, .-n00235_call_byname_bx
                        .type            n00229_var_ref_bx, @function
n00229_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3088]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00236_deref_α
n00229_var_ref_β:         add              rsp, 16;                             jmp   .Ldisjunction_ω_639_af
                        .size            n00229_var_ref_bx, .-n00229_var_ref_bx
                        .type            n00236_deref_bx, @function
n00236_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_88:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_881_999
                        add              rsp, 16;                             jmp   n00229_var_ref_β
.Lderef_α_881_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_87:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00237_line_mark_α
n00236_deref_β:           add              rsp, 16;                             jmp   n00229_var_ref_β
                        .size            n00236_deref_bx, .-n00236_deref_bx
                        .type            n00237_line_mark_bx, @function
n00237_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_882_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_882_stno
                        .long            0
                        .long            139
                        .quad            .Lstnof1
                        .popsection
n00237_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 139;            jmp   n00238_call_byname_α
                        .size            n00237_line_mark_bx, .-n00237_line_mark_bx
                        .type            n00238_call_byname_bx, @function
n00238_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd885: .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd885]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262297
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_89:    mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_90:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_884_999
                        add              rsp, 16;                             jmp   n00236_deref_β
.Lcall_byname_α_884_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 56], rax
                        add              rsp, 48;                             jmp   .Ldisjunction_γ_639_as
n00238_call_byname_β:     add              rsp, 16;                             jmp   n00236_deref_β
                        .size            n00238_call_byname_bx, .-n00238_call_byname_bx
                        .type            n00225_lit_string_bx, @function
n00225_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_886_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00239_binop_test_α
n00225_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_634_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_886_0: .quad .Llit_string_α_886_0_s; .popsection
.Llit_string_α_886_0_s: .string          "+"
                        .size            n00225_lit_string_bx, .-n00225_lit_string_bx
                        .type            n00239_binop_test_bx, @function
n00239_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_binop_test_α:      sub              rsp, 16
.Lbinop_test_α_887_2:   mov              rdi, qword ptr [rbp + 3072]
                        mov              rsi, qword ptr [rbp + 3080]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 22
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_options_94:    cmp              al, 255;                             jne   .Lbinop_test_vd_887_34
                        call             c_rt_jct_relop@PLT
.Lgcsite_options_93:    mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_test_vd_887_34: push             rax
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
.Lgcsite_options_92:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_887_999
                        add              rsp, 16;                             jmp   n00225_lit_string_β
.Lbinop_test_α_887_999: mov              rcx, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rcx
                        push             rax                                  # gc_poll bb_binop_relop_val.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_91:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00240_line_mark_α
                        .size            n00239_binop_test_bx, .-n00239_binop_test_bx
                        .type            n00240_line_mark_bx, @function
n00240_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_888_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_888_stno
                        .long            0
                        .long            137
                        .quad            .Lstnof1
                        .popsection
n00240_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 137;            jmp   n00223_disjunction_α
                        .size            n00240_line_mark_bx, .-n00240_line_mark_bx
                        .type            n00223_disjunction_bx, @function
n00223_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_disjunction_α:     sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n00241_var_ref_α
.Ldisjunction_γ_653_as: mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_891_0
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 840], rax;          jmp   .Ldisjunction_γ_634_as
.Ldisjunction_α_891_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_891_1
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 840], rax;          jmp   .Ldisjunction_γ_634_as
.Ldisjunction_α_891_1:  mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 840], rax;          jmp   .Ldisjunction_γ_634_as
n00223_disjunction_β:     mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_653_af
                                                                              jmp   .Ldisjunction_ω_653_af
.Ldisjunction_γ_653_af:
.Ldisjunction_ω_653_af: add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 1;                              je    n00242_lit_string_α
                        add              rsp, 32
                        add              rsp, 304;                            jmp   n00178_unmark_α
                        .size            n00223_disjunction_bx, .-n00223_disjunction_bx
                        .type            n00242_lit_string_bx, @function
n00242_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_892_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00243_var_ref_α
n00242_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_653_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_892_0: .quad .Llit_string_α_892_0_s; .popsection
.Llit_string_α_892_0_s: .string          "-"
                        .size            n00242_lit_string_bx, .-n00242_lit_string_bx
                        .type            n00243_var_ref_bx, @function
n00243_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3056]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00244_lit_string_α
n00243_var_ref_β:         add              rsp, 16;                             jmp   n00242_lit_string_β
                        .size            n00243_var_ref_bx, .-n00243_var_ref_bx
                        .type            n00244_lit_string_bx, @function
n00244_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00244_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_895_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00245_deref_α
n00244_lit_string_β:      add              rsp, 16;                             jmp   n00243_var_ref_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_895_0: .quad .Llit_string_α_895_0_s; .popsection
.Llit_string_α_895_0_s: .string          " needs numeric parameter"
                        .size            n00244_lit_string_bx, .-n00244_lit_string_bx
                        .type            n00245_deref_bx, @function
n00245_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_options_96:    mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_896_999
                        add              rsp, 16;                             jmp   n00244_lit_string_β
.Lderef_α_896_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_95:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00246_line_mark_α
n00245_deref_β:           add              rsp, 16;                             jmp   n00244_lit_string_β
                        .size            n00245_deref_bx, .-n00245_deref_bx
                        .type            n00246_line_mark_bx, @function
n00246_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_897_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_897_stno
                        .long            0
                        .long            138
                        .quad            .Lstnof1
                        .popsection
n00246_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 138;            jmp   n00247_call_byname_α
                        .size            n00246_line_mark_bx, .-n00246_line_mark_bx
                        .type            n00247_call_byname_bx, @function
n00247_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_call_byname_α:     sub              rsp, 16
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
.Lcall_byname_α_rkfnzd900: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd900]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_97:    mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_98:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_byname_α_899_999
                        add              rsp, 16;                             jmp   n00245_deref_β
.Lcall_byname_α_899_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 88], rax
                        add              rsp, 80;                             jmp   .Ldisjunction_γ_653_as
n00247_call_byname_β:     add              rsp, 16;                             jmp   n00245_deref_β
                        .size            n00247_call_byname_bx, .-n00247_call_byname_bx
                        .type            n00241_var_ref_bx, @function
n00241_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3088]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00248_deref_α
n00241_var_ref_β:         add              rsp, 16;                             jmp   .Ldisjunction_ω_653_af
                        .size            n00241_var_ref_bx, .-n00241_var_ref_bx
                        .type            n00248_deref_bx, @function
n00248_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_100:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_903_999
                        add              rsp, 16;                             jmp   n00241_var_ref_β
.Lderef_α_903_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_99:    mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00249_line_mark_α
n00248_deref_β:           add              rsp, 16;                             jmp   n00241_var_ref_β
                        .size            n00248_deref_bx, .-n00248_deref_bx
                        .type            n00249_line_mark_bx, @function
n00249_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_904_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_904_stno
                        .long            0
                        .long            137
                        .quad            .Lstnof1
                        .popsection
n00249_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 137;            jmp   n00250_call_byname_α
                        .size            n00249_line_mark_bx, .-n00249_line_mark_bx
                        .type            n00250_call_byname_bx, @function
n00250_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd907: .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd907]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 458878
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_101:   mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_102:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_906_999
                        add              rsp, 16;                             jmp   n00248_deref_β
.Lcall_byname_α_906_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 56], rax
                        add              rsp, 48;                             jmp   .Ldisjunction_γ_653_as
n00250_call_byname_β:     add              rsp, 16;                             jmp   n00248_deref_β
                        .size            n00250_call_byname_bx, .-n00250_call_byname_bx
                        .type            n00221_lit_string_bx, @function
n00221_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_908_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00251_binop_test_α
n00221_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_634_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_908_0: .quad .Llit_string_α_908_0_s; .popsection
.Llit_string_α_908_0_s: .string          ":"
                        .size            n00221_lit_string_bx, .-n00221_lit_string_bx
                        .type            n00251_binop_test_bx, @function
n00251_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_binop_test_α:      sub              rsp, 16
.Lbinop_test_α_909_2:   mov              rdi, qword ptr [rbp + 3072]
                        mov              rsi, qword ptr [rbp + 3080]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 22
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_options_106:   cmp              al, 255;                             jne   .Lbinop_test_vd_909_35
                        call             c_rt_jct_relop@PLT
.Lgcsite_options_105:   mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_test_vd_909_35: push             rax
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
.Lgcsite_options_104:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_909_999
                        add              rsp, 16;                             jmp   n00221_lit_string_β
.Lbinop_test_α_909_999: mov              rcx, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rcx
                        push             rax                                  # gc_poll bb_binop_relop_val.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_103:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00252_var_α
                        .size            n00251_binop_test_bx, .-n00251_binop_test_bx
                        .type            n00252_var_bx, @function
n00252_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_var_α:             add              rsp, -32;                            jmp   .Ldisjunction_γ_634_as
n00252_var_β:             add              rsp, 304;                            jmp   n00178_unmark_α
                        .size            n00252_var_bx, .-n00252_var_bx
                        .type            n00218_lit_string_bx, @function
n00218_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_912_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00253_var_ref_α
n00218_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_630_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_912_0: .quad .Llit_string_α_912_0_s; .popsection
.Llit_string_α_912_0_s: .string          "No parameter following -"
                        .size            n00218_lit_string_bx, .-n00218_lit_string_bx
                        .type            n00253_var_ref_bx, @function
n00253_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3056]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00254_deref_α
n00253_var_ref_β:         add              rsp, 16;                             jmp   n00218_lit_string_β
                        .size            n00253_var_ref_bx, .-n00253_var_ref_bx
                        .type            n00254_deref_bx, @function
n00254_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_108:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_915_999
                        add              rsp, 16;                             jmp   n00253_var_ref_β
.Lderef_α_915_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_107:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00255_line_mark_α
n00254_deref_β:           add              rsp, 16;                             jmp   n00253_var_ref_β
                        .size            n00254_deref_bx, .-n00254_deref_bx
                        .type            n00255_line_mark_bx, @function
n00255_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_916_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_916_stno
                        .long            0
                        .long            134
                        .quad            .Lstnof1
                        .popsection
n00255_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 134;            jmp   n00256_call_byname_α
                        .size            n00255_line_mark_bx, .-n00255_line_mark_bx
                        .type            n00256_call_byname_bx, @function
n00256_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_call_byname_α:     sub              rsp, 16
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
.Lcall_byname_α_rkfnzd919: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd919]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_109:   mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_110:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_918_999
                        add              rsp, 16;                             jmp   n00254_deref_β
.Lcall_byname_α_918_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 1544], rax;         jmp   .Ldisjunction_γ_630_as
n00256_call_byname_β:     add              rsp, 16;                             jmp   n00254_deref_β
                        .size            n00256_call_byname_bx, .-n00256_call_byname_bx
                        .type            n00217_var_ref_bx, @function
n00217_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3344]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00257_deref_α
n00217_var_ref_β:         add              rsp, 16;                             jmp   .Ldisjunction_ω_630_af
                        .size            n00217_var_ref_bx, .-n00217_var_ref_bx
                        .type            n00257_deref_bx, @function
n00257_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00257_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_112:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_922_999
                        add              rsp, 16;                             jmp   n00217_var_ref_β
.Lderef_α_922_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_111:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00258_line_mark_α
n00257_deref_β:           add              rsp, 16;                             jmp   n00217_var_ref_β
                        .size            n00257_deref_bx, .-n00257_deref_bx
                        .type            n00258_line_mark_bx, @function
n00258_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_923_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_923_stno
                        .long            0
                        .long            133
                        .quad            .Lstnof1
                        .popsection
n00258_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00259_call_byname_α
                        .size            n00258_line_mark_bx, .-n00258_line_mark_bx
                        .type            n00259_call_byname_bx, @function
n00259_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd926: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd926]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_113:   mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_114:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_925_999
                        add              rsp, 16;                             jmp   n00257_deref_β
.Lcall_byname_α_925_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 1544], rax
                        add              rsp, -16;                            jmp   .Ldisjunction_γ_630_as
n00259_call_byname_β:     add              rsp, 16;                             jmp   n00257_deref_β
                        .size            n00259_call_byname_bx, .-n00259_call_byname_bx
                        .type            n00214_lit_string_bx, @function
n00214_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_927_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00260_lit_integer_α
n00214_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_630_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_927_0: .quad .Llit_string_α_927_0_s; .popsection
.Llit_string_α_927_0_s: .string          ""
                        .size            n00214_lit_string_bx, .-n00214_lit_string_bx
                        .type            n00260_lit_integer_bx, @function
n00260_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_928_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00261_line_mark_α
n00260_lit_integer_β:     add              rsp, 16;                             jmp   n00214_lit_string_β
.Llit_integer_α_928_0:  .quad            0
                        .size            n00260_lit_integer_bx, .-n00260_lit_integer_bx
                        .type            n00261_line_mark_bx, @function
n00261_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_929_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_929_stno
                        .long            0
                        .long            133
                        .quad            .Lstnof1
                        .popsection
n00261_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00216_scan_tab_α
                        .size            n00261_line_mark_bx, .-n00261_line_mark_bx
                        .type            n00216_scan_tab_bx, @function
n00216_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_scan_tab_α:        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_932_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_932_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_932_998
                        add              rsp, 16;                             jmp   n00260_lit_integer_β
.Lscan_tab_α_932_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_932_999
                        add              rsp, 16;                             jmp   n00260_lit_integer_β
.Lscan_tab_α_932_999:   mov              qword ptr [rbp + 1632], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        call             qword ptr [rip + rt_substr@GOTPCREL]
.Lgcsite_options_116:   add              rsp, 16
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
.Lgcsite_options_115:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00262_binop_test_α
n00216_scan_tab_β:        mov              r14, qword ptr [rbp + 1632]
                        add              rsp, 16;                             jmp   n00260_lit_integer_β
                        .size            n00216_scan_tab_bx, .-n00216_scan_tab_bx
                        .type            n00262_binop_test_bx, @function
n00262_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_binop_test_α:      sub              rsp, 16
.Lbinop_test_α_933_2:   mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 17
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_options_122:   cmp              al, 255;                             jne   .Lbinop_test_vd_933_37
                        call             c_rt_jct_relop@PLT
.Lgcsite_options_121:   mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_test_vd_933_37: push             rax
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
.Lgcsite_options_120:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_933_999
                        add              rsp, 16;                             jmp   n00216_scan_tab_β
.Lbinop_test_α_933_999: mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
.Lgcsite_options_119:   cmp              al, 255;                             jne   .Lbinop_test_vd_933_36
                        call             c_rt_str_coerce@PLT
.Lgcsite_options_118:   mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_test_vd_933_36: mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_relop_val.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_117:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 1544], rax;         jmp   .Ldisjunction_γ_630_as
n00262_binop_test_β:      add              rsp, 16;                             jmp   n00216_scan_tab_β
                        .size            n00262_binop_test_bx, .-n00262_binop_test_bx
                        .type            n00178_unmark_bx, @function
n00178_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00178_unmark_α:          add              rsp, 32;                             jmp   n00263_line_mark_α
                        .size            n00178_unmark_bx, .-n00178_unmark_bx
                        .type            n00263_line_mark_bx, @function
n00263_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_936_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_936_stno
                        .long            0
                        .long            129
                        .quad            .Lstnof1
                        .popsection
n00263_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129
                        mov              rsp, qword ptr [rbp + 696]
                        add              rsp, 32;                             jmp   n00171_bound_α
                        .size            n00263_line_mark_bx, .-n00263_line_mark_bx
                        .type            n00150_scan_bx, @function
n00150_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00150_scan_α:            sub              rsp, 16
                        mov              dword ptr [rbp + 496], r14d
                        mov              dword ptr [rbp + 484], r15d
                        call             rt_scan_live_subj@PLT
.Lgcsite_options_124:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 488], rax
                        mov              dword ptr [rbp + 480], 2
                        mov              rdi, qword ptr [rbp + 392]           # outer_sigma
                        mov              rsi, qword ptr [rbp + 400]           # outer_delta
                        mov              rdx, qword ptr [rbp + 408]           # outer_len
                        call             rt_scan_leave@PLT
.Lgcsite_options_123:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rbp + 392]
                        mov              r14, qword ptr [rbp + 400]
                        mov              r15, qword ptr [rbp + 408];          jmp   n00145_unmark_α
n00150_scan_β:            add              rsp, 16
                        add              rsp, -16;                            jmp   n00145_unmark_α
                        .size            n00150_scan_bx, .-n00150_scan_bx
                        .type            n00169_lit_string_bx, @function
n00169_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_940_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00264_scan_match_α
n00169_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_587_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_940_0: .quad .Llit_string_α_940_0_s; .popsection
.Llit_string_α_940_0_s: .string          "-"
                        .size            n00169_lit_string_bx, .-n00169_lit_string_bx
                        .type            n00264_scan_match_bx, @function
n00264_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_scan_match_α:      sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jge   .Lscan_match_α_942_998
                        add              rsp, 16;                             jmp   n00169_lit_string_β
.Lscan_match_α_942_998: mov              rdi, qword ptr [rip + .Lscan_match_α_942_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        call             memcmp@PLT
.Lgcsite_options_125:   mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r12
                        test             eax, eax;                            je    .Lscan_match_α_942_999
                        add              rsp, 16;                             jmp   n00169_lit_string_β
.Lscan_match_α_942_999: mov              qword ptr [rsp + 0], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 8], rax;            jmp   n00265_scan_tab_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lscan_match_α_942_0: .quad .Lscan_match_α_942_0_s; .popsection
.Lscan_match_α_942_0_s: .string          "-"
                        .size            n00264_scan_match_bx, .-n00264_scan_match_bx
                        .type            n00265_scan_tab_bx, @function
n00265_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00265_scan_tab_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_options_132:   cmp              eax, -2;                             jne   .Lscan_tab_vd_944_38
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_options_131:   mov              r9,  qword ptr [rip + rtccb+48]
.Lscan_tab_vd_944_38:   test             eax, eax;                            jne   .Lscan_tab_α_944_997
                        add              rsp, 16
                        add              rsp, 32;                             jmp   .Ldisjunction_ω_587_af
.Lscan_tab_α_944_997:   push             rax
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
.Lgcsite_options_130:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rsp + 16]            # lo
                        mov              rsi, qword ptr [rsp + 24]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_options_129:   mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_128:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_944_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_944_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_944_998
                        add              rsp, 16
                        add              rsp, 32;                             jmp   .Ldisjunction_ω_587_af
.Lscan_tab_α_944_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_944_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   .Ldisjunction_ω_587_af
.Lscan_tab_α_944_999:   mov              qword ptr [rbp + 2480], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        call             qword ptr [rip + rt_substr@GOTPCREL]
.Lgcsite_options_127:   add              rsp, 16
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
.Lgcsite_options_126:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00266_lit_integer_α
n00265_scan_tab_β:        mov              r14, qword ptr [rbp + 2480]
                        add              rsp, 16
                        add              rsp, 32;                             jmp   .Ldisjunction_ω_587_af
                        .size            n00265_scan_tab_bx, .-n00265_scan_tab_bx
                        .type            n00266_lit_integer_bx, @function
n00266_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_945_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00267_line_mark_α
n00266_lit_integer_β:     add              rsp, 16;                             jmp   n00265_scan_tab_β
.Llit_integer_α_945_0:  .quad            0
                        .size            n00266_lit_integer_bx, .-n00266_lit_integer_bx
                        .type            n00267_line_mark_bx, @function
n00267_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_946_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_946_stno
                        .long            0
                        .long            128
                        .quad            .Lstnof1
                        .popsection
n00267_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 128;            jmp   n00268_scan_pos_α
                        .size            n00267_line_mark_bx, .-n00267_line_mark_bx
                        .type            n00268_scan_pos_bx, @function
n00268_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00268_scan_pos_α:        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_949_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_949_0:     cmp              rax, 1;                              jge   .Lscan_pos_α_949_997
                        add              rsp, 16;                             jmp   n00266_lit_integer_β
.Lscan_pos_α_949_997:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_pos_α_949_998
                        add              rsp, 16;                             jmp   n00266_lit_integer_β
.Lscan_pos_α_949_998:   mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            je    .Lscan_pos_α_949_999
                        add              rsp, 16;                             jmp   n00266_lit_integer_β
.Lscan_pos_α_949_999:   mov              qword ptr [rsp + 0], 3
                        mov              qword ptr [rsp + 8], rax;            jmp   n00269_conjunction_α
                        .size            n00268_scan_pos_bx, .-n00268_scan_pos_bx
                        .type            n00269_conjunction_bx, @function
n00269_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_conjunction_α:     mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 2424], rax;         jmp   n00270_scan_α
n00269_conjunction_β:                                                           jmp   .Ldisjunction_ω_587_af
                        .size            n00269_conjunction_bx, .-n00269_conjunction_bx
                        .type            n00270_scan_bx, @function
n00270_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_scan_α:            sub              rsp, 16
                        mov              dword ptr [rbp + 2400], r14d
                        mov              dword ptr [rbp + 2388], r15d
                        call             rt_scan_live_subj@PLT
.Lgcsite_options_134:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rbp + 2392], rax
                        mov              dword ptr [rbp + 2384], 2
                        mov              rdi, qword ptr [rbp + 392]           # outer_sigma
                        mov              rsi, qword ptr [rbp + 400]           # outer_delta
                        mov              rdx, qword ptr [rbp + 408]           # outer_len
                        call             rt_scan_leave@PLT
.Lgcsite_options_133:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rbp + 392]
                        mov              r14, qword ptr [rbp + 400]
                        mov              r15, qword ptr [rbp + 408];          jmp   n00271_var_α
n00270_scan_β:            add              rsp, 16
                        add              rsp, -16;                            jmp   n00271_var_α
                        .size            n00270_scan_bx, .-n00270_scan_bx
                        .type            n00271_var_bx, @function
n00271_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_var_α:             sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   n00272_assign_α
                        .size            n00271_var_bx, .-n00271_var_bx
                        .type            n00272_assign_bx, @function
n00272_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx;         jmp   n00273_var_α
                        .size            n00272_assign_bx, .-n00272_assign_bx
                        .type            n00273_var_bx, @function
n00273_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_var_α:             add              rsp, 272;                            jmp   n00138_line_mark_α
                        .size            n00273_var_bx, .-n00273_var_bx
                        .type            n00145_unmark_bx, @function
n00145_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00145_unmark_α:          add              rsp, 80;                             jmp   n00274_line_mark_α
                        .size            n00145_unmark_bx, .-n00145_unmark_bx
                        .type            n00274_line_mark_bx, @function
n00274_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_959_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_959_stno
                        .long            0
                        .long            125
                        .quad            .Lstnof1
                        .popsection
n00274_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 125;            jmp   n00135_bound_α
                        .size            n00274_line_mark_bx, .-n00274_line_mark_bx
                        .type            n00138_line_mark_bx, @function
n00138_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 148 0
.Lline_mark_α_961_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_961_stno
                        .long            0
                        .long            148
                        .quad            .Lstnof1
                        .popsection
n00138_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 148;            jmp   n00275_bound_α
                        .size            n00138_line_mark_bx, .-n00138_line_mark_bx
                        .type            n00275_bound_bx, @function
n00275_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_bound_α:           mov              qword ptr [rbp + 192], rsp;          jmp   n00276_var_ref_α
n00275_bound_β:                                                                 jmp   n00276_var_ref_α
                        .size            n00275_bound_bx, .-n00275_bound_bx
                        .type            n00276_var_ref_bx, @function
n00276_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3344]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00277_var_ref_α
                        .size            n00276_var_ref_bx, .-n00276_var_ref_bx
                        .type            n00277_var_ref_bx, @function
n00277_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 3008]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00278_deref_α
                        .size            n00277_var_ref_bx, .-n00277_var_ref_bx
                        .type            n00278_deref_bx, @function
n00278_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_136:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_969_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00279_line_mark_α
.Lderef_α_969_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_135:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00280_line_mark_α
                        .size            n00278_deref_bx, .-n00278_deref_bx
                        .type            n00280_line_mark_bx, @function
n00280_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_970_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_970_stno
                        .long            0
                        .long            148
                        .quad            .Lstnof1
                        .popsection
n00280_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 148;            jmp   n00281_call_byname_α
                        .size            n00280_line_mark_bx, .-n00280_line_mark_bx
                        .type            n00281_call_byname_bx, @function
n00281_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd973: .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd973]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262292
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_137:   mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_138:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_972_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00279_line_mark_α
.Lcall_byname_α_972_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00282_deref_α
                        .size            n00281_call_byname_bx, .-n00281_call_byname_bx
                        .type            n00282_deref_bx, @function
n00282_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # var_ref
                        mov              rsi, qword ptr [rsp + 72]            # d
                        call             rt_deref@PLT
.Lgcsite_options_140:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_974_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n00279_line_mark_α
.Lderef_α_974_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_139:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00283_line_mark_α
                        .size            n00282_deref_bx, .-n00282_deref_bx
                        .type            n00283_line_mark_bx, @function
n00283_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_975_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_975_stno
                        .long            0
                        .long            148
                        .quad            .Lstnof1
                        .popsection
n00283_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 148;            jmp   n00284_call_byname_α
                        .size            n00283_line_mark_bx, .-n00283_line_mark_bx
                        .type            n00284_call_byname_bx, @function
n00284_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_call_byname_α:     sub              rsp, 16
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
.Lcall_byname_α_rkfnzd978: .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd978]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 262293
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_141:   mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_options_142:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_977_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n00279_line_mark_α
.Lcall_byname_α_977_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00285_unmark_α
                        .size            n00284_call_byname_bx, .-n00284_call_byname_bx
                        .type            n00285_unmark_bx, @function
n00285_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_unmark_α:          add              rsp, 96;                             jmp   n00275_bound_α
                        .size            n00285_unmark_bx, .-n00285_unmark_bx
                        .type            n00279_line_mark_bx, @function
n00279_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 149 0
.Lline_mark_α_981_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_981_stno
                        .long            0
                        .long            149
                        .quad            .Lstnof1
                        .popsection
n00279_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 149;            jmp   n00286_var_α
                        .size            n00279_line_mark_bx, .-n00279_line_mark_bx
                        .type            n00286_var_bx, @function
n00286_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00286_var_α:                                                                   jmp   n00287_return_α
                        .size            n00286_var_bx, .-n00286_var_bx
                        .type            n00287_return_bx, @function
n00287_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_return_α:          mov              rax, qword ptr [rbp + 2992]          # var
                        mov              rdx, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   options_γ
                        .size            n00287_return_bx, .-n00287_return_bx
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
.Lgcsites_options_3:    .quad            143
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
                        .quad            .Lgcsite_options_77-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_76-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_78-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_82-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_81-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_80-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_79-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_84-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_83-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_85-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_86-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_88-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_87-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_89-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_90-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_94-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_93-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_92-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_91-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_96-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_95-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_97-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_98-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_100-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_99-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_101-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_102-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_106-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_105-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_104-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_103-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_108-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_107-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_109-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_110-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_112-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_111-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_113-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_114-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_116-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_115-.Lgccode_options_3
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
                        .quad            .Lgcsite_options_124-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_123-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_125-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_132-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_131-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_130-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_129-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_128-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_127-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_126-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_134-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_133-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_136-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_135-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_137-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_138-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_140-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_139-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_141-.Lgccode_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_142-.Lgccode_options_3
                        .quad            65537
                        .popsection
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_shuffle_4:
FN__shuffle:
                        sub              rsp, 288
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
                        mov              qword ptr [rdi + 272], rax
                        mov              eax, 0                               # GCANCHOR .Lgcmap_shuffle qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 280], rbp
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
shuffle_α_body:
                        .type            n00288_line_mark_bx, @function
n00288_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 155 0
.Lline_mark_α_1001_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1001_stno
                        .long            0
                        .long            155
                        .quad            .Lstnof1
                        .popsection
n00288_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 155
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_1002_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00289_var_ref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_1002_0: .quad .Lline_mark_α_1002_0_s; .popsection
.Lline_mark_α_1002_0_s: .string          "deal.icn"
                        .size            n00288_line_mark_bx, .-n00288_line_mark_bx
                        .type            n00289_var_ref_bx, @function
n00289_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 304]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00290_deref_α
                        .size            n00289_var_ref_bx, .-n00289_var_ref_bx
                        .type            n00290_deref_bx, @function
n00290_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00290_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_shuffle_1:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1005_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00291_line_mark_α
.Lderef_α_1005_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_shuffle_0:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00292_line_mark_α
                        .size            n00290_deref_bx, .-n00290_deref_bx
                        .type            n00292_line_mark_bx, @function
n00292_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1006_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1006_stno
                        .long            0
                        .long            155
                        .quad            .Lstnof1
                        .popsection
n00292_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 155;            jmp   n00293_call_byname_α
                        .size            n00292_line_mark_bx, .-n00292_line_mark_bx
                        .type            n00293_call_byname_bx, @function
n00293_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd1009: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd1009]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_shuffle_2:     mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_shuffle_3:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_1008_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00291_line_mark_α
.Lcall_byname_α_1008_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00294_assign_α
                        .size            n00293_call_byname_bx, .-n00293_call_byname_bx
                        .type            n00294_assign_bx, @function
n00294_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        add              rsp, 48;                             jmp   n00291_line_mark_α
                        .size            n00294_assign_bx, .-n00294_assign_bx
                        .type            n00291_line_mark_bx, @function
n00291_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 156 0
.Lline_mark_α_1011_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1011_stno
                        .long            0
                        .long            156
                        .quad            .Lstnof1
                        .popsection
n00291_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 156;            jmp   n00295_var_ref_α
                        .size            n00291_line_mark_bx, .-n00291_line_mark_bx
                        .type            n00295_var_ref_bx, @function
n00295_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 304]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00296_iterate_α
                        .size            n00295_var_ref_bx, .-n00295_var_ref_bx
                        .type            n00296_iterate_bx, @function
n00296_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_iterate_α:         sub              rsp, 16
                        mov              qword ptr [rsp + 80], 0
.Literate_α_1016_0:     mov              rdi, qword ptr [rsp + 16]            # obj
                        mov              rsi, qword ptr [rsp + 24]            # obj
                        lea              rdx, [rsp + 80]                      # cur
                        call             rt_list_bang_var_at@PLT
.Lgcsite_shuffle_5:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Literate_α_1016_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00297_line_mark_α
.Literate_α_1016_999:   push             rax                                  # gc_poll bb_iterate.cpp:32
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_shuffle_4:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00298_var_ref_α
n00296_iterate_β:         inc              qword ptr [rsp + 80];                jmp   .Literate_α_1016_0
                        .size            n00296_iterate_bx, .-n00296_iterate_bx
                        .type            n00298_var_ref_bx, @function
n00298_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 336]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00299_random_α
n00298_var_ref_β:         add              rsp, 16;                             jmp   n00296_iterate_β
                        .size            n00298_var_ref_bx, .-n00298_var_ref_bx
                        .type            n00299_random_bx, @function
n00299_random_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_random_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_random_var_strict@PLT
.Lgcsite_shuffle_7:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lrandom_α_1019_999
                        add              rsp, 16;                             jmp   n00298_var_ref_β
.Lrandom_α_1019_999:    mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_random.cpp:23
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_shuffle_6:     mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00300_swap_var_α
                        .size            n00299_random_bx, .-n00299_random_bx
                        .type            n00300_swap_var_bx, @function
n00300_swap_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00300_swap_var_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # va
                        mov              rsi, qword ptr [rsp + 56]            # va
                        mov              rdx, qword ptr [rsp + 16]            # vb
                        mov              rcx, qword ptr [rsp + 24]            # vb
                        call             rt_swap_var@PLT
.Lgcsite_shuffle_9:     mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lswap_var_α_1020_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n00297_line_mark_α
.Lswap_var_α_1020_999:  mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_swap_var.cpp:24
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_shuffle_8:     mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 48;                             jmp   n00296_iterate_β
                        .size            n00300_swap_var_bx, .-n00300_swap_var_bx
                        .type            n00297_line_mark_bx, @function
n00297_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 157 0
.Lline_mark_α_1021_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1021_stno
                        .long            0
                        .long            157
                        .quad            .Lstnof1
                        .popsection
n00297_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 157;            jmp   n00301_var_α
                        .size            n00297_line_mark_bx, .-n00297_line_mark_bx
                        .type            n00301_var_bx, @function
n00301_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00301_var_α:                                                                   jmp   n00302_return_α
                        .size            n00301_var_bx, .-n00301_var_bx
                        .type            n00302_return_bx, @function
n00302_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_return_α:         mov              rax, qword ptr [rsp + 288]           # var
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   shuffle_γ
                        .size            n00302_return_bx, .-n00302_return_bx
#-----------------------------------------------------------------------------------------------------------------------
shuffle_β:
                                                                              jmp   shuffle_ω
#-----------------------------------------------------------------------------------------------------------------------
shuffle_γ:
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
                        lea              rsp, [rbp + 304]
                        mov              rbp, qword ptr [rbp + 280];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
shuffle_ω:
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
                        lea              rsp, [rbp + 304]
                        mov              rbp, qword ptr [rbp + 280];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_shuffle:
                        .quad            1238297038170
                        .quad            515396075584
                        .quad            .Lgcmap_shuffle_s
                        .quad            208
                        .quad            3
                        .quad            52776558133248
                        .quad            17596481011760
                        .quad            158329674399808
.Lgcmap_shuffle_s:      .string          "shuffle"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_shuffle_4:    .quad            10
                        .quad            .Lgcmap_shuffle
                        .quad            9223389622598369584
                        .quad            .Lgccode_shuffle_4
                        .quad            .Lgcsite_shuffle_1-.Lgccode_shuffle_4
                        .quad            65537
                        .quad            .Lgcsite_shuffle_0-.Lgccode_shuffle_4
                        .quad            65537
                        .quad            .Lgcsite_shuffle_2-.Lgccode_shuffle_4
                        .quad            65537
                        .quad            .Lgcsite_shuffle_3-.Lgccode_shuffle_4
                        .quad            65537
                        .quad            .Lgcsite_shuffle_5-.Lgccode_shuffle_4
                        .quad            65537
                        .quad            .Lgcsite_shuffle_4-.Lgccode_shuffle_4
                        .quad            65537
                        .quad            .Lgcsite_shuffle_7-.Lgccode_shuffle_4
                        .quad            65537
                        .quad            .Lgcsite_shuffle_6-.Lgccode_shuffle_4
                        .quad            65537
                        .quad            .Lgcsite_shuffle_9-.Lgccode_shuffle_4
                        .quad            65537
                        .quad            .Lgcsite_shuffle_8-.Lgccode_shuffle_4
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
                        mov              edi, 756
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 756
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
.Lgvan741:              .string          "deck"
.Lgvan742:              .string          "deckimage"
.Lgvan743:              .string          "handsize"
.Lgvan744:              .string          "suitsize"
.Lgvan745:              .string          "denom"
.Lgvan746:              .string          "rank"
.Lgvan747:              .string          "blanker"
.Lgvan748:              .string          "display__STATIC__bar"
.Lgvan749:              .string          "display__STATIC__offset"
.Lgvan750:              .string          "display__INITFLAG__0"
.Lgvan751:              .string          "show__STATIC__clubmap"
.Lgvan752:              .string          "show__STATIC__diamondmap"
.Lgvan753:              .string          "show__STATIC__heartmap"
.Lgvan754:              .string          "show__STATIC__spademap"
.Lgvan755:              .string          "show__INITFLAG__0"
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
                        .quad            .Lgvan745
                        .quad            .Lgvan746
                        .quad            .Lgvan747
                        .quad            .Lgvan748
                        .quad            .Lgvan749
                        .quad            .Lgvan750
                        .quad            .Lgvan751
                        .quad            .Lgvan752
                        .quad            .Lgvan753
                        .quad            .Lgvan754
                        .quad            .Lgvan755
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_main_5:
main_α:
                        sub              rsp, 1168
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
                        movups           xmmword ptr [rdi + 1072], xmm0
                        movups           xmmword ptr [rdi + 1088], xmm0
                        movups           xmmword ptr [rdi + 1104], xmm0
                        movups           xmmword ptr [rdi + 1120], xmm0
                        movups           xmmword ptr [rdi + 1136], xmm0
                        mov              qword ptr [rdi + 1152], rax
                        mov              eax, 0                               # GCANCHOR .Lgcmap_main qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 1160], rbp
                        mov              rbp, rsp
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              ecx, dword ptr [rax + 12]
                        mov              rax, qword ptr [rax + 0]
                        cmp              ecx, 0;                              jbe   .Lmain_α_1025_220
                        mov              rdx, qword ptr [rax + 0]
                        mov              qword ptr [rsp + 16], rdx
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rsp + 24], rdx
.Lmain_α_1025_220:
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
main_α_body:
                        .type            n00303_call_direct_bx, @function
n00303_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_call_direct_α:    sub              rsp, 16
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
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_1094_999
                        add              rsp, 16;                             jmp   n00304_line_mark_α
.Lcall_direct_α_1094_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 16;                             jmp   n00304_line_mark_α
n00303_call_direct_β:    add              rsp, 16;                             jmp   n00304_line_mark_α
                        .size            n00303_call_direct_bx, .-n00303_call_direct_bx
                        .type            n00304_line_mark_bx, @function
n00304_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 51 0
.Lline_mark_α_1095_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1095_stno
                        .long            0
                        .long            51
                        .quad            .Lstnof1
                        .popsection
n00304_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_1096_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00305_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_1096_0: .quad .Lline_mark_α_1096_0_s; .popsection
.Lline_mark_α_1096_0_s: .string          "deal.icn"
                        .size            n00304_line_mark_bx, .-n00304_line_mark_bx
                        .type            n00305_line_mark_bx, @function
n00305_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 53 0
.Lline_mark_α_1097_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1097_stno
                        .long            0
                        .long            53
                        .quad            .Lstnof1
                        .popsection
n00305_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 53;             jmp   n00306_lit_charset_α
                        .size            n00305_line_mark_bx, .-n00305_line_mark_bx
                        .type            n00306_lit_charset_bx, @function
n00306_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00306_lit_charset_α:    sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4294967295
                        mov              rax, qword ptr [rip + .Llit_charset_α_1099_0]
                        mov              qword ptr [rsp + 8], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_1099_0] # ptr
                        mov              rsi, 52                              # len
                        call             rt_icn_cset_register@PLT
.Lgcsite_main_3:        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:124
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_2:        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00307_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_charset_α_1099_0: .quad .Llit_charset_α_1099_0_s; .popsection
.Llit_charset_α_1099_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00306_lit_charset_bx, .-n00306_lit_charset_bx
                        .type            n00307_line_mark_bx, @function
n00307_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1100_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1100_stno
                        .long            0
                        .long            53
                        .quad            .Lstnof1
                        .popsection
n00307_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 53;             jmp   n00308_call_byname_α
                        .size            n00307_line_mark_bx, .-n00307_line_mark_bx
                        .type            n00308_call_byname_bx, @function
n00308_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00308_call_byname_α:    sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd1103: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd1103]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_4:        mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_5:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_1102_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00309_line_mark_α
.Lcall_byname_α_1102_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00310_assign_α
                        .size            n00308_call_byname_bx, .-n00308_call_byname_bx
                        .type            n00310_assign_bx, @function
n00310_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00310_assign_α:         mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11872], rax          # deckimage
                        mov              qword ptr [r9 + 11880], rdx;         jmp   n00311_assign_α
                        .size            n00310_assign_bx, .-n00310_assign_bx
                        .type            n00311_assign_bx, @function
n00311_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_assign_α:         mov              rax, qword ptr [rsp + 0]             # assign
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11856], rax          # deck
                        mov              qword ptr [r9 + 11864], rdx
                        add              rsp, 32;                             jmp   n00309_line_mark_α
                        .size            n00311_assign_bx, .-n00311_assign_bx
                        .type            n00309_line_mark_bx, @function
n00309_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 54 0
.Lline_mark_α_1106_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1106_stno
                        .long            0
                        .long            54
                        .quad            .Lstnof1
                        .popsection
n00309_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 54;             jmp   n00312_var_α
                        .size            n00309_line_mark_bx, .-n00309_line_mark_bx
                        .type            n00312_var_bx, @function
n00312_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11856]          # deck
                        mov              rdx, qword ptr [r9 + 11864]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00313_unop_α
                        .size            n00312_var_bx, .-n00312_var_bx
                        .type            n00313_unop_bx, @function
n00313_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00313_unop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_size_d@GOTPCREL]
.Lgcsite_main_8:        cmp              al, 255;                             jne   .Lunop_vd_1109_39
                        call             c_rt_size_d@PLT
.Lgcsite_main_7:        mov              r9,  qword ptr [rip + rtccb+48]
.Lunop_vd_1109_39:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:37
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_6:        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00314_lit_integer_α
                        .size            n00313_unop_bx, .-n00313_unop_bx
                        .type            n00314_lit_integer_bx, @function
n00314_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00314_lit_integer_α:    sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1110_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00315_coerce_numeric_α
.Llit_integer_α_1110_0: .quad            4
                        .size            n00314_lit_integer_bx, .-n00314_lit_integer_bx
                        .type            n00315_coerce_numeric_bx, @function
n00315_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00315_coerce_numeric_α: sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # unop
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1112_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1112_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1112_0
.Lcoerce_numeric_α_1112_1:
                        mov              rax, qword ptr [rsp + 32]            # unop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # unop
                        mov              qword ptr [rsp + 8], rax;            jmp   n00316_binop_α
.Lcoerce_numeric_α_1112_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 17196646502
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_11:       cmp              al, 255;                             jne   .Lcoerce_numeric_vd_1112_40
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_10:       mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_1112_40:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_9:        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_1112_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00317_line_mark_α
.Lcoerce_numeric_α_1112_999:
                                                                              jmp   n00316_binop_α
                        .size            n00315_coerce_numeric_bx, .-n00315_coerce_numeric_bx
                        .type            n00316_binop_bx, @function
n00316_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00316_binop_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        call             qword ptr [rip + rt_div_strict@GOTPCREL]
.Lgcsite_main_14:       cmp              al, 255;                             jne   .Lbinop_vd_1113_41
                        call             c_rt_div_strict@PLT
.Lgcsite_main_13:       mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_1113_41:     cmp              al, 104;                             jne   .Lbinop_α_1113_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n00317_line_mark_α
.Lbinop_α_1113_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:322
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_12:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00318_assign_α
                        .size            n00316_binop_bx, .-n00316_binop_bx
                        .type            n00318_assign_bx, @function
n00318_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00318_assign_α:         mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11904], rax          # suitsize
                        mov              qword ptr [r9 + 11912], rdx;         jmp   n00319_assign_α
                        .size            n00318_assign_bx, .-n00318_assign_bx
                        .type            n00319_assign_bx, @function
n00319_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00319_assign_α:         mov              rax, qword ptr [rsp + 0]             # assign
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11888], rax          # handsize
                        mov              qword ptr [r9 + 11896], rdx
                        add              rsp, 80;                             jmp   n00317_line_mark_α
                        .size            n00319_assign_bx, .-n00319_assign_bx
                        .type            n00317_line_mark_bx, @function
n00317_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 55 0
.Lline_mark_α_1116_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1116_stno
                        .long            0
                        .long            55
                        .quad            .Lstnof1
                        .popsection
n00317_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 55;             jmp   n00320_lit_string_α
                        .size            n00317_line_mark_bx, .-n00317_line_mark_bx
                        .type            n00320_lit_string_bx, @function
n00320_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00320_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_1118_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00321_assign_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_1118_0: .quad .Llit_string_α_1118_0_s; .popsection
.Llit_string_α_1118_0_s:
                        .string          "AKQJT98765432"
                        .size            n00320_lit_string_bx, .-n00320_lit_string_bx
                        .type            n00321_assign_bx, @function
n00321_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00321_assign_α:         mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11936], rax          # rank
                        mov              qword ptr [r9 + 11944], rdx
                        add              rsp, 16;                             jmp   n00322_line_mark_α
                        .size            n00321_assign_bx, .-n00321_assign_bx
                        .type            n00322_line_mark_bx, @function
n00322_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 56 0
.Lline_mark_α_1120_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1120_stno
                        .long            0
                        .long            56
                        .quad            .Lstnof1
                        .popsection
n00322_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 56;             jmp   n00323_lit_string_α
                        .size            n00322_line_mark_bx, .-n00322_line_mark_bx
                        .type            n00323_lit_string_bx, @function
n00323_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00323_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1122_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00324_var_ref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_1122_0: .quad .Llit_string_α_1122_0_s; .popsection
.Llit_string_α_1122_0_s:
                        .string          " "
                        .size            n00323_lit_string_bx, .-n00323_lit_string_bx
                        .type            n00324_var_ref_bx, @function
n00324_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064192                      # suitsize
                        mov              qword ptr [rsp + 8], rax;            jmp   n00325_deref_α
                        .size            n00324_var_ref_bx, .-n00324_var_ref_bx
                        .type            n00325_deref_bx, @function
n00325_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00325_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_16:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1125_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00326_line_mark_α
.Lderef_α_1125_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_15:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00327_line_mark_α
                        .size            n00325_deref_bx, .-n00325_deref_bx
                        .type            n00327_line_mark_bx, @function
n00327_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1126_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1126_stno
                        .long            0
                        .long            56
                        .quad            .Lstnof1
                        .popsection
n00327_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 56;             jmp   n00328_call_byname_α
                        .size            n00327_line_mark_bx, .-n00327_line_mark_bx
                        .type            n00328_call_byname_bx, @function
n00328_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00328_call_byname_α:    sub              rsp, 16
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
.Lcall_byname_α_rkfnzd1129: .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd1129]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_17:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_18:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_byname_α_1128_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00326_line_mark_α
.Lcall_byname_α_1128_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00329_assign_α
                        .size            n00328_call_byname_bx, .-n00328_call_byname_bx
                        .type            n00329_assign_bx, @function
n00329_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00329_assign_α:         mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11952], rax          # blanker
                        mov              qword ptr [r9 + 11960], rdx
                        add              rsp, 64;                             jmp   n00326_line_mark_α
                        .size            n00329_assign_bx, .-n00329_assign_bx
                        .type            n00326_line_mark_bx, @function
n00326_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 57 0
.Lline_mark_α_1131_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1131_stno
                        .long            0
                        .long            57
                        .quad            .Lstnof1
                        .popsection
n00326_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 57;             jmp   n00330_lit_charset_α
                        .size            n00326_line_mark_bx, .-n00326_line_mark_bx
                        .type            n00330_lit_charset_bx, @function
n00330_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00330_lit_charset_α:    sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4294967295
                        mov              rax, qword ptr [rip + .Llit_charset_α_1133_0]
                        mov              qword ptr [rsp + 8], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_1133_0] # ptr
                        mov              rsi, 26                              # len
                        call             rt_icn_cset_register@PLT
.Lgcsite_main_20:       mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:124
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_19:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00331_lit_integer_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_charset_α_1133_0: .quad .Llit_charset_α_1133_0_s; .popsection
.Llit_charset_α_1133_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
                        .size            n00330_lit_charset_bx, .-n00330_lit_charset_bx
                        .type            n00331_lit_integer_bx, @function
n00331_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00331_lit_integer_α:    sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1134_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00332_var_α
.Llit_integer_α_1134_0: .quad            1
                        .size            n00331_lit_integer_bx, .-n00331_lit_integer_bx
                        .type            n00332_var_bx, @function
n00332_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00332_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11904]          # suitsize
                        mov              rdx, qword ptr [r9 + 11912]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00333_binop_α
                        .size            n00332_var_bx, .-n00332_var_bx
                        .type            n00333_binop_bx, @function
n00333_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00333_binop_α:          sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              al, 3;                               jne   .Lbinop_α_1136_2
                        mov              rax, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_1136_7
.Lbinop_α_1136_2:       mov              ecx, eax
                        mov              edx, eax
                        and              edx, 1;                              jz    .Lbinop_α_1136_0
                        mov              rsi, 1
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cvtsi2sd         xmm0, rsi
                        cmp              cl, 5;                               je    .Lbinop_α_1136_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1136_6
.Lbinop_α_1136_5:       movq             xmm1, rdi
.Lbinop_α_1136_6:       addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_1136_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_1136_7:                                                             jmp   n00334_subscript_α
.Lbinop_α_1136_0:       mov              rdi, qword ptr [rsp + 32]            # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             c_rt_add@PLT
.Lgcsite_main_22:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_1136_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00335_line_mark_α
.Lbinop_α_1136_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_21:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00334_subscript_α
                        .size            n00333_binop_bx, .-n00333_binop_bx
                        .type            n00334_subscript_bx, @function
n00334_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00334_subscript_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # lit_charset
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 48]            # lit_integer
                        mov              rcx, qword ptr [rsp + 56]
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        call             subscript_get2_ext_strict@PLT
.Lgcsite_main_24:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lsubscript_α_1137_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n00335_line_mark_α
.Lsubscript_α_1137_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_section.cpp:69
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_23:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00336_assign_α
                        .size            n00334_subscript_bx, .-n00334_subscript_bx
                        .type            n00336_assign_bx, @function
n00336_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00336_assign_α:         mov              rax, qword ptr [rsp + 0]             # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11920], rax          # denom
                        mov              qword ptr [r9 + 11928], rdx
                        add              rsp, 80;                             jmp   n00335_line_mark_α
                        .size            n00336_assign_bx, .-n00336_assign_bx
                        .type            n00335_line_mark_bx, @function
n00335_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 59 0
.Lline_mark_α_1139_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1139_stno
                        .long            0
                        .long            59
                        .quad            .Lstnof1
                        .popsection
n00335_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 59;             jmp   n00337_var_ref_α
                        .size            n00335_line_mark_bx, .-n00335_line_mark_bx
                        .type            n00337_var_ref_bx, @function
n00337_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00337_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 32]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00338_lit_string_α
                        .size            n00337_var_ref_bx, .-n00337_var_ref_bx
                        .type            n00338_lit_string_bx, @function
n00338_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00338_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1143_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00339_deref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_1143_0: .quad .Llit_string_α_1143_0_s; .popsection
.Llit_string_α_1143_0_s:
                        .string          "h+s+"
                        .size            n00338_lit_string_bx, .-n00338_lit_string_bx
                        .type            n00339_deref_bx, @function
n00339_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00339_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_main_26:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1144_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00340_line_mark_α
.Lderef_α_1144_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_25:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00341_line_mark_α
                        .size            n00339_deref_bx, .-n00339_deref_bx
                        .type            n00341_line_mark_bx, @function
n00341_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1145_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1145_stno
                        .long            0
                        .long            59
                        .quad            .Lstnof1
                        .popsection
n00341_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 59;             jmp   n00342_call_proc_staged_α
                        .size            n00341_line_mark_bx, .-n00341_line_mark_bx
                        .type            n00342_call_proc_staged_bx, @function
n00342_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00342_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rcx, [rip + .Lcall_proc_staged_α_1148_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1148_3]
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
.Lcall_proc_staged_α_1148_3:
.Lgcsite_main_28:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 59
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1148_2
.Lcall_proc_staged_α_1148_4:
.Lgcsite_main_27:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 59
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1148_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_1148_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00340_line_mark_α
.Lcall_proc_staged_α_1148_999:
                                                                              jmp   n00343_deref_α
n00342_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 59
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00340_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_1148_0: .quad .Lcall_proc_staged_β_1148_0_s; .popsection
.Lcall_proc_staged_β_1148_0_s:
                        .string          "options"
                        .size            n00342_call_proc_staged_bx, .-n00342_call_proc_staged_bx
                        .type            n00343_deref_bx, @function
n00343_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00343_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_30:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1149_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n00340_line_mark_α
.Lderef_α_1149_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_29:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00344_assign_α
                        .size            n00343_deref_bx, .-n00343_deref_bx
                        .type            n00344_assign_bx, @function
n00344_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00344_assign_α:         mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        add              rsp, 80;                             jmp   n00340_line_mark_α
                        .size            n00344_assign_bx, .-n00344_assign_bx
                        .type            n00340_line_mark_bx, @function
n00340_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 60 0
.Lline_mark_α_1151_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1151_stno
                        .long            0
                        .long            60
                        .quad            .Lstnof1
                        .popsection
n00340_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 60;             jmp   n00345_disjunction_α
                        .size            n00340_line_mark_bx, .-n00340_line_mark_bx
                        .type            n00345_disjunction_bx, @function
n00345_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00345_disjunction_α:    sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n00346_var_ref_α
.Ldisjunction_γ_1068_as:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1154_0
                                                                              jmp   n00347_assign_α
.Ldisjunction_α_1154_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1154_1
                                                                              jmp   n00347_assign_α
.Ldisjunction_α_1154_1:                                                       jmp   n00347_assign_α
n00345_disjunction_β:    mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1068_af
                                                                              jmp   .Ldisjunction_ω_1068_af
.Ldisjunction_γ_1068_af:
.Ldisjunction_ω_1068_af:
                        add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 1;                              je    n00348_lit_integer_α
                        add              rsp, 32;                             jmp   n00349_line_mark_α
                        .size            n00345_disjunction_bx, .-n00345_disjunction_bx
                        .type            n00347_assign_bx, @function
n00347_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00347_assign_α:         mov              rax, qword ptr [rsp + 0]             # disjunction
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        add              rsp, 32;                             jmp   n00349_line_mark_α
                        .size            n00347_assign_bx, .-n00347_assign_bx
                        .type            n00349_line_mark_bx, @function
n00349_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 61 0
.Lline_mark_α_1156_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1156_stno
                        .long            0
                        .long            61
                        .quad            .Lstnof1
                        .popsection
n00349_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 61;             jmp   n00350_var_ref_α
                        .size            n00349_line_mark_bx, .-n00349_line_mark_bx
                        .type            n00350_var_ref_bx, @function
n00350_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00350_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 1008]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00351_lit_string_α
                        .size            n00350_var_ref_bx, .-n00350_var_ref_bx
                        .type            n00351_lit_string_bx, @function
n00351_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00351_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1160_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00352_subscript_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_1160_0: .quad .Llit_string_α_1160_0_s; .popsection
.Llit_string_α_1160_0_s:
                        .string          "s"
                        .size            n00351_lit_string_bx, .-n00351_lit_string_bx
                        .type            n00352_subscript_bx, @function
n00352_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00352_subscript_α:      sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_1161_1:   mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        test             eax, eax;                            jne   .Lsubscript_α_1161_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_main_36:       cmp              al, 255;                             jne   .Lsubscript_vd_1161_43
                        call             c_rt_subscript_val_strict@PLT
.Lgcsite_main_35:       mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_1161_43: cmp              al, 255;                             jne   .Lsubscript_α_1161_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_1161_1
.Lsubscript_α_1161_4:   push             rax
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
.Lgcsite_main_34:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_1161_3
.Lsubscript_α_1161_2:   call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_33:       cmp              al, 255;                             jne   .Lsubscript_vd_1161_42
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_main_32:       mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_1161_42: push             rax
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
.Lgcsite_main_31:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_1161_3:   cmp              al, 104;                             jne   .Lsubscript_α_1161_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00353_line_mark_α
.Lsubscript_α_1161_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00354_deref_α
                        .size            n00352_subscript_bx, .-n00352_subscript_bx
                        .type            n00354_deref_bx, @function
n00354_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00354_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_38:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1162_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00353_line_mark_α
.Lderef_α_1162_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_37:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00355_unop_test_α
                        .size            n00354_deref_bx, .-n00354_deref_bx
                        .type            n00355_unop_test_bx, @function
n00355_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00355_unop_test_α:      sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 104;                             jne   .Lunop_test_α_1163_998
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n00353_line_mark_α
.Lunop_test_α_1163_998: cmp              eax, 0;                              jne   .Lunop_test_α_1163_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n00353_line_mark_α
.Lunop_test_α_1163_999: mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00356_kw_assign_α
                        .size            n00355_unop_test_bx, .-n00355_unop_test_bx
                        .type            n00356_kw_assign_bx, @function
n00356_kw_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00356_kw_assign_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # v
                        mov              rsi, qword ptr [rsp + 24]            # v
                        call             rt_keyword_random_set@PLT
.Lgcsite_main_39:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lkw_assign_α_1164_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n00353_line_mark_α
.Lkw_assign_α_1164_999: mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 96;                             jmp   n00353_line_mark_α
                        .size            n00356_kw_assign_bx, .-n00356_kw_assign_bx
                        .type            n00353_line_mark_bx, @function
n00353_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 63 0
.Lline_mark_α_1165_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1165_stno
                        .long            0
                        .long            63
                        .quad            .Lstnof1
                        .popsection
n00353_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n00357_lit_integer_α
                        .size            n00353_line_mark_bx, .-n00353_line_mark_bx
                        .type            n00357_lit_integer_bx, @function
n00357_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00357_lit_integer_α:    sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1167_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00358_var_α
.Llit_integer_α_1167_0: .quad            1
                        .size            n00357_lit_integer_bx, .-n00357_lit_integer_bx
                        .type            n00358_var_bx, @function
n00358_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00358_var_α:                                                                  jmp   n00359_to_α
                        .size            n00358_var_bx, .-n00358_var_bx
                        .type            n00359_to_bx, @function
n00359_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00359_to_α:             sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 32]            # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_main_49:       cmp              eax, -2;                             jne   .Lto_vd_1171_45
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_main_48:       mov              r9,  qword ptr [rip + rtccb+48]
.Lto_vd_1171_45:        test             eax, eax;                            jne   .Lto_α_1171_996
                        add              rsp, 32
                        add              rsp, 16;                             jmp   main_ω
.Lto_α_1171_996:        push             rax                                  # gc_poll bb_to.cpp:35
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_47:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 1024]          # var
                        mov              rsi, qword ptr [rsp + 1032]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_main_46:       cmp              eax, -2;                             jne   .Lto_vd_1171_44
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_main_45:       mov              r9,  qword ptr [rip + rtccb+48]
.Lto_vd_1171_44:        test             eax, eax;                            jne   .Lto_α_1171_997
                        add              rsp, 32
                        add              rsp, 16;                             jmp   main_ω
.Lto_α_1171_997:        push             rax                                  # gc_poll bb_to.cpp:35
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_44:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 32]            # lit_integer
                        mov              rsi, qword ptr [rsp + 40]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_43:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 112], rax
                        push             rax                                  # gc_poll bb_to.cpp:106
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_42:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 1024]          # var
                        mov              rsi, qword ptr [rsp + 1032]          # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_41:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 120], rax
.Lto_α_1171_0:          mov              rax, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        cmp              rax, rcx;                            jle   .Lto_α_1171_998
                        add              rsp, 32
                        add              rsp, 16;                             jmp   main_ω
.Lto_α_1171_998:        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_to.cpp:126
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_40:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00360_bound_α
n00359_to_β:             inc              qword ptr [rsp + 112];               jno   .Lto_β_1171_999
                        add              rsp, 32
                        add              rsp, 16;                             jmp   main_ω
.Lto_β_1171_999:                                                              jmp   .Lto_α_1171_0
                        .size            n00359_to_bx, .-n00359_to_bx
                        .type            n00360_bound_bx, @function
n00360_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00360_bound_α:          mov              qword ptr [rsp + 176], rsp;          jmp   n00361_line_mark_α
n00360_bound_β:                                                                jmp   n00361_line_mark_α
                        .size            n00360_bound_bx, .-n00360_bound_bx
                        .type            n00361_line_mark_bx, @function
n00361_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1174_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1174_stno
                        .long            0
                        .long            64
                        .quad            .Lstnof1
                        .popsection
n00361_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 64;             jmp   n00362_line_mark_α
                        .size            n00361_line_mark_bx, .-n00361_line_mark_bx
                        .type            n00362_line_mark_bx, @function
n00362_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1176_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1176_stno
                        .long            0
                        .long            64
                        .quad            .Lstnof1
                        .popsection
n00362_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 64;             jmp   n00363_call_proc_staged_α
                        .size            n00362_line_mark_bx, .-n00362_line_mark_bx
                        .type            n00363_call_proc_staged_bx, @function
n00363_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00363_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rcx, [rip + .Lcall_proc_staged_α_1179_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1179_3]
                        push             rcx
                        sub              rsp, 0
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 8];            jmp   rax
.Lcall_proc_staged_α_1179_3:
.Lgcsite_main_51:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 64
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1179_2
.Lcall_proc_staged_α_1179_4:
.Lgcsite_main_50:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 64
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1179_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_1179_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00364_unmark_α
.Lcall_proc_staged_α_1179_999:
                                                                              jmp   n00365_deref_α
n00363_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 64
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00364_unmark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_1179_0: .quad .Lcall_proc_staged_β_1179_0_s; .popsection
.Lcall_proc_staged_β_1179_0_s:
                        .string          "display"
                        .size            n00363_call_proc_staged_bx, .-n00363_call_proc_staged_bx
                        .type            n00365_deref_bx, @function
n00365_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00365_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_53:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1180_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00364_unmark_α
.Lderef_α_1180_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_52:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00364_unmark_α
                        .size            n00365_deref_bx, .-n00365_deref_bx
                        .type            n00364_unmark_bx, @function
n00364_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00364_unmark_α:         add              rsp, 32;                             jmp   n00366_line_mark_α
                        .size            n00364_unmark_bx, .-n00364_unmark_bx
                        .type            n00366_line_mark_bx, @function
n00366_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1183_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1183_stno
                        .long            0
                        .long            63
                        .quad            .Lstnof1
                        .popsection
n00366_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n00359_to_β
                        .size            n00366_line_mark_bx, .-n00366_line_mark_bx
                        .type            n00348_lit_integer_bx, @function
n00348_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00348_lit_integer_α:    sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1185_0]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 24], rax
                        add              rsp, 16;                             jmp   .Ldisjunction_γ_1068_as
n00348_lit_integer_β:    add              rsp, 16;                             jmp   .Ldisjunction_ω_1068_af
.Llit_integer_α_1185_0: .quad            1
                        .size            n00348_lit_integer_bx, .-n00348_lit_integer_bx
                        .type            n00346_var_ref_bx, @function
n00346_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00346_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 1040]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00367_lit_string_α
n00346_var_ref_β:        add              rsp, 16;                             jmp   .Ldisjunction_ω_1068_af
                        .size            n00346_var_ref_bx, .-n00346_var_ref_bx
                        .type            n00367_lit_string_bx, @function
n00367_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00367_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1188_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00368_subscript_α
n00367_lit_string_β:     add              rsp, 16;                             jmp   n00346_var_ref_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_1188_0: .quad .Llit_string_α_1188_0_s; .popsection
.Llit_string_α_1188_0_s:
                        .string          "h"
                        .size            n00367_lit_string_bx, .-n00367_lit_string_bx
                        .type            n00368_subscript_bx, @function
n00368_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00368_subscript_α:      sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_1189_1:   mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        test             eax, eax;                            jne   .Lsubscript_α_1189_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_main_59:       cmp              al, 255;                             jne   .Lsubscript_vd_1189_47
                        call             c_rt_subscript_val_strict@PLT
.Lgcsite_main_58:       mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_1189_47: cmp              al, 255;                             jne   .Lsubscript_α_1189_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_1189_1
.Lsubscript_α_1189_4:   push             rax
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
.Lgcsite_main_57:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_1189_3
.Lsubscript_α_1189_2:   call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_56:       cmp              al, 255;                             jne   .Lsubscript_vd_1189_46
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_main_55:       mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_1189_46: push             rax
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
.Lgcsite_main_54:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_1189_3:   cmp              al, 104;                             jne   .Lsubscript_α_1189_999
                        add              rsp, 16;                             jmp   n00367_lit_string_β
.Lsubscript_α_1189_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00369_deref_α
                        .size            n00368_subscript_bx, .-n00368_subscript_bx
                        .type            n00369_deref_bx, @function
n00369_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00369_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_61:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1190_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_1068_af
.Lderef_α_1190_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_60:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00370_unop_test_α
n00369_deref_β:          add              rsp, 16
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_1068_af
                        .size            n00369_deref_bx, .-n00369_deref_bx
                        .type            n00370_unop_test_bx, @function
n00370_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00370_unop_test_α:      sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 104;                             jne   .Lunop_test_α_1191_998
                        add              rsp, 16;                             jmp   n00369_deref_β
.Lunop_test_α_1191_998: cmp              eax, 0;                              jne   .Lunop_test_α_1191_999
                        add              rsp, 16;                             jmp   n00369_deref_β
.Lunop_test_α_1191_999: mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 88], rax
                        add              rsp, 80;                             jmp   .Ldisjunction_γ_1068_as
n00370_unop_test_β:      add              rsp, 16;                             jmp   n00369_deref_β
                        .size            n00370_unop_test_bx, .-n00370_unop_test_bx
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
                        lea              rsp, [rbp + 1168]
                        mov              rbp, qword ptr [rbp + 1160];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 1168]
                        mov              rbp, qword ptr [rbp + 1160];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_main:
                        .quad            5017868258650
                        .quad            382252089488
                        .quad            .Lgcmap_main_s
                        .quad            1008
                        .quad            7
                        .quad            70368744177664
                        .quad            17596481011776
                        .quad            52776558133328
                        .quad            17596481011840
                        .quad            211106232533136
                        .quad            17596481012048
                        .quad            721279627821408
.Lgcmap_main_s:         .string          "main"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_main_5:       .quad            62
                        .quad            .Lgcmap_main
                        .quad            9223389626893337744
                        .quad            .Lgccode_main_5
                        .quad            .Lgcsite_main_0-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_1-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_3-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_2-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_4-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_5-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_8-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_7-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_6-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_11-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_10-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_9-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_14-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_13-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_12-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_16-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_15-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_17-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_18-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_20-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_19-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_22-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_21-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_24-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_23-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_26-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_25-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_28-.Lgccode_main_5
                        .quad            65538
                        .quad            .Lgcsite_main_27-.Lgccode_main_5
                        .quad            65538
                        .quad            .Lgcsite_main_30-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_29-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_36-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_35-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_34-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_33-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_32-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_31-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_38-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_37-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_39-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_49-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_48-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_47-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_46-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_45-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_44-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_43-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_42-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_41-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_40-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_51-.Lgccode_main_5
                        .quad            65538
                        .quad            .Lgcsite_main_50-.Lgccode_main_5
                        .quad            65538
                        .quad            .Lgcsite_main_53-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_52-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_59-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_58-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_57-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_56-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_55-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_54-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_61-.Lgccode_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_60-.Lgccode_main_5
                        .quad            65537
                        .popsection
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_ign0:         .string          "main"
.Lstartup_ign1:         .string          "display"
.Lstartup_ign2:         .string          "show"
.Lstartup_ign3:         .string          "arrange"
.Lstartup_ign4:         .string          "options"
.Lstartup_ign5:         .string          "shuffle"
.Lstartup_ign6:         .string          "repl"
.Lstartup_ign7:         .string          "string"
.Lstartup_ign8:         .string          "write"
.Lstartup_ign9:         .string          "left"
.Lstartup_ign10:        .string          "push"
.Lstartup_ign11:        .string          "map"
.Lstartup_ign12:        .string          "pull"
.Lstartup_ign13:        .string          "get"
.Lstartup_ign14:        .string          "integer"
.Lstartup_ign15:        .string          "stop"
.Lstartup_ign16:        .string          "real"
.Lstartup_ign17:        .string          "any"
.Lstartup_ign18:        .string          "put"
.Lstartup_ign19:        .string          "table"
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
                        .section         .data.rel.ro,"aw",@progbits
.Lstartup_rootnm:       .string          "main"
.Lstartup_ipp00371_0:    .string          "args"
                        .align           8
.Lstartup_ipnames9000:
                        .quad            .Lstartup_ipp00371_0
                        .quad            0
.Lstartup_iln00371_0:    .string          "hands"
.Lstartup_iln00371_1:    .string          "opts"
.Lstartup_iln00371_2:    .string          "&letters"
.Lstartup_iln00371_3:    .string          "&lcase"
.Lstartup_iln00371_4:    .string          "&random"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00371_0
                        .quad            .Lstartup_iln00371_1
                        .quad            .Lstartup_iln00371_2
                        .quad            .Lstartup_iln00371_3
                        .quad            .Lstartup_iln00371_4
                        .quad            0
                        .align           4
.Lstartup_iloffs9000:
                        .long            976
                        .long            992
                        .long            -1
                        .long            -1
                        .long            -1
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_ipnames9000]
                        mov              edx, 1
                        lea              rcx, [rip + .Lstartup_ilnames9000]
                        mov              r8d, 5
                        lea              r9, [rip + .Lstartup_iloffs9000]
                        call             rt_proc_loc_add@PLT
                        .section         .data.rel.ro,"aw",@progbits
.Lstartup_pname0:       .string          "display"
.Lstartup_iln0_0:       .string          "layout"
.Lstartup_iln0_1:       .string          "i"
                        .align           8
.Lstartup_ilnames0:
                        .quad            .Lstartup_iln0_0
                        .quad            .Lstartup_iln0_1
                        .quad            0
                        .align           4
.Lstartup_iloffs0:
                        .long            1664
                        .long            1680
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__display
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1696
                        .long            48
                        .long            0
                        .long            0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        xor              esi, esi
                        xor              edx, edx
                        lea              rcx, [rip + .Lstartup_ilnames0]
                        mov              r8d, 2
                        lea              r9, [rip + .Lstartup_iloffs0]
                        call             rt_proc_loc_add@PLT
                        .section         .data.rel.ro,"aw",@progbits
.Lstartup_pname1:       .string          "show"
.Lstartup_ipp1_0:       .string          "hand"
                        .align           8
.Lstartup_ipnames1:
                        .quad            .Lstartup_ipp1_0
                        .quad            0
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__show
                        .quad            0
                        .quad            0
                        .quad            .Lstartup_ipnames1
                        .long            1
                        .long            0
                        .long            1328
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
                        xor              ecx, ecx
                        xor              r8d, r8d
                        xor              r9d, r9d
                        call             rt_proc_loc_add@PLT
                        .section         .data.rel.ro,"aw",@progbits
.Lstartup_pname2:       .string          "arrange"
.Lstartup_ipp2_0:       .string          "hand"
.Lstartup_ipp2_1:       .string          "suit"
                        .align           8
.Lstartup_ipnames2:
                        .quad            .Lstartup_ipp2_0
                        .quad            .Lstartup_ipp2_1
                        .quad            0
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__arrange
                        .quad            0
                        .quad            0
                        .quad            .Lstartup_ipnames2
                        .long            2
                        .long            0
                        .long            352
                        .long            48
                        .long            0
                        .long            0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + .Lstartup_ipnames2]
                        mov              edx, 2
                        xor              ecx, ecx
                        xor              r8d, r8d
                        xor              r9d, r9d
                        call             rt_proc_loc_add@PLT
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
.Lstartup_pname4:       .string          "shuffle"
.Lstartup_ipp4_0:       .string          "x"
                        .align           8
.Lstartup_ipnames4:
                        .quad            .Lstartup_ipp4_0
                        .quad            0
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__shuffle
                        .quad            0
                        .quad            0
                        .quad            .Lstartup_ipnames4
                        .long            1
                        .long            0
                        .long            208
                        .long            48
                        .long            0
                        .long            0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + .Lstartup_ipnames4]
                        mov              edx, 1
                        xor              ecx, ecx
                        xor              r8d, r8d
                        xor              r9d, r9d
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
__gc_frame_maps:        .quad            6
                        .quad            .Lgcmap_display
                        .quad            .Lgcmap_show
                        .quad            .Lgcmap_arrange
                        .quad            .Lgcmap_options
                        .quad            .Lgcmap_shuffle
                        .quad            .Lgcmap_main
                        .align           8
__gc_frame_sites:       .quad            6
                        .quad            .Lgcsites_display_0
                        .quad            .Lgcsites_show_1
                        .quad            .Lgcsites_arrange_2
                        .quad            .Lgcsites_options_3
                        .quad            .Lgcsites_shuffle_4
                        .quad            .Lgcsites_main_5
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.S0:                    .string          "deal.icn"
                        .text
                        .section         .data
                        .align           8
__alpha_cellp_tab:      .quad            0
                        .section         .rodata
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
