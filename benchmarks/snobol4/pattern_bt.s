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
                        mov              rax, qword ptr [rip + .Llit_integer_α_138_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_lit_integer_α
.Llit_integer_α_138_0:  .quad            1
                        .size            n24_lit_integer_bx, .-n24_lit_integer_bx
                        .type            n25_lit_integer_bx, @function
n25_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_139_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_lit_string_α
.Llit_integer_α_139_0:  .quad            4
                        .size            n25_lit_integer_bx, .-n25_lit_integer_bx
                        .type            n26_lit_string_bx, @function
n26_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       sub              rsp, 16
                        mov              r11, 11
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_140_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_call_α
.Llit_string_α_140_0:   .quad            .Llit_string_α_140_0_s
.Llit_string_α_140_0_s: .string          "pattern_bt.sno"
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
.Lcall_α_rkfnzd142:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd142]
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
                        cmp              al, 104;                             jne   .Lcall_α_141_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n28_statement_begin_α
.Lcall_α_141_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_145_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_kw_assign_snobol4_α
.Llit_integer_α_145_0:  .quad            1
                        .size            n29_lit_integer_bx, .-n29_lit_integer_bx
                        .type            n30_kw_assign_snobol4_bx, @function
n30_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 15
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_146_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_146_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n28_statement_begin_β
.Lkw_assign_snobol4_α_146_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_statement_end_α
.Lkw_assign_snobol4_α_146_0:
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_149_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n33_lit_integer_α
.Llit_integer_α_149_0:  .quad            2
                        .size            n32_lit_integer_bx, .-n32_lit_integer_bx
                        .type            n33_lit_integer_bx, @function
n33_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      sub              rsp, 16
                        mov              r11, 18
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_150_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_call_α
.Llit_integer_α_150_0:  .quad            5
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
.Lcall_α_rkfnzd152:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd152]
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
                        cmp              al, 104;                             jne   .Lcall_α_151_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n35_statement_begin_α
.Lcall_α_151_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_155_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_kw_assign_snobol4_α
.Llit_integer_α_155_0:  .quad            0
                        .size            n36_lit_integer_bx, .-n36_lit_integer_bx
                        .type            n37_kw_assign_snobol4_bx, @function
n37_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 22
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_156_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_156_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n35_statement_begin_β
.Lkw_assign_snobol4_α_156_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n38_statement_end_α
.Lkw_assign_snobol4_α_156_0:
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_159_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_lit_integer_α
.Llit_integer_α_159_0:  .quad            3
                        .size            n39_lit_integer_bx, .-n39_lit_integer_bx
                        .type            n40_lit_integer_bx, @function
n40_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      sub              rsp, 16
                        mov              r11, 25
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_160_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_call_α
.Llit_integer_α_160_0:  .quad            6
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
.Lcall_α_rkfnzd162:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd162]
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
                        cmp              al, 104;                             jne   .Lcall_α_161_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n42_statement_begin_α
.Lcall_α_161_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_165_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_unop_α
.Llit_integer_α_165_0:  .quad            1
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
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_167_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_167_240
                        add              rsp, 16;                             jmp   n44_unop_β
.Lkw_assign_snobol4_α_167_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n46_statement_end_α
.Lkw_assign_snobol4_α_167_0:
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_170_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_lit_integer_α
.Llit_integer_α_170_0:  .quad            4
                        .size            n47_lit_integer_bx, .-n47_lit_integer_bx
                        .type            n48_lit_integer_bx, @function
n48_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      sub              rsp, 16
                        mov              r11, 33
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_171_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_call_α
.Llit_integer_α_171_0:  .quad            7
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
.Lcall_α_rkfnzd173:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd173]
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
                        cmp              al, 104;                             jne   .Lcall_α_172_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n50_statement_begin_α
.Lcall_α_172_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_string_α_176_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_call_α
.Llit_string_α_176_0:   .quad            .Llit_string_α_176_0_s
.Llit_string_α_176_0_s: .string          "PAT$0"
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
.Lcall_α_rkfnzd178:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd178]
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
                        cmp              al, 104;                             jne   .Lcall_α_177_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n50_statement_begin_β
.Lcall_α_177_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rdi, qword ptr [rip + .Lassign_α_179_0]
                        .section         .rodata
.Lassign_α_179_1_s:     .string          "pattern_bt.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_179_1_s]
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
.Lassign_α_179_0:       .quad            .Lassign_α_179_0_s
.Lassign_α_179_0_s:     .string          "PAT"
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_182_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_lit_integer_α
.Llit_integer_α_182_0:  .quad            5
                        .size            n55_lit_integer_bx, .-n55_lit_integer_bx
                        .type            n56_lit_integer_bx, @function
n56_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:      sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_183_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n57_call_α
.Llit_integer_α_183_0:  .quad            8
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
.Lcall_α_rkfnzd185:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd185]
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
                        cmp              al, 104;                             jne   .Lcall_α_184_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n58_statement_begin_α
.Lcall_α_184_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        add              rsp, 48;                             jmp   n62_lit_integer_α
                        .size            n58_statement_begin_bx, .-n58_statement_begin_bx
                        .type            n59_lit_string_bx, @function
n59_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       sub              rsp, 16
                        mov              r11, 44
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 50
                        mov              rax, qword ptr [rip + .Llit_string_α_188_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n60_assign_α
.Llit_string_α_188_0:   .quad            .Llit_string_α_188_0_s
.Llit_string_α_188_0_s: .string          "xxxxxxxxxxbbbccccddddaaaaxxxxxxxxxxbbbccccddddaaaa"
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
                        mov              rdi, qword ptr [rip + .Lassign_α_189_0]
                        .section         .rodata
.Lassign_α_189_1_s:     .string          "pattern_bt.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_189_1_s]
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
.Lassign_α_189_0:       .quad            .Lassign_α_189_0_s
.Lassign_α_189_0_s:     .string          "SUB"
                        .size            n60_assign_bx, .-n60_assign_bx
                        .type            n61_statement_end_bx, @function
n61_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:    mov              r11, 46
                        mov              r10, 5
                        add              rsp, 64;                             jmp   n62_lit_integer_α
                        .size            n61_statement_end_bx, .-n61_statement_end_bx
                        .type            n62_lit_integer_bx, @function
n62_lit_integer_bx:
#=======================================================================================================================
#         DEFINE('PATTERN_BT(N)')                         :(PATTERN_BT_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n62_lit_integer_α:      sub              rsp, 16
                        mov              r11, 47
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_192_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_lit_integer_α
.Llit_integer_α_192_0:  .quad            6
                        .size            n62_lit_integer_bx, .-n62_lit_integer_bx
                        .type            n63_lit_integer_bx, @function
n63_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      sub              rsp, 16
                        mov              r11, 48
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_193_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_call_α
.Llit_integer_α_193_0:  .quad            9
                        .size            n63_lit_integer_bx, .-n63_lit_integer_bx
                        .type            n64_call_bx, @function
n64_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_call_α:             sub              rsp, 16
                        mov              r11, 49
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
.Lcall_α_rkfnzd195:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd195]
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
                        cmp              al, 104;                             jne   .Lcall_α_194_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n65_statement_begin_α
.Lcall_α_194_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n65_statement_begin_α
n64_call_β:             mov              r11, 49
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n65_statement_begin_α
                        .size            n64_call_bx, .-n64_call_bx
                        .type            n65_statement_begin_bx, @function
n65_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:  mov              r11, 50
                        mov              r10, 6;                              jmp   n66_define_α
n65_statement_begin_β:  mov              r11, 50
                        add              rsp, 48;                             jmp   n68_lit_integer_α
                        .size            n65_statement_begin_bx, .-n65_statement_begin_bx
                        .type            n66_define_bx, @function
n66_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_define_α:           mov              r11, 51
                        mov              rdi, qword ptr [rip + .Ldefine_α_199_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_199_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_199_0]
                        lea              rsi, [rip + PATTERN_BT_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__PATTERN_BT]
                        mov              rcx, qword ptr [rip + body_cell$PATTERN_BT@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n67_statement_end_α
n66_define_β:           mov              r11, 51;                             jmp   n65_statement_begin_β
.Ldefine_α_199_0:       .quad            .Ldefine_α_199_0_s
.Ldefine_α_199_0_s:     .string          "PATTERN_BT"
.Ldefine_α_199_1:       .quad            .Ldefine_α_199_1_s
.Ldefine_α_199_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_200_245
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
                        cmp              rdx, 0;                              jbe   .Ldefine_α_200_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_200_41
.Ldefine_α_200_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_200_41:      push             rcx
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
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 8], rax
                        pop              rcx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jg    .Ldefine_α_200_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_200_230
.Ldefine_α_200_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_200_232]
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
.Ldefine_α_200_230:                                                           jmp   .Ldefine_α_200_231
.Ldefine_α_200_232:     .quad            .Ldefine_α_200_232_s
.Ldefine_α_200_232_s:   .string          "PATTERN_BT"
.Ldefine_α_200_231:     lea              rcx, [rip + PATTERN_BT_γ]
                        lea              rax, [rip + PATTERN_BT_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$PATTERN_BT:   .quad            LBL__PATTERN_BT
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$PATTERN_BT@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
PATTERN_BT_γ:           mov              rdi, qword ptr [r9 + 0]              # PATTERN_BT
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_200_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_200_235
.Ldefine_α_200_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_200_237]
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
.Ldefine_α_200_235:                                                           jmp   .Ldefine_α_200_236
.Ldefine_α_200_237:     .quad            .Ldefine_α_200_237_s
.Ldefine_α_200_237_s:   .string          "PATTERN_BT"
.Ldefine_α_200_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_200_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_200_110
.Ldefine_α_200_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_200_110:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
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
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
PATTERN_BT_ω:           mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # PATTERN_BT
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_200_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_200_180
.Ldefine_α_200_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_200_180:     mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_200_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_200_249
.Ldefine_α_200_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_200_237]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
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
.Ldefine_α_200_249:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
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
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_200_245:
                        .size            n66_define_bx, .-n66_define_bx
                        .type            n67_statement_end_bx, @function
n67_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_end_α:    mov              r11, 52
                        mov              r10, 6
                        add              rsp, 48;                             jmp   n68_lit_integer_α
                        .size            n67_statement_end_bx, .-n67_statement_end_bx
                        .type            n68_lit_integer_bx, @function
n68_lit_integer_bx:
#=======================================================================================================================
# PATTERN_BT_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n68_lit_integer_α:      sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_203_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_lit_integer_α
.Llit_integer_α_203_0:  .quad            11
                        .size            n68_lit_integer_bx, .-n68_lit_integer_bx
                        .type            n69_lit_integer_bx, @function
n69_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_integer_α:      sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_204_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n70_call_α
.Llit_integer_α_204_0:  .quad            14
                        .size            n69_lit_integer_bx, .-n69_lit_integer_bx
                        .type            n70_call_bx, @function
n70_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_call_α:             sub              rsp, 16
                        mov              r11, 55
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
                        add              rsp, -16;                            jmp   n107_statement_begin_α
.Lcall_α_205_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_statement_begin_α
n70_call_β:             mov              r11, 55
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n107_statement_begin_α
                        .size            n70_call_bx, .-n70_call_bx
                        .type            n71_statement_begin_bx, @function
n71_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_begin_α:  mov              r11, 56
                        mov              r10, 7;                              jmp   n72_lit_integer_α
n71_statement_begin_β:  mov              r11, 56
                        add              rsp, 48;                             jmp   n75_lit_integer_α
                        .size            n71_statement_begin_bx, .-n71_statement_begin_bx
                        .type            n72_lit_integer_bx, @function
n72_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      sub              rsp, 16
                        mov              r11, 57
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_209_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_assign_α
.Llit_integer_α_209_0:  .quad            1
                        .size            n72_lit_integer_bx, .-n72_lit_integer_bx
                        .type            n73_assign_bx, @function
n73_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:           mov              r11, 58
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
                        mov              rdi, qword ptr [rip + .Lassign_α_210_0]
                        .section         .rodata
.Lassign_α_210_1_s:     .string          "pattern_bt.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_210_1_s]
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
                        pop              rax;                                 jmp   n74_statement_end_α
.Lassign_α_210_0:       .quad            .Lassign_α_210_0_s
.Lassign_α_210_0_s:     .string          "ZI"
                        .size            n73_assign_bx, .-n73_assign_bx
                        .type            n74_statement_end_bx, @function
n74_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_end_α:    mov              r11, 59
                        mov              r10, 7
                        add              rsp, 64;                             jmp   n75_lit_integer_α
                        .size            n74_statement_end_bx, .-n74_statement_end_bx
                        .type            n75_lit_integer_bx, @function
n75_lit_integer_bx:
#=======================================================================================================================
# ZBL     SUB ? PAT
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n75_lit_integer_α:      sub              rsp, 16
                        mov              r11, 60
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_213_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_lit_integer_α
.Llit_integer_α_213_0:  .quad            8
                        .size            n75_lit_integer_bx, .-n75_lit_integer_bx
                        .type            n76_lit_integer_bx, @function
n76_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:      sub              rsp, 16
                        mov              r11, 61
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_214_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n77_call_α
.Llit_integer_α_214_0:  .quad            11
                        .size            n76_lit_integer_bx, .-n76_lit_integer_bx
                        .type            n77_call_bx, @function
n77_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_call_α:             sub              rsp, 16
                        mov              r11, 62
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
.Lcall_α_rkfnzd216:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd216]
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
                        cmp              al, 104;                             jne   .Lcall_α_215_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n78_statement_begin_α
.Lcall_α_215_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n78_statement_begin_α
n77_call_β:             mov              r11, 62
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n78_statement_begin_α
                        .size            n77_call_bx, .-n77_call_bx
                        .type            n78_statement_begin_bx, @function
n78_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_begin_α:  mov              r11, 63
                        mov              r10, 8;                              jmp   n79_var_α
n78_statement_begin_β:  mov              r11, 63
                        add              rsp, 48;                             jmp   n86_lit_integer_α
                        .size            n78_statement_begin_bx, .-n78_statement_begin_bx
                        .type            n79_var_bx, @function
n79_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              sub              rsp, 16
                        mov              r11, 64
                        mov              rax, qword ptr [r9 + 64]             # SUB
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_var_α
n79_var_β:              mov              r11, 64
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n86_lit_integer_α
                        .size            n79_var_bx, .-n79_var_bx
                        .type            n80_var_bx, @function
n80_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:              sub              rsp, 16
                        mov              r11, 65
                        mov              rax, qword ptr [r9 + 32]             # PAT
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n81_assign_α
n80_var_β:              mov              r11, 65
                        add              rsp, 16;                             jmp   n79_var_β
                        .size            n80_var_bx, .-n80_var_bx
                        .type            n81_assign_bx, @function
n81_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:           mov              r11, 66
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
                        mov              rdi, qword ptr [rip + .Lassign_α_221_0]
                        .section         .rodata
.Lassign_α_221_1_s:     .string          "pattern_bt.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_221_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_221_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n82_match_begin_α
n81_assign_β:           mov              r11, 66;                             jmp   n80_var_β
.Lassign_α_221_0:       .quad            .Lassign_α_221_0_s
.Lassign_α_221_0_s:     .string          "PATV$0"
                        .size            n81_assign_bx, .-n81_assign_bx
                        .type            n82_match_begin_bx, @function
n82_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_match_begin_α:      mov              r11, 67
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
.Lmatch_begin_α_223_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_223_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n83_match_defer_α
n82_match_begin_β:      mov              r11, 67
.Lmatch_begin_α_223_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_223_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_223_1
                                                                              jmp   .Lmatch_begin_α_223_0
.Lmatch_begin_β_223_1:
.Lmatch_begin_γ_82_af:  mov              r11, 67
.Lmatch_begin_ω_82_af:  mov              r11, 67
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
                        pop              rbp;                                 jmp   n81_assign_β
                        .size            n82_match_begin_bx, .-n82_match_begin_bx
                        .type            n83_match_defer_bx, @function
n83_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_match_defer_α:      mov              r11, 68
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S1]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_224_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_224_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_224_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_224_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_224_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_224_23
                                                                              jmp   .Lmatch_defer_α_224_22
.Lmatch_defer_α_224_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_224_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_224_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_224_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_224_0
.Lmatch_defer_α_224_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_224_0
.Lmatch_defer_α_224_22: push             r14
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
.Lmatch_defer_α_224_23: test             rax, rax;                            jz    .Lmatch_defer_α_224_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_224_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_224_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_224_4:                                                        jmp   n84_match_end_α
.Lmatch_defer_α_224_5:                                                        jmp   n82_match_begin_β
.Lmatch_defer_α_224_0:  mov              eax, edx
                        test             eax, eax;                            js    n82_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_224_6]
                        push             rcx
                        push             rax;                                 jmp   n84_match_end_α
.Lmatch_defer_α_224_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n82_match_begin_β
n83_match_defer_β:      mov              r11, 68
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_224_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_224_12
                                                                              jmp   rax
.Lmatch_defer_β_224_12:                                                       jmp   qword ptr [rsp]
                        .size            n83_match_defer_bx, .-n83_match_defer_bx
                        .type            n84_match_end_bx, @function
n84_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_match_end_α:        mov              r11, 69
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
                        test             rax, rax;                            je    .Lmatch_end_α_226_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_82_af
.Lmatch_end_α_226_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n85_statement_end_α
                        .size            n84_match_end_bx, .-n84_match_end_bx
                        .type            n85_statement_end_bx, @function
n85_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_end_α:    mov              r11, 70
                        mov              r10, 8
                        add              rsp, 80;                             jmp   n86_lit_integer_α
                        .size            n85_statement_end_bx, .-n85_statement_end_bx
                        .type            n86_lit_integer_bx, @function
n86_lit_integer_bx:
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n86_lit_integer_α:      sub              rsp, 16
                        mov              r11, 71
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_229_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_lit_integer_α
.Llit_integer_α_229_0:  .quad            9
                        .size            n86_lit_integer_bx, .-n86_lit_integer_bx
                        .type            n87_lit_integer_bx, @function
n87_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:      sub              rsp, 16
                        mov              r11, 72
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_230_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n88_call_α
.Llit_integer_α_230_0:  .quad            12
                        .size            n87_lit_integer_bx, .-n87_lit_integer_bx
                        .type            n88_call_bx, @function
n88_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_call_α:             sub              rsp, 16
                        mov              r11, 73
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
.Lcall_α_rkfnzd232:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd232]
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
                        cmp              al, 104;                             jne   .Lcall_α_231_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n89_statement_begin_α
.Lcall_α_231_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_statement_begin_α
n88_call_β:             mov              r11, 73
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n89_statement_begin_α
                        .size            n88_call_bx, .-n88_call_bx
                        .type            n89_statement_begin_bx, @function
n89_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_begin_α:  mov              r11, 74
                        mov              r10, 9;                              jmp   n90_var_α
n89_statement_begin_β:  mov              r11, 74
                        add              rsp, 48;                             jmp   n100_lit_integer_α
                        .size            n89_statement_begin_bx, .-n89_statement_begin_bx
                        .type            n90_var_bx, @function
n90_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              sub              rsp, 16
                        mov              r11, 75
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n91_var_α
                        .size            n90_var_bx, .-n90_var_bx
                        .type            n91_var_bx, @function
n91_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:              sub              rsp, 16
                        mov              r11, 76
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n92_coerce_numeric_α
n91_var_β:              mov              r11, 76
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n89_statement_begin_β
                        .size            n91_var_bx, .-n91_var_bx
                        .type            n92_coerce_numeric_bx, @function
n92_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 77
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_238_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_238_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_238_0
.Lcoerce_numeric_α_238_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n93_coerce_numeric_α
.Lcoerce_numeric_α_238_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n93_coerce_numeric_α
n92_coerce_numeric_β:   mov              r11, 77
                        add              rsp, 16;                             jmp   n91_var_β
                        .size            n92_coerce_numeric_bx, .-n92_coerce_numeric_bx
                        .type            n93_coerce_numeric_bx, @function
n93_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 78
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_240_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_240_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_240_0
.Lcoerce_numeric_α_240_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n94_cmp_test_α
.Lcoerce_numeric_α_240_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n94_cmp_test_α
n93_coerce_numeric_β:   mov              r11, 78
                        add              rsp, 16;                             jmp   n92_coerce_numeric_β
                        .size            n93_coerce_numeric_bx, .-n93_coerce_numeric_bx
                        .type            n94_cmp_test_bx, @function
n94_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_cmp_test_α:         sub              rsp, 16
                        mov              r11, 79
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_242_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_242_239
                        add              rsp, 16;                             jmp   n93_coerce_numeric_β
.Lcmp_test_α_242_239:                                                         jmp   n95_var_α
.Lcmp_test_α_242_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_242_240
                        add              rsp, 16;                             jmp   n93_coerce_numeric_β
.Lcmp_test_α_242_240:                                                         jmp   n95_var_α
n94_cmp_test_β:         mov              r11, 79
                        add              rsp, 16;                             jmp   n93_coerce_numeric_β
                        .size            n94_cmp_test_bx, .-n94_cmp_test_bx
                        .type            n95_var_bx, @function
n95_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              sub              rsp, 16
                        mov              r11, 80
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_lit_integer_α
n95_var_β:              mov              r11, 80
                        add              rsp, 16;                             jmp   n94_cmp_test_β
                        .size            n95_var_bx, .-n95_var_bx
                        .type            n96_lit_integer_bx, @function
n96_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      sub              rsp, 16
                        mov              r11, 81
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_244_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n97_binop_α
n96_lit_integer_β:      mov              r11, 81
                        add              rsp, 16;                             jmp   n95_var_β
.Llit_integer_α_244_0:  .quad            1
                        .size            n96_lit_integer_bx, .-n96_lit_integer_bx
                        .type            n97_binop_bx, @function
n97_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_binop_α:            sub              rsp, 16
                        mov              r11, 82
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_245_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_245_7
.Lbinop_α_245_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_245_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_245_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_245_4
.Lbinop_α_245_3:        movq             xmm0, rsi
.Lbinop_α_245_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_245_7:                                                              jmp   n98_assign_α
.Lbinop_α_245_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_245_240
                        add              rsp, 16;                             jmp   n96_lit_integer_β
.Lbinop_α_245_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_assign_α
                        .size            n97_binop_bx, .-n97_binop_bx
                        .type            n98_assign_bx, @function
n98_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:           mov              r11, 83
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
                        mov              rdi, qword ptr [rip + .Lassign_α_246_0]
                        .section         .rodata
.Lassign_α_246_1_s:     .string          "pattern_bt.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_246_1_s]
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
                        pop              rax;                                 jmp   n99_statement_end_α
.Lassign_α_246_0:       .quad            .Lassign_α_246_0_s
.Lassign_α_246_0_s:     .string          "ZI"
                        .size            n98_assign_bx, .-n98_assign_bx
                        .type            n99_statement_end_bx, @function
n99_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:    mov              r11, 84
                        mov              r10, 9
                        add              rsp, 176;                            jmp   n75_lit_integer_α
                        .size            n99_statement_end_bx, .-n99_statement_end_bx
                        .type            n100_lit_integer_bx, @function
n100_lit_integer_bx:
#=======================================================================================================================
#         PATTERN_BT = W                                  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n100_lit_integer_α:     sub              rsp, 16
                        mov              r11, 85
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_249_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n101_lit_integer_α
.Llit_integer_α_249_0:  .quad            10
                        .size            n100_lit_integer_bx, .-n100_lit_integer_bx
                        .type            n101_lit_integer_bx, @function
n101_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:     sub              rsp, 16
                        mov              r11, 86
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_250_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n102_call_α
.Llit_integer_α_250_0:  .quad            13
                        .size            n101_lit_integer_bx, .-n101_lit_integer_bx
                        .type            n102_call_bx, @function
n102_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_call_α:            sub              rsp, 16
                        mov              r11, 87
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
.Lcall_α_rkfnzd252:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd252]
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
                        cmp              al, 104;                             jne   .Lcall_α_251_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n103_statement_begin_α
.Lcall_α_251_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_statement_begin_α
n102_call_β:            mov              r11, 87
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n103_statement_begin_α
                        .size            n102_call_bx, .-n102_call_bx
                        .type            n103_statement_begin_bx, @function
n103_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_begin_α: mov              r11, 88
                        mov              r10, 10;                             jmp   n104_var_α
n103_statement_begin_β: mov              r11, 88
                        add              rsp, 48;                             jmp   RETURN
                        .size            n103_statement_begin_bx, .-n103_statement_begin_bx
                        .type            n104_var_bx, @function
n104_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:             sub              rsp, 16
                        mov              r11, 89
                        mov              rax, qword ptr [r9 + 48]             # W
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n105_assign_α
                        .size            n104_var_bx, .-n104_var_bx
                        .type            n105_assign_bx, @function
n105_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_α:          mov              r11, 90
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
                        mov              rdi, qword ptr [rip + .Lassign_α_256_0]
                        .section         .rodata
.Lassign_α_256_1_s:     .string          "pattern_bt.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_256_1_s]
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
                        pop              rax;                                 jmp   n106_statement_end_α
.Lassign_α_256_0:       .quad            .Lassign_α_256_0_s
.Lassign_α_256_0_s:     .string          "PATTERN_BT"
                        .size            n105_assign_bx, .-n105_assign_bx
                        .type            n106_statement_end_bx, @function
n106_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_end_α:   mov              r11, 91
                        mov              r10, 10
                        add              rsp, 64;                             jmp   RETURN
                        .size            n106_statement_end_bx, .-n106_statement_end_bx
                        .type            n107_statement_begin_bx, @function
n107_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_begin_α: mov              r11, 92
                        mov              r10, 11;                             jmp   n108_statement_end_α
n107_statement_begin_β: mov              r11, 92
                        add              rsp, 48;                             jmp   n109_lit_integer_α
                        .size            n107_statement_begin_bx, .-n107_statement_begin_bx
                        .type            n108_statement_end_bx, @function
n108_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_end_α:   mov              r11, 93
                        mov              r10, 11
                        add              rsp, 48;                             jmp   n109_lit_integer_α
                        .size            n108_statement_end_bx, .-n108_statement_end_bx
                        .type            n109_lit_integer_bx, @function
n109_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'subject = ' SUB
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n109_lit_integer_α:     sub              rsp, 16
                        mov              r11, 94
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_263_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n110_lit_integer_α
.Llit_integer_α_263_0:  .quad            12
                        .size            n109_lit_integer_bx, .-n109_lit_integer_bx
                        .type            n110_lit_integer_bx, @function
n110_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_integer_α:     sub              rsp, 16
                        mov              r11, 95
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_264_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n111_call_α
.Llit_integer_α_264_0:  .quad            16
                        .size            n110_lit_integer_bx, .-n110_lit_integer_bx
                        .type            n111_call_bx, @function
n111_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_call_α:            sub              rsp, 16
                        mov              r11, 96
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
.Lcall_α_rkfnzd266:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd266]
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
                        cmp              al, 104;                             jne   .Lcall_α_265_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n112_statement_begin_α
.Lcall_α_265_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_statement_begin_α
n111_call_β:            mov              r11, 96
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n112_statement_begin_α
                        .size            n111_call_bx, .-n111_call_bx
                        .type            n112_statement_begin_bx, @function
n112_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_begin_α: mov              r11, 97
                        mov              r10, 12;                             jmp   n113_lit_string_α
n112_statement_begin_β: mov              r11, 97
                        add              rsp, 48;                             jmp   n118_lit_integer_α
                        .size            n112_statement_begin_bx, .-n112_statement_begin_bx
                        .type            n113_lit_string_bx, @function
n113_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:      sub              rsp, 16
                        mov              r11, 98
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_269_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n114_var_α
.Llit_string_α_269_0:   .quad            .Llit_string_α_269_0_s
.Llit_string_α_269_0_s: .string          "subject = "
                        .size            n113_lit_string_bx, .-n113_lit_string_bx
                        .type            n114_var_bx, @function
n114_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             sub              rsp, 16
                        mov              r11, 99
                        mov              rax, qword ptr [r9 + 64]             # SUB
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_binop_α
n114_var_β:             mov              r11, 99
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n112_statement_begin_β
                        .size            n114_var_bx, .-n114_var_bx
                        .type            n115_binop_bx, @function
n115_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_binop_α:           sub              rsp, 16
                        mov              r11, 100
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n116_assign_α
                        .size            n115_binop_bx, .-n115_binop_bx
                        .type            n116_assign_bx, @function
n116_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_assign_α:          mov              r11, 101
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
                        mov              rdi, qword ptr [rip + .Lassign_α_272_0]
                        .section         .rodata
.Lassign_α_272_1_s:     .string          "pattern_bt.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_272_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_272_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n117_statement_end_α
.Lassign_α_272_0:       .quad            .Lassign_α_272_0_s
.Lassign_α_272_0_s:     .string          "OUTPUT"
                        .size            n116_assign_bx, .-n116_assign_bx
                        .type            n117_statement_end_bx, @function
n117_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_end_α:   mov              r11, 102
                        mov              r10, 12
                        add              rsp, 96;                             jmp   n118_lit_integer_α
                        .size            n117_statement_end_bx, .-n117_statement_end_bx
                        .type            n118_lit_integer_bx, @function
n118_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'captured tail = ' PATTERN_BT(1000)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n118_lit_integer_α:     sub              rsp, 16
                        mov              r11, 103
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_275_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n119_lit_integer_α
.Llit_integer_α_275_0:  .quad            13
                        .size            n118_lit_integer_bx, .-n118_lit_integer_bx
                        .type            n119_lit_integer_bx, @function
n119_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:     sub              rsp, 16
                        mov              r11, 104
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_276_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_call_α
.Llit_integer_α_276_0:  .quad            17
                        .size            n119_lit_integer_bx, .-n119_lit_integer_bx
                        .type            n120_call_bx, @function
n120_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_call_α:            sub              rsp, 16
                        mov              r11, 105
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
.Lcall_α_rkfnzd278:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd278]
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
                        cmp              al, 104;                             jne   .Lcall_α_277_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n121_statement_begin_α
.Lcall_α_277_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n121_statement_begin_α
n120_call_β:            mov              r11, 105
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n121_statement_begin_α
                        .size            n120_call_bx, .-n120_call_bx
                        .type            n121_statement_begin_bx, @function
n121_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_begin_α: mov              r11, 106
                        mov              r10, 13;                             jmp   n122_lit_string_α
n121_statement_begin_β: mov              r11, 106
                        add              rsp, -64;                            jmp   n128_lit_integer_α
                        .size            n121_statement_begin_bx, .-n121_statement_begin_bx
                        .type            n122_lit_string_bx, @function
n122_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:      sub              rsp, 16
                        mov              r11, 107
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 16
                        mov              rax, qword ptr [rip + .Llit_string_α_281_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n123_lit_integer_α
.Llit_string_α_281_0:   .quad            .Llit_string_α_281_0_s
.Llit_string_α_281_0_s: .string          "captured tail = "
                        .size            n122_lit_string_bx, .-n122_lit_string_bx
                        .type            n123_lit_integer_bx, @function
n123_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_integer_α:     sub              rsp, 16
                        mov              r11, 108
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_282_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n124_call_α
n123_lit_integer_β:     mov              r11, 108
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n121_statement_begin_β
.Llit_integer_α_282_0:  .quad            1000
                        .size            n123_lit_integer_bx, .-n123_lit_integer_bx
                        .type            n124_call_bx, @function
n124_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_call_α:            sub              rsp, 16
                        mov              r11, 109
                        lea              rcx, [rip + .Lcall_α_sig284z]
                        lea              rax, [rip + PATTERN_BT_α];           jmp   rax
.Lcall_α_sig284z:       .quad            1
                        .quad            .Lcall_α_284_2
                        .quad            .Lcall_α_284_2
                        .quad            16
.Lcall_α_284_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_284_29
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
.Lcall_α_284_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_284_240
                        add              rsp, 16;                             jmp   n123_lit_integer_β
.Lcall_α_284_240:                                                             jmp   n125_binop_α
n124_call_β:            mov              r11, 109;                            jmp   n123_lit_integer_β
.Lcall_β_284_0:         .quad            .Lcall_β_284_0_s
.Lcall_β_284_0_s:       .string          "PATTERN_BT"
                        .size            n124_call_bx, .-n124_call_bx
                        .type            n125_binop_bx, @function
n125_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_binop_α:           sub              rsp, 16
                        mov              r11, 110
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n126_assign_α
                        .size            n125_binop_bx, .-n125_binop_bx
                        .type            n126_assign_bx, @function
n126_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_assign_α:          mov              r11, 111
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
                        mov              rdi, qword ptr [rip + .Lassign_α_286_0]
                        .section         .rodata
.Lassign_α_286_1_s:     .string          "pattern_bt.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_286_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_286_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n127_statement_end_α
.Lassign_α_286_0:       .quad            .Lassign_α_286_0_s
.Lassign_α_286_0_s:     .string          "OUTPUT"
                        .size            n126_assign_bx, .-n126_assign_bx
                        .type            n127_statement_end_bx, @function
n127_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_end_α:   mov              r11, 112
                        mov              r10, 13;                             jmp   n128_lit_integer_α
                        .size            n127_statement_end_bx, .-n127_statement_end_bx
                        .type            n128_lit_integer_bx, @function
n128_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_integer_α:     sub              rsp, 16
                        mov              r11, 113
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_289_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_lit_integer_α
.Llit_integer_α_289_0:  .quad            14
                        .size            n128_lit_integer_bx, .-n128_lit_integer_bx
                        .type            n129_lit_integer_bx, @function
n129_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:     sub              rsp, 16
                        mov              r11, 114
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_290_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n130_call_α
.Llit_integer_α_290_0:  .quad            18
                        .size            n129_lit_integer_bx, .-n129_lit_integer_bx
                        .type            n130_call_bx, @function
n130_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_call_α:            sub              rsp, 16
                        mov              r11, 115
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
.Lcall_α_rkfnzd292:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd292]
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
                        cmp              al, 104;                             jne   .Lcall_α_291_240
                        add              rsp, 16
                        add              rsp, 144;                            jmp   main_γ
.Lcall_α_291_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 160;                            jmp   main_γ
n130_call_β:            mov              r11, 115
                        add              rsp, 16
                        add              rsp, 144;                            jmp   main_γ
                        .size            n130_call_bx, .-n130_call_bx
                        .type            n131_goto_bx, @function
n131_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_goto_α:            mov              r11, 116;                            jmp   LBL__PATTERN_BT
n131_goto_β:            mov              r11, 116;                            jmp   main_ω
                        .size            n131_goto_bx, .-n131_goto_bx
                        .type            n132_lit_integer_bx, @function
n132_lit_integer_bx:
#=======================================================================================================================
# PATTERN_BT  ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
LBL__PATTERN_BT:        sub              rsp, 16
                        mov              r11, 117
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .LLBL__PATTERN_BT_α_294_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_lit_integer_α
.LLBL__PATTERN_BT_α_294_0:
                        .quad            7
                        .size            n132_lit_integer_bx, .-n132_lit_integer_bx
                        .type            n133_lit_integer_bx, @function
n133_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     sub              rsp, 16
                        mov              r11, 118
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_295_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n134_call_α
.Llit_integer_α_295_0:  .quad            10
                        .size            n133_lit_integer_bx, .-n133_lit_integer_bx
                        .type            n134_call_bx, @function
n134_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_call_α:            sub              rsp, 16
                        mov              r11, 119
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
.Lcall_α_rkfnzd297:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd297]
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
                        cmp              al, 104;                             jne   .Lcall_α_296_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n71_statement_begin_α
.Lcall_α_296_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_statement_begin_α
n134_call_β:            mov              r11, 119
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n71_statement_begin_α
                        .size            n134_call_bx, .-n134_call_bx
                        .type            n135_goto_bx, @function
n135_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_goto_α:            mov              r11, 120;                            jmp   n75_lit_integer_α
n135_goto_β:            mov              r11, 120;                            jmp   main_ω
                        .size            n135_goto_bx, .-n135_goto_bx
                        .type            n136_goto_bx, @function
n136_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_goto_α:            mov              r11, 121;                            jmp   n68_lit_integer_α
n136_goto_β:            mov              r11, 121;                            jmp   main_ω
                        .size            n136_goto_bx, .-n136_goto_bx
                        .type            n137_define_bx, @function
n137_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 122
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
                        .size            n137_define_bx, .-n137_define_bx
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
                        .long            2064
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
