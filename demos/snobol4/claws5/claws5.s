                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/claws5/claws5.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 296
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
.Lmatch_span_α_28_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_28_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lmatch_span_α_28_10
                        cmp              esi, 10;                             je    .Lmatch_span_α_28_10
                                                                              jmp   .Lmatch_span_α_28_1
.Lmatch_span_α_28_10:   add              ecx, 1;                              jmp   .Lmatch_span_α_28_0
.Lmatch_span_α_28_1:    cmp              ecx, r14d;                           jg    .Lmatch_span_α_28_240
                        add              rsp, 16;                             jmp   .Lmatch_arbno_ω_1_af
.Lmatch_span_α_28_240:  mov              dword ptr [rbp + -76], r14d
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
                        lea              rax, [rip + .Lmatch_alternate_α_30_21]
                        mov              qword ptr [rbp + -112], rax;         jmp   n17_match_assign_save_α
.Lmatch_alternate_α_30_21:
                        lea              rax, [rip + .Lmatch_alternate_α_30_19]
                        mov              qword ptr [rbp + -112], rax;         jmp   n6_match_assign_save_α
.Lmatch_alternate_γ_5_s0:
                        mov              r11, 6
                        lea              rax, [rip + .Lmatch_alternate_α_30_40]
                        mov              qword ptr [rbp + -120], rax;         jmp   .Lmatch_alternate_γ_5_as
.Lmatch_alternate_γ_5_s1:
                        mov              r11, 6
                        lea              rax, [rip + .Lmatch_alternate_α_30_41]
                        mov              qword ptr [rbp + -120], rax;         jmp   .Lmatch_alternate_γ_5_as
.Lmatch_alternate_α_30_40:
                                                                              jmp   n20_match_lit_β
.Lmatch_alternate_α_30_41:
                                                                              jmp   n16_match_assign_cond_β
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
.Lmatch_alternate_α_30_19:
                                                                              jmp   .Lmatch_fence1_ω_3_af
                        .size            n5_match_alternate_bx, .-n5_match_alternate_bx
                        .type            n6_match_assign_save_bx, @function
n6_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_match_assign_save_α: mov              r11, 7
                        mov              dword ptr [rbp + -192], r14d;        jmp   n7_match_notany_α
n6_match_assign_save_β: mov              r11, 7;                              jmp   .Lmatch_alternate_ω_5_af
                        .size            n6_match_assign_save_bx, .-n6_match_assign_save_bx
                        .type            n7_match_notany_bx, @function
n7_match_notany_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_match_notany_α:      mov              r11, 8
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n6_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    n6_match_assign_save_β
                        add              r14d, 1;                             jmp   n8_match_break_α
n7_match_notany_β:      mov              r11, 8
                        sub              r14d, 1;                             jmp   n6_match_assign_save_β
                        .size            n7_match_notany_bx, .-n7_match_notany_bx
                        .type            n8_match_break_bx, @function
n8_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_match_break_α:       mov              r11, 9
                        movsxd           rcx, r14d
.Lmatch_break_α_35_0:   cmp              ecx, r15d;                           jge   n7_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lmatch_break_α_35_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_35_0
.Lmatch_break_α_35_1:   mov              dword ptr [rbp + -224], r14d
                        mov              r14d, ecx;                           jmp   n9_match_assign_cond_α
n8_match_break_β:       mov              r11, 9
                        mov              r14d, dword ptr [rbp + -224];        jmp   n7_match_notany_β
                        .size            n8_match_break_bx, .-n8_match_break_bx
                        .type            n9_match_assign_cond_bx, @function
n9_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_match_assign_cond_α: mov              r11, 10
                        mov              eax, dword ptr [rbp + -192]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n10_match_lit_α
n9_match_assign_cond_β: mov              r11, 10
                        sub              r12, 24;                             jmp   n8_match_break_β
                        .size            n9_match_assign_cond_bx, .-n9_match_assign_cond_bx
                        .type            n10_match_lit_bx, @function
n10_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_match_lit_α:        mov              r11, 11
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n9_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95;                             jne   n9_match_assign_cond_β
                        add              r14d, 1;                             jmp   n11_match_assign_save_α
n10_match_lit_β:        mov              r11, 11
                        sub              r14d, 1;                             jmp   n9_match_assign_cond_β
                        .size            n10_match_lit_bx, .-n10_match_lit_bx
                        .type            n11_match_assign_save_bx, @function
n11_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_match_assign_save_α:
                        mov              r11, 12
                        mov              dword ptr [rbp + -240], r14d;        jmp   n12_match_assign_save_α
n11_match_assign_save_β:
                        mov              r11, 12;                             jmp   n10_match_lit_β
                        .size            n11_match_assign_save_bx, .-n11_match_assign_save_bx
                        .type            n12_match_assign_save_bx, @function
n12_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_match_assign_save_α:
                        mov              r11, 13
                        mov              dword ptr [rbp + -256], r14d;        jmp   n13_match_any_α
n12_match_assign_save_β:
                        mov              r11, 13;                             jmp   n11_match_assign_save_β
                        .size            n12_match_assign_save_bx, .-n12_match_assign_save_bx
                        .type            n13_match_any_bx, @function
n13_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_match_any_α:        mov              r11, 14
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n12_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n12_match_assign_save_β
                        add              r14d, 1;                             jmp   n14_match_span_α
n13_match_any_β:        mov              r11, 14
                        sub              r14d, 1;                             jmp   n12_match_assign_save_β
                        .size            n13_match_any_bx, .-n13_match_any_bx
                        .type            n14_match_span_bx, @function
n14_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_match_span_α:       mov              r11, 15
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lmatch_span_α_47_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_47_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_47_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_47_0
.Lmatch_span_α_47_1:    cmp              ecx, r14d;                           jle   n13_match_any_β
                        mov              dword ptr [rbp + -284], r14d
                        mov              r14d, ecx;                           jmp   n15_match_assign_cond_α
n14_match_span_β:       mov              r11, 15
                        mov              r14d, dword ptr [rbp + -284];        jmp   n13_match_any_β
                        .size            n14_match_span_bx, .-n14_match_span_bx
                        .type            n15_match_assign_cond_bx, @function
n15_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_match_assign_cond_α:
                        mov              r11, 16
                        mov              eax, dword ptr [rbp + -256]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n16_match_assign_cond_α
n15_match_assign_cond_β:
                        mov              r11, 16
                        sub              r12, 24;                             jmp   n14_match_span_β
                        .size            n15_match_assign_cond_bx, .-n15_match_assign_cond_bx
                        .type            n16_match_assign_cond_bx, @function
n16_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_match_assign_cond_α:
                        mov              r11, 17
                        mov              eax, dword ptr [rbp + -240]
                        lea              rcx, [rip + .S2]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .Lmatch_alternate_γ_5_s1
n16_match_assign_cond_β:
                        mov              r11, 17
                        sub              r12, 24;                             jmp   n15_match_assign_cond_β
                        .size            n16_match_assign_cond_bx, .-n16_match_assign_cond_bx
                        .type            n17_match_assign_save_bx, @function
n17_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_match_assign_save_α:
                        mov              r11, 18
                        mov              dword ptr [rbp + -144], r14d;        jmp   n18_match_span_α
n17_match_assign_save_β:
                        mov              r11, 18;                             jmp   .Lmatch_alternate_ω_5_af
                        .size            n17_match_assign_save_bx, .-n17_match_assign_save_bx
                        .type            n18_match_span_bx, @function
n18_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_match_span_α:       mov              r11, 19
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lmatch_span_α_55_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_55_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_55_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_55_0
.Lmatch_span_α_55_1:    cmp              ecx, r14d;                           jle   n17_match_assign_save_β
                        mov              dword ptr [rbp + -172], r14d
                        mov              r14d, ecx;                           jmp   n19_match_assign_cond_α
n18_match_span_β:       mov              r11, 19
                        mov              r14d, dword ptr [rbp + -172];        jmp   n17_match_assign_save_β
                        .size            n18_match_span_bx, .-n18_match_span_bx
                        .type            n19_match_assign_cond_bx, @function
n19_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_match_assign_cond_α:
                        mov              r11, 20
                        mov              eax, dword ptr [rbp + -144]
                        lea              rcx, [rip + .S3]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n20_match_lit_α
n19_match_assign_cond_β:
                        mov              r11, 20
                        sub              r12, 24;                             jmp   n18_match_span_β
                        .size            n19_match_assign_cond_bx, .-n19_match_assign_cond_bx
                        .type            n20_match_lit_bx, @function
n20_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_match_lit_α:        mov              r11, 21
                        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d;                           jg    n19_match_assign_cond_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax;                            jne   n19_match_assign_cond_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85;                             jne   n19_match_assign_cond_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78;                             jne   n19_match_assign_cond_β
                        add              r14d, 10;                            jmp   .Lmatch_alternate_γ_5_s0
n20_match_lit_β:        mov              r11, 21
                        sub              r14d, 10;                            jmp   n19_match_assign_cond_β
                        .size            n20_match_lit_bx, .-n20_match_lit_bx
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
                        mov              edi, 8
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 8
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
.Lgvan0:                .string          "token"
.Lgvan1:                .string          "num"
.Lgvan2:                .string          "mem"
.Lgvan3:                .string          "wrd"
.Lgvan4:                .string          "tag"
.Lgvan5:                .string          "dummy"
.Lgvan6:                .string          "claws"
.Lgvan7:                .string          "src"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "token"
.Llbln1:                .string          "token_end"
.Llbln2:                .string          "error"
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
                        .type            n60_lit_integer_bx, @function
n60_lit_integer_bx:
#=======================================================================================================================
#         DEFINE('token()')  :(token_end)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n60_lit_integer_α:      sub              rsp, 16
                        mov              r11, 22
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_206_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_lit_integer_α
.Llit_integer_α_206_0:  .quad            18446744073709551615
                        .size            n60_lit_integer_bx, .-n60_lit_integer_bx
                        .type            n61_lit_integer_bx, @function
n61_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:      sub              rsp, 16
                        mov              r11, 23
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_207_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n62_lit_string_α
.Llit_integer_α_207_0:  .quad            0
                        .size            n61_lit_integer_bx, .-n61_lit_integer_bx
                        .type            n62_lit_string_bx, @function
n62_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 25
                        mov              rax, qword ptr [rip + .Llit_string_α_208_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_call_α
.Llit_string_α_208_0:   .quad            .Llit_string_α_208_0_s
.Llit_string_α_208_0_s: .string          "snobol4/claws5/claws5.sno"
                        .size            n62_lit_string_bx, .-n62_lit_string_bx
                        .type            n63_call_bx, @function
n63_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_call_α:             sub              rsp, 16
                        mov              r11, 25
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
.Lcall_α_rkfnzd210:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd210]
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
                        cmp              al, 104;                             jne   .Lcall_α_209_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n64_statement_begin_α
.Lcall_α_209_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n64_statement_begin_α
n63_call_β:             mov              r11, 25
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n64_statement_begin_α
                        .size            n63_call_bx, .-n63_call_bx
                        .type            n64_statement_begin_bx, @function
n64_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_begin_α:  mov              r11, 26
                        mov              r10, 1;                              jmp   n65_define_α
n64_statement_begin_β:  mov              r11, 26
                        add              rsp, 64;                             jmp   n160_statement_begin_α
                        .size            n64_statement_begin_bx, .-n64_statement_begin_bx
                        .type            n65_define_bx, @function
n65_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_define_α:           mov              r11, 27
                        mov              rdi, qword ptr [rip + .Ldefine_α_214_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_214_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + token_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_214_0]
                        lea              rsi, [rip + token_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__token]
                        mov              rcx, qword ptr [rip + body_cell$token@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n66_statement_end_α
n65_define_β:           mov              r11, 27;                             jmp   n64_statement_begin_β
.Ldefine_α_214_0:       .quad            .Ldefine_α_214_0_s
.Ldefine_α_214_0_s:     .string          "token"
.Ldefine_α_214_1:       .quad            .Ldefine_α_214_1_s
.Ldefine_α_214_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_215_245
#-----------------------------------------------------------------------------------------------------------------------
token_α:                sub              rsp, 48
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 0]              # token
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        push             rcx
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
                        cmp              rax, 0;                              jg    .Ldefine_α_215_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_215_230
.Ldefine_α_215_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_215_232]
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
.Ldefine_α_215_230:                                                           jmp   .Ldefine_α_215_231
.Ldefine_α_215_232:     .quad            .Ldefine_α_215_232_s
.Ldefine_α_215_232_s:   .string          "token"
.Ldefine_α_215_231:     lea              rcx, [rip + token_γ]
                        lea              rax, [rip + token_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$token:        .quad            LBL__token
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$token@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
token_γ:                mov              rdi, qword ptr [r9 + 0]
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_215_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_215_235
.Ldefine_α_215_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_215_237]
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
.Ldefine_α_215_235:                                                           jmp   .Ldefine_α_215_236
.Ldefine_α_215_237:     .quad            .Ldefine_α_215_237_s
.Ldefine_α_215_237_s:   .string          "token"
.Ldefine_α_215_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
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
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
token_ω:                mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_215_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_215_249
.Ldefine_α_215_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_215_237]
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
.Ldefine_α_215_249:     push             rcx
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
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_215_245:
                        .size            n65_define_bx, .-n65_define_bx
                        .type            n66_statement_end_bx, @function
n66_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:    mov              r11, 28
                        mov              r10, 1
                        add              rsp, 64;                             jmp   n160_statement_begin_α
                        .size            n66_statement_end_bx, .-n66_statement_end_bx
                        .type            n67_statement_begin_bx, @function
n67_statement_begin_bx:
#=======================================================================================================================
# token   num = +num
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
LBL__token:             mov              r11, 29
                        mov              r10, 2;                              jmp   n68_var_α
n67_statement_begin_β:  mov              r11, 29;                             jmp   n72_statement_begin_α
                        .size            n67_statement_begin_bx, .-n67_statement_begin_bx
                        .type            n68_var_bx, @function
n68_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              sub              rsp, 16
                        mov              r11, 30
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n69_unop_α
                        .size            n68_var_bx, .-n68_var_bx
                        .type            n69_unop_bx, @function
n69_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_unop_α:             sub              rsp, 16
                        mov              r11, 31
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_pos@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_assign_α
                        .size            n69_unop_bx, .-n69_unop_bx
                        .type            n70_assign_bx, @function
n70_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:           mov              r11, 32
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # num
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
                        mov              rdi, qword ptr [rip + .Lassign_α_222_0]
                        .section         .rodata
.Lassign_α_222_1_s:     .string          "snobol4/claws5/claws5.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_222_1_s]
                        mov              r8, 3
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
                        pop              rax;                                 jmp   n71_statement_end_α
.Lassign_α_222_0:       .quad            .Lassign_α_222_0_s
.Lassign_α_222_0_s:     .string          "num"
                        .size            n70_assign_bx, .-n70_assign_bx
                        .type            n71_statement_end_bx, @function
n71_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_end_α:    mov              r11, 33
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n72_statement_begin_α
                        .size            n71_statement_end_bx, .-n71_statement_end_bx
                        .type            n72_statement_begin_bx, @function
n72_statement_begin_bx:
#=======================================================================================================================
#         mem = IDENT(mem) TABLE()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n72_statement_begin_α:  mov              r11, 34
                        mov              r10, 3;                              jmp   n73_var_α
n72_statement_begin_β:  mov              r11, 34;                             jmp   n79_statement_begin_α
                        .size            n72_statement_begin_bx, .-n72_statement_begin_bx
                        .type            n73_var_bx, @function
n73_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              sub              rsp, 16
                        mov              r11, 35
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_lit_string_α
                        .size            n73_var_bx, .-n73_var_bx
                        .type            n74_lit_string_bx, @function
n74_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       sub              rsp, 16
                        mov              r11, 36
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_228_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n75_ident_α
n74_lit_string_β:       mov              r11, 36
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n72_statement_begin_β
.Llit_string_α_228_0:   .quad            .Llit_string_α_228_0_s
.Llit_string_α_228_0_s: .string          ""
                        .size            n74_lit_string_bx, .-n74_lit_string_bx
                        .type            n75_ident_bx, @function
n75_ident_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_ident_α:            sub              rsp, 16
                        mov              r11, 37
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jne   .Lident_α_230_240
                        add              rsp, 16;                             jmp   n74_lit_string_β
.Lident_α_230_240:                                                            jmp   n76_call_α
n75_ident_β:            mov              r11, 37
                        add              rsp, 16;                             jmp   n74_lit_string_β
                        .size            n75_ident_bx, .-n75_ident_bx
                        .type            n76_call_bx, @function
n76_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_call_α:             sub              rsp, 16
                        mov              r11, 38
                        .section         .rodata
.Lcall_α_rkfnzd232:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd232]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 327748
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lcall_α_231_240
                        add              rsp, 16;                             jmp   n75_ident_β
.Lcall_α_231_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_assign_α
n76_call_β:             mov              r11, 38
                        add              rsp, 16;                             jmp   n75_ident_β
                        .size            n76_call_bx, .-n76_call_bx
                        .type            n77_assign_bx, @function
n77_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_assign_α:           mov              r11, 39
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # mem
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
                        mov              rdi, qword ptr [rip + .Lassign_α_233_0]
                        .section         .rodata
.Lassign_α_233_1_s:     .string          "snobol4/claws5/claws5.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_233_1_s]
                        mov              r8, 4
                        mov              r9, 3
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
                        pop              rax;                                 jmp   n78_statement_end_α
.Lassign_α_233_0:       .quad            .Lassign_α_233_0_s
.Lassign_α_233_0_s:     .string          "mem"
                        .size            n77_assign_bx, .-n77_assign_bx
                        .type            n78_statement_end_bx, @function
n78_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_end_α:    mov              r11, 40
                        mov              r10, 3
                        add              rsp, 64;                             jmp   n79_statement_begin_α
                        .size            n78_statement_end_bx, .-n78_statement_end_bx
                        .type            n79_statement_begin_bx, @function
n79_statement_begin_bx:
#=======================================================================================================================
#         mem[num] = IDENT(mem[num]) TABLE()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n79_statement_begin_α:  mov              r11, 41
                        mov              r10, 4;                              jmp   n80_var_α
n79_statement_begin_β:  mov              r11, 41;                             jmp   n91_statement_begin_α
                        .size            n79_statement_begin_bx, .-n79_statement_begin_bx
                        .type            n80_var_bx, @function
n80_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:              sub              rsp, 16
                        mov              r11, 42
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n81_var_α
                        .size            n80_var_bx, .-n80_var_bx
                        .type            n81_var_bx, @function
n81_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              sub              rsp, 16
                        mov              r11, 43
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n82_var_α
n81_var_β:              mov              r11, 43
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n79_statement_begin_β
                        .size            n81_var_bx, .-n81_var_bx
                        .type            n82_var_bx, @function
n82_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              sub              rsp, 16
                        mov              r11, 44
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n83_var_α
n82_var_β:              mov              r11, 44
                        add              rsp, 16;                             jmp   n81_var_β
                        .size            n82_var_bx, .-n82_var_bx
                        .type            n83_var_bx, @function
n83_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              sub              rsp, 16
                        mov              r11, 45
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n84_subscript_α
n83_var_β:              mov              r11, 45
                        add              rsp, 16;                             jmp   n82_var_β
                        .size            n83_var_bx, .-n83_var_bx
                        .type            n84_subscript_bx, @function
n84_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_subscript_α:        sub              rsp, 16
                        mov              r11, 46
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_242_240
                        add              rsp, 16;                             jmp   n83_var_β
.Lsubscript_α_242_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n85_deref_α
n84_subscript_β:        mov              r11, 46
                        add              rsp, 16;                             jmp   n83_var_β
                        .size            n84_subscript_bx, .-n84_subscript_bx
                        .type            n85_deref_bx, @function
n85_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_deref_α:            sub              rsp, 16
                        mov              r11, 47
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_243_240
                        add              rsp, 16;                             jmp   n84_subscript_β
.Lderef_α_243_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n86_lit_string_α
n85_deref_β:            mov              r11, 47
                        add              rsp, 16;                             jmp   n84_subscript_β
                        .size            n85_deref_bx, .-n85_deref_bx
                        .type            n86_lit_string_bx, @function
n86_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       sub              rsp, 16
                        mov              r11, 48
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_244_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_ident_α
n86_lit_string_β:       mov              r11, 48
                        add              rsp, 16;                             jmp   n85_deref_β
.Llit_string_α_244_0:   .quad            .Llit_string_α_244_0_s
.Llit_string_α_244_0_s: .string          ""
                        .size            n86_lit_string_bx, .-n86_lit_string_bx
                        .type            n87_ident_bx, @function
n87_ident_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_ident_α:            sub              rsp, 16
                        mov              r11, 49
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jne   .Lident_α_246_240
                        add              rsp, 16;                             jmp   n86_lit_string_β
.Lident_α_246_240:                                                            jmp   n88_call_α
n87_ident_β:            mov              r11, 49
                        add              rsp, 16;                             jmp   n86_lit_string_β
                        .size            n87_ident_bx, .-n87_ident_bx
                        .type            n88_call_bx, @function
n88_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_call_α:             sub              rsp, 16
                        mov              r11, 50
                        .section         .rodata
.Lcall_α_rkfnzd248:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd248]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 327748
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lcall_α_247_240
                        add              rsp, 16;                             jmp   n87_ident_β
.Lcall_α_247_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_assign_var_α
n88_call_β:             mov              r11, 50
                        add              rsp, 16;                             jmp   n87_ident_β
                        .size            n88_call_bx, .-n88_call_bx
                        .type            n89_assign_var_bx, @function
n89_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_var_α:       sub              rsp, 16
                        mov              r11, 51
                        mov              rdi, qword ptr [rsp + 144]           # var
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        cmp              dil, 24;                             jne   .Lassign_var_α_250_0
                        test             rsi, rsi;                            je    .Lassign_var_α_250_0
                        mov              r8, qword ptr [rsp + 16]             # call
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_250_238
                        add              rsp, 32;                             jmp   n87_ident_β
.Lassign_var_α_250_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n90_statement_end_α
.Lassign_var_α_250_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_250_239
                        add              rsp, 32;                             jmp   n87_ident_β
.Lassign_var_α_250_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_250_240
                        add              rsp, 32;                             jmp   n87_ident_β
.Lassign_var_α_250_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n90_statement_end_α
                        .size            n89_assign_var_bx, .-n89_assign_var_bx
                        .type            n90_statement_end_bx, @function
n90_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_end_α:    mov              r11, 52
                        mov              r10, 4
                        add              rsp, 160;                            jmp   n91_statement_begin_α
                        .size            n90_statement_end_bx, .-n90_statement_end_bx
                        .type            n91_statement_begin_bx, @function
n91_statement_begin_bx:
#=======================================================================================================================
#         mem[num][wrd] = IDENT(mem[num][wrd]) TABLE()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n91_statement_begin_α:  mov              r11, 53
                        mov              r10, 5;                              jmp   n92_var_α
n91_statement_begin_β:  mov              r11, 53;                             jmp   n109_statement_begin_α
                        .size            n91_statement_begin_bx, .-n91_statement_begin_bx
                        .type            n92_var_bx, @function
n92_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              sub              rsp, 16
                        mov              r11, 54
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n93_var_α
                        .size            n92_var_bx, .-n92_var_bx
                        .type            n93_var_bx, @function
n93_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:              sub              rsp, 16
                        mov              r11, 55
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n94_subscript_α
n93_var_β:              mov              r11, 55
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n91_statement_begin_β
                        .size            n93_var_bx, .-n93_var_bx
                        .type            n94_subscript_bx, @function
n94_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_subscript_α:        sub              rsp, 16
                        mov              r11, 56
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_257_240
                        add              rsp, 16;                             jmp   n93_var_β
.Lsubscript_α_257_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n95_deref_α
n94_subscript_β:        mov              r11, 56
                        add              rsp, 16;                             jmp   n93_var_β
                        .size            n94_subscript_bx, .-n94_subscript_bx
                        .type            n95_deref_bx, @function
n95_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_deref_α:            sub              rsp, 16
                        mov              r11, 57
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_258_240
                        add              rsp, 16;                             jmp   n94_subscript_β
.Lderef_α_258_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_var_α
n95_deref_β:            mov              r11, 57
                        add              rsp, 16;                             jmp   n94_subscript_β
                        .size            n95_deref_bx, .-n95_deref_bx
                        .type            n96_var_bx, @function
n96_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              sub              rsp, 16
                        mov              r11, 58
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_var_α
n96_var_β:              mov              r11, 58
                        add              rsp, 16;                             jmp   n95_deref_β
                        .size            n96_var_bx, .-n96_var_bx
                        .type            n97_var_bx, @function
n97_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              sub              rsp, 16
                        mov              r11, 59
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_var_α
n97_var_β:              mov              r11, 59
                        add              rsp, 16;                             jmp   n96_var_β
                        .size            n97_var_bx, .-n97_var_bx
                        .type            n98_var_bx, @function
n98_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:              sub              rsp, 16
                        mov              r11, 60
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n99_subscript_α
n98_var_β:              mov              r11, 60
                        add              rsp, 16;                             jmp   n97_var_β
                        .size            n98_var_bx, .-n98_var_bx
                        .type            n99_subscript_bx, @function
n99_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_subscript_α:        sub              rsp, 16
                        mov              r11, 61
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_262_240
                        add              rsp, 16;                             jmp   n98_var_β
.Lsubscript_α_262_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_deref_α
n99_subscript_β:        mov              r11, 61
                        add              rsp, 16;                             jmp   n98_var_β
                        .size            n99_subscript_bx, .-n99_subscript_bx
                        .type            n100_deref_bx, @function
n100_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_deref_α:           sub              rsp, 16
                        mov              r11, 62
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_263_240
                        add              rsp, 16;                             jmp   n99_subscript_β
.Lderef_α_263_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_var_α
n100_deref_β:           mov              r11, 62
                        add              rsp, 16;                             jmp   n99_subscript_β
                        .size            n100_deref_bx, .-n100_deref_bx
                        .type            n101_var_bx, @function
n101_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             sub              rsp, 16
                        mov              r11, 63
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_subscript_α
n101_var_β:             mov              r11, 63
                        add              rsp, 16;                             jmp   n100_deref_β
                        .size            n101_var_bx, .-n101_var_bx
                        .type            n102_subscript_bx, @function
n102_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_subscript_α:       sub              rsp, 16
                        mov              r11, 64
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_265_240
                        add              rsp, 16;                             jmp   n101_var_β
.Lsubscript_α_265_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_deref_α
n102_subscript_β:       mov              r11, 64
                        add              rsp, 16;                             jmp   n101_var_β
                        .size            n102_subscript_bx, .-n102_subscript_bx
                        .type            n103_deref_bx, @function
n103_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_deref_α:           sub              rsp, 16
                        mov              r11, 65
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_266_240
                        add              rsp, 16;                             jmp   n102_subscript_β
.Lderef_α_266_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n104_lit_string_α
n103_deref_β:           mov              r11, 65
                        add              rsp, 16;                             jmp   n102_subscript_β
                        .size            n103_deref_bx, .-n103_deref_bx
                        .type            n104_lit_string_bx, @function
n104_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      sub              rsp, 16
                        mov              r11, 66
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_267_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n105_ident_α
n104_lit_string_β:      mov              r11, 66
                        add              rsp, 16;                             jmp   n103_deref_β
.Llit_string_α_267_0:   .quad            .Llit_string_α_267_0_s
.Llit_string_α_267_0_s: .string          ""
                        .size            n104_lit_string_bx, .-n104_lit_string_bx
                        .type            n105_ident_bx, @function
n105_ident_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_ident_α:           sub              rsp, 16
                        mov              r11, 67
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jne   .Lident_α_269_240
                        add              rsp, 16;                             jmp   n104_lit_string_β
.Lident_α_269_240:                                                            jmp   n106_call_α
n105_ident_β:           mov              r11, 67
                        add              rsp, 16;                             jmp   n104_lit_string_β
                        .size            n105_ident_bx, .-n105_ident_bx
                        .type            n106_call_bx, @function
n106_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_call_α:            sub              rsp, 16
                        mov              r11, 68
                        .section         .rodata
.Lcall_α_rkfnzd271:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd271]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 327748
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lcall_α_270_240
                        add              rsp, 16;                             jmp   n105_ident_β
.Lcall_α_270_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_assign_var_α
n106_call_β:            mov              r11, 68
                        add              rsp, 16;                             jmp   n105_ident_β
                        .size            n106_call_bx, .-n106_call_bx
                        .type            n107_assign_var_bx, @function
n107_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_assign_var_α:      sub              rsp, 16
                        mov              r11, 69
                        mov              rdi, qword ptr [rsp + 192]           # deref
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 176]           # var
                        mov              rcx, qword ptr [rsp + 184]
                        cmp              dil, 24;                             jne   .Lassign_var_α_273_0
                        test             rsi, rsi;                            je    .Lassign_var_α_273_0
                        mov              r8, qword ptr [rsp + 16]             # call
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_273_238
                        add              rsp, 32;                             jmp   n105_ident_β
.Lassign_var_α_273_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n108_statement_end_α
.Lassign_var_α_273_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_273_239
                        add              rsp, 32;                             jmp   n105_ident_β
.Lassign_var_α_273_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_273_240
                        add              rsp, 32;                             jmp   n105_ident_β
.Lassign_var_α_273_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n108_statement_end_α
                        .size            n107_assign_var_bx, .-n107_assign_var_bx
                        .type            n108_statement_end_bx, @function
n108_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_end_α:   mov              r11, 70
                        mov              r10, 5
                        add              rsp, 256;                            jmp   n109_statement_begin_α
                        .size            n108_statement_end_bx, .-n108_statement_end_bx
                        .type            n109_statement_begin_bx, @function
n109_statement_begin_bx:
#=======================================================================================================================
#         mem[num][wrd][tag] = IDENT(mem[num][wrd][tag]) 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n109_statement_begin_α: mov              r11, 71
                        mov              r10, 6;                              jmp   n110_var_α
n109_statement_begin_β: mov              r11, 71;                             jmp   n133_statement_begin_α
                        .size            n109_statement_begin_bx, .-n109_statement_begin_bx
                        .type            n110_var_bx, @function
n110_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:             sub              rsp, 16
                        mov              r11, 72
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n111_var_α
                        .size            n110_var_bx, .-n110_var_bx
                        .type            n111_var_bx, @function
n111_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             sub              rsp, 16
                        mov              r11, 73
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_subscript_α
n111_var_β:             mov              r11, 73
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n109_statement_begin_β
                        .size            n111_var_bx, .-n111_var_bx
                        .type            n112_subscript_bx, @function
n112_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_subscript_α:       sub              rsp, 16
                        mov              r11, 74
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_280_240
                        add              rsp, 16;                             jmp   n111_var_β
.Lsubscript_α_280_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_deref_α
n112_subscript_β:       mov              r11, 74
                        add              rsp, 16;                             jmp   n111_var_β
                        .size            n112_subscript_bx, .-n112_subscript_bx
                        .type            n113_deref_bx, @function
n113_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_deref_α:           sub              rsp, 16
                        mov              r11, 75
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_281_240
                        add              rsp, 16;                             jmp   n112_subscript_β
.Lderef_α_281_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n114_var_α
n113_deref_β:           mov              r11, 75
                        add              rsp, 16;                             jmp   n112_subscript_β
                        .size            n113_deref_bx, .-n113_deref_bx
                        .type            n114_var_bx, @function
n114_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             sub              rsp, 16
                        mov              r11, 76
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_subscript_α
n114_var_β:             mov              r11, 76
                        add              rsp, 16;                             jmp   n113_deref_β
                        .size            n114_var_bx, .-n114_var_bx
                        .type            n115_subscript_bx, @function
n115_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_subscript_α:       sub              rsp, 16
                        mov              r11, 77
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_283_240
                        add              rsp, 16;                             jmp   n114_var_β
.Lsubscript_α_283_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n116_deref_α
n115_subscript_β:       mov              r11, 77
                        add              rsp, 16;                             jmp   n114_var_β
                        .size            n115_subscript_bx, .-n115_subscript_bx
                        .type            n116_deref_bx, @function
n116_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_deref_α:           sub              rsp, 16
                        mov              r11, 78
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_284_240
                        add              rsp, 16;                             jmp   n115_subscript_β
.Lderef_α_284_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_var_α
n116_deref_β:           mov              r11, 78
                        add              rsp, 16;                             jmp   n115_subscript_β
                        .size            n116_deref_bx, .-n116_deref_bx
                        .type            n117_var_bx, @function
n117_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:             sub              rsp, 16
                        mov              r11, 79
                        mov              rax, qword ptr [r9 + 64]             # tag
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_var_α
n117_var_β:             mov              r11, 79
                        add              rsp, 16;                             jmp   n116_deref_β
                        .size            n117_var_bx, .-n117_var_bx
                        .type            n118_var_bx, @function
n118_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              r11, 80
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_var_α
n118_var_β:             mov              r11, 80
                        add              rsp, 16;                             jmp   n117_var_β
                        .size            n118_var_bx, .-n118_var_bx
                        .type            n119_var_bx, @function
n119_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:             sub              rsp, 16
                        mov              r11, 81
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n120_subscript_α
n119_var_β:             mov              r11, 81
                        add              rsp, 16;                             jmp   n118_var_β
                        .size            n119_var_bx, .-n119_var_bx
                        .type            n120_subscript_bx, @function
n120_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_subscript_α:       sub              rsp, 16
                        mov              r11, 82
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_288_240
                        add              rsp, 16;                             jmp   n119_var_β
.Lsubscript_α_288_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n121_deref_α
n120_subscript_β:       mov              r11, 82
                        add              rsp, 16;                             jmp   n119_var_β
                        .size            n120_subscript_bx, .-n120_subscript_bx
                        .type            n121_deref_bx, @function
n121_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_deref_α:           sub              rsp, 16
                        mov              r11, 83
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_289_240
                        add              rsp, 16;                             jmp   n120_subscript_β
.Lderef_α_289_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_var_α
n121_deref_β:           mov              r11, 83
                        add              rsp, 16;                             jmp   n120_subscript_β
                        .size            n121_deref_bx, .-n121_deref_bx
                        .type            n122_var_bx, @function
n122_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:             sub              rsp, 16
                        mov              r11, 84
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n123_subscript_α
n122_var_β:             mov              r11, 84
                        add              rsp, 16;                             jmp   n121_deref_β
                        .size            n122_var_bx, .-n122_var_bx
                        .type            n123_subscript_bx, @function
n123_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_subscript_α:       sub              rsp, 16
                        mov              r11, 85
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_291_240
                        add              rsp, 16;                             jmp   n122_var_β
.Lsubscript_α_291_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_deref_α
n123_subscript_β:       mov              r11, 85
                        add              rsp, 16;                             jmp   n122_var_β
                        .size            n123_subscript_bx, .-n123_subscript_bx
                        .type            n124_deref_bx, @function
n124_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_deref_α:           sub              rsp, 16
                        mov              r11, 86
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_292_240
                        add              rsp, 16;                             jmp   n123_subscript_β
.Lderef_α_292_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_var_α
n124_deref_β:           mov              r11, 86
                        add              rsp, 16;                             jmp   n123_subscript_β
                        .size            n124_deref_bx, .-n124_deref_bx
                        .type            n125_var_bx, @function
n125_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:             sub              rsp, 16
                        mov              r11, 87
                        mov              rax, qword ptr [r9 + 64]             # tag
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_subscript_α
n125_var_β:             mov              r11, 87
                        add              rsp, 16;                             jmp   n124_deref_β
                        .size            n125_var_bx, .-n125_var_bx
                        .type            n126_subscript_bx, @function
n126_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_subscript_α:       sub              rsp, 16
                        mov              r11, 88
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_294_240
                        add              rsp, 16;                             jmp   n125_var_β
.Lsubscript_α_294_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n127_deref_α
n126_subscript_β:       mov              r11, 88
                        add              rsp, 16;                             jmp   n125_var_β
                        .size            n126_subscript_bx, .-n126_subscript_bx
                        .type            n127_deref_bx, @function
n127_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_deref_α:           sub              rsp, 16
                        mov              r11, 89
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_295_240
                        add              rsp, 16;                             jmp   n126_subscript_β
.Lderef_α_295_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n128_lit_string_α
n127_deref_β:           mov              r11, 89
                        add              rsp, 16;                             jmp   n126_subscript_β
                        .size            n127_deref_bx, .-n127_deref_bx
                        .type            n128_lit_string_bx, @function
n128_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:      sub              rsp, 16
                        mov              r11, 90
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_296_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_ident_α
n128_lit_string_β:      mov              r11, 90
                        add              rsp, 16;                             jmp   n127_deref_β
.Llit_string_α_296_0:   .quad            .Llit_string_α_296_0_s
.Llit_string_α_296_0_s: .string          ""
                        .size            n128_lit_string_bx, .-n128_lit_string_bx
                        .type            n129_ident_bx, @function
n129_ident_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_ident_α:           sub              rsp, 16
                        mov              r11, 91
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jne   .Lident_α_298_240
                        add              rsp, 16;                             jmp   n128_lit_string_β
.Lident_α_298_240:                                                            jmp   n130_lit_integer_α
n129_ident_β:           mov              r11, 91
                        add              rsp, 16;                             jmp   n128_lit_string_β
                        .size            n129_ident_bx, .-n129_ident_bx
                        .type            n130_lit_integer_bx, @function
n130_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:     sub              rsp, 16
                        mov              r11, 92
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_299_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n131_assign_var_α
n130_lit_integer_β:     mov              r11, 92
                        add              rsp, 16;                             jmp   n129_ident_β
.Llit_integer_α_299_0:  .quad            0
                        .size            n130_lit_integer_bx, .-n130_lit_integer_bx
                        .type            n131_assign_var_bx, @function
n131_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_var_α:      sub              rsp, 16
                        mov              r11, 93
                        mov              rdi, qword ptr [rsp + 240]           # deref
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 224]           # var
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_301_0
                        test             rsi, rsi;                            je    .Lassign_var_α_301_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_301_238
                        add              rsp, 16;                             jmp   n130_lit_integer_β
.Lassign_var_α_301_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n132_statement_end_α
.Lassign_var_α_301_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_301_239
                        add              rsp, 16;                             jmp   n130_lit_integer_β
.Lassign_var_α_301_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_301_240
                        add              rsp, 16;                             jmp   n130_lit_integer_β
.Lassign_var_α_301_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n132_statement_end_α
                        .size            n131_assign_var_bx, .-n131_assign_var_bx
                        .type            n132_statement_end_bx, @function
n132_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_end_α:   mov              r11, 94
                        mov              r10, 6
                        add              rsp, 352;                            jmp   n133_statement_begin_α
                        .size            n132_statement_end_bx, .-n132_statement_end_bx
                        .type            n133_statement_begin_bx, @function
n133_statement_begin_bx:
#=======================================================================================================================
#         mem[num][wrd][tag] = mem[num][wrd][tag] + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n133_statement_begin_α: mov              r11, 95
                        mov              r10, 7;                              jmp   n134_var_α
n133_statement_begin_β: mov              r11, 95;                             jmp   n156_statement_begin_α
                        .size            n133_statement_begin_bx, .-n133_statement_begin_bx
                        .type            n134_var_bx, @function
n134_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:             sub              rsp, 16
                        mov              r11, 96
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_var_α
                        .size            n134_var_bx, .-n134_var_bx
                        .type            n135_var_bx, @function
n135_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:             sub              rsp, 16
                        mov              r11, 97
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n136_subscript_α
n135_var_β:             mov              r11, 97
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n133_statement_begin_β
                        .size            n135_var_bx, .-n135_var_bx
                        .type            n136_subscript_bx, @function
n136_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_subscript_α:       sub              rsp, 16
                        mov              r11, 98
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_308_240
                        add              rsp, 16;                             jmp   n135_var_β
.Lsubscript_α_308_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_deref_α
n136_subscript_β:       mov              r11, 98
                        add              rsp, 16;                             jmp   n135_var_β
                        .size            n136_subscript_bx, .-n136_subscript_bx
                        .type            n137_deref_bx, @function
n137_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_deref_α:           sub              rsp, 16
                        mov              r11, 99
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_309_240
                        add              rsp, 16;                             jmp   n136_subscript_β
.Lderef_α_309_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n138_var_α
n137_deref_β:           mov              r11, 99
                        add              rsp, 16;                             jmp   n136_subscript_β
                        .size            n137_deref_bx, .-n137_deref_bx
                        .type            n138_var_bx, @function
n138_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             sub              rsp, 16
                        mov              r11, 100
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_subscript_α
n138_var_β:             mov              r11, 100
                        add              rsp, 16;                             jmp   n137_deref_β
                        .size            n138_var_bx, .-n138_var_bx
                        .type            n139_subscript_bx, @function
n139_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_subscript_α:       sub              rsp, 16
                        mov              r11, 101
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_311_240
                        add              rsp, 16;                             jmp   n138_var_β
.Lsubscript_α_311_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_deref_α
n139_subscript_β:       mov              r11, 101
                        add              rsp, 16;                             jmp   n138_var_β
                        .size            n139_subscript_bx, .-n139_subscript_bx
                        .type            n140_deref_bx, @function
n140_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_deref_α:           sub              rsp, 16
                        mov              r11, 102
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_312_240
                        add              rsp, 16;                             jmp   n139_subscript_β
.Lderef_α_312_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_var_α
n140_deref_β:           mov              r11, 102
                        add              rsp, 16;                             jmp   n139_subscript_β
                        .size            n140_deref_bx, .-n140_deref_bx
                        .type            n141_var_bx, @function
n141_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             sub              rsp, 16
                        mov              r11, 103
                        mov              rax, qword ptr [r9 + 64]             # tag
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_var_α
n141_var_β:             mov              r11, 103
                        add              rsp, 16;                             jmp   n140_deref_β
                        .size            n141_var_bx, .-n141_var_bx
                        .type            n142_var_bx, @function
n142_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             sub              rsp, 16
                        mov              r11, 104
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_var_α
n142_var_β:             mov              r11, 104
                        add              rsp, 16;                             jmp   n141_var_β
                        .size            n142_var_bx, .-n142_var_bx
                        .type            n143_var_bx, @function
n143_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:             sub              rsp, 16
                        mov              r11, 105
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_subscript_α
n143_var_β:             mov              r11, 105
                        add              rsp, 16;                             jmp   n142_var_β
                        .size            n143_var_bx, .-n143_var_bx
                        .type            n144_subscript_bx, @function
n144_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_subscript_α:       sub              rsp, 16
                        mov              r11, 106
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_316_240
                        add              rsp, 16;                             jmp   n143_var_β
.Lsubscript_α_316_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n145_deref_α
n144_subscript_β:       mov              r11, 106
                        add              rsp, 16;                             jmp   n143_var_β
                        .size            n144_subscript_bx, .-n144_subscript_bx
                        .type            n145_deref_bx, @function
n145_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_deref_α:           sub              rsp, 16
                        mov              r11, 107
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_317_240
                        add              rsp, 16;                             jmp   n144_subscript_β
.Lderef_α_317_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n146_var_α
n145_deref_β:           mov              r11, 107
                        add              rsp, 16;                             jmp   n144_subscript_β
                        .size            n145_deref_bx, .-n145_deref_bx
                        .type            n146_var_bx, @function
n146_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:             sub              rsp, 16
                        mov              r11, 108
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n147_subscript_α
n146_var_β:             mov              r11, 108
                        add              rsp, 16;                             jmp   n145_deref_β
                        .size            n146_var_bx, .-n146_var_bx
                        .type            n147_subscript_bx, @function
n147_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_subscript_α:       sub              rsp, 16
                        mov              r11, 109
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_319_240
                        add              rsp, 16;                             jmp   n146_var_β
.Lsubscript_α_319_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_deref_α
n147_subscript_β:       mov              r11, 109
                        add              rsp, 16;                             jmp   n146_var_β
                        .size            n147_subscript_bx, .-n147_subscript_bx
                        .type            n148_deref_bx, @function
n148_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_deref_α:           sub              rsp, 16
                        mov              r11, 110
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_320_240
                        add              rsp, 16;                             jmp   n147_subscript_β
.Lderef_α_320_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_var_α
n148_deref_β:           mov              r11, 110
                        add              rsp, 16;                             jmp   n147_subscript_β
                        .size            n148_deref_bx, .-n148_deref_bx
                        .type            n149_var_bx, @function
n149_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:             sub              rsp, 16
                        mov              r11, 111
                        mov              rax, qword ptr [r9 + 64]             # tag
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n150_subscript_α
n149_var_β:             mov              r11, 111
                        add              rsp, 16;                             jmp   n148_deref_β
                        .size            n149_var_bx, .-n149_var_bx
                        .type            n150_subscript_bx, @function
n150_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_subscript_α:       sub              rsp, 16
                        mov              r11, 112
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_322_240
                        add              rsp, 16;                             jmp   n149_var_β
.Lsubscript_α_322_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n151_deref_α
n150_subscript_β:       mov              r11, 112
                        add              rsp, 16;                             jmp   n149_var_β
                        .size            n150_subscript_bx, .-n150_subscript_bx
                        .type            n151_deref_bx, @function
n151_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_deref_α:           sub              rsp, 16
                        mov              r11, 113
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_323_240
                        add              rsp, 16;                             jmp   n150_subscript_β
.Lderef_α_323_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n152_lit_integer_α
n151_deref_β:           mov              r11, 113
                        add              rsp, 16;                             jmp   n150_subscript_β
                        .size            n151_deref_bx, .-n151_deref_bx
                        .type            n152_lit_integer_bx, @function
n152_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:     sub              rsp, 16
                        mov              r11, 114
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_324_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n153_binop_α
n152_lit_integer_β:     mov              r11, 114
                        add              rsp, 16;                             jmp   n151_deref_β
.Llit_integer_α_324_0:  .quad            1
                        .size            n152_lit_integer_bx, .-n152_lit_integer_bx
                        .type            n153_binop_bx, @function
n153_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_binop_α:           sub              rsp, 16
                        mov              r11, 115
                        mov              ecx, dword ptr [rsp + 32]            # deref
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_325_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_325_7
.Lbinop_α_325_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_325_0
                        mov              rsi, qword ptr [rsp + 40]            # deref
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_325_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_325_4
.Lbinop_α_325_3:        movq             xmm0, rsi
.Lbinop_α_325_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_325_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_325_7:                                                              jmp   n154_assign_var_α
.Lbinop_α_325_0:        mov              rdi, qword ptr [rsp + 32]            # deref
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
                        cmp              al, 104;                             jne   .Lbinop_α_325_240
                        add              rsp, 16;                             jmp   n152_lit_integer_β
.Lbinop_α_325_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_assign_var_α
n153_binop_β:           mov              r11, 115
                        add              rsp, 16;                             jmp   n152_lit_integer_β
                        .size            n153_binop_bx, .-n153_binop_bx
                        .type            n154_assign_var_bx, @function
n154_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_var_α:      sub              rsp, 16
                        mov              r11, 116
                        mov              rdi, qword ptr [rsp + 224]           # deref
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 208]           # var
                        mov              rcx, qword ptr [rsp + 216]
                        cmp              dil, 24;                             jne   .Lassign_var_α_327_0
                        test             rsi, rsi;                            je    .Lassign_var_α_327_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_327_238
                        add              rsp, 16;                             jmp   n153_binop_β
.Lassign_var_α_327_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_statement_end_α
.Lassign_var_α_327_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_327_239
                        add              rsp, 16;                             jmp   n153_binop_β
.Lassign_var_α_327_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_327_240
                        add              rsp, 16;                             jmp   n153_binop_β
.Lassign_var_α_327_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_statement_end_α
                        .size            n154_assign_var_bx, .-n154_assign_var_bx
                        .type            n155_statement_end_bx, @function
n155_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_end_α:   mov              r11, 117
                        mov              r10, 7
                        add              rsp, 336;                            jmp   n156_statement_begin_α
                        .size            n155_statement_end_bx, .-n155_statement_end_bx
                        .type            n156_statement_begin_bx, @function
n156_statement_begin_bx:
#=======================================================================================================================
#         token = .dummy  :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n156_statement_begin_α: mov              r11, 118
                        mov              r10, 8;                              jmp   n157_lit_name_α
n156_statement_begin_β: mov              r11, 118;                            jmp   NRETURN
                        .size            n156_statement_begin_bx, .-n156_statement_begin_bx
                        .type            n157_lit_name_bx, @function
n157_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_name_α:        sub              rsp, 16
                        mov              r11, 119
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_332_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n158_assign_α
.Llit_name_α_332_0:     .quad            .Llit_name_α_332_0_s
.Llit_name_α_332_0_s:   .string          "dummy"
                        .size            n157_lit_name_bx, .-n157_lit_name_bx
                        .type            n158_assign_bx, @function
n158_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_α:          mov              r11, 120
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # token
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
                        mov              rdi, qword ptr [rip + .Lassign_α_333_0]
                        .section         .rodata
.Lassign_α_333_1_s:     .string          "snobol4/claws5/claws5.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_333_1_s]
                        mov              r8, 9
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
                        pop              rax;                                 jmp   n159_statement_end_α
.Lassign_α_333_0:       .quad            .Lassign_α_333_0_s
.Lassign_α_333_0_s:     .string          "token"
                        .size            n158_assign_bx, .-n158_assign_bx
                        .type            n159_statement_end_bx, @function
n159_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_end_α:   mov              r11, 121
                        mov              r10, 8
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n159_statement_end_bx, .-n159_statement_end_bx
                        .type            n160_statement_begin_bx, @function
n160_statement_begin_bx:
#=======================================================================================================================
# token_end
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n160_statement_begin_α: mov              r11, 122
                        mov              r10, 9;                              jmp   n161_statement_end_α
n160_statement_begin_β: mov              r11, 122;                            jmp   n162_statement_begin_α
                        .size            n160_statement_begin_bx, .-n160_statement_begin_bx
                        .type            n161_statement_end_bx, @function
n161_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_end_α:   mov              r11, 123
                        mov              r10, 9;                              jmp   n162_statement_begin_α
                        .size            n161_statement_end_bx, .-n161_statement_end_bx
                        .type            n162_statement_begin_bx, @function
n162_statement_begin_bx:
#=======================================================================================================================
#         &TRIM   =   0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n162_statement_begin_α: mov              r11, 124
                        mov              r10, 10;                             jmp   n163_lit_integer_α
n162_statement_begin_β: mov              r11, 124;                            jmp   n166_statement_begin_α
                        .size            n162_statement_begin_bx, .-n162_statement_begin_bx
                        .type            n163_lit_integer_bx, @function
n163_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_integer_α:     sub              rsp, 16
                        mov              r11, 125
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_342_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n164_kw_assign_snobol4_α
.Llit_integer_α_342_0:  .quad            0
                        .size            n163_lit_integer_bx, .-n163_lit_integer_bx
                        .type            n164_kw_assign_snobol4_bx, @function
n164_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 126
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_343_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_343_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n162_statement_begin_β
.Lkw_assign_snobol4_α_343_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n165_statement_end_α
.Lkw_assign_snobol4_α_343_0:
                        .quad            1
                        .size            n164_kw_assign_snobol4_bx, .-n164_kw_assign_snobol4_bx
                        .type            n165_statement_end_bx, @function
n165_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_end_α:   mov              r11, 127
                        mov              r10, 10
                        add              rsp, 32;                             jmp   n166_statement_begin_α
                        .size            n165_statement_end_bx, .-n165_statement_end_bx
                        .type            n166_statement_begin_bx, @function
n166_statement_begin_bx:
#=======================================================================================================================
#         claws   =   POS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n166_statement_begin_α: mov              r11, 128
                        mov              r10, 11;                             jmp   n167_lit_string_α
n166_statement_begin_β: mov              r11, 128;                            jmp   n171_statement_begin_α
                        .size            n166_statement_begin_bx, .-n166_statement_begin_bx
                        .type            n167_lit_string_bx, @function
n167_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:      sub              rsp, 16
                        mov              r11, 129
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_348_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n168_call_α
.Llit_string_α_348_0:   .quad            .Llit_string_α_348_0_s
.Llit_string_α_348_0_s: .string          "PAT$0"
                        .size            n167_lit_string_bx, .-n167_lit_string_bx
                        .type            n168_call_bx, @function
n168_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_call_α:            sub              rsp, 16
                        mov              r11, 130
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd350:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd350]
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
                        cmp              al, 104;                             jne   .Lcall_α_349_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n166_statement_begin_β
.Lcall_α_349_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n169_assign_α
n168_call_β:            mov              r11, 130
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n166_statement_begin_β
                        .size            n168_call_bx, .-n168_call_bx
                        .type            n169_assign_bx, @function
n169_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_α:          mov              r11, 131
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # claws
                        mov              qword ptr [r9 + 104], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_351_0]
                        .section         .rodata
.Lassign_α_351_1_s:     .string          "snobol4/claws5/claws5.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_351_1_s]
                        mov              r8, 13
                        mov              r9, 11
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
                        pop              rax;                                 jmp   n170_statement_end_α
.Lassign_α_351_0:       .quad            .Lassign_α_351_0_s
.Lassign_α_351_0_s:     .string          "claws"
                        .size            n169_assign_bx, .-n169_assign_bx
                        .type            n170_statement_end_bx, @function
n170_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   mov              r11, 132
                        mov              r10, 11
                        add              rsp, 32;                             jmp   n171_statement_begin_α
                        .size            n170_statement_end_bx, .-n170_statement_end_bx
                        .type            n171_statement_begin_bx, @function
n171_statement_begin_bx:
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n171_statement_begin_α: mov              r11, 133
                        mov              r10, 12;                             jmp   n172_lit_name_α
n171_statement_begin_β: mov              r11, 133;                            jmp   n177_statement_begin_α
                        .size            n171_statement_begin_bx, .-n171_statement_begin_bx
                        .type            n172_lit_name_bx, @function
n172_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_name_α:        sub              rsp, 16
                        mov              r11, 134
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_356_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_lit_integer_α
.Llit_name_α_356_0:     .quad            .Llit_name_α_356_0_s
.Llit_name_α_356_0_s:   .string          "INPUT"
                        .size            n172_lit_name_bx, .-n172_lit_name_bx
                        .type            n173_lit_integer_bx, @function
n173_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     sub              rsp, 16
                        mov              r11, 135
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_357_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n174_lit_string_α
n173_lit_integer_β:     mov              r11, 135
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n171_statement_begin_β
.Llit_integer_α_357_0:  .quad            9
                        .size            n173_lit_integer_bx, .-n173_lit_integer_bx
                        .type            n174_lit_string_bx, @function
n174_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:      sub              rsp, 16
                        mov              r11, 136
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_358_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n175_call_α
n174_lit_string_β:      mov              r11, 136
                        add              rsp, 16;                             jmp   n173_lit_integer_β
.Llit_string_α_358_0:   .quad            .Llit_string_α_358_0_s
.Llit_string_α_358_0_s: .string          "[-f0 -r4194304]"
                        .size            n174_lit_string_bx, .-n174_lit_string_bx
                        .type            n175_call_bx, @function
n175_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_call_α:            sub              rsp, 16
                        mov              r11, 137
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
.Lcall_α_bynamefnzd137: .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd137]
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
                        cmp              al, 104;                             jne   .Lcall_α_359_240
                        add              rsp, 16;                             jmp   n174_lit_string_β
.Lcall_α_359_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n176_statement_end_α
n175_call_β:            mov              r11, 137
                        add              rsp, 16;                             jmp   n174_lit_string_β
                        .size            n175_call_bx, .-n175_call_bx
                        .type            n176_statement_end_bx, @function
n176_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:   mov              r11, 138
                        mov              r10, 12
                        add              rsp, 64;                             jmp   n177_statement_begin_α
                        .size            n176_statement_end_bx, .-n176_statement_end_bx
                        .type            n177_statement_begin_bx, @function
n177_statement_begin_bx:
#=======================================================================================================================
#         src     =   INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n177_statement_begin_α: mov              r11, 139
                        mov              r10, 13;                             jmp   n178_var_α
n177_statement_begin_β: mov              r11, 139;                            jmp   n196_statement_begin_α
                        .size            n177_statement_begin_bx, .-n177_statement_begin_bx
                        .type            n178_var_bx, @function
n178_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:             sub              rsp, 16
                        mov              r11, 140
                        mov              rdi, qword ptr [rip + .Lvar_α_364_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_364_240
                        add              rsp, 16;                             jmp   n177_statement_begin_β
.Lvar_α_364_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_assign_α
.Lvar_α_364_0:          .quad            .Lvar_α_364_0_s
.Lvar_α_364_0_s:        .string          "INPUT"
                        .size            n178_var_bx, .-n178_var_bx
                        .type            n179_assign_bx, @function
n179_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_assign_α:          mov              r11, 141
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # src
                        mov              qword ptr [r9 + 120], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_365_0]
                        .section         .rodata
.Lassign_α_365_1_s:     .string          "snobol4/claws5/claws5.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_365_1_s]
                        mov              r8, 25
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
                        pop              rax;                                 jmp   n180_statement_end_α
.Lassign_α_365_0:       .quad            .Lassign_α_365_0_s
.Lassign_α_365_0_s:     .string          "src"
                        .size            n179_assign_bx, .-n179_assign_bx
                        .type            n180_statement_end_bx, @function
n180_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_end_α:   mov              r11, 142
                        mov              r10, 13
                        add              rsp, 16;                             jmp   n181_statement_begin_α
                        .size            n180_statement_end_bx, .-n180_statement_end_bx
                        .type            n181_statement_begin_bx, @function
n181_statement_begin_bx:
#=======================================================================================================================
#         src     ?   claws  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n181_statement_begin_α: mov              r11, 143
                        mov              r10, 14;                             jmp   n182_var_α
n181_statement_begin_β: mov              r11, 143;                            jmp   n196_statement_begin_α
                        .size            n181_statement_begin_bx, .-n181_statement_begin_bx
                        .type            n182_var_bx, @function
n182_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_var_α:             sub              rsp, 16
                        mov              r11, 144
                        mov              rax, qword ptr [r9 + 112]            # src
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n183_var_α
                        .size            n182_var_bx, .-n182_var_bx
                        .type            n183_var_bx, @function
n183_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:             sub              rsp, 16
                        mov              r11, 145
                        mov              rax, qword ptr [r9 + 96]             # claws
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n184_assign_α
n183_var_β:             mov              r11, 145
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n196_statement_begin_α
                        .size            n183_var_bx, .-n183_var_bx
                        .type            n184_assign_bx, @function
n184_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_assign_α:          mov              r11, 146
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
                        mov              rdi, qword ptr [rip + .Lassign_α_372_0]
                        .section         .rodata
.Lassign_α_372_1_s:     .string          "snobol4/claws5/claws5.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_372_1_s]
                        mov              r8, 26
                        mov              r9, 14
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
                        mov              rdi, qword ptr [rip + .Lassign_α_372_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n185_match_begin_α
n184_assign_β:          mov              r11, 146;                            jmp   n183_var_β
.Lassign_α_372_0:       .quad            .Lassign_α_372_0_s
.Lassign_α_372_0_s:     .string          "PATV$0"
                        .size            n184_assign_bx, .-n184_assign_bx
                        .type            n185_match_begin_bx, @function
n185_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_match_begin_α:     mov              r11, 147
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
.Lmatch_begin_α_374_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_374_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n186_match_defer_α
n185_match_begin_β:     mov              r11, 147
.Lmatch_begin_α_374_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_374_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_374_1
                                                                              jmp   .Lmatch_begin_α_374_0
.Lmatch_begin_β_374_1:
.Lmatch_begin_γ_185_af: mov              r11, 147
.Lmatch_begin_ω_185_af: mov              r11, 147
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
                        pop              rbp;                                 jmp   n184_assign_β
                        .size            n185_match_begin_bx, .-n185_match_begin_bx
                        .type            n186_match_defer_bx, @function
n186_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_match_defer_α:     mov              r11, 148
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S4]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_375_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_375_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_375_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_375_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_375_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_375_23
                                                                              jmp   .Lmatch_defer_α_375_22
.Lmatch_defer_α_375_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_375_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_375_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_375_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_375_0
.Lmatch_defer_α_375_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_375_0
.Lmatch_defer_α_375_22: push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
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
.Lmatch_defer_α_375_23: test             rax, rax;                            jz    .Lmatch_defer_α_375_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_375_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_375_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_375_4:                                                        jmp   n187_match_end_α
.Lmatch_defer_α_375_5:                                                        jmp   n185_match_begin_β
.Lmatch_defer_α_375_0:  mov              eax, edx
                        test             eax, eax;                            js    n185_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_375_6]
                        push             rcx
                        push             rax;                                 jmp   n187_match_end_α
.Lmatch_defer_α_375_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n185_match_begin_β
n186_match_defer_β:     mov              r11, 148
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_375_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_375_12
                                                                              jmp   rax
.Lmatch_defer_β_375_12:                                                       jmp   qword ptr [rsp]
                        .size            n186_match_defer_bx, .-n186_match_defer_bx
                        .type            n187_match_end_bx, @function
n187_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_match_end_α:       mov              r11, 149
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
                        test             rax, rax;                            je    .Lmatch_end_α_377_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_185_af
.Lmatch_end_α_377_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n188_statement_end_α
                        .size            n187_match_end_bx, .-n187_match_end_bx
                        .type            n188_statement_end_bx, @function
n188_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_end_α:   mov              r11, 150
                        mov              r10, 14
                        add              rsp, 32;                             jmp   n189_statement_begin_α
                        .size            n188_statement_end_bx, .-n188_statement_end_bx
                        .type            n189_statement_begin_bx, @function
n189_statement_begin_bx:
#=======================================================================================================================
#         OUTPUT  =   'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n189_statement_begin_α: mov              r11, 151
                        mov              r10, 15;                             jmp   n190_lit_string_α
n189_statement_begin_β: mov              r11, 151;                            jmp   main_γ
                        .size            n189_statement_begin_bx, .-n189_statement_begin_bx
                        .type            n190_lit_string_bx, @function
n190_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:      sub              rsp, 16
                        mov              r11, 152
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_382_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n191_var_α
.Llit_string_α_382_0:   .quad            .Llit_string_α_382_0_s
.Llit_string_α_382_0_s: .string          "matched bytes="
                        .size            n190_lit_string_bx, .-n190_lit_string_bx
                        .type            n191_var_bx, @function
n191_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:             sub              rsp, 16
                        mov              r11, 153
                        mov              rax, qword ptr [r9 + 112]            # src
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n192_call_α
n191_var_β:             mov              r11, 153
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n189_statement_begin_β
                        .size            n191_var_bx, .-n191_var_bx
                        .type            n192_call_bx, @function
n192_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_call_α:            sub              rsp, 16
                        mov              r11, 154
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd385:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd385]
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
                        cmp              al, 104;                             jne   .Lcall_α_384_240
                        add              rsp, 16;                             jmp   n191_var_β
.Lcall_α_384_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n193_binop_α
n192_call_β:            mov              r11, 154
                        add              rsp, 16;                             jmp   n191_var_β
                        .size            n192_call_bx, .-n192_call_bx
                        .type            n193_binop_bx, @function
n193_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_binop_α:           sub              rsp, 16
                        mov              r11, 155
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n194_assign_α
                        .size            n193_binop_bx, .-n193_binop_bx
                        .type            n194_assign_bx, @function
n194_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_assign_α:          mov              r11, 156
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
                        mov              rdi, qword ptr [rip + .Lassign_α_387_0]
                        .section         .rodata
.Lassign_α_387_1_s:     .string          "snobol4/claws5/claws5.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_387_1_s]
                        mov              r8, 27
                        mov              r9, 15
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
                        mov              rdi, qword ptr [rip + .Lassign_α_387_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n195_statement_end_α
.Lassign_α_387_0:       .quad            .Lassign_α_387_0_s
.Lassign_α_387_0_s:     .string          "OUTPUT"
                        .size            n194_assign_bx, .-n194_assign_bx
                        .type            n195_statement_end_bx, @function
n195_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_end_α:   mov              r11, 157
                        mov              r10, 15
                        add              rsp, 64;                             jmp   main_γ
                        .size            n195_statement_end_bx, .-n195_statement_end_bx
                        .type            n196_statement_begin_bx, @function
n196_statement_begin_bx:
#=======================================================================================================================
# error   OUTPUT  =   'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n196_statement_begin_α: mov              r11, 158
                        mov              r10, 16;                             jmp   n197_lit_string_α
n196_statement_begin_β: mov              r11, 158;                            jmp   main_γ
                        .size            n196_statement_begin_bx, .-n196_statement_begin_bx
                        .type            n197_lit_string_bx, @function
n197_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:      sub              rsp, 16
                        mov              r11, 159
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_392_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n198_assign_α
.Llit_string_α_392_0:   .quad            .Llit_string_α_392_0_s
.Llit_string_α_392_0_s: .string          "Pattern match failed"
                        .size            n197_lit_string_bx, .-n197_lit_string_bx
                        .type            n198_assign_bx, @function
n198_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_assign_α:          mov              r11, 160
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
                        mov              rdi, qword ptr [rip + .Lassign_α_393_0]
                        .section         .rodata
.Lassign_α_393_1_s:     .string          "snobol4/claws5/claws5.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_393_1_s]
                        mov              r8, 28
                        mov              r9, 16
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
                        mov              rdi, qword ptr [rip + .Lassign_α_393_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n199_statement_end_α
.Lassign_α_393_0:       .quad            .Lassign_α_393_0_s
.Lassign_α_393_0_s:     .string          "OUTPUT"
                        .size            n198_assign_bx, .-n198_assign_bx
                        .type            n199_statement_end_bx, @function
n199_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_end_α:   mov              r11, 161
                        mov              r10, 16
                        add              rsp, 16;                             jmp   main_γ
                        .size            n199_statement_end_bx, .-n199_statement_end_bx
                        .type            n200_goto_bx, @function
n200_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_goto_α:            mov              r11, 162;                            jmp   LBL__token
n200_goto_β:            mov              r11, 162;                            jmp   main_ω
                        .size            n200_goto_bx, .-n200_goto_bx
                        .type            n201_goto_bx, @function
n201_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_goto_α:            mov              r11, 163;                            jmp   n160_statement_begin_α
n201_goto_β:            mov              r11, 163;                            jmp   main_ω
                        .size            n201_goto_bx, .-n201_goto_bx
                        .type            n202_goto_bx, @function
n202_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_goto_α:            mov              r11, 164;                            jmp   n196_statement_begin_α
n202_goto_β:            mov              r11, 164;                            jmp   main_ω
                        .size            n202_goto_bx, .-n202_goto_bx
                        .type            n203_define_bx, @function
n203_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 165
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
                        .size            n203_define_bx, .-n203_define_bx
                        .type            n204_define_bx, @function
n204_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              r11, 166
                        mov              edi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_set_rtntype_role@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              rcx;                                 jmp   rcx
                        .size            n204_define_bx, .-n204_define_bx
                        .type            n205_lit_string_bx, @function
n205_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              r11, 167
                        push             rax
                        mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rax + 0], 1
                        pop              rax;                                 jmp   RETURN
                        .size            n205_lit_string_bx, .-n205_lit_string_bx
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
.Lstartup_pname0:       .string          "LBL__token"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__token
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            2032
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lseala1:               .string          "token"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            token_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + token_α@GOTPCREL]
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
                        .long            448
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
.S0:                    .string          "wrd"
.S1:                    .string          "tag"
.S2:                    .string          "*token"
.S3:                    .string          "num"
.S4:                    .string          "PATV$0"
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
