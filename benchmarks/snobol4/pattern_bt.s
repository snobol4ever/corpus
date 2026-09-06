                        .intel_syntax    noprefix
                        .text
                        .file            1 "pattern_bt.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 104
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n0_match_alternate_bx, @function
n0_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_alternate_α:   mov              r11, 1
                        mov              dword ptr [rbp + -104], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_9_21]
                        mov              qword ptr [rbp + -88], rax;          jmp   n7_match_lit_α
.Lmatch_alternate_α_9_21:
                        lea              rax, [rip + .Lmatch_alternate_α_9_22]
                        mov              qword ptr [rbp + -88], rax;          jmp   n6_match_lit_α
.Lmatch_alternate_α_9_22:
                        lea              rax, [rip + .Lmatch_alternate_α_9_23]
                        mov              qword ptr [rbp + -88], rax;          jmp   n5_match_lit_α
.Lmatch_alternate_α_9_23:
                        lea              rax, [rip + .Lmatch_alternate_α_9_19]
                        mov              qword ptr [rbp + -88], rax;          jmp   n4_match_lit_α
.Lmatch_alternate_γ_0_s0:
                        mov              r11, 1
                        lea              rax, [rip + .Lmatch_alternate_α_9_40]
                        mov              qword ptr [rbp + -96], rax;          jmp   .Lmatch_alternate_γ_0_as
.Lmatch_alternate_γ_0_s1:
                        mov              r11, 1
                        lea              rax, [rip + .Lmatch_alternate_α_9_41]
                        mov              qword ptr [rbp + -96], rax;          jmp   .Lmatch_alternate_γ_0_as
.Lmatch_alternate_γ_0_s2:
                        mov              r11, 1
                        lea              rax, [rip + .Lmatch_alternate_α_9_42]
                        mov              qword ptr [rbp + -96], rax;          jmp   .Lmatch_alternate_γ_0_as
.Lmatch_alternate_γ_0_s3:
                        mov              r11, 1
                        lea              rax, [rip + .Lmatch_alternate_α_9_43]
                        mov              qword ptr [rbp + -96], rax;          jmp   .Lmatch_alternate_γ_0_as
.Lmatch_alternate_α_9_40:
                                                                              jmp   n7_match_lit_β
.Lmatch_alternate_α_9_41:
                                                                              jmp   n6_match_lit_β
.Lmatch_alternate_α_9_42:
                                                                              jmp   n5_match_lit_β
.Lmatch_alternate_α_9_43:
                                                                              jmp   n4_match_lit_β
.Lmatch_alternate_γ_0_as:
                        mov              r11, 1;                              jmp   n1_match_assign_save_α
n0_match_alternate_β:   mov              r11, 1
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
.Lmatch_alternate_γ_0_af:
                        mov              r11, 1
.Lmatch_alternate_ω_0_af:
                        mov              r11, 1
                        mov              r14d, dword ptr [rbp + -104]
                        mov              rax, qword ptr [rbp + -88];          jmp   rax
.Lmatch_alternate_α_9_19:
                                                                              jmp   PAT$0_ω
                        .size            n0_match_alternate_bx, .-n0_match_alternate_bx
                        .type            n1_match_assign_save_bx, @function
n1_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_match_assign_save_α: sub              rsp, 16
                        mov              r11, 2
                        mov              dword ptr [rsp + 0], r14d;           jmp   n2_match_span_α
n1_match_assign_save_β: mov              r11, 2
                        add              rsp, 16;                             jmp   n0_match_alternate_β
                        .size            n1_match_assign_save_bx, .-n1_match_assign_save_bx
                        .type            n2_match_span_bx, @function
n2_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_match_span_α:        sub              rsp, 16
                        mov              r11, 3
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lmatch_span_α_13_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_13_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_13_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_13_0
.Lmatch_span_α_13_1:    cmp              ecx, r14d;                           jg    .Lmatch_span_α_13_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_match_alternate_β
.Lmatch_span_α_13_240:  mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   n3_match_assign_cond_α
n2_match_span_β:        mov              r11, 3
                        mov              r14d, dword ptr [rbp + -60]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_match_alternate_β
                        .size            n2_match_span_bx, .-n2_match_span_bx
                        .type            n3_match_assign_cond_bx, @function
n3_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_match_assign_cond_α: mov              r11, 4
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   PAT$0_γ
n3_match_assign_cond_β: mov              r11, 4
                        sub              r12, 24;                             jmp   n2_match_span_β
                        .size            n3_match_assign_cond_bx, .-n3_match_assign_cond_bx
                        .type            n4_match_lit_bx, @function
n4_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_match_lit_α:         mov              r11, 5
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_0_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 100;                            jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 100;                            jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 100;                            jne   .Lmatch_alternate_ω_0_af
                        add              r14d, 3;                             jmp   .Lmatch_alternate_γ_0_s3
n4_match_lit_β:         mov              r11, 5
                        sub              r14d, 3;                             jmp   .Lmatch_alternate_ω_0_af
                        .size            n4_match_lit_bx, .-n4_match_lit_bx
                        .type            n5_match_lit_bx, @function
n5_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_match_lit_α:         mov              r11, 6
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_0_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 99;                             jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 99;                             jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 99;                             jne   .Lmatch_alternate_ω_0_af
                        add              r14d, 3;                             jmp   .Lmatch_alternate_γ_0_s2
n5_match_lit_β:         mov              r11, 6
                        sub              r14d, 3;                             jmp   .Lmatch_alternate_ω_0_af
                        .size            n5_match_lit_bx, .-n5_match_lit_bx
                        .type            n6_match_lit_bx, @function
n6_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_match_lit_α:         mov              r11, 7
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_0_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98;                             jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 98;                             jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 98;                             jne   .Lmatch_alternate_ω_0_af
                        add              r14d, 3;                             jmp   .Lmatch_alternate_γ_0_s1
n6_match_lit_β:         mov              r11, 7
                        sub              r14d, 3;                             jmp   .Lmatch_alternate_ω_0_af
                        .size            n6_match_lit_bx, .-n6_match_lit_bx
                        .type            n7_match_lit_bx, @function
n7_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_match_lit_α:         mov              r11, 8
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_0_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97;                             jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 97;                             jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 97;                             jne   .Lmatch_alternate_ω_0_af
                        add              r14d, 3;                             jmp   .Lmatch_alternate_γ_0_s0
n7_match_lit_β:         mov              r11, 8
                        sub              r14d, 3;                             jmp   .Lmatch_alternate_ω_0_af
                        .size            n7_match_lit_bx, .-n7_match_lit_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n3_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$0_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 6
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 6
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 4
                        call             rt_label_table_install@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
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
.Lgvan0:                .string          "PATTERN_BT"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "PAT"
.Lgvan3:                .string          "W"
.Lgvan4:                .string          "SUB"
.Lgvan5:                .string          "ZI"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "PATTERN_BT"
.Llbln1:                .string          "ZBL"
.Llbln2:                .string          "PATTERN_BT_END"
.Llbln3:                .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .quad            .Llbln2
                        .quad            .Llbln3
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n24_lit_integer_α:      sub              rsp, 16
                        mov              r11, 9
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_132_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_lit_integer_α
.Llit_integer_α_132_0:  .quad            1
                        .size            n24_lit_integer_bx, .-n24_lit_integer_bx
                        .type            n25_lit_integer_bx, @function
n25_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_133_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_lit_string_α
.Llit_integer_α_133_0:  .quad            4
                        .size            n25_lit_integer_bx, .-n25_lit_integer_bx
                        .type            n26_lit_string_bx, @function
n26_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       sub              rsp, 16
                        mov              r11, 11
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_134_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_call_α
.Llit_string_α_134_0:   .quad            .Llit_string_α_134_0_s
.Llit_string_α_134_0_s: .string          "pattern_bt.sno"
                        .size            n26_lit_string_bx, .-n26_lit_string_bx
                        .type            n27_call_bx, @function
n27_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_call_α:             sub              rsp, 16
                        mov              r11, 12
                        sub              rsp, 48
                        mov              r8, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], r8
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], r8
                        .section         .rodata
.Lcall_α_rkfnzd136:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd136]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_135_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n28_statement_begin_α
.Lcall_α_135_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n28_statement_begin_α
n27_call_β:             mov              r11, 12
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n28_statement_begin_α
                        .size            n27_call_bx, .-n27_call_bx
                        .type            n28_statement_begin_bx, @function
n28_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:  mov              r11, 13
                        mov              r10, 1;                              jmp   n29_lit_integer_α
n28_statement_begin_β:  mov              r11, 13
                        add              rsp, 64;                             jmp   n32_lit_integer_α
                        .size            n28_statement_begin_bx, .-n28_statement_begin_bx
                        .type            n29_lit_integer_bx, @function
n29_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_139_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_kw_assign_snobol4_α
.Llit_integer_α_139_0:  .quad            1
                        .size            n29_lit_integer_bx, .-n29_lit_integer_bx
                        .type            n30_kw_assign_snobol4_bx, @function
n30_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 15
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_140_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_140_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n28_statement_begin_β
.Lkw_assign_snobol4_α_140_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_statement_end_α
.Lkw_assign_snobol4_α_140_0:
                        .quad            1
                        .size            n30_kw_assign_snobol4_bx, .-n30_kw_assign_snobol4_bx
                        .type            n31_statement_end_bx, @function
n31_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:    mov              r11, 16
                        mov              r10, 1
                        add              rsp, 96;                             jmp   n32_lit_integer_α
                        .size            n31_statement_end_bx, .-n31_statement_end_bx
                        .type            n32_lit_integer_bx, @function
n32_lit_integer_bx:
#=======================================================================================================================
#         &ANCHOR = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n32_lit_integer_α:      sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_143_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n33_lit_integer_α
.Llit_integer_α_143_0:  .quad            2
                        .size            n32_lit_integer_bx, .-n32_lit_integer_bx
                        .type            n33_lit_integer_bx, @function
n33_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      sub              rsp, 16
                        mov              r11, 18
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_144_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_call_α
.Llit_integer_α_144_0:  .quad            5
                        .size            n33_lit_integer_bx, .-n33_lit_integer_bx
                        .type            n34_call_bx, @function
n34_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:             sub              rsp, 16
                        mov              r11, 19
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd146:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd146]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_145_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n35_statement_begin_α
.Lcall_α_145_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n35_statement_begin_α
n34_call_β:             mov              r11, 19
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n35_statement_begin_α
                        .size            n34_call_bx, .-n34_call_bx
                        .type            n35_statement_begin_bx, @function
n35_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_begin_α:  mov              r11, 20
                        mov              r10, 2;                              jmp   n36_lit_integer_α
n35_statement_begin_β:  mov              r11, 20
                        add              rsp, 48;                             jmp   n39_lit_integer_α
                        .size            n35_statement_begin_bx, .-n35_statement_begin_bx
                        .type            n36_lit_integer_bx, @function
n36_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      sub              rsp, 16
                        mov              r11, 21
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_149_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_kw_assign_snobol4_α
.Llit_integer_α_149_0:  .quad            0
                        .size            n36_lit_integer_bx, .-n36_lit_integer_bx
                        .type            n37_kw_assign_snobol4_bx, @function
n37_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 22
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_150_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_150_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n35_statement_begin_β
.Lkw_assign_snobol4_α_150_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n38_statement_end_α
.Lkw_assign_snobol4_α_150_0:
                        .quad            0
                        .size            n37_kw_assign_snobol4_bx, .-n37_kw_assign_snobol4_bx
                        .type            n38_statement_end_bx, @function
n38_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_end_α:    mov              r11, 23
                        mov              r10, 2
                        add              rsp, 80;                             jmp   n39_lit_integer_α
                        .size            n38_statement_end_bx, .-n38_statement_end_bx
                        .type            n39_lit_integer_bx, @function
n39_lit_integer_bx:
#=======================================================================================================================
#         &STLIMIT = -1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n39_lit_integer_α:      sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_153_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_lit_integer_α
.Llit_integer_α_153_0:  .quad            3
                        .size            n39_lit_integer_bx, .-n39_lit_integer_bx
                        .type            n40_lit_integer_bx, @function
n40_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      sub              rsp, 16
                        mov              r11, 25
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_154_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_call_α
.Llit_integer_α_154_0:  .quad            6
                        .size            n40_lit_integer_bx, .-n40_lit_integer_bx
                        .type            n41_call_bx, @function
n41_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_call_α:             sub              rsp, 16
                        mov              r11, 26
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd156:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd156]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_155_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n42_statement_begin_α
.Lcall_α_155_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n42_statement_begin_α
n41_call_β:             mov              r11, 26
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n42_statement_begin_α
                        .size            n41_call_bx, .-n41_call_bx
                        .type            n42_statement_begin_bx, @function
n42_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:  mov              r11, 27
                        mov              r10, 3;                              jmp   n43_lit_integer_α
n42_statement_begin_β:  mov              r11, 27
                        add              rsp, 48;                             jmp   n47_lit_integer_α
                        .size            n42_statement_begin_bx, .-n42_statement_begin_bx
                        .type            n43_lit_integer_bx, @function
n43_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:      sub              rsp, 16
                        mov              r11, 28
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_159_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_unop_α
.Llit_integer_α_159_0:  .quad            1
                        .size            n43_lit_integer_bx, .-n43_lit_integer_bx
                        .type            n44_unop_bx, @function
n44_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_unop_α:             sub              rsp, 16
                        mov              r11, 29
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_kw_assign_snobol4_α
n44_unop_β:             mov              r11, 29
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n42_statement_begin_β
                        .size            n44_unop_bx, .-n44_unop_bx
                        .type            n45_kw_assign_snobol4_bx, @function
n45_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 30
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_161_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_161_240
                        add              rsp, 16;                             jmp   n44_unop_β
.Lkw_assign_snobol4_α_161_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n46_statement_end_α
.Lkw_assign_snobol4_α_161_0:
                        .quad            10
                        .size            n45_kw_assign_snobol4_bx, .-n45_kw_assign_snobol4_bx
                        .type            n46_statement_end_bx, @function
n46_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    mov              r11, 31
                        mov              r10, 3
                        add              rsp, 96;                             jmp   n47_lit_integer_α
                        .size            n46_statement_end_bx, .-n46_statement_end_bx
                        .type            n47_lit_integer_bx, @function
n47_lit_integer_bx:
#=======================================================================================================================
#         PAT = ('aaa' | 'bbb' | 'ccc' | 'ddd') SPAN('abcd') . W
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n47_lit_integer_α:      sub              rsp, 16
                        mov              r11, 32
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_164_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_lit_integer_α
.Llit_integer_α_164_0:  .quad            4
                        .size            n47_lit_integer_bx, .-n47_lit_integer_bx
                        .type            n48_lit_integer_bx, @function
n48_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      sub              rsp, 16
                        mov              r11, 33
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_165_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_call_α
.Llit_integer_α_165_0:  .quad            7
                        .size            n48_lit_integer_bx, .-n48_lit_integer_bx
                        .type            n49_call_bx, @function
n49_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_call_α:             sub              rsp, 16
                        mov              r11, 34
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd167:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd167]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_166_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n50_statement_begin_α
.Lcall_α_166_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n50_statement_begin_α
n49_call_β:             mov              r11, 34
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n50_statement_begin_α
                        .size            n49_call_bx, .-n49_call_bx
                        .type            n50_statement_begin_bx, @function
n50_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_begin_α:  mov              r11, 35
                        mov              r10, 4;                              jmp   n51_lit_string_α
n50_statement_begin_β:  mov              r11, 35
                        add              rsp, 48;                             jmp   n55_lit_integer_α
                        .size            n50_statement_begin_bx, .-n50_statement_begin_bx
                        .type            n51_lit_string_bx, @function
n51_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       sub              rsp, 16
                        mov              r11, 36
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_170_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_call_α
.Llit_string_α_170_0:   .quad            .Llit_string_α_170_0_s
.Llit_string_α_170_0_s: .string          "PAT$0"
                        .size            n51_lit_string_bx, .-n51_lit_string_bx
                        .type            n52_call_bx, @function
n52_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_call_α:             sub              rsp, 16
                        mov              r11, 37
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd172:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd172]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 589876
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_171_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n50_statement_begin_β
.Lcall_α_171_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n53_assign_α
n52_call_β:             mov              r11, 37
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n50_statement_begin_β
                        .size            n52_call_bx, .-n52_call_bx
                        .type            n53_assign_bx, @function
n53_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:           mov              r11, 38
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # PAT
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
                        mov              rdi, qword ptr [rip + .Lassign_α_173_0]
                        .section         .rodata
.Lassign_α_173_1_s:     .string          "pattern_bt.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_173_1_s]
                        mov              r8, 7
                        mov              r9, 4
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
                        pop              rax;                                 jmp   n54_statement_end_α
.Lassign_α_173_0:       .quad            .Lassign_α_173_0_s
.Lassign_α_173_0_s:     .string          "PAT"
                        .size            n53_assign_bx, .-n53_assign_bx
                        .type            n54_statement_end_bx, @function
n54_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_end_α:    mov              r11, 39
                        mov              r10, 4
                        add              rsp, 80;                             jmp   n55_lit_integer_α
                        .size            n54_statement_end_bx, .-n54_statement_end_bx
                        .type            n55_lit_integer_bx, @function
n55_lit_integer_bx:
#=======================================================================================================================
#         SUB = 'xxxxxxxxxxbbbccccddddaaaaxxxxxxxxxxbbbccccddddaaaa'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n55_lit_integer_α:      sub              rsp, 16
                        mov              r11, 40
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_176_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_lit_integer_α
.Llit_integer_α_176_0:  .quad            5
                        .size            n55_lit_integer_bx, .-n55_lit_integer_bx
                        .type            n56_lit_integer_bx, @function
n56_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:      sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_177_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n57_call_α
.Llit_integer_α_177_0:  .quad            8
                        .size            n56_lit_integer_bx, .-n56_lit_integer_bx
                        .type            n57_call_bx, @function
n57_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_call_α:             sub              rsp, 16
                        mov              r11, 42
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd179:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd179]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_178_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n58_statement_begin_α
.Lcall_α_178_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n58_statement_begin_α
n57_call_β:             mov              r11, 42
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n58_statement_begin_α
                        .size            n57_call_bx, .-n57_call_bx
                        .type            n58_statement_begin_bx, @function
n58_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_begin_α:  mov              r11, 43
                        mov              r10, 5;                              jmp   n59_lit_string_α
n58_statement_begin_β:  mov              r11, 43
                        add              rsp, 48;                             jmp   n62_statement_begin_α
                        .size            n58_statement_begin_bx, .-n58_statement_begin_bx
                        .type            n59_lit_string_bx, @function
n59_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       sub              rsp, 16
                        mov              r11, 44
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 50
                        mov              rax, qword ptr [rip + .Llit_string_α_182_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n60_assign_α
.Llit_string_α_182_0:   .quad            .Llit_string_α_182_0_s
.Llit_string_α_182_0_s: .string          "xxxxxxxxxxbbbccccddddaaaaxxxxxxxxxxbbbccccddddaaaa"
                        .size            n59_lit_string_bx, .-n59_lit_string_bx
                        .type            n60_assign_bx, @function
n60_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:           mov              r11, 45
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # SUB
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
                        mov              rdi, qword ptr [rip + .Lassign_α_183_0]
                        .section         .rodata
.Lassign_α_183_1_s:     .string          "pattern_bt.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_183_1_s]
                        mov              r8, 8
                        mov              r9, 5
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
                        pop              rax;                                 jmp   n61_statement_end_α
.Lassign_α_183_0:       .quad            .Lassign_α_183_0_s
.Lassign_α_183_0_s:     .string          "SUB"
                        .size            n60_assign_bx, .-n60_assign_bx
                        .type            n61_statement_end_bx, @function
n61_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:    mov              r11, 46
                        mov              r10, 5
                        add              rsp, 64;                             jmp   n62_statement_begin_α
                        .size            n61_statement_end_bx, .-n61_statement_end_bx
                        .type            n62_statement_begin_bx, @function
n62_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('PATTERN_BT(N)')                         :(PATTERN_BT_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n62_statement_begin_α:  mov              r11, 47
                        mov              r10, 6;                              jmp   n63_define_α
n62_statement_begin_β:  mov              r11, 47;                             jmp   n65_lit_integer_α
                        .size            n62_statement_begin_bx, .-n62_statement_begin_bx
                        .type            n63_define_bx, @function
n63_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_define_α:           mov              r11, 48
                        mov              rdi, qword ptr [rip + .Ldefine_α_189_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_189_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + PATTERN_BT_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_189_0]
                        lea              rsi, [rip + PATTERN_BT_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n64_statement_end_α
n63_define_β:           mov              r11, 48;                             jmp   n62_statement_begin_β
.Ldefine_α_189_0:       .quad            .Ldefine_α_189_0_s
.Ldefine_α_189_0_s:     .string          "PATTERN_BT"
.Ldefine_α_189_1:       .quad            .Ldefine_α_189_1_s
.Ldefine_α_189_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_190_245
#-----------------------------------------------------------------------------------------------------------------------
PATTERN_BT_α:           sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # PATTERN_BT
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_190_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_190_41
.Ldefine_α_190_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_190_41:      mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_190_230
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_190_232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_190_230:                                                           jmp   .Ldefine_α_190_231
.Ldefine_α_190_232:     .quad            .Ldefine_α_190_232_s
.Ldefine_α_190_232_s:   .string          "PATTERN_BT"
.Ldefine_α_190_231:     lea              rcx, [rip + PATTERN_BT_γ]
                        lea              rax, [rip + PATTERN_BT_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + LBL__PATTERN_BT];        jmp   rax
PATTERN_BT_γ:           mov              rdi, qword ptr [r9 + 0]              # PATTERN_BT
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_190_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_190_110
.Ldefine_α_190_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_190_110:     mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_190_235
                        push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_190_237]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rsi
                        pop              rdi
.Ldefine_α_190_235:                                                           jmp   .Ldefine_α_190_236
.Ldefine_α_190_237:     .quad            .Ldefine_α_190_237_s
.Ldefine_α_190_237_s:   .string          "PATTERN_BT"
.Ldefine_α_190_236:     pop              rdx
                        pop              rax;                                 jmp   rcx
PATTERN_BT_ω:           mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # PATTERN_BT
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_190_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_190_180
.Ldefine_α_190_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_190_180:     mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_190_245:
                        .size            n63_define_bx, .-n63_define_bx
                        .type            n64_statement_end_bx, @function
n64_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    mov              r11, 49
                        mov              r10, 6;                              jmp   n65_lit_integer_α
                        .size            n64_statement_end_bx, .-n64_statement_end_bx
                        .type            n65_lit_integer_bx, @function
n65_lit_integer_bx:
#=======================================================================================================================
# PATTERN_BT_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n65_lit_integer_α:      sub              rsp, 16
                        mov              r11, 50
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_193_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n66_lit_integer_α
.Llit_integer_α_193_0:  .quad            11
                        .size            n65_lit_integer_bx, .-n65_lit_integer_bx
                        .type            n66_lit_integer_bx, @function
n66_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:      sub              rsp, 16
                        mov              r11, 51
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_194_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_call_α
.Llit_integer_α_194_0:  .quad            14
                        .size            n66_lit_integer_bx, .-n66_lit_integer_bx
                        .type            n67_call_bx, @function
n67_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:             sub              rsp, 16
                        mov              r11, 52
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd196:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd196]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_195_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n104_statement_begin_α
.Lcall_α_195_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n104_statement_begin_α
n67_call_β:             mov              r11, 52
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n104_statement_begin_α
                        .size            n67_call_bx, .-n67_call_bx
                        .type            n68_statement_begin_bx, @function
n68_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_begin_α:  mov              r11, 53
                        mov              r10, 7;                              jmp   n69_lit_integer_α
n68_statement_begin_β:  mov              r11, 53
                        add              rsp, 48;                             jmp   n72_lit_integer_α
                        .size            n68_statement_begin_bx, .-n68_statement_begin_bx
                        .type            n69_lit_integer_bx, @function
n69_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_integer_α:      sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_199_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n70_assign_α
.Llit_integer_α_199_0:  .quad            1
                        .size            n69_lit_integer_bx, .-n69_lit_integer_bx
                        .type            n70_assign_bx, @function
n70_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:           mov              r11, 55
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZI
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
                        mov              rdi, qword ptr [rip + .Lassign_α_200_0]
                        .section         .rodata
.Lassign_α_200_1_s:     .string          "pattern_bt.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_200_1_s]
                        mov              r8, 14
                        mov              r9, 7
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
                        pop              rax;                                 jmp   n71_statement_end_α
.Lassign_α_200_0:       .quad            .Lassign_α_200_0_s
.Lassign_α_200_0_s:     .string          "ZI"
                        .size            n70_assign_bx, .-n70_assign_bx
                        .type            n71_statement_end_bx, @function
n71_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_end_α:    mov              r11, 56
                        mov              r10, 7
                        add              rsp, 64;                             jmp   n72_lit_integer_α
                        .size            n71_statement_end_bx, .-n71_statement_end_bx
                        .type            n72_lit_integer_bx, @function
n72_lit_integer_bx:
#=======================================================================================================================
# ZBL     SUB ? PAT
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n72_lit_integer_α:      sub              rsp, 16
                        mov              r11, 57
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_203_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_lit_integer_α
.Llit_integer_α_203_0:  .quad            8
                        .size            n72_lit_integer_bx, .-n72_lit_integer_bx
                        .type            n73_lit_integer_bx, @function
n73_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:      sub              rsp, 16
                        mov              r11, 58
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_204_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n74_call_α
.Llit_integer_α_204_0:  .quad            11
                        .size            n73_lit_integer_bx, .-n73_lit_integer_bx
                        .type            n74_call_bx, @function
n74_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_call_α:             sub              rsp, 16
                        mov              r11, 59
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd206:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd206]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_205_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n75_statement_begin_α
.Lcall_α_205_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n75_statement_begin_α
n74_call_β:             mov              r11, 59
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n75_statement_begin_α
                        .size            n74_call_bx, .-n74_call_bx
                        .type            n75_statement_begin_bx, @function
n75_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_begin_α:  mov              r11, 60
                        mov              r10, 8;                              jmp   n76_var_α
n75_statement_begin_β:  mov              r11, 60
                        add              rsp, 48;                             jmp   n83_lit_integer_α
                        .size            n75_statement_begin_bx, .-n75_statement_begin_bx
                        .type            n76_var_bx, @function
n76_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              sub              rsp, 16
                        mov              r11, 61
                        mov              rax, qword ptr [r9 + 64]             # SUB
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_var_α
n76_var_β:              mov              r11, 61
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n83_lit_integer_α
                        .size            n76_var_bx, .-n76_var_bx
                        .type            n77_var_bx, @function
n77_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              sub              rsp, 16
                        mov              r11, 62
                        mov              rax, qword ptr [r9 + 32]             # PAT
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n78_assign_α
n77_var_β:              mov              r11, 62
                        add              rsp, 16;                             jmp   n76_var_β
                        .size            n77_var_bx, .-n77_var_bx
                        .type            n78_assign_bx, @function
n78_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:           mov              r11, 63
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_211_0]
                        .section         .rodata
.Lassign_α_211_1_s:     .string          "pattern_bt.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_211_1_s]
                        mov              r8, 11
                        mov              r9, 8
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
                        mov              rdi, qword ptr [rip + .Lassign_α_211_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n79_match_begin_α
n78_assign_β:           mov              r11, 63;                             jmp   n77_var_β
.Lassign_α_211_0:       .quad            .Lassign_α_211_0_s
.Lassign_α_211_0_s:     .string          "PATV$0"
                        .size            n78_assign_bx, .-n78_assign_bx
                        .type            n79_match_begin_bx, @function
n79_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_match_begin_α:      mov              r11, 64
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_213_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_213_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n80_match_defer_α
n79_match_begin_β:      mov              r11, 64
.Lmatch_begin_α_213_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_213_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_213_1
                                                                              jmp   .Lmatch_begin_α_213_0
.Lmatch_begin_β_213_1:
.Lmatch_begin_γ_79_af:  mov              r11, 64
.Lmatch_begin_ω_79_af:  mov              r11, 64
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n78_assign_β
                        .size            n79_match_begin_bx, .-n79_match_begin_bx
                        .type            n80_match_defer_bx, @function
n80_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_match_defer_α:      mov              r11, 65
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S1]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_214_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_214_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_214_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_214_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_214_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_214_23
                                                                              jmp   .Lmatch_defer_α_214_22
.Lmatch_defer_α_214_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_214_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_214_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_214_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_214_0
.Lmatch_defer_α_214_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_214_0
.Lmatch_defer_α_214_22: push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        mov              esi, r14d
                        mov              rdx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_probe_run@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lmatch_defer_α_214_23: test             rax, rax;                            jz    .Lmatch_defer_α_214_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_214_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_214_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_214_4:                                                        jmp   n81_match_end_α
.Lmatch_defer_α_214_5:                                                        jmp   n79_match_begin_β
.Lmatch_defer_α_214_0:  mov              eax, edx
                        test             eax, eax;                            js    n79_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_214_6]
                        push             rcx
                        push             rax;                                 jmp   n81_match_end_α
.Lmatch_defer_α_214_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n79_match_begin_β
n80_match_defer_β:      mov              r11, 65
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_214_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_214_12
                                                                              jmp   rax
.Lmatch_defer_β_214_12:                                                       jmp   qword ptr [rsp]
                        .size            n80_match_defer_bx, .-n80_match_defer_bx
                        .type            n81_match_end_bx, @function
n81_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_match_end_α:        mov              r11, 66
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rax, qword ptr [rbp + -32]           # outer_Δ
                        mov              rcx, qword ptr [rbp + -16]           # outer_Σ
                        push             rax
                        push             rcx
                        lea              rcx, [rsp + 0]
                        mov              rsi, r12
                        mov              rdx, r13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lmatch_end_α_216_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_79_af
.Lmatch_end_α_216_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n82_statement_end_α
                        .size            n81_match_end_bx, .-n81_match_end_bx
                        .type            n82_statement_end_bx, @function
n82_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_end_α:    mov              r11, 67
                        mov              r10, 8
                        add              rsp, 80;                             jmp   n83_lit_integer_α
                        .size            n82_statement_end_bx, .-n82_statement_end_bx
                        .type            n83_lit_integer_bx, @function
n83_lit_integer_bx:
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n83_lit_integer_α:      sub              rsp, 16
                        mov              r11, 68
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_219_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_lit_integer_α
.Llit_integer_α_219_0:  .quad            9
                        .size            n83_lit_integer_bx, .-n83_lit_integer_bx
                        .type            n84_lit_integer_bx, @function
n84_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      sub              rsp, 16
                        mov              r11, 69
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_220_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_call_α
.Llit_integer_α_220_0:  .quad            12
                        .size            n84_lit_integer_bx, .-n84_lit_integer_bx
                        .type            n85_call_bx, @function
n85_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_call_α:             sub              rsp, 16
                        mov              r11, 70
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd222:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd222]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_221_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n86_statement_begin_α
.Lcall_α_221_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n86_statement_begin_α
n85_call_β:             mov              r11, 70
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n86_statement_begin_α
                        .size            n85_call_bx, .-n85_call_bx
                        .type            n86_statement_begin_bx, @function
n86_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_begin_α:  mov              r11, 71
                        mov              r10, 9;                              jmp   n87_var_α
n86_statement_begin_β:  mov              r11, 71
                        add              rsp, 48;                             jmp   n97_lit_integer_α
                        .size            n86_statement_begin_bx, .-n86_statement_begin_bx
                        .type            n87_var_bx, @function
n87_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:              sub              rsp, 16
                        mov              r11, 72
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n88_var_α
                        .size            n87_var_bx, .-n87_var_bx
                        .type            n88_var_bx, @function
n88_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              sub              rsp, 16
                        mov              r11, 73
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_coerce_numeric_α
n88_var_β:              mov              r11, 73
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n86_statement_begin_β
                        .size            n88_var_bx, .-n88_var_bx
                        .type            n89_coerce_numeric_bx, @function
n89_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 74
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_228_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_228_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_228_0
.Lcoerce_numeric_α_228_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_coerce_numeric_α
.Lcoerce_numeric_α_228_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n90_coerce_numeric_α
n89_coerce_numeric_β:   mov              r11, 74
                        add              rsp, 16;                             jmp   n88_var_β
                        .size            n89_coerce_numeric_bx, .-n89_coerce_numeric_bx
                        .type            n90_coerce_numeric_bx, @function
n90_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 75
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_230_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_230_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_230_0
.Lcoerce_numeric_α_230_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_cmp_test_α
.Lcoerce_numeric_α_230_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n91_cmp_test_α
n90_coerce_numeric_β:   mov              r11, 75
                        add              rsp, 16;                             jmp   n89_coerce_numeric_β
                        .size            n90_coerce_numeric_bx, .-n90_coerce_numeric_bx
                        .type            n91_cmp_test_bx, @function
n91_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_cmp_test_α:         sub              rsp, 16
                        mov              r11, 76
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_232_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_232_239
                        add              rsp, 16;                             jmp   n90_coerce_numeric_β
.Lcmp_test_α_232_239:                                                         jmp   n92_var_α
.Lcmp_test_α_232_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_232_240
                        add              rsp, 16;                             jmp   n90_coerce_numeric_β
.Lcmp_test_α_232_240:                                                         jmp   n92_var_α
n91_cmp_test_β:         mov              r11, 76
                        add              rsp, 16;                             jmp   n90_coerce_numeric_β
                        .size            n91_cmp_test_bx, .-n91_cmp_test_bx
                        .type            n92_var_bx, @function
n92_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              sub              rsp, 16
                        mov              r11, 77
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n93_lit_integer_α
n92_var_β:              mov              r11, 77
                        add              rsp, 16;                             jmp   n91_cmp_test_β
                        .size            n92_var_bx, .-n92_var_bx
                        .type            n93_lit_integer_bx, @function
n93_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:      sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_234_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n94_binop_α
n93_lit_integer_β:      mov              r11, 78
                        add              rsp, 16;                             jmp   n92_var_β
.Llit_integer_α_234_0:  .quad            1
                        .size            n93_lit_integer_bx, .-n93_lit_integer_bx
                        .type            n94_binop_bx, @function
n94_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_binop_α:            sub              rsp, 16
                        mov              r11, 79
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_235_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_235_7
.Lbinop_α_235_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_235_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_235_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_235_4
.Lbinop_α_235_3:        movq             xmm0, rsi
.Lbinop_α_235_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_235_7:                                                              jmp   n95_assign_α
.Lbinop_α_235_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_235_240
                        add              rsp, 16;                             jmp   n93_lit_integer_β
.Lbinop_α_235_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n95_assign_α
                        .size            n94_binop_bx, .-n94_binop_bx
                        .type            n95_assign_bx, @function
n95_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:           mov              r11, 80
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZI
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
                        mov              rdi, qword ptr [rip + .Lassign_α_236_0]
                        .section         .rodata
.Lassign_α_236_1_s:     .string          "pattern_bt.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_236_1_s]
                        mov              r8, 12
                        mov              r9, 9
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
                        pop              rax;                                 jmp   n96_statement_end_α
.Lassign_α_236_0:       .quad            .Lassign_α_236_0_s
.Lassign_α_236_0_s:     .string          "ZI"
                        .size            n95_assign_bx, .-n95_assign_bx
                        .type            n96_statement_end_bx, @function
n96_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_end_α:    mov              r11, 81
                        mov              r10, 9
                        add              rsp, 176;                            jmp   n72_lit_integer_α
                        .size            n96_statement_end_bx, .-n96_statement_end_bx
                        .type            n97_lit_integer_bx, @function
n97_lit_integer_bx:
#=======================================================================================================================
#         PATTERN_BT = W                                  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n97_lit_integer_α:      sub              rsp, 16
                        mov              r11, 82
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_239_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n98_lit_integer_α
.Llit_integer_α_239_0:  .quad            10
                        .size            n97_lit_integer_bx, .-n97_lit_integer_bx
                        .type            n98_lit_integer_bx, @function
n98_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:      sub              rsp, 16
                        mov              r11, 83
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_240_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n99_call_α
.Llit_integer_α_240_0:  .quad            13
                        .size            n98_lit_integer_bx, .-n98_lit_integer_bx
                        .type            n99_call_bx, @function
n99_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_call_α:             sub              rsp, 16
                        mov              r11, 84
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd242:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd242]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_241_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n100_statement_begin_α
.Lcall_α_241_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_statement_begin_α
n99_call_β:             mov              r11, 84
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n100_statement_begin_α
                        .size            n99_call_bx, .-n99_call_bx
                        .type            n100_statement_begin_bx, @function
n100_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_begin_α: mov              r11, 85
                        mov              r10, 10;                             jmp   n101_var_α
n100_statement_begin_β: mov              r11, 85
                        add              rsp, 48;                             jmp   RETURN
                        .size            n100_statement_begin_bx, .-n100_statement_begin_bx
                        .type            n101_var_bx, @function
n101_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             sub              rsp, 16
                        mov              r11, 86
                        mov              rax, qword ptr [r9 + 48]             # W
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_assign_α
                        .size            n101_var_bx, .-n101_var_bx
                        .type            n102_assign_bx, @function
n102_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:          mov              r11, 87
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # PATTERN_BT
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
                        mov              rdi, qword ptr [rip + .Lassign_α_246_0]
                        .section         .rodata
.Lassign_α_246_1_s:     .string          "pattern_bt.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_246_1_s]
                        mov              r8, 13
                        mov              r9, 10
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
                        pop              rax;                                 jmp   n103_statement_end_α
.Lassign_α_246_0:       .quad            .Lassign_α_246_0_s
.Lassign_α_246_0_s:     .string          "PATTERN_BT"
                        .size            n102_assign_bx, .-n102_assign_bx
                        .type            n103_statement_end_bx, @function
n103_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_end_α:   mov              r11, 88
                        mov              r10, 10
                        add              rsp, 64;                             jmp   RETURN
                        .size            n103_statement_end_bx, .-n103_statement_end_bx
                        .type            n104_statement_begin_bx, @function
n104_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_begin_α: mov              r11, 89
                        mov              r10, 11;                             jmp   n105_statement_end_α
n104_statement_begin_β: mov              r11, 89
                        add              rsp, 48;                             jmp   n106_lit_integer_α
                        .size            n104_statement_begin_bx, .-n104_statement_begin_bx
                        .type            n105_statement_end_bx, @function
n105_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_end_α:   mov              r11, 90
                        mov              r10, 11
                        add              rsp, 48;                             jmp   n106_lit_integer_α
                        .size            n105_statement_end_bx, .-n105_statement_end_bx
                        .type            n106_lit_integer_bx, @function
n106_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'subject = ' SUB
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n106_lit_integer_α:     sub              rsp, 16
                        mov              r11, 91
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_253_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_lit_integer_α
.Llit_integer_α_253_0:  .quad            12
                        .size            n106_lit_integer_bx, .-n106_lit_integer_bx
                        .type            n107_lit_integer_bx, @function
n107_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:     sub              rsp, 16
                        mov              r11, 92
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_254_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_call_α
.Llit_integer_α_254_0:  .quad            16
                        .size            n107_lit_integer_bx, .-n107_lit_integer_bx
                        .type            n108_call_bx, @function
n108_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_call_α:            sub              rsp, 16
                        mov              r11, 93
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd256:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd256]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_255_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n109_statement_begin_α
.Lcall_α_255_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_statement_begin_α
n108_call_β:            mov              r11, 93
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n109_statement_begin_α
                        .size            n108_call_bx, .-n108_call_bx
                        .type            n109_statement_begin_bx, @function
n109_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_begin_α: mov              r11, 94
                        mov              r10, 12;                             jmp   n110_lit_string_α
n109_statement_begin_β: mov              r11, 94
                        add              rsp, 48;                             jmp   n115_lit_integer_α
                        .size            n109_statement_begin_bx, .-n109_statement_begin_bx
                        .type            n110_lit_string_bx, @function
n110_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      sub              rsp, 16
                        mov              r11, 95
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_259_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n111_var_α
.Llit_string_α_259_0:   .quad            .Llit_string_α_259_0_s
.Llit_string_α_259_0_s: .string          "subject = "
                        .size            n110_lit_string_bx, .-n110_lit_string_bx
                        .type            n111_var_bx, @function
n111_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             sub              rsp, 16
                        mov              r11, 96
                        mov              rax, qword ptr [r9 + 64]             # SUB
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_binop_α
n111_var_β:             mov              r11, 96
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n109_statement_begin_β
                        .size            n111_var_bx, .-n111_var_bx
                        .type            n112_binop_bx, @function
n112_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_binop_α:           sub              rsp, 16
                        mov              r11, 97
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n113_assign_α
                        .size            n112_binop_bx, .-n112_binop_bx
                        .type            n113_assign_bx, @function
n113_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_assign_α:          mov              r11, 98
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_262_0]
                        .section         .rodata
.Lassign_α_262_1_s:     .string          "pattern_bt.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_262_1_s]
                        mov              r8, 16
                        mov              r9, 12
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
                        mov              rdi, qword ptr [rip + .Lassign_α_262_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n114_statement_end_α
.Lassign_α_262_0:       .quad            .Lassign_α_262_0_s
.Lassign_α_262_0_s:     .string          "OUTPUT"
                        .size            n113_assign_bx, .-n113_assign_bx
                        .type            n114_statement_end_bx, @function
n114_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_end_α:   mov              r11, 99
                        mov              r10, 12
                        add              rsp, 96;                             jmp   n115_lit_integer_α
                        .size            n114_statement_end_bx, .-n114_statement_end_bx
                        .type            n115_lit_integer_bx, @function
n115_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'captured tail = ' PATTERN_BT(1000)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n115_lit_integer_α:     sub              rsp, 16
                        mov              r11, 100
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_265_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n116_lit_integer_α
.Llit_integer_α_265_0:  .quad            13
                        .size            n115_lit_integer_bx, .-n115_lit_integer_bx
                        .type            n116_lit_integer_bx, @function
n116_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_integer_α:     sub              rsp, 16
                        mov              r11, 101
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_266_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n117_call_α
.Llit_integer_α_266_0:  .quad            17
                        .size            n116_lit_integer_bx, .-n116_lit_integer_bx
                        .type            n117_call_bx, @function
n117_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_call_α:            sub              rsp, 16
                        mov              r11, 102
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd268:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd268]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_267_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n118_statement_begin_α
.Lcall_α_267_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_statement_begin_α
n117_call_β:            mov              r11, 102
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n118_statement_begin_α
                        .size            n117_call_bx, .-n117_call_bx
                        .type            n118_statement_begin_bx, @function
n118_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_begin_α: mov              r11, 103
                        mov              r10, 13;                             jmp   n119_lit_string_α
n118_statement_begin_β: mov              r11, 103
                        add              rsp, 48;                             jmp   main_γ
                        .size            n118_statement_begin_bx, .-n118_statement_begin_bx
                        .type            n119_lit_string_bx, @function
n119_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:      sub              rsp, 16
                        mov              r11, 104
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 16
                        mov              rax, qword ptr [rip + .Llit_string_α_271_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_lit_integer_α
.Llit_string_α_271_0:   .quad            .Llit_string_α_271_0_s
.Llit_string_α_271_0_s: .string          "captured tail = "
                        .size            n119_lit_string_bx, .-n119_lit_string_bx
                        .type            n120_lit_integer_bx, @function
n120_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:     sub              rsp, 16
                        mov              r11, 105
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_272_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n121_call_α
n120_lit_integer_β:     mov              r11, 105
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n118_statement_begin_β
.Llit_integer_α_272_0:  .quad            1000
                        .size            n120_lit_integer_bx, .-n120_lit_integer_bx
                        .type            n121_call_bx, @function
n121_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_call_α:            sub              rsp, 16
                        mov              r11, 106
                        lea              rcx, [rip + .Lcall_α_sig274z]
                        lea              rax, [rip + PATTERN_BT_α];           jmp   rax
.Lcall_α_sig274z:       .quad            1
                        .quad            .Lcall_α_274_2
                        .quad            .Lcall_α_274_2
                        .quad            16
.Lcall_α_274_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_274_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lcall_α_274_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_274_240
                        add              rsp, 16;                             jmp   n120_lit_integer_β
.Lcall_α_274_240:                                                             jmp   n122_binop_α
n121_call_β:            mov              r11, 106;                            jmp   n120_lit_integer_β
.Lcall_β_274_0:         .quad            .Lcall_β_274_0_s
.Lcall_β_274_0_s:       .string          "PATTERN_BT"
                        .size            n121_call_bx, .-n121_call_bx
                        .type            n122_binop_bx, @function
n122_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_binop_α:           sub              rsp, 16
                        mov              r11, 107
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n123_assign_α
                        .size            n122_binop_bx, .-n122_binop_bx
                        .type            n123_assign_bx, @function
n123_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:          mov              r11, 108
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_276_0]
                        .section         .rodata
.Lassign_α_276_1_s:     .string          "pattern_bt.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_276_1_s]
                        mov              r8, 17
                        mov              r9, 13
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
                        mov              rdi, qword ptr [rip + .Lassign_α_276_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n124_statement_end_α
.Lassign_α_276_0:       .quad            .Lassign_α_276_0_s
.Lassign_α_276_0_s:     .string          "OUTPUT"
                        .size            n123_assign_bx, .-n123_assign_bx
                        .type            n124_statement_end_bx, @function
n124_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_end_α:   mov              r11, 109
                        mov              r10, 13
                        add              rsp, 112;                            jmp   main_γ
                        .size            n124_statement_end_bx, .-n124_statement_end_bx
                        .type            n125_goto_bx, @function
n125_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_goto_α:            mov              r11, 110;                            jmp   LBL__PATTERN_BT
n125_goto_β:            mov              r11, 110;                            jmp   main_ω
                        .size            n125_goto_bx, .-n125_goto_bx
                        .type            n126_lit_integer_bx, @function
n126_lit_integer_bx:
#=======================================================================================================================
# PATTERN_BT  ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
LBL__PATTERN_BT:        sub              rsp, 16
                        mov              r11, 111
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .LLBL__PATTERN_BT_α_280_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_lit_integer_α
.LLBL__PATTERN_BT_α_280_0:
                        .quad            7
                        .size            n126_lit_integer_bx, .-n126_lit_integer_bx
                        .type            n127_lit_integer_bx, @function
n127_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:     sub              rsp, 16
                        mov              r11, 112
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_281_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n128_call_α
.Llit_integer_α_281_0:  .quad            10
                        .size            n127_lit_integer_bx, .-n127_lit_integer_bx
                        .type            n128_call_bx, @function
n128_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_call_α:            sub              rsp, 16
                        mov              r11, 113
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd283:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd283]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_282_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n68_statement_begin_α
.Lcall_α_282_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_statement_begin_α
n128_call_β:            mov              r11, 113
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n68_statement_begin_α
                        .size            n128_call_bx, .-n128_call_bx
                        .type            n129_goto_bx, @function
n129_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_goto_α:            mov              r11, 114;                            jmp   n72_lit_integer_α
n129_goto_β:            mov              r11, 114;                            jmp   main_ω
                        .size            n129_goto_bx, .-n129_goto_bx
                        .type            n130_goto_bx, @function
n130_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_goto_α:            mov              r11, 115;                            jmp   n65_lit_integer_α
n130_goto_β:            mov              r11, 115;                            jmp   main_ω
                        .size            n130_goto_bx, .-n130_goto_bx
                        .type            n131_define_bx, @function
n131_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 116
                        mov              edi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_set_rtntype_role@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
                        .size            n131_define_bx, .-n131_define_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        call             sno_setexit_fire_on_end@PLT
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__PATTERN_BT"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__PATTERN_BT
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1872
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lseala1:               .string          "PATTERN_BT"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            PATTERN_BT_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + PATTERN_BT_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "PAT$0"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__PAT$0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            128
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "W"
.S1:                    .string          "PATV$0"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .text
                        .section         .note.GNU-stack,"",@progbits
