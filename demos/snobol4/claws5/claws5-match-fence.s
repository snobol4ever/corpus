                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/claws5/claws5-match-fence.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 232
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
                        mov              r12, qword ptr [rbp + -40];          jmp   n3_match_fence1_α
.Lmatch_arbno_γ_1_as:   mov              r11, 2
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n4_match_span_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n2_match_rpos_α
.Lmatch_arbno_γ_1_af:   mov              r11, 2
.Lmatch_arbno_ω_1_af:   mov              r11, 2
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n0_match_pos_β
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
                        .type            n3_match_fence1_bx, @function
n3_match_fence1_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_match_fence1_α:      mov              r11, 4
                        mov              qword ptr [rbp + -96], rsp;          jmp   n5_match_alternate_α
.Lmatch_fence1_γ_3_as:  mov              r11, 4
                        mov              rsp, qword ptr [rbp + -96];          jmp   n4_match_span_α
.Lmatch_fence1_γ_3_af:  mov              r11, 4
.Lmatch_fence1_ω_3_af:  mov              r11, 4
n3_match_fence1_β:      mov              r11, 4
                        mov              rsp, qword ptr [rbp + -96];          jmp   .Lmatch_arbno_ω_1_af
                        .size            n3_match_fence1_bx, .-n3_match_fence1_bx
                        .type            n4_match_span_bx, @function
n4_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_match_span_α:        sub              rsp, 16
                        mov              r11, 5
                        movsxd           rcx, r14d
.Lmatch_span_α_20_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_20_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lmatch_span_α_20_10
                        cmp              esi, 10;                             je    .Lmatch_span_α_20_10
                                                                              jmp   .Lmatch_span_α_20_1
.Lmatch_span_α_20_10:   add              ecx, 1;                              jmp   .Lmatch_span_α_20_0
.Lmatch_span_α_20_1:    cmp              ecx, r14d;                           jg    .Lmatch_span_α_20_240
                        add              rsp, 16;                             jmp   .Lmatch_arbno_ω_1_af
.Lmatch_span_α_20_240:  mov              dword ptr [rbp + -76], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_arbno_γ_1_as
n4_match_span_β:        mov              r11, 5
                        mov              r14d, dword ptr [rbp + -76]
                        add              rsp, 16;                             jmp   .Lmatch_arbno_ω_1_af
                        .size            n4_match_span_bx, .-n4_match_span_bx
                        .type            n5_match_alternate_bx, @function
n5_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_match_alternate_α:   mov              r11, 6
                        mov              dword ptr [rbp + -128], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_22_21]
                        mov              qword ptr [rbp + -112], rax;         jmp   n11_match_span_α
.Lmatch_alternate_α_22_21:
                        lea              rax, [rip + .Lmatch_alternate_α_22_19]
                        mov              qword ptr [rbp + -112], rax;         jmp   n6_match_notany_α
.Lmatch_alternate_γ_5_s0:
                        mov              r11, 6
                        lea              rax, [rip + .Lmatch_alternate_α_22_40]
                        mov              qword ptr [rbp + -120], rax;         jmp   .Lmatch_alternate_γ_5_as
.Lmatch_alternate_γ_5_s1:
                        mov              r11, 6
                        lea              rax, [rip + .Lmatch_alternate_α_22_41]
                        mov              qword ptr [rbp + -120], rax;         jmp   .Lmatch_alternate_γ_5_as
.Lmatch_alternate_α_22_40:
                                                                              jmp   n12_match_lit_β
.Lmatch_alternate_α_22_41:
                                                                              jmp   n10_match_span_β
.Lmatch_alternate_γ_5_as:
                        mov              r11, 6;                              jmp   .Lmatch_fence1_γ_3_as
n5_match_alternate_β:   mov              r11, 6
                        mov              rax, qword ptr [rbp + -120];         jmp   rax
.Lmatch_alternate_γ_5_af:
                        mov              r11, 6
.Lmatch_alternate_ω_5_af:
                        mov              r11, 6
                        mov              r14d, dword ptr [rbp + -128]
                        mov              rax, qword ptr [rbp + -112];         jmp   rax
.Lmatch_alternate_α_22_19:
                                                                              jmp   .Lmatch_fence1_ω_3_af
                        .size            n5_match_alternate_bx, .-n5_match_alternate_bx
                        .type            n6_match_notany_bx, @function
n6_match_notany_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_match_notany_α:      mov              r11, 7
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_5_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lmatch_alternate_ω_5_af
                        add              r14d, 1;                             jmp   n7_match_break_α
n6_match_notany_β:      mov              r11, 7
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_5_af
                        .size            n6_match_notany_bx, .-n6_match_notany_bx
                        .type            n7_match_break_bx, @function
n7_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_match_break_α:       mov              r11, 8
                        movsxd           rcx, r14d
.Lmatch_break_α_25_0:   cmp              ecx, r15d;                           jge   n6_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lmatch_break_α_25_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_25_0
.Lmatch_break_α_25_1:   mov              dword ptr [rbp + -192], r14d
                        mov              r14d, ecx;                           jmp   n8_match_lit_α
n7_match_break_β:       mov              r11, 8
                        mov              r14d, dword ptr [rbp + -192];        jmp   n6_match_notany_β
                        .size            n7_match_break_bx, .-n7_match_break_bx
                        .type            n8_match_lit_bx, @function
n8_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_match_lit_α:         mov              r11, 9
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n7_match_break_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95;                             jne   n7_match_break_β
                        add              r14d, 1;                             jmp   n9_match_any_α
n8_match_lit_β:         mov              r11, 9
                        sub              r14d, 1;                             jmp   n7_match_break_β
                        .size            n8_match_lit_bx, .-n8_match_lit_bx
                        .type            n9_match_any_bx, @function
n9_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_match_any_α:         mov              r11, 10
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n8_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n8_match_lit_β
                        add              r14d, 1;                             jmp   n10_match_span_α
n9_match_any_β:         mov              r11, 10
                        sub              r14d, 1;                             jmp   n8_match_lit_β
                        .size            n9_match_any_bx, .-n9_match_any_bx
                        .type            n10_match_span_bx, @function
n10_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_match_span_α:       mov              r11, 11
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lmatch_span_α_31_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_31_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_31_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_31_0
.Lmatch_span_α_31_1:    cmp              ecx, r14d;                           jle   n9_match_any_β
                        mov              dword ptr [rbp + -220], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_5_s1
n10_match_span_β:       mov              r11, 11
                        mov              r14d, dword ptr [rbp + -220];        jmp   n9_match_any_β
                        .size            n10_match_span_bx, .-n10_match_span_bx
                        .type            n11_match_span_bx, @function
n11_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_match_span_α:       mov              r11, 12
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lmatch_span_α_33_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_33_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_33_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_33_0
.Lmatch_span_α_33_1:    cmp              ecx, r14d;                           jle   .Lmatch_alternate_ω_5_af
                        mov              dword ptr [rbp + -156], r14d
                        mov              r14d, ecx;                           jmp   n12_match_lit_α
n11_match_span_β:       mov              r11, 12
                        mov              r14d, dword ptr [rbp + -156];        jmp   .Lmatch_alternate_ω_5_af
                        .size            n11_match_span_bx, .-n11_match_span_bx
                        .type            n12_match_lit_bx, @function
n12_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_match_lit_α:        mov              r11, 13
                        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d;                           jg    n11_match_span_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax;                            jne   n11_match_span_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85;                             jne   n11_match_span_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78;                             jne   n11_match_span_β
                        add              r14d, 10;                            jmp   .Lmatch_alternate_γ_5_s0
n12_match_lit_β:        mov              r11, 13
                        sub              r14d, 10;                            jmp   n11_match_span_β
                        .size            n12_match_lit_bx, .-n12_match_lit_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   PAT$0_ω
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
                        .type            n36_lit_integer_bx, @function
n36_lit_integer_bx:
#=======================================================================================================================
#         &TRIM   =   0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n36_lit_integer_α:      sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_79_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_lit_integer_α
.Llit_integer_α_79_0:   .quad            18446744073709551615
                        .size            n36_lit_integer_bx, .-n36_lit_integer_bx
                        .type            n37_lit_integer_bx, @function
n37_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      sub              rsp, 16
                        mov              r11, 15
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_80_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_lit_string_α
.Llit_integer_α_80_0:   .quad            0
                        .size            n37_lit_integer_bx, .-n37_lit_integer_bx
                        .type            n38_lit_string_bx, @function
n38_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:       sub              rsp, 16
                        mov              r11, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 37
                        mov              rax, qword ptr [rip + .Llit_string_α_81_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_call_α
.Llit_string_α_81_0:    .quad            .Llit_string_α_81_0_s
.Llit_string_α_81_0_s:  .string          "snobol4/claws5/claws5-match-fence.sno"
                        .size            n38_lit_string_bx, .-n38_lit_string_bx
                        .type            n39_call_bx, @function
n39_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_call_α:             sub              rsp, 16
                        mov              r11, 17
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
.Lcall_α_rkfnzd83:      .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd83]
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
                        cmp              al, 104;                             jne   .Lcall_α_82_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n40_statement_begin_α
.Lcall_α_82_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n40_statement_begin_α
n39_call_β:             mov              r11, 17
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n40_statement_begin_α
                        .size            n39_call_bx, .-n39_call_bx
                        .type            n40_statement_begin_bx, @function
n40_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:  mov              r11, 18
                        mov              r10, 1;                              jmp   n41_lit_integer_α
n40_statement_begin_β:  mov              r11, 18
                        add              rsp, 64;                             jmp   n44_statement_begin_α
                        .size            n40_statement_begin_bx, .-n40_statement_begin_bx
                        .type            n41_lit_integer_bx, @function
n41_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      sub              rsp, 16
                        mov              r11, 19
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_86_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_kw_assign_snobol4_α
.Llit_integer_α_86_0:   .quad            0
                        .size            n41_lit_integer_bx, .-n41_lit_integer_bx
                        .type            n42_kw_assign_snobol4_bx, @function
n42_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 20
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_87_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_87_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n40_statement_begin_β
.Lkw_assign_snobol4_α_87_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_statement_end_α
.Lkw_assign_snobol4_α_87_0:
                        .quad            1
                        .size            n42_kw_assign_snobol4_bx, .-n42_kw_assign_snobol4_bx
                        .type            n43_statement_end_bx, @function
n43_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:    mov              r11, 21
                        mov              r10, 1
                        add              rsp, 96;                             jmp   n44_statement_begin_α
                        .size            n43_statement_end_bx, .-n43_statement_end_bx
                        .type            n44_statement_begin_bx, @function
n44_statement_begin_bx:
#=======================================================================================================================
#         claws   =   POS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n44_statement_begin_α:  mov              r11, 22
                        mov              r10, 2;                              jmp   n45_lit_string_α
n44_statement_begin_β:  mov              r11, 22;                             jmp   n49_statement_begin_α
                        .size            n44_statement_begin_bx, .-n44_statement_begin_bx
                        .type            n45_lit_string_bx, @function
n45_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       sub              rsp, 16
                        mov              r11, 23
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_92_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_call_α
.Llit_string_α_92_0:    .quad            .Llit_string_α_92_0_s
.Llit_string_α_92_0_s:  .string          "PAT$0"
                        .size            n45_lit_string_bx, .-n45_lit_string_bx
                        .type            n46_call_bx, @function
n46_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:             sub              rsp, 16
                        mov              r11, 24
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd94:      .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd94]
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
                        cmp              al, 104;                             jne   .Lcall_α_93_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n44_statement_begin_β
.Lcall_α_93_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n47_assign_α
n46_call_β:             mov              r11, 24
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n44_statement_begin_β
                        .size            n46_call_bx, .-n46_call_bx
                        .type            n47_assign_bx, @function
n47_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              r11, 25
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
                        mov              rdi, qword ptr [rip + .Lassign_α_95_0]
                        .section         .rodata
.Lassign_α_95_1_s:      .string          "snobol4/claws5/claws5-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_95_1_s]
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
                        pop              rax;                                 jmp   n48_statement_end_α
.Lassign_α_95_0:        .quad            .Lassign_α_95_0_s
.Lassign_α_95_0_s:      .string          "claws"
                        .size            n47_assign_bx, .-n47_assign_bx
                        .type            n48_statement_end_bx, @function
n48_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    mov              r11, 26
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n49_statement_begin_α
                        .size            n48_statement_end_bx, .-n48_statement_end_bx
                        .type            n49_statement_begin_bx, @function
n49_statement_begin_bx:
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n49_statement_begin_α:  mov              r11, 27
                        mov              r10, 3;                              jmp   n50_lit_name_α
n49_statement_begin_β:  mov              r11, 27;                             jmp   n55_statement_begin_α
                        .size            n49_statement_begin_bx, .-n49_statement_begin_bx
                        .type            n50_lit_name_bx, @function
n50_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_name_α:         sub              rsp, 16
                        mov              r11, 28
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_100_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_lit_integer_α
.Llit_name_α_100_0:     .quad            .Llit_name_α_100_0_s
.Llit_name_α_100_0_s:   .string          "INPUT"
                        .size            n50_lit_name_bx, .-n50_lit_name_bx
                        .type            n51_lit_integer_bx, @function
n51_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:      sub              rsp, 16
                        mov              r11, 29
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_101_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_lit_string_α
n51_lit_integer_β:      mov              r11, 29
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n49_statement_begin_β
.Llit_integer_α_101_0:  .quad            9
                        .size            n51_lit_integer_bx, .-n51_lit_integer_bx
                        .type            n52_lit_string_bx, @function
n52_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       sub              rsp, 16
                        mov              r11, 30
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_102_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_call_α
n52_lit_string_β:       mov              r11, 30
                        add              rsp, 16;                             jmp   n51_lit_integer_β
.Llit_string_α_102_0:   .quad            .Llit_string_α_102_0_s
.Llit_string_α_102_0_s: .string          "[-f0 -r4194304]"
                        .size            n52_lit_string_bx, .-n52_lit_string_bx
                        .type            n53_call_bx, @function
n53_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_call_α:             sub              rsp, 16
                        mov              r11, 31
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
.Lcall_α_bynamefnzd31:  .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd31]
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
                        cmp              al, 104;                             jne   .Lcall_α_103_240
                        add              rsp, 16;                             jmp   n52_lit_string_β
.Lcall_α_103_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n54_statement_end_α
n53_call_β:             mov              r11, 31
                        add              rsp, 16;                             jmp   n52_lit_string_β
                        .size            n53_call_bx, .-n53_call_bx
                        .type            n54_statement_end_bx, @function
n54_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_end_α:    mov              r11, 32
                        mov              r10, 3
                        add              rsp, 64;                             jmp   n55_statement_begin_α
                        .size            n54_statement_end_bx, .-n54_statement_end_bx
                        .type            n55_statement_begin_bx, @function
n55_statement_begin_bx:
#=======================================================================================================================
#         src     =   INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n55_statement_begin_α:  mov              r11, 33
                        mov              r10, 4;                              jmp   n56_var_α
n55_statement_begin_β:  mov              r11, 33;                             jmp   n74_statement_begin_α
                        .size            n55_statement_begin_bx, .-n55_statement_begin_bx
                        .type            n56_var_bx, @function
n56_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              sub              rsp, 16
                        mov              r11, 34
                        mov              rdi, qword ptr [rip + .Lvar_α_108_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_108_240
                        add              rsp, 16;                             jmp   n55_statement_begin_β
.Lvar_α_108_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n57_assign_α
.Lvar_α_108_0:          .quad            .Lvar_α_108_0_s
.Lvar_α_108_0_s:        .string          "INPUT"
                        .size            n56_var_bx, .-n56_var_bx
                        .type            n57_assign_bx, @function
n57_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:           mov              r11, 35
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
                        mov              rdi, qword ptr [rip + .Lassign_α_109_0]
                        .section         .rodata
.Lassign_α_109_1_s:     .string          "snobol4/claws5/claws5-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_109_1_s]
                        mov              r8, 14
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
                        pop              rax;                                 jmp   n58_statement_end_α
.Lassign_α_109_0:       .quad            .Lassign_α_109_0_s
.Lassign_α_109_0_s:     .string          "src"
                        .size            n57_assign_bx, .-n57_assign_bx
                        .type            n58_statement_end_bx, @function
n58_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:    mov              r11, 36
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n59_statement_begin_α
                        .size            n58_statement_end_bx, .-n58_statement_end_bx
                        .type            n59_statement_begin_bx, @function
n59_statement_begin_bx:
#=======================================================================================================================
#         src     ?   claws  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n59_statement_begin_α:  mov              r11, 37
                        mov              r10, 5;                              jmp   n60_var_α
n59_statement_begin_β:  mov              r11, 37;                             jmp   n74_statement_begin_α
                        .size            n59_statement_begin_bx, .-n59_statement_begin_bx
                        .type            n60_var_bx, @function
n60_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              sub              rsp, 16
                        mov              r11, 38
                        mov              rax, qword ptr [r9 + 16]             # src
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n61_var_α
                        .size            n60_var_bx, .-n60_var_bx
                        .type            n61_var_bx, @function
n61_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              sub              rsp, 16
                        mov              r11, 39
                        mov              rax, qword ptr [r9 + 0]              # claws
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n62_assign_α
n61_var_β:              mov              r11, 39
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n74_statement_begin_α
                        .size            n61_var_bx, .-n61_var_bx
                        .type            n62_assign_bx, @function
n62_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:           mov              r11, 40
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
                        mov              rdi, qword ptr [rip + .Lassign_α_116_0]
                        .section         .rodata
.Lassign_α_116_1_s:     .string          "snobol4/claws5/claws5-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_116_1_s]
                        mov              r8, 15
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
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_116_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n63_match_begin_α
n62_assign_β:           mov              r11, 40;                             jmp   n61_var_β
.Lassign_α_116_0:       .quad            .Lassign_α_116_0_s
.Lassign_α_116_0_s:     .string          "PATV$0"
                        .size            n62_assign_bx, .-n62_assign_bx
                        .type            n63_match_begin_bx, @function
n63_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_match_begin_α:      mov              r11, 41
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
.Lmatch_begin_α_118_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_118_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n64_match_defer_α
n63_match_begin_β:      mov              r11, 41
.Lmatch_begin_α_118_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_118_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_118_1
                                                                              jmp   .Lmatch_begin_α_118_0
.Lmatch_begin_β_118_1:
.Lmatch_begin_γ_63_af:  mov              r11, 41
.Lmatch_begin_ω_63_af:  mov              r11, 41
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
                        pop              rbp;                                 jmp   n62_assign_β
                        .size            n63_match_begin_bx, .-n63_match_begin_bx
                        .type            n64_match_defer_bx, @function
n64_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_match_defer_α:      mov              r11, 42
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S0]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_119_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_119_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_119_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_119_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_119_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_119_23
                                                                              jmp   .Lmatch_defer_α_119_22
.Lmatch_defer_α_119_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_119_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_119_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_119_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_119_0
.Lmatch_defer_α_119_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_119_0
.Lmatch_defer_α_119_22: push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
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
.Lmatch_defer_α_119_23: test             rax, rax;                            jz    .Lmatch_defer_α_119_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_119_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_119_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_119_4:                                                        jmp   n65_match_end_α
.Lmatch_defer_α_119_5:                                                        jmp   n63_match_begin_β
.Lmatch_defer_α_119_0:  mov              eax, edx
                        test             eax, eax;                            js    n63_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_119_6]
                        push             rcx
                        push             rax;                                 jmp   n65_match_end_α
.Lmatch_defer_α_119_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n63_match_begin_β
n64_match_defer_β:      mov              r11, 42
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_119_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_119_12
                                                                              jmp   rax
.Lmatch_defer_β_119_12:                                                       jmp   qword ptr [rsp]
                        .size            n64_match_defer_bx, .-n64_match_defer_bx
                        .type            n65_match_end_bx, @function
n65_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_match_end_α:        mov              r11, 43
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
                        test             rax, rax;                            je    .Lmatch_end_α_121_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_63_af
.Lmatch_end_α_121_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n66_statement_end_α
                        .size            n65_match_end_bx, .-n65_match_end_bx
                        .type            n66_statement_end_bx, @function
n66_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:    mov              r11, 44
                        mov              r10, 5
                        add              rsp, 32;                             jmp   n67_statement_begin_α
                        .size            n66_statement_end_bx, .-n66_statement_end_bx
                        .type            n67_statement_begin_bx, @function
n67_statement_begin_bx:
#=======================================================================================================================
#         OUTPUT  =   'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n67_statement_begin_α:  mov              r11, 45
                        mov              r10, 6;                              jmp   n68_lit_string_α
n67_statement_begin_β:  mov              r11, 45;                             jmp   main_γ
                        .size            n67_statement_begin_bx, .-n67_statement_begin_bx
                        .type            n68_lit_string_bx, @function
n68_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       sub              rsp, 16
                        mov              r11, 46
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_126_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_var_α
.Llit_string_α_126_0:   .quad            .Llit_string_α_126_0_s
.Llit_string_α_126_0_s: .string          "matched bytes="
                        .size            n68_lit_string_bx, .-n68_lit_string_bx
                        .type            n69_var_bx, @function
n69_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              sub              rsp, 16
                        mov              r11, 47
                        mov              rax, qword ptr [r9 + 16]             # src
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_call_α
n69_var_β:              mov              r11, 47
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n67_statement_begin_β
                        .size            n69_var_bx, .-n69_var_bx
                        .type            n70_call_bx, @function
n70_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_call_α:             sub              rsp, 16
                        mov              r11, 48
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd129:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd129]
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
                        cmp              al, 104;                             jne   .Lcall_α_128_240
                        add              rsp, 16;                             jmp   n69_var_β
.Lcall_α_128_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_binop_α
n70_call_β:             mov              r11, 48
                        add              rsp, 16;                             jmp   n69_var_β
                        .size            n70_call_bx, .-n70_call_bx
                        .type            n71_binop_bx, @function
n71_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_binop_α:            sub              rsp, 16
                        mov              r11, 49
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n72_assign_α
                        .size            n71_binop_bx, .-n71_binop_bx
                        .type            n72_assign_bx, @function
n72_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:           mov              r11, 50
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
                        mov              rdi, qword ptr [rip + .Lassign_α_131_0]
                        .section         .rodata
.Lassign_α_131_1_s:     .string          "snobol4/claws5/claws5-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_131_1_s]
                        mov              r8, 16
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
                        mov              rdi, qword ptr [rip + .Lassign_α_131_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n73_statement_end_α
.Lassign_α_131_0:       .quad            .Lassign_α_131_0_s
.Lassign_α_131_0_s:     .string          "OUTPUT"
                        .size            n72_assign_bx, .-n72_assign_bx
                        .type            n73_statement_end_bx, @function
n73_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_end_α:    mov              r11, 51
                        mov              r10, 6
                        add              rsp, 64;                             jmp   main_γ
                        .size            n73_statement_end_bx, .-n73_statement_end_bx
                        .type            n74_statement_begin_bx, @function
n74_statement_begin_bx:
#=======================================================================================================================
# error   OUTPUT  =   'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n74_statement_begin_α:  mov              r11, 52
                        mov              r10, 7;                              jmp   n75_lit_string_α
n74_statement_begin_β:  mov              r11, 52;                             jmp   main_γ
                        .size            n74_statement_begin_bx, .-n74_statement_begin_bx
                        .type            n75_lit_string_bx, @function
n75_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:       sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_136_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_assign_α
.Llit_string_α_136_0:   .quad            .Llit_string_α_136_0_s
.Llit_string_α_136_0_s: .string          "Pattern match failed"
                        .size            n75_lit_string_bx, .-n75_lit_string_bx
                        .type            n76_assign_bx, @function
n76_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:           mov              r11, 54
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
                        mov              rdi, qword ptr [rip + .Lassign_α_137_0]
                        .section         .rodata
.Lassign_α_137_1_s:     .string          "snobol4/claws5/claws5-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_137_1_s]
                        mov              r8, 17
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
                        mov              rdi, qword ptr [rip + .Lassign_α_137_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n77_statement_end_α
.Lassign_α_137_0:       .quad            .Lassign_α_137_0_s
.Lassign_α_137_0_s:     .string          "OUTPUT"
                        .size            n76_assign_bx, .-n76_assign_bx
                        .type            n77_statement_end_bx, @function
n77_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_end_α:    mov              r11, 55
                        mov              r10, 7
                        add              rsp, 16;                             jmp   main_γ
                        .size            n77_statement_end_bx, .-n77_statement_end_bx
                        .type            n78_goto_bx, @function
n78_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_goto_α:             mov              r11, 56;                             jmp   n74_statement_begin_α
n78_goto_β:             mov              r11, 56;                             jmp   main_ω
                        .size            n78_goto_bx, .-n78_goto_bx
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
                        .long            256
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
.S0:                    .string          "PATV$0"
                        .text
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
