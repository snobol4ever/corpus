                        .intel_syntax    noprefix
                        .text
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
n1_match_arbno_as:      mov              r11, 2
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n4_match_span_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n2_match_rpos_α
n1_match_arbno_af:      mov              r11, 2
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
n3_match_fence1_as:     mov              r11, 4
                        mov              rsp, qword ptr [rbp + -96];          jmp   n4_match_span_α
n3_match_fence1_af:     mov              r11, 4
n3_match_fence1_β:      mov              r11, 4
                        mov              rsp, qword ptr [rbp + -96];          jmp   n1_match_arbno_af
                        .size            n3_match_fence1_bx, .-n3_match_fence1_bx
                        .type            n4_match_span_bx, @function
n4_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_match_span_α:        sub              rsp, 16
                        mov              r11, 5
                        movsxd           rcx, r14d
.LPAT$0_α_28_0:         cmp              ecx, r15d;                           jge   .LPAT$0_α_28_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .LPAT$0_α_28_10
                        cmp              esi, 10;                             je    .LPAT$0_α_28_10
                                                                              jmp   .LPAT$0_α_28_1
.LPAT$0_α_28_10:        add              ecx, 1;                              jmp   .LPAT$0_α_28_0
.LPAT$0_α_28_1:         cmp              ecx, r14d;                           jg    .LPAT$0_α_28_240
                        add              rsp, 16;                             jmp   n1_match_arbno_af
.LPAT$0_α_28_240:       mov              dword ptr [rbp + -76], r14d
                        mov              r14d, ecx;                           jmp   n1_match_arbno_as
n4_match_span_β:        mov              r11, 5
                        mov              r14d, dword ptr [rbp + -76]
                        add              rsp, 16;                             jmp   n1_match_arbno_af
                        .size            n4_match_span_bx, .-n4_match_span_bx
                        .type            n5_match_alternate_bx, @function
n5_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_match_alternate_α:   mov              r11, 6
                        mov              dword ptr [rbp + -128], r14d
                        lea              rax, [rip + .LPAT$0_α_30_21]
                        mov              qword ptr [rbp + -112], rax;         jmp   n17_match_assign_save_α
.LPAT$0_α_30_21:        lea              rax, [rip + .LPAT$0_α_30_19]
                        mov              qword ptr [rbp + -112], rax;         jmp   n6_match_assign_save_α
n5_match_alternate_s0:  mov              r11, 6
                        lea              rax, [rip + .LPAT$0_α_30_40]
                        mov              qword ptr [rbp + -120], rax;         jmp   n5_match_alternate_as
n5_match_alternate_s1:  mov              r11, 6
                        lea              rax, [rip + .LPAT$0_α_30_41]
                        mov              qword ptr [rbp + -120], rax;         jmp   n5_match_alternate_as
.LPAT$0_α_30_40:                                                              jmp   n20_match_lit_β
.LPAT$0_α_30_41:                                                              jmp   n16_match_assign_cond_β
n5_match_alternate_as:  mov              r11, 6;                              jmp   n3_match_fence1_as
n5_match_alternate_β:   mov              r11, 6
                        mov              rax, qword ptr [rbp + -120];         jmp   rax
n5_match_alternate_af:  mov              r11, 6
                        mov              r14d, dword ptr [rbp + -128]
                        mov              rax, qword ptr [rbp + -112];         jmp   rax
.LPAT$0_α_30_19:                                                              jmp   n3_match_fence1_af
                        .size            n5_match_alternate_bx, .-n5_match_alternate_bx
                        .type            n6_match_assign_save_bx, @function
n6_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_match_assign_save_α: mov              r11, 7
                        mov              dword ptr [rbp + -192], r14d;        jmp   n7_match_notany_α
n6_match_assign_save_β: mov              r11, 7;                              jmp   n5_match_alternate_af
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
.LPAT$0_α_35_0:         cmp              ecx, r15d;                           jge   n7_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .LPAT$0_α_35_1
                        add              ecx, 1;                              jmp   .LPAT$0_α_35_0
.LPAT$0_α_35_1:         mov              dword ptr [rbp + -224], r14d
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
.LPAT$0_α_47_0:         cmp              ecx, r15d;                           jge   .LPAT$0_α_47_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .LPAT$0_α_47_1
                        add              ecx, 1;                              jmp   .LPAT$0_α_47_0
.LPAT$0_α_47_1:         cmp              ecx, r14d;                           jle   n13_match_any_β
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
                        add              r12, 24;                             jmp   n5_match_alternate_s1
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
                        mov              r11, 18;                             jmp   n5_match_alternate_af
                        .size            n17_match_assign_save_bx, .-n17_match_assign_save_bx
                        .type            n18_match_span_bx, @function
n18_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_match_span_α:       mov              r11, 19
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.LPAT$0_α_55_0:         cmp              ecx, r15d;                           jge   .LPAT$0_α_55_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .LPAT$0_α_55_1
                        add              ecx, 1;                              jmp   .LPAT$0_α_55_0
.LPAT$0_α_55_1:         cmp              ecx, r14d;                           jle   n17_match_assign_save_β
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
                        add              r14d, 10;                            jmp   n5_match_alternate_s0
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
                        sub              rsp, 8
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
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
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
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
                        .type            n60_statement_begin_bx, @function
n60_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('token()')  :(token_end)
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_begin_α:  mov              r11, 22
                        mov              r10, 1;                              jmp   n61_define_α
n60_statement_begin_β:  mov              r11, 22;                             jmp   n156_statement_begin_α
                        .size            n60_statement_begin_bx, .-n60_statement_begin_bx
                        .type            n61_define_bx, @function
n61_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_define_α:           mov              r11, 23
                        mov              rdi, qword ptr [rip + .Lmain_α_202_0]
                        mov              rsi, qword ptr [rip + .Lmain_α_202_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n63_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lmain_α_202_0]
                        lea              rsi, [rip + token_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n62_statement_end_α
n61_define_β:           mov              r11, 23;                             jmp   n60_statement_begin_β
.Lmain_α_202_0:         .quad            .Lmain_α_202_0_s
.Lmain_α_202_0_s:       .string          "token"
.Lmain_α_202_1:         .quad            .Lmain_α_202_1_s
.Lmain_α_202_1_s:       .string          ""
                                                                              jmp   .Lmain_α_203_245
#-----------------------------------------------------------------------------------------------------------------------
token_α:                sub              rsp, 48
                        mov              rax, qword ptr [r9 + 0]              # token
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              rcx, [rip + token_γ]
                        lea              rax, [rip + token_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n63_statement_begin_α];  jmp   rax
token_γ:                mov              rdi, qword ptr [r9 + 0]
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
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
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lmain_α_203_245:
                        .size            n61_define_bx, .-n61_define_bx
                        .type            n62_statement_end_bx, @function
n62_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_end_α:    mov              r11, 24
                        mov              r10, 1;                              jmp   n156_statement_begin_α
                        .size            n62_statement_end_bx, .-n62_statement_end_bx
                        .type            n63_statement_begin_bx, @function
n63_statement_begin_bx:
#=======================================================================================================================
# token   num = +num
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_begin_α:  mov              r11, 25
                        mov              r10, 2;                              jmp   n64_var_α
n63_statement_begin_β:  mov              r11, 25;                             jmp   n68_statement_begin_α
                        .size            n63_statement_begin_bx, .-n63_statement_begin_bx
                        .type            n64_var_bx, @function
n64_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:              sub              rsp, 16
                        mov              r11, 26
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n65_unop_α
                        .size            n64_var_bx, .-n64_var_bx
                        .type            n65_unop_bx, @function
n65_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_unop_α:             sub              rsp, 16
                        mov              r11, 27
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n66_assign_α
                        .size            n65_unop_bx, .-n65_unop_bx
                        .type            n66_assign_bx, @function
n66_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:           mov              r11, 28
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # num
                        mov              qword ptr [r9 + 24], rdx;            jmp   n67_statement_end_α
                        .size            n66_assign_bx, .-n66_assign_bx
                        .type            n67_statement_end_bx, @function
n67_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_end_α:    mov              r11, 29
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n68_statement_begin_α
                        .size            n67_statement_end_bx, .-n67_statement_end_bx
                        .type            n68_statement_begin_bx, @function
n68_statement_begin_bx:
#=======================================================================================================================
#         mem = IDENT(mem) TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_begin_α:  mov              r11, 30
                        mov              r10, 3;                              jmp   n69_var_α
n68_statement_begin_β:  mov              r11, 30;                             jmp   n75_statement_begin_α
                        .size            n68_statement_begin_bx, .-n68_statement_begin_bx
                        .type            n69_var_bx, @function
n69_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              sub              rsp, 16
                        mov              r11, 31
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_lit_string_α
                        .size            n69_var_bx, .-n69_var_bx
                        .type            n70_lit_string_bx, @function
n70_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       sub              rsp, 16
                        mov              r11, 32
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lmain_α_216_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_ident_α
n70_lit_string_β:       mov              r11, 32
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n68_statement_begin_β
.Lmain_α_216_0:         .quad            .Lmain_α_216_0_s
.Lmain_α_216_0_s:       .string          ""
                        .size            n70_lit_string_bx, .-n70_lit_string_bx
                        .type            n71_ident_bx, @function
n71_ident_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_ident_α:            sub              rsp, 16
                        mov              r11, 33
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
                        test             eax, eax;                            jne   .Lmain_α_218_240
                        add              rsp, 16;                             jmp   n70_lit_string_β
.Lmain_α_218_240:                                                             jmp   n72_call_α
n71_ident_β:            mov              r11, 33
                        add              rsp, 16;                             jmp   n70_lit_string_β
                        .size            n71_ident_bx, .-n71_ident_bx
                        .type            n72_call_bx, @function
n72_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_call_α:             sub              rsp, 16
                        mov              r11, 34
                        .section         .rodata
.Lrkfnzd220:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd220]
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
                        cmp              al, 104;                             jne   .Lmain_α_219_240
                        add              rsp, 16;                             jmp   n71_ident_β
.Lmain_α_219_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_assign_α
n72_call_β:             mov              r11, 34
                        add              rsp, 16;                             jmp   n71_ident_β
                        .size            n72_call_bx, .-n72_call_bx
                        .type            n73_assign_bx, @function
n73_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:           mov              r11, 35
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # mem
                        mov              qword ptr [r9 + 40], rdx;            jmp   n74_statement_end_α
                        .size            n73_assign_bx, .-n73_assign_bx
                        .type            n74_statement_end_bx, @function
n74_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_end_α:    mov              r11, 36
                        mov              r10, 3
                        add              rsp, 64;                             jmp   n75_statement_begin_α
                        .size            n74_statement_end_bx, .-n74_statement_end_bx
                        .type            n75_statement_begin_bx, @function
n75_statement_begin_bx:
#=======================================================================================================================
#         mem[num] = IDENT(mem[num]) TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_begin_α:  mov              r11, 37
                        mov              r10, 4;                              jmp   n76_var_α
n75_statement_begin_β:  mov              r11, 37;                             jmp   n87_statement_begin_α
                        .size            n75_statement_begin_bx, .-n75_statement_begin_bx
                        .type            n76_var_bx, @function
n76_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              sub              rsp, 16
                        mov              r11, 38
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_var_α
                        .size            n76_var_bx, .-n76_var_bx
                        .type            n77_var_bx, @function
n77_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              sub              rsp, 16
                        mov              r11, 39
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n78_var_α
n77_var_β:              mov              r11, 39
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n75_statement_begin_β
                        .size            n77_var_bx, .-n77_var_bx
                        .type            n78_var_bx, @function
n78_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:              sub              rsp, 16
                        mov              r11, 40
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_var_α
n78_var_β:              mov              r11, 40
                        add              rsp, 16;                             jmp   n77_var_β
                        .size            n78_var_bx, .-n78_var_bx
                        .type            n79_var_bx, @function
n79_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              sub              rsp, 16
                        mov              r11, 41
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_subscript_α
n79_var_β:              mov              r11, 41
                        add              rsp, 16;                             jmp   n78_var_β
                        .size            n79_var_bx, .-n79_var_bx
                        .type            n80_subscript_bx, @function
n80_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_subscript_α:        sub              rsp, 16
                        mov              r11, 42
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
                        cmp              al, 104;                             jne   .Lmain_α_230_240
                        add              rsp, 16;                             jmp   n79_var_β
.Lmain_α_230_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n81_deref_α
n80_subscript_β:        mov              r11, 42
                        add              rsp, 16;                             jmp   n79_var_β
                        .size            n80_subscript_bx, .-n80_subscript_bx
                        .type            n81_deref_bx, @function
n81_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_deref_α:            sub              rsp, 16
                        mov              r11, 43
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
                        cmp              al, 104;                             jne   .Lmain_α_231_240
                        add              rsp, 16;                             jmp   n80_subscript_β
.Lmain_α_231_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n82_lit_string_α
n81_deref_β:            mov              r11, 43
                        add              rsp, 16;                             jmp   n80_subscript_β
                        .size            n81_deref_bx, .-n81_deref_bx
                        .type            n82_lit_string_bx, @function
n82_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       sub              rsp, 16
                        mov              r11, 44
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lmain_α_232_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_ident_α
n82_lit_string_β:       mov              r11, 44
                        add              rsp, 16;                             jmp   n81_deref_β
.Lmain_α_232_0:         .quad            .Lmain_α_232_0_s
.Lmain_α_232_0_s:       .string          ""
                        .size            n82_lit_string_bx, .-n82_lit_string_bx
                        .type            n83_ident_bx, @function
n83_ident_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_ident_α:            sub              rsp, 16
                        mov              r11, 45
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
                        test             eax, eax;                            jne   .Lmain_α_234_240
                        add              rsp, 16;                             jmp   n82_lit_string_β
.Lmain_α_234_240:                                                             jmp   n84_call_α
n83_ident_β:            mov              r11, 45
                        add              rsp, 16;                             jmp   n82_lit_string_β
                        .size            n83_ident_bx, .-n83_ident_bx
                        .type            n84_call_bx, @function
n84_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_call_α:             sub              rsp, 16
                        mov              r11, 46
                        .section         .rodata
.Lrkfnzd236:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd236]
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
                        cmp              al, 104;                             jne   .Lmain_α_235_240
                        add              rsp, 16;                             jmp   n83_ident_β
.Lmain_α_235_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n85_assign_var_α
n84_call_β:             mov              r11, 46
                        add              rsp, 16;                             jmp   n83_ident_β
                        .size            n84_call_bx, .-n84_call_bx
                        .type            n85_assign_var_bx, @function
n85_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_var_α:       sub              rsp, 16
                        mov              r11, 47
                        mov              rdi, qword ptr [rsp + 144]           # var
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        cmp              dil, 24;                             jne   .Lmain_α_238_0
                        test             rsi, rsi;                            je    .Lmain_α_238_0
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
                        cmp              al, 104;                             jne   .Lmain_α_238_238
                        add              rsp, 32;                             jmp   n83_ident_β
.Lmain_α_238_238:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n86_statement_end_α
.Lmain_α_238_0:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_238_239
                        add              rsp, 32;                             jmp   n83_ident_β
.Lmain_α_238_239:       mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lmain_α_238_240
                        add              rsp, 32;                             jmp   n83_ident_β
.Lmain_α_238_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n86_statement_end_α
                        .size            n85_assign_var_bx, .-n85_assign_var_bx
                        .type            n86_statement_end_bx, @function
n86_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    mov              r11, 48
                        mov              r10, 4
                        add              rsp, 160;                            jmp   n87_statement_begin_α
                        .size            n86_statement_end_bx, .-n86_statement_end_bx
                        .type            n87_statement_begin_bx, @function
n87_statement_begin_bx:
#=======================================================================================================================
#         mem[num][wrd] = IDENT(mem[num][wrd]) TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:  mov              r11, 49
                        mov              r10, 5;                              jmp   n88_var_α
n87_statement_begin_β:  mov              r11, 49;                             jmp   n105_statement_begin_α
                        .size            n87_statement_begin_bx, .-n87_statement_begin_bx
                        .type            n88_var_bx, @function
n88_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              sub              rsp, 16
                        mov              r11, 50
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_var_α
                        .size            n88_var_bx, .-n88_var_bx
                        .type            n89_var_bx, @function
n89_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:              sub              rsp, 16
                        mov              r11, 51
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n90_subscript_α
n89_var_β:              mov              r11, 51
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n87_statement_begin_β
                        .size            n89_var_bx, .-n89_var_bx
                        .type            n90_subscript_bx, @function
n90_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_subscript_α:        sub              rsp, 16
                        mov              r11, 52
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
                        cmp              al, 104;                             jne   .Lmain_α_245_240
                        add              rsp, 16;                             jmp   n89_var_β
.Lmain_α_245_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n91_deref_α
n90_subscript_β:        mov              r11, 52
                        add              rsp, 16;                             jmp   n89_var_β
                        .size            n90_subscript_bx, .-n90_subscript_bx
                        .type            n91_deref_bx, @function
n91_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_deref_α:            sub              rsp, 16
                        mov              r11, 53
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
                        cmp              al, 104;                             jne   .Lmain_α_246_240
                        add              rsp, 16;                             jmp   n90_subscript_β
.Lmain_α_246_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n92_var_α
n91_deref_β:            mov              r11, 53
                        add              rsp, 16;                             jmp   n90_subscript_β
                        .size            n91_deref_bx, .-n91_deref_bx
                        .type            n92_var_bx, @function
n92_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              sub              rsp, 16
                        mov              r11, 54
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n93_var_α
n92_var_β:              mov              r11, 54
                        add              rsp, 16;                             jmp   n91_deref_β
                        .size            n92_var_bx, .-n92_var_bx
                        .type            n93_var_bx, @function
n93_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:              sub              rsp, 16
                        mov              r11, 55
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n94_var_α
n93_var_β:              mov              r11, 55
                        add              rsp, 16;                             jmp   n92_var_β
                        .size            n93_var_bx, .-n93_var_bx
                        .type            n94_var_bx, @function
n94_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:              sub              rsp, 16
                        mov              r11, 56
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n95_subscript_α
n94_var_β:              mov              r11, 56
                        add              rsp, 16;                             jmp   n93_var_β
                        .size            n94_var_bx, .-n94_var_bx
                        .type            n95_subscript_bx, @function
n95_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_subscript_α:        sub              rsp, 16
                        mov              r11, 57
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
                        cmp              al, 104;                             jne   .Lmain_α_250_240
                        add              rsp, 16;                             jmp   n94_var_β
.Lmain_α_250_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_deref_α
n95_subscript_β:        mov              r11, 57
                        add              rsp, 16;                             jmp   n94_var_β
                        .size            n95_subscript_bx, .-n95_subscript_bx
                        .type            n96_deref_bx, @function
n96_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_deref_α:            sub              rsp, 16
                        mov              r11, 58
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
                        cmp              al, 104;                             jne   .Lmain_α_251_240
                        add              rsp, 16;                             jmp   n95_subscript_β
.Lmain_α_251_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_var_α
n96_deref_β:            mov              r11, 58
                        add              rsp, 16;                             jmp   n95_subscript_β
                        .size            n96_deref_bx, .-n96_deref_bx
                        .type            n97_var_bx, @function
n97_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              sub              rsp, 16
                        mov              r11, 59
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_subscript_α
n97_var_β:              mov              r11, 59
                        add              rsp, 16;                             jmp   n96_deref_β
                        .size            n97_var_bx, .-n97_var_bx
                        .type            n98_subscript_bx, @function
n98_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_subscript_α:        sub              rsp, 16
                        mov              r11, 60
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
                        cmp              al, 104;                             jne   .Lmain_α_253_240
                        add              rsp, 16;                             jmp   n97_var_β
.Lmain_α_253_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n99_deref_α
n98_subscript_β:        mov              r11, 60
                        add              rsp, 16;                             jmp   n97_var_β
                        .size            n98_subscript_bx, .-n98_subscript_bx
                        .type            n99_deref_bx, @function
n99_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_deref_α:            sub              rsp, 16
                        mov              r11, 61
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
                        cmp              al, 104;                             jne   .Lmain_α_254_240
                        add              rsp, 16;                             jmp   n98_subscript_β
.Lmain_α_254_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_lit_string_α
n99_deref_β:            mov              r11, 61
                        add              rsp, 16;                             jmp   n98_subscript_β
                        .size            n99_deref_bx, .-n99_deref_bx
                        .type            n100_lit_string_bx, @function
n100_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:      sub              rsp, 16
                        mov              r11, 62
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lmain_α_255_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n101_ident_α
n100_lit_string_β:      mov              r11, 62
                        add              rsp, 16;                             jmp   n99_deref_β
.Lmain_α_255_0:         .quad            .Lmain_α_255_0_s
.Lmain_α_255_0_s:       .string          ""
                        .size            n100_lit_string_bx, .-n100_lit_string_bx
                        .type            n101_ident_bx, @function
n101_ident_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_ident_α:           sub              rsp, 16
                        mov              r11, 63
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
                        test             eax, eax;                            jne   .Lmain_α_257_240
                        add              rsp, 16;                             jmp   n100_lit_string_β
.Lmain_α_257_240:                                                             jmp   n102_call_α
n101_ident_β:           mov              r11, 63
                        add              rsp, 16;                             jmp   n100_lit_string_β
                        .size            n101_ident_bx, .-n101_ident_bx
                        .type            n102_call_bx, @function
n102_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_call_α:            sub              rsp, 16
                        mov              r11, 64
                        .section         .rodata
.Lrkfnzd259:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd259]
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
                        cmp              al, 104;                             jne   .Lmain_α_258_240
                        add              rsp, 16;                             jmp   n101_ident_β
.Lmain_α_258_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_assign_var_α
n102_call_β:            mov              r11, 64
                        add              rsp, 16;                             jmp   n101_ident_β
                        .size            n102_call_bx, .-n102_call_bx
                        .type            n103_assign_var_bx, @function
n103_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_var_α:      sub              rsp, 16
                        mov              r11, 65
                        mov              rdi, qword ptr [rsp + 192]           # deref
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 176]           # var
                        mov              rcx, qword ptr [rsp + 184]
                        cmp              dil, 24;                             jne   .Lmain_α_261_0
                        test             rsi, rsi;                            je    .Lmain_α_261_0
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
                        cmp              al, 104;                             jne   .Lmain_α_261_238
                        add              rsp, 32;                             jmp   n101_ident_β
.Lmain_α_261_238:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n104_statement_end_α
.Lmain_α_261_0:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_261_239
                        add              rsp, 32;                             jmp   n101_ident_β
.Lmain_α_261_239:       mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lmain_α_261_240
                        add              rsp, 32;                             jmp   n101_ident_β
.Lmain_α_261_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n104_statement_end_α
                        .size            n103_assign_var_bx, .-n103_assign_var_bx
                        .type            n104_statement_end_bx, @function
n104_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_end_α:   mov              r11, 66
                        mov              r10, 5
                        add              rsp, 256;                            jmp   n105_statement_begin_α
                        .size            n104_statement_end_bx, .-n104_statement_end_bx
                        .type            n105_statement_begin_bx, @function
n105_statement_begin_bx:
#=======================================================================================================================
#         mem[num][wrd][tag] = IDENT(mem[num][wrd][tag]) 0
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_begin_α: mov              r11, 67
                        mov              r10, 6;                              jmp   n106_var_α
n105_statement_begin_β: mov              r11, 67;                             jmp   n129_statement_begin_α
                        .size            n105_statement_begin_bx, .-n105_statement_begin_bx
                        .type            n106_var_bx, @function
n106_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             sub              rsp, 16
                        mov              r11, 68
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_var_α
                        .size            n106_var_bx, .-n106_var_bx
                        .type            n107_var_bx, @function
n107_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:             sub              rsp, 16
                        mov              r11, 69
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n108_subscript_α
n107_var_β:             mov              r11, 69
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n105_statement_begin_β
                        .size            n107_var_bx, .-n107_var_bx
                        .type            n108_subscript_bx, @function
n108_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_subscript_α:       sub              rsp, 16
                        mov              r11, 70
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
                        cmp              al, 104;                             jne   .Lmain_α_268_240
                        add              rsp, 16;                             jmp   n107_var_β
.Lmain_α_268_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_deref_α
n108_subscript_β:       mov              r11, 70
                        add              rsp, 16;                             jmp   n107_var_β
                        .size            n108_subscript_bx, .-n108_subscript_bx
                        .type            n109_deref_bx, @function
n109_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_deref_α:           sub              rsp, 16
                        mov              r11, 71
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
                        cmp              al, 104;                             jne   .Lmain_α_269_240
                        add              rsp, 16;                             jmp   n108_subscript_β
.Lmain_α_269_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n110_var_α
n109_deref_β:           mov              r11, 71
                        add              rsp, 16;                             jmp   n108_subscript_β
                        .size            n109_deref_bx, .-n109_deref_bx
                        .type            n110_var_bx, @function
n110_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:             sub              rsp, 16
                        mov              r11, 72
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n111_subscript_α
n110_var_β:             mov              r11, 72
                        add              rsp, 16;                             jmp   n109_deref_β
                        .size            n110_var_bx, .-n110_var_bx
                        .type            n111_subscript_bx, @function
n111_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_subscript_α:       sub              rsp, 16
                        mov              r11, 73
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
                        cmp              al, 104;                             jne   .Lmain_α_271_240
                        add              rsp, 16;                             jmp   n110_var_β
.Lmain_α_271_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_deref_α
n111_subscript_β:       mov              r11, 73
                        add              rsp, 16;                             jmp   n110_var_β
                        .size            n111_subscript_bx, .-n111_subscript_bx
                        .type            n112_deref_bx, @function
n112_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_deref_α:           sub              rsp, 16
                        mov              r11, 74
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
                        cmp              al, 104;                             jne   .Lmain_α_272_240
                        add              rsp, 16;                             jmp   n111_subscript_β
.Lmain_α_272_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_var_α
n112_deref_β:           mov              r11, 74
                        add              rsp, 16;                             jmp   n111_subscript_β
                        .size            n112_deref_bx, .-n112_deref_bx
                        .type            n113_var_bx, @function
n113_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:             sub              rsp, 16
                        mov              r11, 75
                        mov              rax, qword ptr [r9 + 64]             # tag
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n114_var_α
n113_var_β:             mov              r11, 75
                        add              rsp, 16;                             jmp   n112_deref_β
                        .size            n113_var_bx, .-n113_var_bx
                        .type            n114_var_bx, @function
n114_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             sub              rsp, 16
                        mov              r11, 76
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_var_α
n114_var_β:             mov              r11, 76
                        add              rsp, 16;                             jmp   n113_var_β
                        .size            n114_var_bx, .-n114_var_bx
                        .type            n115_var_bx, @function
n115_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:             sub              rsp, 16
                        mov              r11, 77
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n116_subscript_α
n115_var_β:             mov              r11, 77
                        add              rsp, 16;                             jmp   n114_var_β
                        .size            n115_var_bx, .-n115_var_bx
                        .type            n116_subscript_bx, @function
n116_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_subscript_α:       sub              rsp, 16
                        mov              r11, 78
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
                        cmp              al, 104;                             jne   .Lmain_α_276_240
                        add              rsp, 16;                             jmp   n115_var_β
.Lmain_α_276_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_deref_α
n116_subscript_β:       mov              r11, 78
                        add              rsp, 16;                             jmp   n115_var_β
                        .size            n116_subscript_bx, .-n116_subscript_bx
                        .type            n117_deref_bx, @function
n117_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_deref_α:           sub              rsp, 16
                        mov              r11, 79
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
                        cmp              al, 104;                             jne   .Lmain_α_277_240
                        add              rsp, 16;                             jmp   n116_subscript_β
.Lmain_α_277_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_var_α
n117_deref_β:           mov              r11, 79
                        add              rsp, 16;                             jmp   n116_subscript_β
                        .size            n117_deref_bx, .-n117_deref_bx
                        .type            n118_var_bx, @function
n118_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              r11, 80
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_subscript_α
n118_var_β:             mov              r11, 80
                        add              rsp, 16;                             jmp   n117_deref_β
                        .size            n118_var_bx, .-n118_var_bx
                        .type            n119_subscript_bx, @function
n119_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_subscript_α:       sub              rsp, 16
                        mov              r11, 81
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
                        cmp              al, 104;                             jne   .Lmain_α_279_240
                        add              rsp, 16;                             jmp   n118_var_β
.Lmain_α_279_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n120_deref_α
n119_subscript_β:       mov              r11, 81
                        add              rsp, 16;                             jmp   n118_var_β
                        .size            n119_subscript_bx, .-n119_subscript_bx
                        .type            n120_deref_bx, @function
n120_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_deref_α:           sub              rsp, 16
                        mov              r11, 82
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
                        cmp              al, 104;                             jne   .Lmain_α_280_240
                        add              rsp, 16;                             jmp   n119_subscript_β
.Lmain_α_280_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n121_var_α
n120_deref_β:           mov              r11, 82
                        add              rsp, 16;                             jmp   n119_subscript_β
                        .size            n120_deref_bx, .-n120_deref_bx
                        .type            n121_var_bx, @function
n121_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             sub              rsp, 16
                        mov              r11, 83
                        mov              rax, qword ptr [r9 + 64]             # tag
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_subscript_α
n121_var_β:             mov              r11, 83
                        add              rsp, 16;                             jmp   n120_deref_β
                        .size            n121_var_bx, .-n121_var_bx
                        .type            n122_subscript_bx, @function
n122_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_subscript_α:       sub              rsp, 16
                        mov              r11, 84
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
                        cmp              al, 104;                             jne   .Lmain_α_282_240
                        add              rsp, 16;                             jmp   n121_var_β
.Lmain_α_282_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n123_deref_α
n122_subscript_β:       mov              r11, 84
                        add              rsp, 16;                             jmp   n121_var_β
                        .size            n122_subscript_bx, .-n122_subscript_bx
                        .type            n123_deref_bx, @function
n123_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_deref_α:           sub              rsp, 16
                        mov              r11, 85
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
                        cmp              al, 104;                             jne   .Lmain_α_283_240
                        add              rsp, 16;                             jmp   n122_subscript_β
.Lmain_α_283_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_lit_string_α
n123_deref_β:           mov              r11, 85
                        add              rsp, 16;                             jmp   n122_subscript_β
                        .size            n123_deref_bx, .-n123_deref_bx
                        .type            n124_lit_string_bx, @function
n124_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:      sub              rsp, 16
                        mov              r11, 86
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lmain_α_284_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n125_ident_α
n124_lit_string_β:      mov              r11, 86
                        add              rsp, 16;                             jmp   n123_deref_β
.Lmain_α_284_0:         .quad            .Lmain_α_284_0_s
.Lmain_α_284_0_s:       .string          ""
                        .size            n124_lit_string_bx, .-n124_lit_string_bx
                        .type            n125_ident_bx, @function
n125_ident_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_ident_α:           sub              rsp, 16
                        mov              r11, 87
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
                        test             eax, eax;                            jne   .Lmain_α_286_240
                        add              rsp, 16;                             jmp   n124_lit_string_β
.Lmain_α_286_240:                                                             jmp   n126_lit_integer_α
n125_ident_β:           mov              r11, 87
                        add              rsp, 16;                             jmp   n124_lit_string_β
                        .size            n125_ident_bx, .-n125_ident_bx
                        .type            n126_lit_integer_bx, @function
n126_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:     sub              rsp, 16
                        mov              r11, 88
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_287_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_assign_var_α
n126_lit_integer_β:     mov              r11, 88
                        add              rsp, 16;                             jmp   n125_ident_β
.Lmain_α_287_0:         .quad            0
                        .size            n126_lit_integer_bx, .-n126_lit_integer_bx
                        .type            n127_assign_var_bx, @function
n127_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_var_α:      sub              rsp, 16
                        mov              r11, 89
                        mov              rdi, qword ptr [rsp + 240]           # deref
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 224]           # var
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lmain_α_289_0
                        test             rsi, rsi;                            je    .Lmain_α_289_0
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
                        cmp              al, 104;                             jne   .Lmain_α_289_238
                        add              rsp, 16;                             jmp   n126_lit_integer_β
.Lmain_α_289_238:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n128_statement_end_α
.Lmain_α_289_0:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_289_239
                        add              rsp, 16;                             jmp   n126_lit_integer_β
.Lmain_α_289_239:       mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lmain_α_289_240
                        add              rsp, 16;                             jmp   n126_lit_integer_β
.Lmain_α_289_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n128_statement_end_α
                        .size            n127_assign_var_bx, .-n127_assign_var_bx
                        .type            n128_statement_end_bx, @function
n128_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_end_α:   mov              r11, 90
                        mov              r10, 6
                        add              rsp, 352;                            jmp   n129_statement_begin_α
                        .size            n128_statement_end_bx, .-n128_statement_end_bx
                        .type            n129_statement_begin_bx, @function
n129_statement_begin_bx:
#=======================================================================================================================
#         mem[num][wrd][tag] = mem[num][wrd][tag] + 1
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_begin_α: mov              r11, 91
                        mov              r10, 7;                              jmp   n130_var_α
n129_statement_begin_β: mov              r11, 91;                             jmp   n152_statement_begin_α
                        .size            n129_statement_begin_bx, .-n129_statement_begin_bx
                        .type            n130_var_bx, @function
n130_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:             sub              rsp, 16
                        mov              r11, 92
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n131_var_α
                        .size            n130_var_bx, .-n130_var_bx
                        .type            n131_var_bx, @function
n131_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:             sub              rsp, 16
                        mov              r11, 93
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n132_subscript_α
n131_var_β:             mov              r11, 93
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n129_statement_begin_β
                        .size            n131_var_bx, .-n131_var_bx
                        .type            n132_subscript_bx, @function
n132_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_subscript_α:       sub              rsp, 16
                        mov              r11, 94
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
                        cmp              al, 104;                             jne   .Lmain_α_296_240
                        add              rsp, 16;                             jmp   n131_var_β
.Lmain_α_296_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_deref_α
n132_subscript_β:       mov              r11, 94
                        add              rsp, 16;                             jmp   n131_var_β
                        .size            n132_subscript_bx, .-n132_subscript_bx
                        .type            n133_deref_bx, @function
n133_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_deref_α:           sub              rsp, 16
                        mov              r11, 95
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
                        cmp              al, 104;                             jne   .Lmain_α_297_240
                        add              rsp, 16;                             jmp   n132_subscript_β
.Lmain_α_297_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n134_var_α
n133_deref_β:           mov              r11, 95
                        add              rsp, 16;                             jmp   n132_subscript_β
                        .size            n133_deref_bx, .-n133_deref_bx
                        .type            n134_var_bx, @function
n134_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:             sub              rsp, 16
                        mov              r11, 96
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_subscript_α
n134_var_β:             mov              r11, 96
                        add              rsp, 16;                             jmp   n133_deref_β
                        .size            n134_var_bx, .-n134_var_bx
                        .type            n135_subscript_bx, @function
n135_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_subscript_α:       sub              rsp, 16
                        mov              r11, 97
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
                        cmp              al, 104;                             jne   .Lmain_α_299_240
                        add              rsp, 16;                             jmp   n134_var_β
.Lmain_α_299_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n136_deref_α
n135_subscript_β:       mov              r11, 97
                        add              rsp, 16;                             jmp   n134_var_β
                        .size            n135_subscript_bx, .-n135_subscript_bx
                        .type            n136_deref_bx, @function
n136_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_deref_α:           sub              rsp, 16
                        mov              r11, 98
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
                        cmp              al, 104;                             jne   .Lmain_α_300_240
                        add              rsp, 16;                             jmp   n135_subscript_β
.Lmain_α_300_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_var_α
n136_deref_β:           mov              r11, 98
                        add              rsp, 16;                             jmp   n135_subscript_β
                        .size            n136_deref_bx, .-n136_deref_bx
                        .type            n137_var_bx, @function
n137_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             sub              rsp, 16
                        mov              r11, 99
                        mov              rax, qword ptr [r9 + 64]             # tag
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n138_var_α
n137_var_β:             mov              r11, 99
                        add              rsp, 16;                             jmp   n136_deref_β
                        .size            n137_var_bx, .-n137_var_bx
                        .type            n138_var_bx, @function
n138_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             sub              rsp, 16
                        mov              r11, 100
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_var_α
n138_var_β:             mov              r11, 100
                        add              rsp, 16;                             jmp   n137_var_β
                        .size            n138_var_bx, .-n138_var_bx
                        .type            n139_var_bx, @function
n139_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:             sub              rsp, 16
                        mov              r11, 101
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_subscript_α
n139_var_β:             mov              r11, 101
                        add              rsp, 16;                             jmp   n138_var_β
                        .size            n139_var_bx, .-n139_var_bx
                        .type            n140_subscript_bx, @function
n140_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_subscript_α:       sub              rsp, 16
                        mov              r11, 102
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
                        cmp              al, 104;                             jne   .Lmain_α_304_240
                        add              rsp, 16;                             jmp   n139_var_β
.Lmain_α_304_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_deref_α
n140_subscript_β:       mov              r11, 102
                        add              rsp, 16;                             jmp   n139_var_β
                        .size            n140_subscript_bx, .-n140_subscript_bx
                        .type            n141_deref_bx, @function
n141_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_deref_α:           sub              rsp, 16
                        mov              r11, 103
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
                        cmp              al, 104;                             jne   .Lmain_α_305_240
                        add              rsp, 16;                             jmp   n140_subscript_β
.Lmain_α_305_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_var_α
n141_deref_β:           mov              r11, 103
                        add              rsp, 16;                             jmp   n140_subscript_β
                        .size            n141_deref_bx, .-n141_deref_bx
                        .type            n142_var_bx, @function
n142_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             sub              rsp, 16
                        mov              r11, 104
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_subscript_α
n142_var_β:             mov              r11, 104
                        add              rsp, 16;                             jmp   n141_deref_β
                        .size            n142_var_bx, .-n142_var_bx
                        .type            n143_subscript_bx, @function
n143_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_subscript_α:       sub              rsp, 16
                        mov              r11, 105
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
                        cmp              al, 104;                             jne   .Lmain_α_307_240
                        add              rsp, 16;                             jmp   n142_var_β
.Lmain_α_307_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_deref_α
n143_subscript_β:       mov              r11, 105
                        add              rsp, 16;                             jmp   n142_var_β
                        .size            n143_subscript_bx, .-n143_subscript_bx
                        .type            n144_deref_bx, @function
n144_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_deref_α:           sub              rsp, 16
                        mov              r11, 106
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
                        cmp              al, 104;                             jne   .Lmain_α_308_240
                        add              rsp, 16;                             jmp   n143_subscript_β
.Lmain_α_308_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n145_var_α
n144_deref_β:           mov              r11, 106
                        add              rsp, 16;                             jmp   n143_subscript_β
                        .size            n144_deref_bx, .-n144_deref_bx
                        .type            n145_var_bx, @function
n145_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:             sub              rsp, 16
                        mov              r11, 107
                        mov              rax, qword ptr [r9 + 64]             # tag
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n146_subscript_α
n145_var_β:             mov              r11, 107
                        add              rsp, 16;                             jmp   n144_deref_β
                        .size            n145_var_bx, .-n145_var_bx
                        .type            n146_subscript_bx, @function
n146_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_subscript_α:       sub              rsp, 16
                        mov              r11, 108
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
                        cmp              al, 104;                             jne   .Lmain_α_310_240
                        add              rsp, 16;                             jmp   n145_var_β
.Lmain_α_310_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n147_deref_α
n146_subscript_β:       mov              r11, 108
                        add              rsp, 16;                             jmp   n145_var_β
                        .size            n146_subscript_bx, .-n146_subscript_bx
                        .type            n147_deref_bx, @function
n147_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_deref_α:           sub              rsp, 16
                        mov              r11, 109
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
                        cmp              al, 104;                             jne   .Lmain_α_311_240
                        add              rsp, 16;                             jmp   n146_subscript_β
.Lmain_α_311_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_lit_integer_α
n147_deref_β:           mov              r11, 109
                        add              rsp, 16;                             jmp   n146_subscript_β
                        .size            n147_deref_bx, .-n147_deref_bx
                        .type            n148_lit_integer_bx, @function
n148_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:     sub              rsp, 16
                        mov              r11, 110
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_312_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n149_binop_α
n148_lit_integer_β:     mov              r11, 110
                        add              rsp, 16;                             jmp   n147_deref_β
.Lmain_α_312_0:         .quad            1
                        .size            n148_lit_integer_bx, .-n148_lit_integer_bx
                        .type            n149_binop_bx, @function
n149_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_binop_α:           sub              rsp, 16
                        mov              r11, 111
                        mov              ecx, dword ptr [rsp + 32]            # deref
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lmain_α_313_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmain_α_313_7
.Lmain_α_313_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lmain_α_313_0
                        mov              rsi, qword ptr [rsp + 40]            # deref
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lmain_α_313_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lmain_α_313_4
.Lmain_α_313_3:         movq             xmm0, rsi
.Lmain_α_313_4:         cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lmain_α_313_7:                                                               jmp   n150_assign_var_α
.Lmain_α_313_0:         mov              rdi, qword ptr [rsp + 32]            # deref
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
                        cmp              al, 104;                             jne   .Lmain_α_313_240
                        add              rsp, 16;                             jmp   n148_lit_integer_β
.Lmain_α_313_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n150_assign_var_α
n149_binop_β:           mov              r11, 111
                        add              rsp, 16;                             jmp   n148_lit_integer_β
                        .size            n149_binop_bx, .-n149_binop_bx
                        .type            n150_assign_var_bx, @function
n150_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_assign_var_α:      sub              rsp, 16
                        mov              r11, 112
                        mov              rdi, qword ptr [rsp + 224]           # deref
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 208]           # var
                        mov              rcx, qword ptr [rsp + 216]
                        cmp              dil, 24;                             jne   .Lmain_α_315_0
                        test             rsi, rsi;                            je    .Lmain_α_315_0
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
                        cmp              al, 104;                             jne   .Lmain_α_315_238
                        add              rsp, 16;                             jmp   n149_binop_β
.Lmain_α_315_238:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n151_statement_end_α
.Lmain_α_315_0:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_315_239
                        add              rsp, 16;                             jmp   n149_binop_β
.Lmain_α_315_239:       mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lmain_α_315_240
                        add              rsp, 16;                             jmp   n149_binop_β
.Lmain_α_315_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n151_statement_end_α
                        .size            n150_assign_var_bx, .-n150_assign_var_bx
                        .type            n151_statement_end_bx, @function
n151_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:   mov              r11, 113
                        mov              r10, 7
                        add              rsp, 336;                            jmp   n152_statement_begin_α
                        .size            n151_statement_end_bx, .-n151_statement_end_bx
                        .type            n152_statement_begin_bx, @function
n152_statement_begin_bx:
#=======================================================================================================================
#         token = .dummy  :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_begin_α: mov              r11, 114
                        mov              r10, 8;                              jmp   n153_lit_name_α
n152_statement_begin_β: mov              r11, 114;                            jmp   NRETURN
                        .size            n152_statement_begin_bx, .-n152_statement_begin_bx
                        .type            n153_lit_name_bx, @function
n153_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_name_α:        sub              rsp, 16
                        mov              r11, 115
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lmain_α_320_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_assign_α
.Lmain_α_320_0:         .quad            .Lmain_α_320_0_s
.Lmain_α_320_0_s:       .string          "dummy"
                        .size            n153_lit_name_bx, .-n153_lit_name_bx
                        .type            n154_assign_bx, @function
n154_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_α:          mov              r11, 116
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # token
                        mov              qword ptr [r9 + 8], rdx;             jmp   n155_statement_end_α
                        .size            n154_assign_bx, .-n154_assign_bx
                        .type            n155_statement_end_bx, @function
n155_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_end_α:   mov              r11, 117
                        mov              r10, 8
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n155_statement_end_bx, .-n155_statement_end_bx
                        .type            n156_statement_begin_bx, @function
n156_statement_begin_bx:
#=======================================================================================================================
# token_end  <stmt 9, line 11: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_begin_α: mov              r11, 118
                        mov              r10, 9;                              jmp   n157_statement_end_α
n156_statement_begin_β: mov              r11, 118;                            jmp   n158_statement_begin_α
                        .size            n156_statement_begin_bx, .-n156_statement_begin_bx
                        .type            n157_statement_end_bx, @function
n157_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:   mov              r11, 119
                        mov              r10, 9;                              jmp   n158_statement_begin_α
                        .size            n157_statement_end_bx, .-n157_statement_end_bx
                        .type            n158_statement_begin_bx, @function
n158_statement_begin_bx:
#=======================================================================================================================
#         &TRIM   =   0
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_begin_α: mov              r11, 120
                        mov              r10, 10;                             jmp   n159_lit_integer_α
n158_statement_begin_β: mov              r11, 120;                            jmp   n162_statement_begin_α
                        .size            n158_statement_begin_bx, .-n158_statement_begin_bx
                        .type            n159_lit_integer_bx, @function
n159_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:     sub              rsp, 16
                        mov              r11, 121
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_330_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n160_kw_assign_snobol4_α
.Lmain_α_330_0:         .quad            0
                        .size            n159_lit_integer_bx, .-n159_lit_integer_bx
                        .type            n160_kw_assign_snobol4_bx, @function
n160_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 122
                        mov              rdi, qword ptr [rip + .Lmain_α_331_0]
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
                        cmp              al, 104;                             jne   .Lmain_α_331_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n158_statement_begin_β
.Lmain_α_331_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n161_statement_end_α
.Lmain_α_331_0:         .quad            1
                        .size            n160_kw_assign_snobol4_bx, .-n160_kw_assign_snobol4_bx
                        .type            n161_statement_end_bx, @function
n161_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_end_α:   mov              r11, 123
                        mov              r10, 10
                        add              rsp, 32;                             jmp   n162_statement_begin_α
                        .size            n161_statement_end_bx, .-n161_statement_end_bx
                        .type            n162_statement_begin_bx, @function
n162_statement_begin_bx:
#=======================================================================================================================
#         claws   =   POS(0)
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_begin_α: mov              r11, 124
                        mov              r10, 11;                             jmp   n163_lit_string_α
n162_statement_begin_β: mov              r11, 124;                            jmp   n167_statement_begin_α
                        .size            n162_statement_begin_bx, .-n162_statement_begin_bx
                        .type            n163_lit_string_bx, @function
n163_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:      sub              rsp, 16
                        mov              r11, 125
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_336_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n164_call_α
.Lmain_α_336_0:         .quad            .Lmain_α_336_0_s
.Lmain_α_336_0_s:       .string          "PAT$0"
                        .size            n163_lit_string_bx, .-n163_lit_string_bx
                        .type            n164_call_bx, @function
n164_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_call_α:            sub              rsp, 16
                        mov              r11, 126
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd338:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd338]
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
                        cmp              al, 104;                             jne   .Lmain_α_337_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n162_statement_begin_β
.Lmain_α_337_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n165_assign_α
n164_call_β:            mov              r11, 126
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n162_statement_begin_β
                        .size            n164_call_bx, .-n164_call_bx
                        .type            n165_assign_bx, @function
n165_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_assign_α:          mov              r11, 127
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # claws
                        mov              qword ptr [r9 + 104], rdx;           jmp   n166_statement_end_α
                        .size            n165_assign_bx, .-n165_assign_bx
                        .type            n166_statement_end_bx, @function
n166_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_end_α:   mov              r11, 128
                        mov              r10, 11
                        add              rsp, 32;                             jmp   n167_statement_begin_α
                        .size            n166_statement_end_bx, .-n166_statement_end_bx
                        .type            n167_statement_begin_bx, @function
n167_statement_begin_bx:
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_begin_α: mov              r11, 129
                        mov              r10, 12;                             jmp   n168_lit_name_α
n167_statement_begin_β: mov              r11, 129;                            jmp   n173_statement_begin_α
                        .size            n167_statement_begin_bx, .-n167_statement_begin_bx
                        .type            n168_lit_name_bx, @function
n168_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_name_α:        sub              rsp, 16
                        mov              r11, 130
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lmain_α_344_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n169_lit_integer_α
.Lmain_α_344_0:         .quad            .Lmain_α_344_0_s
.Lmain_α_344_0_s:       .string          "INPUT"
                        .size            n168_lit_name_bx, .-n168_lit_name_bx
                        .type            n169_lit_integer_bx, @function
n169_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:     sub              rsp, 16
                        mov              r11, 131
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_345_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n170_lit_string_α
n169_lit_integer_β:     mov              r11, 131
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n167_statement_begin_β
.Lmain_α_345_0:         .quad            9
                        .size            n169_lit_integer_bx, .-n169_lit_integer_bx
                        .type            n170_lit_string_bx, @function
n170_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:      sub              rsp, 16
                        mov              r11, 132
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lmain_α_346_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n171_call_α
n170_lit_string_β:      mov              r11, 132
                        add              rsp, 16;                             jmp   n169_lit_integer_β
.Lmain_α_346_0:         .quad            .Lmain_α_346_0_s
.Lmain_α_346_0_s:       .string          "[-f0 -r4194304]"
                        .size            n170_lit_string_bx, .-n170_lit_string_bx
                        .type            n171_call_bx, @function
n171_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_call_α:            sub              rsp, 16
                        mov              r11, 133
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
.Lbynamefnzd133:        .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd133]
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
                        cmp              al, 104;                             jne   .Lmain_α_347_240
                        add              rsp, 16;                             jmp   n170_lit_string_β
.Lmain_α_347_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n172_statement_end_α
n171_call_β:            mov              r11, 133
                        add              rsp, 16;                             jmp   n170_lit_string_β
                        .size            n171_call_bx, .-n171_call_bx
                        .type            n172_statement_end_bx, @function
n172_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_end_α:   mov              r11, 134
                        mov              r10, 12
                        add              rsp, 64;                             jmp   n173_statement_begin_α
                        .size            n172_statement_end_bx, .-n172_statement_end_bx
                        .type            n173_statement_begin_bx, @function
n173_statement_begin_bx:
#=======================================================================================================================
#         src     =   INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_begin_α: mov              r11, 135
                        mov              r10, 13;                             jmp   n174_var_α
n173_statement_begin_β: mov              r11, 135;                            jmp   n192_statement_begin_α
                        .size            n173_statement_begin_bx, .-n173_statement_begin_bx
                        .type            n174_var_bx, @function
n174_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_var_α:             sub              rsp, 16
                        mov              r11, 136
                        mov              rdi, qword ptr [rip + .Lmain_α_352_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_352_240
                        add              rsp, 16;                             jmp   n173_statement_begin_β
.Lmain_α_352_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n175_assign_α
.Lmain_α_352_0:         .quad            .Lmain_α_352_0_s
.Lmain_α_352_0_s:       .string          "INPUT"
                        .size            n174_var_bx, .-n174_var_bx
                        .type            n175_assign_bx, @function
n175_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_assign_α:          mov              r11, 137
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # src
                        mov              qword ptr [r9 + 120], rdx;           jmp   n176_statement_end_α
                        .size            n175_assign_bx, .-n175_assign_bx
                        .type            n176_statement_end_bx, @function
n176_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:   mov              r11, 138
                        mov              r10, 13
                        add              rsp, 16;                             jmp   n177_statement_begin_α
                        .size            n176_statement_end_bx, .-n176_statement_end_bx
                        .type            n177_statement_begin_bx, @function
n177_statement_begin_bx:
#=======================================================================================================================
#         src     ?   claws  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_begin_α: mov              r11, 139
                        mov              r10, 14;                             jmp   n178_var_α
n177_statement_begin_β: mov              r11, 139;                            jmp   n192_statement_begin_α
                        .size            n177_statement_begin_bx, .-n177_statement_begin_bx
                        .type            n178_var_bx, @function
n178_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:             sub              rsp, 16
                        mov              r11, 140
                        mov              rax, qword ptr [r9 + 112]            # src
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_var_α
                        .size            n178_var_bx, .-n178_var_bx
                        .type            n179_var_bx, @function
n179_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_var_α:             sub              rsp, 16
                        mov              r11, 141
                        mov              rax, qword ptr [r9 + 96]             # claws
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n180_assign_α
n179_var_β:             mov              r11, 141
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n192_statement_begin_α
                        .size            n179_var_bx, .-n179_var_bx
                        .type            n180_assign_bx, @function
n180_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_assign_α:          mov              r11, 142
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_360_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n181_match_begin_α
n180_assign_β:          mov              r11, 142;                            jmp   n179_var_β
.Lmain_α_360_0:         .quad            .Lmain_α_360_0_s
.Lmain_α_360_0_s:       .string          "PATV$0"
                        .size            n180_assign_bx, .-n180_assign_bx
                        .type            n181_match_begin_bx, @function
n181_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_match_begin_α:     mov              r11, 143
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
.Lmain_α_362_0:         mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmain_α_362_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n182_match_defer_α
n181_match_begin_β:     mov              r11, 143
.Lmain_α_362_13:        lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmain_β_362_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmain_β_362_1
                                                                              jmp   .Lmain_α_362_0
.Lmain_β_362_1:
n181_match_begin_af:    mov              r11, 143
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
                        pop              rbp;                                 jmp   n180_assign_β
                        .size            n181_match_begin_bx, .-n181_match_begin_bx
                        .type            n182_match_defer_bx, @function
n182_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_match_defer_α:     mov              r11, 144
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S4]
                        cmp              rax, rdx;                            jne   .Lmain_α_363_30
                        mov              rax, qword ptr [rcx + 8]
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              jne   .Lmain_α_363_30
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmain_α_363_30
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmain_α_363_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmain_α_363_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmain_α_363_0
.Lmain_α_363_31:        mov              edx, -1;                             jmp   .Lmain_α_363_0
.Lmain_α_363_30:        lea              rsi, [rip + g_sno_defer_cells+16384]
                        lea              rdi, [rip + .S4]
                        mov              rcx, qword ptr [rsi + 0]
                        cmp              rcx, rdi;                            jne   .Lmain_α_363_22
                        mov              rcx, qword ptr [rsi + 8]
                        test             rcx, rcx;                            je    .Lmain_α_363_22
                        mov              rax, qword ptr [rcx + 0]
                        cmp              al, 8;                               jne   .Lmain_α_363_22
                        mov              rdx, qword ptr [rcx + 8]
                        test             rdx, rdx;                            je    .Lmain_α_363_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmain_α_363_23
.Lmain_α_363_22:        push             r14
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
.Lmain_α_363_23:        test             rax, rax;                            jz    .Lmain_α_363_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lmain_α_363_5]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_363_4]
                        push             rcx;                                 jmp   rax
.Lmain_α_363_4:                                                               jmp   n183_match_end_α
.Lmain_α_363_5:                                                               jmp   n181_match_begin_β
.Lmain_α_363_0:         mov              eax, edx
                        test             eax, eax;                            js    n181_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmain_α_363_6]
                        push             rcx
                        push             rax;                                 jmp   n183_match_end_α
.Lmain_α_363_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n181_match_begin_β
n182_match_defer_β:     mov              r11, 144
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmain_β_363_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmain_β_363_12
                                                                              jmp   rax
.Lmain_β_363_12:                                                              jmp   qword ptr [rsp]
                        .size            n182_match_defer_bx, .-n182_match_defer_bx
                        .type            n183_match_end_bx, @function
n183_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_match_end_α:       mov              r11, 145
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
                        test             rax, rax;                            je    .Lmain_α_365_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n181_match_begin_af
.Lmain_α_365_13:        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n184_statement_end_α
                        .size            n183_match_end_bx, .-n183_match_end_bx
                        .type            n184_statement_end_bx, @function
n184_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_end_α:   mov              r11, 146
                        mov              r10, 14
                        add              rsp, 32;                             jmp   n185_statement_begin_α
                        .size            n184_statement_end_bx, .-n184_statement_end_bx
                        .type            n185_statement_begin_bx, @function
n185_statement_begin_bx:
#=======================================================================================================================
#         OUTPUT  =   'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_begin_α: mov              r11, 147
                        mov              r10, 15;                             jmp   n186_lit_string_α
n185_statement_begin_β: mov              r11, 147;                            jmp   main_γ
                        .size            n185_statement_begin_bx, .-n185_statement_begin_bx
                        .type            n186_lit_string_bx, @function
n186_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:      sub              rsp, 16
                        mov              r11, 148
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lmain_α_370_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n187_var_α
.Lmain_α_370_0:         .quad            .Lmain_α_370_0_s
.Lmain_α_370_0_s:       .string          "matched bytes="
                        .size            n186_lit_string_bx, .-n186_lit_string_bx
                        .type            n187_var_bx, @function
n187_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_var_α:             sub              rsp, 16
                        mov              r11, 149
                        mov              rax, qword ptr [r9 + 112]            # src
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n188_call_α
n187_var_β:             mov              r11, 149
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n185_statement_begin_β
                        .size            n187_var_bx, .-n187_var_bx
                        .type            n188_call_bx, @function
n188_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_call_α:            sub              rsp, 16
                        mov              r11, 150
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd373:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd373]
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
                        cmp              al, 104;                             jne   .Lmain_α_372_240
                        add              rsp, 16;                             jmp   n187_var_β
.Lmain_α_372_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n189_binop_α
n188_call_β:            mov              r11, 150
                        add              rsp, 16;                             jmp   n187_var_β
                        .size            n188_call_bx, .-n188_call_bx
                        .type            n189_binop_bx, @function
n189_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_binop_α:           sub              rsp, 16
                        mov              r11, 151
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n190_assign_α
                        .size            n189_binop_bx, .-n189_binop_bx
                        .type            n190_assign_bx, @function
n190_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_assign_α:          mov              r11, 152
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_375_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n191_statement_end_α
.Lmain_α_375_0:         .quad            .Lmain_α_375_0_s
.Lmain_α_375_0_s:       .string          "OUTPUT"
                        .size            n190_assign_bx, .-n190_assign_bx
                        .type            n191_statement_end_bx, @function
n191_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_end_α:   mov              r11, 153
                        mov              r10, 15
                        add              rsp, 64;                             jmp   main_γ
                        .size            n191_statement_end_bx, .-n191_statement_end_bx
                        .type            n192_statement_begin_bx, @function
n192_statement_begin_bx:
#=======================================================================================================================
# error   OUTPUT  =   'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_begin_α: mov              r11, 154
                        mov              r10, 16;                             jmp   n193_lit_string_α
n192_statement_begin_β: mov              r11, 154;                            jmp   main_γ
                        .size            n192_statement_begin_bx, .-n192_statement_begin_bx
                        .type            n193_lit_string_bx, @function
n193_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:      sub              rsp, 16
                        mov              r11, 155
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lmain_α_380_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n194_assign_α
.Lmain_α_380_0:         .quad            .Lmain_α_380_0_s
.Lmain_α_380_0_s:       .string          "Pattern match failed"
                        .size            n193_lit_string_bx, .-n193_lit_string_bx
                        .type            n194_assign_bx, @function
n194_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_assign_α:          mov              r11, 156
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_381_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n195_statement_end_α
.Lmain_α_381_0:         .quad            .Lmain_α_381_0_s
.Lmain_α_381_0_s:       .string          "OUTPUT"
                        .size            n194_assign_bx, .-n194_assign_bx
                        .type            n195_statement_end_bx, @function
n195_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_end_α:   mov              r11, 157
                        mov              r10, 16
                        add              rsp, 16;                             jmp   main_γ
                        .size            n195_statement_end_bx, .-n195_statement_end_bx
                        .type            n196_define_bx, @function
n196_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 158
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
                        .size            n196_define_bx, .-n196_define_bx
                        .type            n197_define_bx, @function
n197_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              r11, 159
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
                        .size            n197_define_bx, .-n197_define_bx
                        .type            n198_lit_string_bx, @function
n198_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              r11, 160
                        push             rax
                        mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rax + 0], 1
                        pop              rax;                                 jmp   RETURN
                        .size            n198_lit_string_bx, .-n198_lit_string_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
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
