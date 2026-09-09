                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/claws5/claws5-match.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 216
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n0_match_pos_bx, @function
n0_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_pos_α:         mov              r11, 1
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$0_ω
                                                                              jmp   n1_match_arbno_α
n0_match_pos_β:         mov              r11, 1;                              jmp   PAT$0_ω
                        .size            n0_match_pos_bx, .-n0_match_pos_bx
                        .type            n1_match_arbno_bx, @function
n1_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_match_arbno_α:       mov              r11, 2
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n2_match_rpos_α
n1_match_arbno_β:       mov              r11, 2
                        mov              r12, qword ptr [rbp + -40];          jmp   n3_match_alternate_α
.Lmatch_arbno_γ_1_as:   mov              r11, 2
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n4_match_span_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n2_match_rpos_α
.Lmatch_arbno_γ_1_af:   mov              r11, 2
.Lmatch_arbno_ω_1_af:   mov              r11, 2
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_14_3
                        mov              dword ptr [rbp + -44], eax;          jmp   n4_match_span_β
.Lmatch_arbno_β_14_3:                                                         jmp   n0_match_pos_β
                        .size            n1_match_arbno_bx, .-n1_match_arbno_bx
                        .type            n2_match_rpos_bx, @function
n2_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_match_rpos_α:        mov              r11, 3
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n1_match_arbno_β
                                                                              jmp   PAT$0_γ
n2_match_rpos_β:        mov              r11, 3;                              jmp   n1_match_arbno_β
                        .size            n2_match_rpos_bx, .-n2_match_rpos_bx
                        .type            n3_match_alternate_bx, @function
n3_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_match_alternate_α:   mov              r11, 4
                        mov              dword ptr [rbp + -216], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_17_21]
                        mov              qword ptr [rbp + -200], rax;         jmp   n10_match_span_α
.Lmatch_alternate_α_17_21:
                        lea              rax, [rip + .Lmatch_alternate_α_17_19]
                        mov              qword ptr [rbp + -200], rax;         jmp   n5_match_notany_α
.Lmatch_alternate_γ_3_s0:
                        mov              r11, 4
                        lea              rax, [rip + .Lmatch_alternate_α_17_40]
                        mov              qword ptr [rbp + -208], rax;         jmp   .Lmatch_alternate_γ_3_as
.Lmatch_alternate_γ_3_s1:
                        mov              r11, 4
                        lea              rax, [rip + .Lmatch_alternate_α_17_41]
                        mov              qword ptr [rbp + -208], rax;         jmp   .Lmatch_alternate_γ_3_as
.Lmatch_alternate_α_17_40:
                                                                              jmp   n11_match_lit_β
.Lmatch_alternate_α_17_41:
                                                                              jmp   n9_match_span_β
.Lmatch_alternate_γ_3_as:
                        mov              r11, 4;                              jmp   n4_match_span_α
n3_match_alternate_β:   mov              r11, 4
                        mov              rax, qword ptr [rbp + -208];         jmp   rax
.Lmatch_alternate_γ_3_af:
                        mov              r11, 4
.Lmatch_alternate_ω_3_af:
                        mov              r11, 4
                        mov              r14d, dword ptr [rbp + -216]
                        mov              rax, qword ptr [rbp + -200];         jmp   rax
.Lmatch_alternate_α_17_19:
                                                                              jmp   .Lmatch_arbno_ω_1_af
                        .size            n3_match_alternate_bx, .-n3_match_alternate_bx
                        .type            n4_match_span_bx, @function
n4_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_match_span_α:        sub              rsp, 16
                        mov              r11, 5
                        movsxd           rcx, r14d
.Lmatch_span_α_19_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_19_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lmatch_span_α_19_10
                        cmp              esi, 10;                             je    .Lmatch_span_α_19_10
                                                                              jmp   .Lmatch_span_α_19_1
.Lmatch_span_α_19_10:   add              ecx, 1;                              jmp   .Lmatch_span_α_19_0
.Lmatch_span_α_19_1:    cmp              ecx, r14d;                           jg    .Lmatch_span_α_19_240
                        add              rsp, 16;                             jmp   n3_match_alternate_β
.Lmatch_span_α_19_240:  mov              dword ptr [rbp + -172], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_arbno_γ_1_as
n4_match_span_β:        mov              r11, 5
                        mov              r14d, dword ptr [rbp + -172]
                        add              rsp, 16;                             jmp   n3_match_alternate_β
                        .size            n4_match_span_bx, .-n4_match_span_bx
                        .type            n5_match_notany_bx, @function
n5_match_notany_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_match_notany_α:      mov              r11, 6
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_3_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lmatch_alternate_ω_3_af
                        add              r14d, 1;                             jmp   n6_match_break_α
n5_match_notany_β:      mov              r11, 6
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_3_af
                        .size            n5_match_notany_bx, .-n5_match_notany_bx
                        .type            n6_match_break_bx, @function
n6_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_match_break_α:       mov              r11, 7
                        movsxd           rcx, r14d
.Lmatch_break_α_22_0:   cmp              ecx, r15d;                           jge   n5_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lmatch_break_α_22_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_22_0
.Lmatch_break_α_22_1:   mov              dword ptr [rbp + -112], r14d
                        mov              r14d, ecx;                           jmp   n7_match_lit_α
n6_match_break_β:       mov              r11, 7
                        mov              r14d, dword ptr [rbp + -112];        jmp   n5_match_notany_β
                        .size            n6_match_break_bx, .-n6_match_break_bx
                        .type            n7_match_lit_bx, @function
n7_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_match_lit_α:         mov              r11, 8
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n6_match_break_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95;                             jne   n6_match_break_β
                        add              r14d, 1;                             jmp   n8_match_any_α
n7_match_lit_β:         mov              r11, 8
                        sub              r14d, 1;                             jmp   n6_match_break_β
                        .size            n7_match_lit_bx, .-n7_match_lit_bx
                        .type            n8_match_any_bx, @function
n8_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_match_any_α:         mov              r11, 9
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n7_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n7_match_lit_β
                        add              r14d, 1;                             jmp   n9_match_span_α
n8_match_any_β:         mov              r11, 9
                        sub              r14d, 1;                             jmp   n7_match_lit_β
                        .size            n8_match_any_bx, .-n8_match_any_bx
                        .type            n9_match_span_bx, @function
n9_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_match_span_α:        mov              r11, 10
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lmatch_span_α_28_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_28_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_28_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_28_0
.Lmatch_span_α_28_1:    cmp              ecx, r14d;                           jle   n8_match_any_β
                        mov              dword ptr [rbp + -140], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_3_s1
n9_match_span_β:        mov              r11, 10
                        mov              r14d, dword ptr [rbp + -140];        jmp   n8_match_any_β
                        .size            n9_match_span_bx, .-n9_match_span_bx
                        .type            n10_match_span_bx, @function
n10_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_match_span_α:       mov              r11, 11
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lmatch_span_α_30_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_30_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_30_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_30_0
.Lmatch_span_α_30_1:    cmp              ecx, r14d;                           jle   .Lmatch_alternate_ω_3_af
                        mov              dword ptr [rbp + -76], r14d
                        mov              r14d, ecx;                           jmp   n11_match_lit_α
n10_match_span_β:       mov              r11, 11
                        mov              r14d, dword ptr [rbp + -76];         jmp   .Lmatch_alternate_ω_3_af
                        .size            n10_match_span_bx, .-n10_match_span_bx
                        .type            n11_match_lit_bx, @function
n11_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_match_lit_α:        mov              r11, 12
                        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d;                           jg    n10_match_span_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax;                            jne   n10_match_span_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85;                             jne   n10_match_span_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78;                             jne   n10_match_span_β
                        add              r14d, 10;                            jmp   .Lmatch_alternate_γ_3_s0
n11_match_lit_β:        mov              r11, 12
                        sub              r14d, 10;                            jmp   n10_match_span_β
                        .size            n11_match_lit_bx, .-n11_match_lit_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n2_match_rpos_β
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
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 2
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
.Lgvan0:                .string          "claws"
.Lgvan1:                .string          "src"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "error"
.Llbln1:                .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
                        .type            n33_lit_integer_bx, @function
n33_lit_integer_bx:
#=======================================================================================================================
#         &TRIM   =   0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n33_lit_integer_α:      sub              rsp, 16
                        mov              r11, 13
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_85_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_lit_integer_α
n33_lit_integer_β:      mov              r11, 13
                        add              rsp, 16
                        add              rsp, -48;                            jmp   n36_call_α
.Llit_integer_α_85_0:   .quad            18446744073709551615
                        .size            n33_lit_integer_bx, .-n33_lit_integer_bx
                        .type            n34_lit_integer_bx, @function
n34_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_86_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_lit_string_α
n34_lit_integer_β:      mov              r11, 14
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n36_call_α
.Llit_integer_α_86_0:   .quad            0
                        .size            n34_lit_integer_bx, .-n34_lit_integer_bx
                        .type            n35_lit_string_bx, @function
n35_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       sub              rsp, 16
                        mov              r11, 15
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Llit_string_α_87_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n36_call_α
n35_lit_string_β:       mov              r11, 15
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n36_call_α
.Llit_string_α_87_0:    .quad            .Llit_string_α_87_0_s
.Llit_string_α_87_0_s:  .string          "snobol4/claws5/claws5-match.sno"
                        .size            n35_lit_string_bx, .-n35_lit_string_bx
                        .type            n36_call_bx, @function
n36_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_call_α:             sub              rsp, 16
                        mov              r11, 16
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
.Lcall_α_rkfnzd89:      .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd89]
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
                        cmp              al, 104;                             jne   .Lcall_α_88_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n37_statement_begin_α
.Lcall_α_88_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n37_statement_begin_α
n36_call_β:             mov              r11, 16
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n37_statement_begin_α
                        .size            n36_call_bx, .-n36_call_bx
                        .type            n37_statement_begin_bx, @function
n37_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:  mov              r11, 17
                        mov              r10, 1;                              jmp   n38_lit_integer_α
n37_statement_begin_β:  mov              r11, 17
                        add              rsp, 64;                             jmp   n41_statement_begin_α
                        .size            n37_statement_begin_bx, .-n37_statement_begin_bx
                        .type            n38_lit_integer_bx, @function
n38_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      sub              rsp, 16
                        mov              r11, 18
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_92_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_kw_assign_snobol4_α
n38_lit_integer_β:      mov              r11, 18
                        add              rsp, 16;                             jmp   n37_statement_begin_β
.Llit_integer_α_92_0:   .quad            0
                        .size            n38_lit_integer_bx, .-n38_lit_integer_bx
                        .type            n39_kw_assign_snobol4_bx, @function
n39_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 19
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_93_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_93_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n37_statement_begin_β
.Lkw_assign_snobol4_α_93_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n40_statement_end_α
n39_kw_assign_snobol4_β:
                        mov              r11, 19
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n37_statement_begin_β
.Lkw_assign_snobol4_α_93_0:
                        .quad            1
                        .size            n39_kw_assign_snobol4_bx, .-n39_kw_assign_snobol4_bx
                        .type            n40_statement_end_bx, @function
n40_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    mov              r11, 20
                        mov              r10, 1
                        add              rsp, 96;                             jmp   n41_statement_begin_α
n40_statement_end_β:    mov              r11, 20
                        add              rsp, 96;                             jmp   n41_statement_begin_α
                        .size            n40_statement_end_bx, .-n40_statement_end_bx
                        .type            n41_statement_begin_bx, @function
n41_statement_begin_bx:
#=======================================================================================================================
#         claws   =   POS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n41_statement_begin_α:  mov              r11, 21
                        mov              r10, 2;                              jmp   n42_lit_string_α
n41_statement_begin_β:  mov              r11, 21;                             jmp   n46_statement_begin_α
                        .size            n41_statement_begin_bx, .-n41_statement_begin_bx
                        .type            n42_lit_string_bx, @function
n42_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       sub              rsp, 16
                        mov              r11, 22
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_98_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_call_α
n42_lit_string_β:       mov              r11, 22
                        add              rsp, 16;                             jmp   n41_statement_begin_β
.Llit_string_α_98_0:    .quad            .Llit_string_α_98_0_s
.Llit_string_α_98_0_s:  .string          "PAT$0"
                        .size            n42_lit_string_bx, .-n42_lit_string_bx
                        .type            n43_call_bx, @function
n43_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_call_α:             sub              rsp, 16
                        mov              r11, 23
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd100:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd100]
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
                        cmp              al, 104;                             jne   .Lcall_α_99_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n41_statement_begin_β
.Lcall_α_99_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_assign_α
n43_call_β:             mov              r11, 23
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n41_statement_begin_β
                        .size            n43_call_bx, .-n43_call_bx
                        .type            n44_assign_bx, @function
n44_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:           mov              r11, 24
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # claws
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
                        mov              rdi, qword ptr [rip + .Lassign_α_101_0]
                        .section         .rodata
.Lassign_α_101_1_s:     .string          "snobol4/claws5/claws5-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_101_1_s]
                        mov              r8, 2
                        mov              r9, 2
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
                        pop              rax;                                 jmp   n45_statement_end_α
n44_assign_β:           mov              r11, 24;                             jmp   n41_statement_begin_β
.Lassign_α_101_0:       .quad            .Lassign_α_101_0_s
.Lassign_α_101_0_s:     .string          "claws"
                        .size            n44_assign_bx, .-n44_assign_bx
                        .type            n45_statement_end_bx, @function
n45_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_end_α:    mov              r11, 25
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n46_statement_begin_α
n45_statement_end_β:    mov              r11, 25
                        add              rsp, 32;                             jmp   n46_statement_begin_α
                        .size            n45_statement_end_bx, .-n45_statement_end_bx
                        .type            n46_statement_begin_bx, @function
n46_statement_begin_bx:
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n46_statement_begin_α:  mov              r11, 26
                        mov              r10, 3;                              jmp   n47_lit_name_α
n46_statement_begin_β:  mov              r11, 26;                             jmp   n52_statement_begin_α
                        .size            n46_statement_begin_bx, .-n46_statement_begin_bx
                        .type            n47_lit_name_bx, @function
n47_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_name_α:         sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_106_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_lit_integer_α
n47_lit_name_β:         mov              r11, 27
                        add              rsp, 16;                             jmp   n46_statement_begin_β
.Llit_name_α_106_0:     .quad            .Llit_name_α_106_0_s
.Llit_name_α_106_0_s:   .string          "INPUT"
                        .size            n47_lit_name_bx, .-n47_lit_name_bx
                        .type            n48_lit_integer_bx, @function
n48_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      sub              rsp, 16
                        mov              r11, 28
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_107_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_lit_string_α
n48_lit_integer_β:      mov              r11, 28
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n46_statement_begin_β
.Llit_integer_α_107_0:  .quad            9
                        .size            n48_lit_integer_bx, .-n48_lit_integer_bx
                        .type            n49_lit_string_bx, @function
n49_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       sub              rsp, 16
                        mov              r11, 29
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_108_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_call_α
n49_lit_string_β:       mov              r11, 29
                        add              rsp, 16;                             jmp   n48_lit_integer_β
.Llit_string_α_108_0:   .quad            .Llit_string_α_108_0_s
.Llit_string_α_108_0_s: .string          "[-f0 -r4194304]"
                        .size            n49_lit_string_bx, .-n49_lit_string_bx
                        .type            n50_call_bx, @function
n50_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_call_α:             sub              rsp, 16
                        mov              r11, 30
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
.Lcall_α_bynamefnzd30:  .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd30]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 327680
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_109_240
                        add              rsp, 16;                             jmp   n49_lit_string_β
.Lcall_α_109_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_statement_end_α
n50_call_β:             mov              r11, 30
                        add              rsp, 16;                             jmp   n49_lit_string_β
                        .size            n50_call_bx, .-n50_call_bx
                        .type            n51_statement_end_bx, @function
n51_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_end_α:    mov              r11, 31
                        mov              r10, 3
                        add              rsp, 64;                             jmp   n52_statement_begin_α
n51_statement_end_β:    mov              r11, 31
                        add              rsp, 64;                             jmp   n52_statement_begin_α
                        .size            n51_statement_end_bx, .-n51_statement_end_bx
                        .type            n52_statement_begin_bx, @function
n52_statement_begin_bx:
#=======================================================================================================================
#         src     =   INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n52_statement_begin_α:  mov              r11, 32
                        mov              r10, 4;                              jmp   n53_var_α
n52_statement_begin_β:  mov              r11, 32;                             jmp   n80_statement_begin_α
                        .size            n52_statement_begin_bx, .-n52_statement_begin_bx
                        .type            n53_var_bx, @function
n53_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              sub              rsp, 16
                        mov              r11, 33
                        mov              rdi, qword ptr [rip + .Lvar_α_114_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_114_240
                        add              rsp, 16;                             jmp   n52_statement_begin_β
.Lvar_α_114_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n54_assign_α
n53_var_β:              mov              r11, 33
                        add              rsp, 16;                             jmp   n52_statement_begin_β
.Lvar_α_114_0:          .quad            .Lvar_α_114_0_s
.Lvar_α_114_0_s:        .string          "INPUT"
                        .size            n53_var_bx, .-n53_var_bx
                        .type            n54_assign_bx, @function
n54_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:           mov              r11, 34
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # src
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
                        mov              rdi, qword ptr [rip + .Lassign_α_115_0]
                        .section         .rodata
.Lassign_α_115_1_s:     .string          "snobol4/claws5/claws5-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_115_1_s]
                        mov              r8, 13
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
                        pop              rax;                                 jmp   n55_statement_end_α
n54_assign_β:           mov              r11, 34;                             jmp   n52_statement_begin_β
.Lassign_α_115_0:       .quad            .Lassign_α_115_0_s
.Lassign_α_115_0_s:     .string          "src"
                        .size            n54_assign_bx, .-n54_assign_bx
                        .type            n55_statement_end_bx, @function
n55_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_end_α:    mov              r11, 35
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n56_statement_begin_α
n55_statement_end_β:    mov              r11, 35
                        add              rsp, 16;                             jmp   n80_statement_begin_α
                        .size            n55_statement_end_bx, .-n55_statement_end_bx
                        .type            n56_statement_begin_bx, @function
n56_statement_begin_bx:
#=======================================================================================================================
#         src     ?   claws  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n56_statement_begin_α:  mov              r11, 36
                        mov              r10, 5;                              jmp   n57_var_α
n56_statement_begin_β:  mov              r11, 36;                             jmp   n80_statement_begin_α
                        .size            n56_statement_begin_bx, .-n56_statement_begin_bx
                        .type            n57_var_bx, @function
n57_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              sub              rsp, 16
                        mov              r11, 37
                        mov              rax, qword ptr [r9 + 16]             # src
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n58_match_begin_α
n57_var_β:              mov              r11, 37
                        add              rsp, 16;                             jmp   n80_statement_begin_α
                        .size            n57_var_bx, .-n57_var_bx
                        .type            n58_match_begin_bx, @function
n58_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_match_begin_α:      mov              r11, 38
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 88
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
.Lmatch_begin_α_122_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_122_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n59_match_pos_α
n58_match_begin_β:      mov              r11, 38
.Lmatch_begin_α_122_13: lea              rsp, [rbp + -120]                    # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_122_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_122_1
                                                                              jmp   .Lmatch_begin_α_122_0
.Lmatch_begin_β_122_1:
.Lmatch_begin_γ_58_af:  mov              r11, 38
.Lmatch_begin_ω_58_af:  mov              r11, 38
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
                        pop              rbp
                        add              rsp, 16;                             jmp   n80_statement_begin_α
                        .size            n58_match_begin_bx, .-n58_match_begin_bx
                        .type            n59_match_pos_bx, @function
n59_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_match_pos_α:        mov              r11, 39
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n58_match_begin_β
                                                                              jmp   n60_match_arbno_α
n59_match_pos_β:        mov              r11, 39;                             jmp   n58_match_begin_β
                        .size            n59_match_pos_bx, .-n59_match_pos_bx
                        .type            n60_match_arbno_bx, @function
n60_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_match_arbno_α:      mov              r11, 40
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n61_match_rpos_α
n60_match_arbno_β:      mov              r11, 40
                        mov              r12, qword ptr [rbp + -56];          jmp   n64_match_alternate_α
.Lmatch_arbno_γ_60_as:  mov              r11, 40
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n65_match_span_β
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n61_match_rpos_α
.Lmatch_arbno_γ_60_af:  mov              r11, 40
.Lmatch_arbno_ω_60_af:  mov              r11, 40
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_125_3
                        mov              dword ptr [rbp + -60], eax;          jmp   n65_match_span_β
.Lmatch_arbno_β_125_3:                                                        jmp   n59_match_pos_β
                        .size            n60_match_arbno_bx, .-n60_match_arbno_bx
                        .type            n61_match_rpos_bx, @function
n61_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_match_rpos_α:       mov              r11, 41
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n60_match_arbno_β
                                                                              jmp   n62_match_end_α
n61_match_rpos_β:       mov              r11, 41;                             jmp   n60_match_arbno_β
                        .size            n61_match_rpos_bx, .-n61_match_rpos_bx
                        .type            n62_match_end_bx, @function
n62_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_match_end_α:        mov              r11, 42
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
                        test             rax, rax;                            je    .Lmatch_end_α_128_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_58_af
.Lmatch_end_α_128_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n63_statement_end_α
                        .size            n62_match_end_bx, .-n62_match_end_bx
                        .type            n63_statement_end_bx, @function
n63_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:    mov              r11, 43
                        mov              r10, 5
                        add              rsp, 16;                             jmp   n73_statement_begin_α
n63_statement_end_β:    mov              r11, 43
                        add              rsp, 32;                             jmp   n80_statement_begin_α
                        .size            n63_statement_end_bx, .-n63_statement_end_bx
                        .type            n64_match_alternate_bx, @function
n64_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_match_alternate_α:  mov              r11, 44
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_132_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n71_match_span_α
.Lmatch_alternate_α_132_21:
                        lea              rax, [rip + .Lmatch_alternate_α_132_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n66_match_notany_α
.Lmatch_alternate_γ_64_s0:
                        mov              r11, 44
                        lea              rax, [rip + .Lmatch_alternate_α_132_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmatch_alternate_γ_64_as
.Lmatch_alternate_γ_64_s1:
                        mov              r11, 44
                        lea              rax, [rip + .Lmatch_alternate_α_132_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmatch_alternate_γ_64_as
.Lmatch_alternate_α_132_40:
                                                                              jmp   n72_match_lit_β
.Lmatch_alternate_α_132_41:
                                                                              jmp   n70_match_span_β
.Lmatch_alternate_γ_64_as:
                        mov              r11, 44;                             jmp   n65_match_span_α
n64_match_alternate_β:  mov              r11, 44
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
.Lmatch_alternate_γ_64_af:
                        mov              r11, 44
.Lmatch_alternate_ω_64_af:
                        mov              r11, 44
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lmatch_alternate_α_132_19:
                        add              rsp, 32;                             jmp   .Lmatch_arbno_ω_60_af
                        .size            n64_match_alternate_bx, .-n64_match_alternate_bx
                        .type            n65_match_span_bx, @function
n65_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_match_span_α:       sub              rsp, 16
                        mov              r11, 45
                        movsxd           rcx, r14d
.Lmatch_span_α_134_0:   cmp              ecx, r15d;                           jge   .Lmatch_span_α_134_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lmatch_span_α_134_10
                        cmp              esi, 10;                             je    .Lmatch_span_α_134_10
                                                                              jmp   .Lmatch_span_α_134_1
.Lmatch_span_α_134_10:  add              ecx, 1;                              jmp   .Lmatch_span_α_134_0
.Lmatch_span_α_134_1:   cmp              ecx, r14d;                           jg    .Lmatch_span_α_134_240
                        add              rsp, 16;                             jmp   n64_match_alternate_β
.Lmatch_span_α_134_240: mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_arbno_γ_60_as
n65_match_span_β:       mov              r11, 45
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   n64_match_alternate_β
                        .size            n65_match_span_bx, .-n65_match_span_bx
                        .type            n66_match_notany_bx, @function
n66_match_notany_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_match_notany_α:     mov              r11, 46
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_64_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lmatch_alternate_ω_64_af
                        add              r14d, 1;                             jmp   n67_match_break_α
n66_match_notany_β:     mov              r11, 46
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_64_af
                        .size            n66_match_notany_bx, .-n66_match_notany_bx
                        .type            n67_match_break_bx, @function
n67_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_match_break_α:      mov              r11, 47
                        movsxd           rcx, r14d
.Lmatch_break_α_137_0:  cmp              ecx, r15d;                           jge   n66_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lmatch_break_α_137_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_137_0
.Lmatch_break_α_137_1:  mov              dword ptr [rbp + -128], r14d
                        mov              r14d, ecx;                           jmp   n68_match_lit_α
n67_match_break_β:      mov              r11, 47
                        mov              r14d, dword ptr [rbp + -128];        jmp   n66_match_notany_β
                        .size            n67_match_break_bx, .-n67_match_break_bx
                        .type            n68_match_lit_bx, @function
n68_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_match_lit_α:        mov              r11, 48
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n67_match_break_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95;                             jne   n67_match_break_β
                        add              r14d, 1;                             jmp   n69_match_any_α
n68_match_lit_β:        mov              r11, 48
                        sub              r14d, 1;                             jmp   n67_match_break_β
                        .size            n68_match_lit_bx, .-n68_match_lit_bx
                        .type            n69_match_any_bx, @function
n69_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_match_any_α:        mov              r11, 49
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n68_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n68_match_lit_β
                        add              r14d, 1;                             jmp   n70_match_span_α
n69_match_any_β:        mov              r11, 49
                        sub              r14d, 1;                             jmp   n68_match_lit_β
                        .size            n69_match_any_bx, .-n69_match_any_bx
                        .type            n70_match_span_bx, @function
n70_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_match_span_α:       mov              r11, 50
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lmatch_span_α_143_0:   cmp              ecx, r15d;                           jge   .Lmatch_span_α_143_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_143_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_143_0
.Lmatch_span_α_143_1:   cmp              ecx, r14d;                           jle   n69_match_any_β
                        mov              dword ptr [rbp + -156], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_64_s1
n70_match_span_β:       mov              r11, 50
                        mov              r14d, dword ptr [rbp + -156];        jmp   n69_match_any_β
                        .size            n70_match_span_bx, .-n70_match_span_bx
                        .type            n71_match_span_bx, @function
n71_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_match_span_α:       mov              r11, 51
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lmatch_span_α_145_0:   cmp              ecx, r15d;                           jge   .Lmatch_span_α_145_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_145_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_145_0
.Lmatch_span_α_145_1:   cmp              ecx, r14d;                           jle   .Lmatch_alternate_ω_64_af
                        mov              dword ptr [rbp + -92], r14d
                        mov              r14d, ecx;                           jmp   n72_match_lit_α
n71_match_span_β:       mov              r11, 51
                        mov              r14d, dword ptr [rbp + -92];         jmp   .Lmatch_alternate_ω_64_af
                        .size            n71_match_span_bx, .-n71_match_span_bx
                        .type            n72_match_lit_bx, @function
n72_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_match_lit_α:        mov              r11, 52
                        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d;                           jg    n71_match_span_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax;                            jne   n71_match_span_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85;                             jne   n71_match_span_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78;                             jne   n71_match_span_β
                        add              r14d, 10;                            jmp   .Lmatch_alternate_γ_64_s0
n72_match_lit_β:        mov              r11, 52
                        sub              r14d, 10;                            jmp   n71_match_span_β
                        .size            n72_match_lit_bx, .-n72_match_lit_bx
                        .type            n73_statement_begin_bx, @function
n73_statement_begin_bx:
#=======================================================================================================================
#         OUTPUT  =   'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n73_statement_begin_α:  mov              r11, 53
                        mov              r10, 6;                              jmp   n74_lit_string_α
n73_statement_begin_β:  mov              r11, 53;                             jmp   main_γ
                        .size            n73_statement_begin_bx, .-n73_statement_begin_bx
                        .type            n74_lit_string_bx, @function
n74_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_150_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n75_var_α
n74_lit_string_β:       mov              r11, 54
                        add              rsp, 16;                             jmp   n73_statement_begin_β
.Llit_string_α_150_0:   .quad            .Llit_string_α_150_0_s
.Llit_string_α_150_0_s: .string          "matched bytes="
                        .size            n74_lit_string_bx, .-n74_lit_string_bx
                        .type            n75_var_bx, @function
n75_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:              sub              rsp, 16
                        mov              r11, 55
                        mov              rax, qword ptr [r9 + 16]             # src
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n76_call_α
n75_var_β:              mov              r11, 55
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n73_statement_begin_β
                        .size            n75_var_bx, .-n75_var_bx
                        .type            n76_call_bx, @function
n76_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_call_α:             sub              rsp, 16
                        mov              r11, 56
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd153:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd153]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262193
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_152_240
                        add              rsp, 16;                             jmp   n75_var_β
.Lcall_α_152_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_binop_α
n76_call_β:             mov              r11, 56
                        add              rsp, 16;                             jmp   n75_var_β
                        .size            n76_call_bx, .-n76_call_bx
                        .type            n77_binop_bx, @function
n77_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_binop_α:            sub              rsp, 16
                        mov              r11, 57
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n78_assign_α
n77_binop_β:            mov              r11, 57
                        add              rsp, 32;                             jmp   n75_var_β
                        .size            n77_binop_bx, .-n77_binop_bx
                        .type            n78_assign_bx, @function
n78_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:           mov              r11, 58
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
                        mov              rdi, qword ptr [rip + .Lassign_α_155_0]
                        .section         .rodata
.Lassign_α_155_1_s:     .string          "snobol4/claws5/claws5-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_155_1_s]
                        mov              r8, 15
                        mov              r9, 6
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
                        mov              rdi, qword ptr [rip + .Lassign_α_155_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n79_statement_end_α
n78_assign_β:           mov              r11, 58;                             jmp   n73_statement_begin_β
.Lassign_α_155_0:       .quad            .Lassign_α_155_0_s
.Lassign_α_155_0_s:     .string          "OUTPUT"
                        .size            n78_assign_bx, .-n78_assign_bx
                        .type            n79_statement_end_bx, @function
n79_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_end_α:    mov              r11, 59
                        mov              r10, 6
                        add              rsp, 64;                             jmp   main_γ
n79_statement_end_β:    mov              r11, 59
                        add              rsp, 64;                             jmp   main_γ
                        .size            n79_statement_end_bx, .-n79_statement_end_bx
                        .type            n80_statement_begin_bx, @function
n80_statement_begin_bx:
#=======================================================================================================================
# error   OUTPUT  =   'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n80_statement_begin_α:  mov              r11, 60
                        mov              r10, 7;                              jmp   n81_lit_string_α
n80_statement_begin_β:  mov              r11, 60;                             jmp   main_γ
                        .size            n80_statement_begin_bx, .-n80_statement_begin_bx
                        .type            n81_lit_string_bx, @function
n81_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       sub              rsp, 16
                        mov              r11, 61
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_160_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_assign_α
n81_lit_string_β:       mov              r11, 61
                        add              rsp, 16;                             jmp   n80_statement_begin_β
.Llit_string_α_160_0:   .quad            .Llit_string_α_160_0_s
.Llit_string_α_160_0_s: .string          "Pattern match failed"
                        .size            n81_lit_string_bx, .-n81_lit_string_bx
                        .type            n82_assign_bx, @function
n82_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:           mov              r11, 62
                        mov              rax, qword ptr [rsp + 0]             # lit_string
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
                        mov              rdi, qword ptr [rip + .Lassign_α_161_0]
                        .section         .rodata
.Lassign_α_161_1_s:     .string          "snobol4/claws5/claws5-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_161_1_s]
                        mov              r8, 16
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
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_161_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n83_statement_end_α
n82_assign_β:           mov              r11, 62;                             jmp   n80_statement_begin_β
.Lassign_α_161_0:       .quad            .Lassign_α_161_0_s
.Lassign_α_161_0_s:     .string          "OUTPUT"
                        .size            n82_assign_bx, .-n82_assign_bx
                        .type            n83_statement_end_bx, @function
n83_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_end_α:    mov              r11, 63
                        mov              r10, 7
                        add              rsp, 16;                             jmp   main_γ
n83_statement_end_β:    mov              r11, 63
                        add              rsp, 16;                             jmp   main_γ
                        .size            n83_statement_end_bx, .-n83_statement_end_bx
                        .type            n84_goto_bx, @function
n84_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_goto_α:             mov              r11, 64;                             jmp   n80_statement_begin_α
n84_goto_β:             mov              r11, 64;                             jmp   main_ω
                        .size            n84_goto_bx, .-n84_goto_bx
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
.Lstartup_pname0:       .string          "PAT$0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__PAT$0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            224
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                        .byte            1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C1:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                        .byte            1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C2:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
