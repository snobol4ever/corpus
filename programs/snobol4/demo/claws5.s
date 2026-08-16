                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 120
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
#-----------------------------------------------------------------------------------------------------------------------
n0_match_pos_α:         mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$0_ω
                                                                              jmp   n1_match_arbno_α
n0_match_pos_β:                                                               jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_arbno_α:       mov              dword ptr [rbp + -32], r14d
                        mov              dword ptr [rbp + -28], r14d;         jmp   n2_match_rpos_α
n1_match_arbno_β:                                                             jmp   n3_match_alternate_α
n1_match_arbno_as:      mov              eax, dword ptr [rbp + -28]
                        cmp              r14d, eax;                           je    n3_match_alternate_β
                        mov              dword ptr [rbp + -28], r14d;         jmp   n2_match_rpos_α
n1_match_arbno_af:      mov              eax, dword ptr [rbp + -32]
                        cmp              r14d, eax;                           jne   n3_match_alternate_β
                                                                              jmp   n0_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n2_match_rpos_α:        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n1_match_arbno_β
                                                                              jmp   PAT$0_γ
#-----------------------------------------------------------------------------------------------------------------------
n3_match_alternate_α:   sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx31_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n19_match_assign_save_α
.Lx31_21:               lea              rax, [rip + .Lx31_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n6_match_assign_save_α
n3_match_alternate_s0:  lea              rax, [rip + .Lx31_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_match_alternate_as
n3_match_alternate_s1:  lea              rax, [rip + .Lx31_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_match_alternate_as
.Lx31_40:                                                                     jmp   n18_goto_β
.Lx31_41:                                                                     jmp   n5_goto_β
n3_match_alternate_as:                                                        jmp   n4_match_span_α
n3_match_alternate_β:   mov              rax, qword ptr [rsp + 8];            jmp   rax
n3_match_alternate_af:  mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx31_19:               add              rsp, 32;                             jmp   n1_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n4_match_span_α:        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx33_0:                cmp              ecx, r15d;                           jge   .Lx33_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lx33_10
                        cmp              esi, 10;                             je    .Lx33_10
                                                                              jmp   .Lx33_1
.Lx33_10:               add              ecx, 1;                              jmp   .Lx33_0
.Lx33_1:                cmp              ecx, r14d;                           jg    .Lx33_240
                        add              rsp, 16;                             jmp   n3_match_alternate_β
.Lx33_240:              mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   n1_match_arbno_as
n4_match_span_β:        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   n3_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n5_goto_α:                                                                    jmp   n3_match_alternate_af
n5_goto_β:                                                                    jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n6_match_assign_save_α: mov              dword ptr [rbp + -80], r14d;         jmp   n7_match_notany_α
n6_match_assign_save_β:                                                       jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n7_match_notany_α:      mov              eax, r14d
                        cmp              eax, r15d;                           jge   n6_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    n6_match_assign_save_β
                        add              r14d, 1;                             jmp   n8_match_break_α
n7_match_notany_β:      sub              r14d, 1;                             jmp   n6_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_break_α:       sub              rsp, 16
                        movsxd           rcx, r14d
.Lx39_0:                cmp              ecx, r15d;                           jl    .Lx39_240
                        add              rsp, 16;                             jmp   n7_match_notany_β
.Lx39_240:              movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lx39_1
                        add              ecx, 1;                              jmp   .Lx39_0
.Lx39_1:                mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx;                           jmp   n9_match_assign_cond_α
n8_match_break_β:       mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n7_match_notany_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_assign_cond_α: mov              eax, dword ptr [rbp + -80]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n10_match_lit_α
n9_match_assign_cond_β: sub              r12, 24;                             jmp   n9_match_assign_cond_α
#-----------------------------------------------------------------------------------------------------------------------
n10_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n9_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95;                             jne   n9_match_assign_cond_β
                        add              r14d, 1;                             jmp   n11_match_assign_save_α
n10_match_lit_β:        sub              r14d, 1;                             jmp   n9_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n11_match_assign_save_α:
                        mov              dword ptr [rbp + -96], r14d;         jmp   n12_match_any_α
n11_match_assign_save_β:
                                                                              jmp   n10_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n12_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n11_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n11_match_assign_save_β
                        add              r14d, 1;                             jmp   n13_match_span_α
n12_match_any_β:        sub              r14d, 1;                             jmp   n11_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n13_match_span_α:       sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx49_0:                cmp              ecx, r15d;                           jge   .Lx49_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx49_1
                        add              ecx, 1;                              jmp   .Lx49_0
.Lx49_1:                cmp              ecx, r14d;                           jg    .Lx49_240
                        add              rsp, 16;                             jmp   n12_match_any_β
.Lx49_240:              mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   n14_match_assign_cond_α
n13_match_span_β:       mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   n12_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -96]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n15_match_assign_save_α
n14_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n14_match_assign_cond_α
#-----------------------------------------------------------------------------------------------------------------------
n15_match_assign_save_α:
                        mov              dword ptr [rbp + -112], r14d;        jmp   n16_match_defer_α
n15_match_assign_save_β:
                                                                              jmp   n14_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n16_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S2]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx54_16
                        mov              rax, qword ptr [rdx + 0]
.Lx54_16:               test             rax, rax;                            jz    .Lx54_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx54_4]
                        lea              r11, [rip + .Lx54_5];                jmp   rax
.Lx54_4:                                                                      jmp   n17_match_assign_cond_α
.Lx54_5:                                                                      jmp   n15_match_assign_save_β
.Lx54_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S2]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n15_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx54_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n17_match_assign_cond_α
.Lx54_6:                add              rsp, 16;                             jmp   n15_match_assign_save_β
n16_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n17_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -112]
                        lea              rcx, [rip + .S3]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n3_match_alternate_s1
n17_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n16_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n18_goto_α:                                                                   jmp   n3_match_alternate_af
n18_goto_β:                                                                   jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n19_match_assign_save_α:
                        mov              dword ptr [rbp + -48], r14d;         jmp   n20_match_span_α
n19_match_assign_save_β:
                                                                              jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n20_match_span_α:       sub              rsp, 16
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lx61_0:                cmp              ecx, r15d;                           jge   .Lx61_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx61_1
                        add              ecx, 1;                              jmp   .Lx61_0
.Lx61_1:                cmp              ecx, r14d;                           jg    .Lx61_240
                        add              rsp, 16;                             jmp   n19_match_assign_save_β
.Lx61_240:              mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   n21_match_assign_cond_α
n20_match_span_β:       mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   n19_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S4]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n22_match_lit_α
n21_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n20_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_lit_α:        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d;                           jg    n21_match_assign_cond_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax;                            jne   n21_match_assign_cond_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85;                             jne   n21_match_assign_cond_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78;                             jne   n21_match_assign_cond_β
                        add              r14d, 10;                            jmp   n23_match_assign_save_α
n22_match_lit_β:        sub              r14d, 10;                            jmp   n21_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n23_match_assign_save_α:
                        mov              dword ptr [rbp + -64], r14d;         jmp   n24_match_defer_α
n23_match_assign_save_β:
                                                                              jmp   n22_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n24_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S5]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx68_16
                        mov              rax, qword ptr [rdx + 0]
.Lx68_16:               test             rax, rax;                            jz    .Lx68_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx68_4]
                        lea              r11, [rip + .Lx68_5];                jmp   rax
.Lx68_4:                                                                      jmp   n25_match_assign_cond_α
.Lx68_5:                                                                      jmp   n23_match_assign_save_β
.Lx68_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S5]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n23_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx68_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n25_match_assign_cond_α
.Lx68_6:                add              rsp, 16;                             jmp   n23_match_assign_save_β
n24_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n25_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -64]
                        lea              rcx, [rip + .S6]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n3_match_alternate_s0
n25_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n24_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + PAT$0_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             main_init
                        mov              edi, 38
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 38
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
main_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname6:       .string          "PAT$0"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__PAT$0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            448
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "new_sent"
.Lgvan1:                .string          "add_tok"
.Lgvan2:                .string          "pp_mem"
.Lgvan3:                .string          "mem"
.Lgvan4:                .string          "ssk"
.Lgvan5:                .string          "si"
.Lgvan6:                .string          "sentno"
.Lgvan7:                .string          "wsk"
.Lgvan8:                .string          "wi"
.Lgvan9:                .string          "wkey"
.Lgvan10:               .string          "wq"
.Lgvan11:               .string          "wrd"
.Lgvan12:               .string          "tsk"
.Lgvan13:               .string          "ti"
.Lgvan14:               .string          "tag"
.Lgvan15:               .string          "tv"
.Lgvan16:               .string          "tline"
.Lgvan17:               .string          "pfx"
.Lgvan18:               .string          "pad"
.Lgvan19:               .string          "next_wkey"
.Lgvan20:               .string          "last_sent"
.Lgvan21:               .string          "lline"
.Lgvan22:               .string          "ns"
.Lgvan23:               .string          "nl"
.Lgvan24:               .string          "DIGITS"
.Lgvan25:               .string          "UCASE"
.Lgvan26:               .string          "num"
.Lgvan27:               .string          "dummy"
.Lgvan28:               .string          "line"
.Lgvan29:               .string          "b1"
.Lgvan30:               .string          "b2"
.Lgvan31:               .string          "src"
.Lgvan32:               .string          "claws"
.Lgvan33:               .string          "epsilon"
.Lgvan34:               .string          "t0"
.Lgvan35:               .string          "t1"
.Lgvan36:               .string          "PAT$0$V0"
.Lgvan37:               .string          "PAT$0$V1"
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
                        .quad            .Lgvan8
                        .quad            .Lgvan9
                        .quad            .Lgvan10
                        .quad            .Lgvan11
                        .quad            .Lgvan12
                        .quad            .Lgvan13
                        .quad            .Lgvan14
                        .quad            .Lgvan15
                        .quad            .Lgvan16
                        .quad            .Lgvan17
                        .quad            .Lgvan18
                        .quad            .Lgvan19
                        .quad            .Lgvan20
                        .quad            .Lgvan21
                        .quad            .Lgvan22
                        .quad            .Lgvan23
                        .quad            .Lgvan24
                        .quad            .Lgvan25
                        .quad            .Lgvan26
                        .quad            .Lgvan27
                        .quad            .Lgvan28
                        .quad            .Lgvan29
                        .quad            .Lgvan30
                        .quad            .Lgvan31
                        .quad            .Lgvan32
                        .quad            .Lgvan33
                        .quad            .Lgvan34
                        .quad            .Lgvan35
                        .quad            .Lgvan36
                        .quad            .Lgvan37
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#                 &ALPHABET       POS(10) LEN(1) . nl
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_begin_α:                                                        jmp   n72_keyword_snobol4_α
n71_statement_begin_β:                                                        jmp   n80_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n72_keyword_snobol4_α:  sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx654_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_match_begin_α
.Lx654_0:               .quad            .Lx654_0_s
.Lx654_0_s:             .string          "ALPHABET"
#-----------------------------------------------------------------------------------------------------------------------
n73_match_begin_α:      mov              rdi, qword ptr [rsp + 0]             # keyword_snobol4
                        mov              rsi, qword ptr [rsp + 8]
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
.Lx656_0:               mov              r14d, dword ptr [rbp + -40];         jmp   n74_match_pos_α
n73_match_begin_β:      lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx656_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx656_1
                                                                              jmp   .Lx656_0
.Lx656_1:
n73_match_begin_af:     mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n79_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n74_match_pos_α:        mov              rax, 10
                        cmp              r14d, eax;                           jne   n73_match_begin_β
                                                                              jmp   n75_match_assign_save_α
n74_match_pos_β:                                                              jmp   n73_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n75_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n76_match_len_α
n75_match_assign_save_β:
                        add              rsp, 16;                             jmp   n73_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n76_match_len_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jle   .Lx660_240
                        add              rsp, 16;                             jmp   n73_match_begin_β
.Lx660_240:             add              r14d, 1;                             jmp   n77_match_assign_cond_α
n76_match_len_β:        sub              r14d, 1
                        add              rsp, 16;                             jmp   n73_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n77_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S7]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n78_match_end_α
n77_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n76_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n78_match_end_α:        push             r14
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
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n79_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_end_α:    add              rsp, 16;                             jmp   n80_statement_begin_α
#=======================================================================================================================
#                 DIGITS          =  '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_begin_α:                                                        jmp   n81_lit_string_α
n80_statement_begin_β:                                                        jmp   n84_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx669_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_assign_α
.Lx669_0:               .quad            .Lx669_0_s
.Lx669_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax            # DIGITS
                        mov              qword ptr [r9 + 392], rdx;           jmp   n83_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_end_α:    add              rsp, 16;                             jmp   n84_statement_begin_α
#=======================================================================================================================
#                 UCASE           =  'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_begin_α:                                                        jmp   n85_lit_string_α
n84_statement_begin_β:                                                        jmp   n88_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 26
                        mov              rax, qword ptr [rip + .Lx675_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_assign_α
.Lx675_0:               .quad            .Lx675_0_s
.Lx675_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # UCASE
                        mov              qword ptr [r9 + 408], rdx;           jmp   n87_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_end_α:    add              rsp, 16;                             jmp   n88_statement_begin_α
#=======================================================================================================================
#                 DEFINE('new_sent()')                            :(new_sent_end)
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_begin_α:                                                        jmp   n89_define_α
n88_statement_begin_β:                                                        jmp   n108_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n89_define_α:           mov              rdi, qword ptr [rip + .Lx682_0]
                        mov              rsi, qword ptr [rip + .Lx682_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n91_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n90_statement_end_α
n89_define_β:                                                                 jmp   n88_statement_begin_β
.Lx682_0:               .quad            .Lx682_0_s
.Lx682_0_s:             .string          "new_sent"
.Lx682_1:               .quad            .Lx682_1_s
.Lx682_1_s:             .string          ""
                                                                              jmp   .Lx683_245
#-----------------------------------------------------------------------------------------------------------------------
new_sent_α:             sub              rsp, 48
                        mov              rax, qword ptr [r9 + 0]              # new_sent
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              r10, [rip + new_sent_γ]
                        lea              r11, [rip + new_sent_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n91_statement_begin_α];  jmp   rax
new_sent_γ:             mov              rdi, qword ptr [r9 + 0]
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
new_sent_ω:             mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx683_245:
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_end_α:                                                          jmp   n108_statement_begin_α
#=======================================================================================================================
# new_sent        sentno          =  +num
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_begin_α:                                                        jmp   n92_var_α
n91_statement_begin_β:                                                        jmp   n96_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 416]            # num
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n93_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n93_unop_α:             sub              rsp, 16
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n94_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:           mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # sentno
                        mov              qword ptr [r9 + 104], rdx;           jmp   n95_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:    add              rsp, 32;                             jmp   n96_statement_begin_α
#=======================================================================================================================
#                 mem[sentno]     =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:                                                        jmp   n97_var_α
n96_statement_begin_β:                                                        jmp   n103_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_var_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n99_subscript_α
n98_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n96_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n99_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx697_240
                        add              rsp, 16;                             jmp   n98_var_β
.Lx697_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_call_α
n99_subscript_β:        add              rsp, 16;                             jmp   n98_var_β
#-----------------------------------------------------------------------------------------------------------------------
n100_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd699:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd699]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx698_240
                        add              rsp, 16;                             jmp   n99_subscript_β
.Lx698_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_assign_var_α
n100_call_β:            add              rsp, 16;                             jmp   n99_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
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
                        cmp              eax, 104;                            jne   .Lx700_240
                        add              rsp, 32;                             jmp   n99_subscript_β
.Lx700_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:   add              rsp, 80;                             jmp   n103_statement_begin_α
#=======================================================================================================================
#                 new_sent        =  .dummy                       :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_begin_α:                                                       jmp   n104_lit_string_α
n103_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx705_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n105_call_α
.Lx705_0:               .quad            .Lx705_0_s
.Lx705_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n105_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd707:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd707]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx706_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n103_statement_begin_β
.Lx706_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n106_assign_α
n105_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n103_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n106_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # new_sent
                        mov              qword ptr [r9 + 8], rdx;             jmp   n107_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# new_sent_end  <stmt 8, line 17: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_begin_α:                                                       jmp   n109_statement_end_α
n108_statement_begin_β:                                                       jmp   n110_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_end_α:                                                         jmp   n110_statement_begin_α
#=======================================================================================================================
#                 DEFINE('add_tok()')                             :(add_tok_end)
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_begin_α:                                                       jmp   n111_define_α
n110_statement_begin_β:                                                       jmp   n188_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n111_define_α:          mov              rdi, qword ptr [rip + .Lx718_0]
                        mov              rsi, qword ptr [rip + .Lx718_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n113_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n112_statement_end_α
n111_define_β:                                                                jmp   n110_statement_begin_β
.Lx718_0:               .quad            .Lx718_0_s
.Lx718_0_s:             .string          "add_tok"
.Lx718_1:               .quad            .Lx718_1_s
.Lx718_1_s:             .string          ""
                                                                              jmp   .Lx719_245
#-----------------------------------------------------------------------------------------------------------------------
add_tok_α:              sub              rsp, 48
                        mov              rax, qword ptr [r9 + 16]             # add_tok
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              r10, [rip + add_tok_γ]
                        lea              r11, [rip + add_tok_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n113_statement_begin_α]; jmp   rax
add_tok_γ:              mov              rdi, qword ptr [r9 + 16]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 24], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
add_tok_ω:              mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 24], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx719_245:
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_end_α:                                                         jmp   n188_statement_begin_α
#=======================================================================================================================
# add_tok         DIFFER(mem[sentno][wrd])                        :F(new_wrd)
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_begin_α:                                                       jmp   n114_var_α
n113_statement_begin_β:                                                       jmp   n160_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_var_α
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n116_subscript_α
n115_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n113_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n116_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx726_240
                        add              rsp, 16;                             jmp   n115_var_β
.Lx726_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_deref_α
n116_subscript_β:       add              rsp, 16;                             jmp   n115_var_β
#-----------------------------------------------------------------------------------------------------------------------
n117_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx727_240
                        add              rsp, 16;                             jmp   n116_subscript_β
.Lx727_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_var_α
n117_deref_β:           add              rsp, 16;                             jmp   n116_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # wrd
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_subscript_α
n118_var_β:             add              rsp, 16;                             jmp   n117_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n119_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx729_240
                        add              rsp, 16;                             jmp   n118_var_β
.Lx729_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n120_deref_α
n119_subscript_β:       add              rsp, 16;                             jmp   n118_var_β
#-----------------------------------------------------------------------------------------------------------------------
n120_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx730_240
                        add              rsp, 16;                             jmp   n119_subscript_β
.Lx730_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n121_call_α
n120_deref_β:           add              rsp, 16;                             jmp   n119_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n121_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd732:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd732]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx731_240
                        add              rsp, 16;                             jmp   n120_deref_β
.Lx731_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_statement_end_α
n121_call_β:            add              rsp, 16;                             jmp   n120_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_end_α:   add              rsp, 128;                            jmp   n123_statement_begin_α
#=======================================================================================================================
#                 DIFFER(mem[sentno][wrd][tag])                   :F(new_tag)
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_begin_α:                                                       jmp   n124_var_α
n123_statement_begin_β:                                                       jmp   n170_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_var_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_subscript_α
n125_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n123_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n126_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx739_240
                        add              rsp, 16;                             jmp   n125_var_β
.Lx739_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n127_deref_α
n126_subscript_β:       add              rsp, 16;                             jmp   n125_var_β
#-----------------------------------------------------------------------------------------------------------------------
n127_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx740_240
                        add              rsp, 16;                             jmp   n126_subscript_β
.Lx740_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n128_var_α
n127_deref_β:           add              rsp, 16;                             jmp   n126_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # wrd
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n129_subscript_α
n128_var_β:             add              rsp, 16;                             jmp   n127_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n129_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx742_240
                        add              rsp, 16;                             jmp   n128_var_β
.Lx742_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n130_deref_α
n129_subscript_β:       add              rsp, 16;                             jmp   n128_var_β
#-----------------------------------------------------------------------------------------------------------------------
n130_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx743_240
                        add              rsp, 16;                             jmp   n129_subscript_β
.Lx743_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n131_var_α
n130_deref_β:           add              rsp, 16;                             jmp   n129_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # tag
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n132_subscript_α
n131_var_β:             add              rsp, 16;                             jmp   n130_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n132_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx745_240
                        add              rsp, 16;                             jmp   n131_var_β
.Lx745_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_deref_α
n132_subscript_β:       add              rsp, 16;                             jmp   n131_var_β
#-----------------------------------------------------------------------------------------------------------------------
n133_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx746_240
                        add              rsp, 16;                             jmp   n132_subscript_β
.Lx746_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n134_call_α
n133_deref_β:           add              rsp, 16;                             jmp   n132_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n134_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd748:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd748]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx747_240
                        add              rsp, 16;                             jmp   n133_deref_β
.Lx747_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_statement_end_α
n134_call_β:            add              rsp, 16;                             jmp   n133_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_end_α:   add              rsp, 176;                            jmp   n136_statement_begin_α
#=======================================================================================================================
#                 mem[sentno][wrd][tag]  =  mem[sentno][wrd][tag] + 1  :(done)
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_begin_α:                                                       jmp   n137_var_α
n136_statement_begin_β:                                                       jmp   n183_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n138_var_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_subscript_α
n138_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n136_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n139_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx755_240
                        add              rsp, 16;                             jmp   n138_var_β
.Lx755_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_deref_α
n139_subscript_β:       add              rsp, 16;                             jmp   n138_var_β
#-----------------------------------------------------------------------------------------------------------------------
n140_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx756_240
                        add              rsp, 16;                             jmp   n139_subscript_β
.Lx756_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_var_α
n140_deref_β:           add              rsp, 16;                             jmp   n139_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # wrd
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_subscript_α
n141_var_β:             add              rsp, 16;                             jmp   n140_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n142_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx758_240
                        add              rsp, 16;                             jmp   n141_var_β
.Lx758_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_deref_α
n142_subscript_β:       add              rsp, 16;                             jmp   n141_var_β
#-----------------------------------------------------------------------------------------------------------------------
n143_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx759_240
                        add              rsp, 16;                             jmp   n142_subscript_β
.Lx759_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_var_α
n143_deref_β:           add              rsp, 16;                             jmp   n142_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # tag
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n145_subscript_α
n144_var_β:             add              rsp, 16;                             jmp   n143_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n145_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx761_240
                        add              rsp, 16;                             jmp   n144_var_β
.Lx761_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n146_var_α
n145_subscript_β:       add              rsp, 16;                             jmp   n144_var_β
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n147_var_α
n146_var_β:             add              rsp, 16;                             jmp   n145_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_subscript_α
n147_var_β:             add              rsp, 16;                             jmp   n146_var_β
#-----------------------------------------------------------------------------------------------------------------------
n148_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx764_240
                        add              rsp, 16;                             jmp   n147_var_β
.Lx764_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_deref_α
n148_subscript_β:       add              rsp, 16;                             jmp   n147_var_β
#-----------------------------------------------------------------------------------------------------------------------
n149_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx765_240
                        add              rsp, 16;                             jmp   n148_subscript_β
.Lx765_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n150_var_α
n149_deref_β:           add              rsp, 16;                             jmp   n148_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # wrd
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n151_subscript_α
n150_var_β:             add              rsp, 16;                             jmp   n149_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n151_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx767_240
                        add              rsp, 16;                             jmp   n150_var_β
.Lx767_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n152_deref_α
n151_subscript_β:       add              rsp, 16;                             jmp   n150_var_β
#-----------------------------------------------------------------------------------------------------------------------
n152_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx768_240
                        add              rsp, 16;                             jmp   n151_subscript_β
.Lx768_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_var_α
n152_deref_β:           add              rsp, 16;                             jmp   n151_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # tag
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_subscript_α
n153_var_β:             add              rsp, 16;                             jmp   n152_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n154_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx770_240
                        add              rsp, 16;                             jmp   n153_var_β
.Lx770_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_deref_α
n154_subscript_β:       add              rsp, 16;                             jmp   n153_var_β
#-----------------------------------------------------------------------------------------------------------------------
n155_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx771_240
                        add              rsp, 16;                             jmp   n154_subscript_β
.Lx771_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n156_lit_integer_α
n155_deref_β:           add              rsp, 16;                             jmp   n154_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx772_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_binop_α
n156_lit_integer_β:     add              rsp, 16;                             jmp   n155_deref_β
.Lx772_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n157_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # deref
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx773_2
                        mov              rax, qword ptr [rsp + 40]            # deref
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx773_7
.Lx773_2:               and              edx, 1;                              jz    .Lx773_0
                        mov              rsi, qword ptr [rsp + 40]            # deref
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx773_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx773_4
.Lx773_3:               movq             xmm0, rsi
.Lx773_4:               cmp              ecx, 5;                              je    .Lx773_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx773_6
.Lx773_5:               movq             xmm1, rdi
.Lx773_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx773_7:                                                                     jmp   n158_assign_var_α
.Lx773_0:               mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx773_240
                        add              rsp, 16;                             jmp   n156_lit_integer_β
.Lx773_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n158_assign_var_α
n157_binop_β:           add              rsp, 16;                             jmp   n156_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 208]           # subscript
                        mov              rsi, qword ptr [rsp + 216]
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
                        cmp              eax, 104;                            jne   .Lx774_240
                        add              rsp, 16;                             jmp   n157_binop_β
.Lx774_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_end_α:   add              rsp, 352;                            jmp   n183_statement_begin_α
#=======================================================================================================================
# new_wrd         mem[sentno][wrd]       =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_begin_α:                                                       jmp   n161_var_α
n160_statement_begin_β:                                                       jmp   n170_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n162_var_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n163_subscript_α
n162_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n160_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n163_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx781_240
                        add              rsp, 16;                             jmp   n162_var_β
.Lx781_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n164_deref_α
n163_subscript_β:       add              rsp, 16;                             jmp   n162_var_β
#-----------------------------------------------------------------------------------------------------------------------
n164_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx782_240
                        add              rsp, 16;                             jmp   n163_subscript_β
.Lx782_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n165_var_α
n164_deref_β:           add              rsp, 16;                             jmp   n163_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # wrd
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n166_subscript_α
n165_var_β:             add              rsp, 16;                             jmp   n164_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n166_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx784_240
                        add              rsp, 16;                             jmp   n165_var_β
.Lx784_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n167_call_α
n166_subscript_β:       add              rsp, 16;                             jmp   n165_var_β
#-----------------------------------------------------------------------------------------------------------------------
n167_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd786:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd786]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx785_240
                        add              rsp, 16;                             jmp   n166_subscript_β
.Lx785_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n168_assign_var_α
n167_call_β:            add              rsp, 16;                             jmp   n166_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n168_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
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
                        cmp              eax, 104;                            jne   .Lx787_240
                        add              rsp, 32;                             jmp   n166_subscript_β
.Lx787_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n169_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_end_α:   add              rsp, 128;                            jmp   n170_statement_begin_α
#=======================================================================================================================
# new_tag         mem[sentno][wrd][tag]  =  1
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_begin_α:                                                       jmp   n171_var_α
n170_statement_begin_β:                                                       jmp   n183_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n172_var_α
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n173_subscript_α
n172_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n170_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n173_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx794_240
                        add              rsp, 16;                             jmp   n172_var_β
.Lx794_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n174_deref_α
n173_subscript_β:       add              rsp, 16;                             jmp   n172_var_β
#-----------------------------------------------------------------------------------------------------------------------
n174_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx795_240
                        add              rsp, 16;                             jmp   n173_subscript_β
.Lx795_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n175_var_α
n174_deref_β:           add              rsp, 16;                             jmp   n173_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n175_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # wrd
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n176_subscript_α
n175_var_β:             add              rsp, 16;                             jmp   n174_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n176_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx797_240
                        add              rsp, 16;                             jmp   n175_var_β
.Lx797_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n177_deref_α
n176_subscript_β:       add              rsp, 16;                             jmp   n175_var_β
#-----------------------------------------------------------------------------------------------------------------------
n177_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx798_240
                        add              rsp, 16;                             jmp   n176_subscript_β
.Lx798_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n178_var_α
n177_deref_β:           add              rsp, 16;                             jmp   n176_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # tag
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_subscript_α
n178_var_β:             add              rsp, 16;                             jmp   n177_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n179_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx800_240
                        add              rsp, 16;                             jmp   n178_var_β
.Lx800_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n180_lit_integer_α
n179_subscript_β:       add              rsp, 16;                             jmp   n178_var_β
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx801_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n181_assign_var_α
n180_lit_integer_β:     add              rsp, 16;                             jmp   n179_subscript_β
.Lx801_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n181_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
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
                        cmp              eax, 104;                            jne   .Lx802_240
                        add              rsp, 16;                             jmp   n180_lit_integer_β
.Lx802_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n182_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_end_α:   add              rsp, 176;                            jmp   n183_statement_begin_α
#=======================================================================================================================
# done            add_tok         =  .dummy                       :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_begin_α:                                                       jmp   n184_lit_string_α
n183_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx807_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n185_call_α
.Lx807_0:               .quad            .Lx807_0_s
.Lx807_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n185_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd809:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd809]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx808_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n183_statement_begin_β
.Lx808_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_assign_α
n185_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n183_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # add_tok
                        mov              qword ptr [r9 + 24], rdx;            jmp   n187_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# add_tok_end  <stmt 16, line 26: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_begin_α:                                                       jmp   n189_statement_end_α
n188_statement_begin_β:                                                       jmp   n190_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_end_α:                                                         jmp   n190_statement_begin_α
#=======================================================================================================================
#                 DEFINE('pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,wrd,tsk,ti,tag,tv,tline,pfx,pad,next_wkey,last_sent,lline,ns') :(pp_mem_end)
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_begin_α:                                                       jmp   n191_define_α
n190_statement_begin_β:                                                       jmp   n533_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n191_define_α:          mov              rdi, qword ptr [rip + .Lx820_0]
                        mov              rsi, qword ptr [rip + .Lx820_1]
                        mov              edx, 20
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n193_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n192_statement_end_α
n191_define_β:                                                                jmp   n190_statement_begin_β
.Lx820_0:               .quad            .Lx820_0_s
.Lx820_0_s:             .string          "pp_mem"
.Lx820_1:               .quad            .Lx820_1_s
.Lx820_1_s:             .string          "mem,ssk,si,sentno,wsk,wi,wkey,wq,wrd,tsk,ti,tag,tv,tline,pfx,pad,next_wkey,last_sent,lline,ns"
                                                                              jmp   .Lx821_245
#-----------------------------------------------------------------------------------------------------------------------
pp_mem_α:               sub              rsp, 368
                        mov              rax, qword ptr [r9 + 64]             # ssk
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 64], 0
                        mov              qword ptr [r9 + 72], 0
                        mov              rax, qword ptr [r9 + 80]             # si
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [r9 + 96], 0
                        mov              qword ptr [r9 + 104], 0
                        mov              rax, qword ptr [r9 + 112]            # wsk
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 112], 0
                        mov              qword ptr [r9 + 120], 0
                        mov              rax, qword ptr [r9 + 128]            # wi
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 128], 0
                        mov              qword ptr [r9 + 136], 0
                        mov              rax, qword ptr [r9 + 144]            # wkey
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [r9 + 144], 0
                        mov              qword ptr [r9 + 152], 0
                        mov              rax, qword ptr [r9 + 160]            # wq
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [r9 + 160], 0
                        mov              qword ptr [r9 + 168], 0
                        mov              rax, qword ptr [r9 + 176]            # wrd
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [r9 + 176], 0
                        mov              qword ptr [r9 + 184], 0
                        mov              rax, qword ptr [r9 + 192]            # tsk
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 136], rax
                        mov              qword ptr [r9 + 192], 0
                        mov              qword ptr [r9 + 200], 0
                        mov              rax, qword ptr [r9 + 208]            # ti
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 152], rax
                        mov              qword ptr [r9 + 208], 0
                        mov              qword ptr [r9 + 216], 0
                        mov              rax, qword ptr [r9 + 224]            # tag
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 168], rax
                        mov              qword ptr [r9 + 224], 0
                        mov              qword ptr [r9 + 232], 0
                        mov              rax, qword ptr [r9 + 240]            # tv
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 184], rax
                        mov              qword ptr [r9 + 240], 0
                        mov              qword ptr [r9 + 248], 0
                        mov              rax, qword ptr [r9 + 256]            # tline
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 200], rax
                        mov              qword ptr [r9 + 256], 0
                        mov              qword ptr [r9 + 264], 0
                        mov              rax, qword ptr [r9 + 272]            # pfx
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 216], rax
                        mov              qword ptr [r9 + 272], 0
                        mov              qword ptr [r9 + 280], 0
                        mov              rax, qword ptr [r9 + 288]            # pad
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 232], rax
                        mov              qword ptr [r9 + 288], 0
                        mov              qword ptr [r9 + 296], 0
                        mov              rax, qword ptr [r9 + 304]            # next_wkey
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 248], rax
                        mov              qword ptr [r9 + 304], 0
                        mov              qword ptr [r9 + 312], 0
                        mov              rax, qword ptr [r9 + 320]            # last_sent
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 264], rax
                        mov              qword ptr [r9 + 320], 0
                        mov              qword ptr [r9 + 328], 0
                        mov              rax, qword ptr [r9 + 336]            # lline
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 280], rax
                        mov              qword ptr [r9 + 336], 0
                        mov              qword ptr [r9 + 344], 0
                        mov              rax, qword ptr [r9 + 352]            # ns
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 296], rax
                        mov              qword ptr [r9 + 352], 0
                        mov              qword ptr [r9 + 360], 0
                        mov              rax, qword ptr [r9 + 32]             # pp_mem
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 312], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              qword ptr [rsp + 320], r10
                        mov              qword ptr [rsp + 328], r11
                        mov              qword ptr [rsp + 336], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 368]
                        cmp              rdx, 0;                              jbe   .Lx821_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # mem
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx821_41
.Lx821_10:              mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 360], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx821_41:              lea              r10, [rip + pp_mem_γ]
                        lea              r11, [rip + pp_mem_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n193_statement_begin_α]; jmp   rax
pp_mem_γ:               mov              rdi, qword ptr [r9 + 32]             # pp_mem
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rcx, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 368]
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [r9 + 40], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [r9 + 352], rax            # ns
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [r9 + 360], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [r9 + 336], rax            # lline
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [r9 + 344], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [r9 + 320], rax            # last_sent
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [r9 + 328], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [r9 + 304], rax            # next_wkey
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [r9 + 312], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [r9 + 288], rax            # pad
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [r9 + 296], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [r9 + 272], rax            # pfx
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [r9 + 280], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [r9 + 256], rax            # tline
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [r9 + 264], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [r9 + 240], rax            # tv
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [r9 + 248], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [r9 + 224], rax            # tag
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [r9 + 232], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [r9 + 208], rax            # ti
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [r9 + 216], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [r9 + 192], rax            # tsk
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [r9 + 200], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [r9 + 176], rax            # wrd
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [r9 + 184], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 160], rax            # wq
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 168], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 144], rax            # wkey
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 152], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 128], rax            # wi
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 136], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 112], rax            # wsk
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 120], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 96], rax             # sentno
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 104], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 80], rax             # si
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 88], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax             # ssk
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rdx, 0;                              jbe   .Lx821_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # mem
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx821_110
.Lx821_80:              mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [r9 + 56], rax
.Lx821_110:             mov              r10, qword ptr [rsp + 320]
                        mov              r11, qword ptr [rsp + 328]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 368
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
pp_mem_ω:               mov              rcx, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 368]
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [r9 + 32], rax             # pp_mem
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [r9 + 40], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [r9 + 352], rax            # ns
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [r9 + 360], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [r9 + 336], rax            # lline
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [r9 + 344], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [r9 + 320], rax            # last_sent
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [r9 + 328], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [r9 + 304], rax            # next_wkey
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [r9 + 312], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [r9 + 288], rax            # pad
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [r9 + 296], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [r9 + 272], rax            # pfx
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [r9 + 280], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [r9 + 256], rax            # tline
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [r9 + 264], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [r9 + 240], rax            # tv
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [r9 + 248], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [r9 + 224], rax            # tag
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [r9 + 232], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [r9 + 208], rax            # ti
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [r9 + 216], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [r9 + 192], rax            # tsk
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [r9 + 200], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [r9 + 176], rax            # wrd
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [r9 + 184], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 160], rax            # wq
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 168], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 144], rax            # wkey
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 152], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 128], rax            # wi
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 136], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 112], rax            # wsk
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 120], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 96], rax             # sentno
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 104], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 80], rax             # si
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 88], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax             # ssk
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rdx, 0;                              jbe   .Lx821_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # mem
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx821_180
.Lx821_150:             mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [r9 + 56], rax
.Lx821_180:             mov              r10, qword ptr [rsp + 320]
                        mov              r11, qword ptr [rsp + 328]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 368
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx821_245:
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_end_α:                                                         jmp   n533_statement_begin_α
#=======================================================================================================================
# pp_mem          ssk             =   SORT(mem)
#-----------------------------------------------------------------------------------------------------------------------
n193_statement_begin_α:                                                       jmp   n194_var_α
n193_statement_begin_β:                                                       jmp   n198_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n195_call_α
#-----------------------------------------------------------------------------------------------------------------------
n195_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd151:        .string          "SORT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd151]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx827_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n193_statement_begin_β
.Lx827_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n196_assign_α
n195_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n193_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n196_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ssk
                        mov              qword ptr [r9 + 72], rdx;            jmp   n197_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n197_statement_end_α:   add              rsp, 32;                             jmp   n198_statement_begin_α
#=======================================================================================================================
#                 si              =   0
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_begin_α:                                                       jmp   n199_lit_integer_α
n198_statement_begin_β:                                                       jmp   n202_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx833_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n200_assign_α
.Lx833_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n200_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # si
                        mov              qword ptr [r9 + 88], rdx;            jmp   n201_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_end_α:   add              rsp, 16;                             jmp   n202_statement_begin_α
#=======================================================================================================================
#                 ns              =   0
#-----------------------------------------------------------------------------------------------------------------------
n202_statement_begin_α:                                                       jmp   n203_lit_integer_α
n202_statement_begin_β:                                                       jmp   n206_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx839_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n204_assign_α
.Lx839_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n204_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # ns
                        mov              qword ptr [r9 + 360], rdx;           jmp   n205_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_end_α:   add              rsp, 16;                             jmp   n206_statement_begin_α
#=======================================================================================================================
# pm_cnt_loop     ns              =   ns + 1
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_begin_α:                                                       jmp   n207_var_α
n206_statement_begin_β:                                                       jmp   n212_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # ns
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n208_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx846_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n209_binop_α
n208_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n206_statement_begin_β
.Lx846_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n209_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx847_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx847_7
.Lx847_2:               and              edx, 1;                              jz    .Lx847_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx847_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx847_4
.Lx847_3:               movq             xmm0, rsi
.Lx847_4:               cmp              ecx, 5;                              je    .Lx847_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx847_6
.Lx847_5:               movq             xmm1, rdi
.Lx847_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx847_7:                                                                     jmp   n210_assign_α
.Lx847_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx847_240
                        add              rsp, 16;                             jmp   n208_lit_integer_β
.Lx847_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n210_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n210_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # ns
                        mov              qword ptr [r9 + 360], rdx;           jmp   n211_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n211_statement_end_α:   add              rsp, 48;                             jmp   n212_statement_begin_α
#=======================================================================================================================
#                 ssk[ns,1]                                       :S(pm_cnt_loop)
#-----------------------------------------------------------------------------------------------------------------------
n212_statement_begin_α:                                                       jmp   n213_var_α
n212_statement_begin_β:                                                       jmp   n220_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n213_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ssk
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n214_var_α
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # ns
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_subscript_α
n214_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n212_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n215_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx855_240
                        add              rsp, 16;                             jmp   n214_var_β
.Lx855_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n216_lit_integer_α
n215_subscript_β:       add              rsp, 16;                             jmp   n214_var_β
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx856_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n217_subscript_α
n216_lit_integer_β:     add              rsp, 16;                             jmp   n215_subscript_β
.Lx856_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n217_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx857_240
                        add              rsp, 16;                             jmp   n216_lit_integer_β
.Lx857_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n218_deref_α
n217_subscript_β:       add              rsp, 16;                             jmp   n216_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n218_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx858_240
                        add              rsp, 16;                             jmp   n217_subscript_β
.Lx858_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n219_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n219_statement_end_α:   add              rsp, 96;                             jmp   n206_statement_begin_α
#=======================================================================================================================
#                 ns              =   ns - 1
#-----------------------------------------------------------------------------------------------------------------------
n220_statement_begin_α:                                                       jmp   n221_var_α
n220_statement_begin_β:                                                       jmp   n226_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # ns
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n222_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx864_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n223_binop_α
n222_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n220_statement_begin_β
.Lx864_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n223_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx865_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx865_7
.Lx865_2:               and              edx, 1;                              jz    .Lx865_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx865_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx865_4
.Lx865_3:               movq             xmm0, rsi
.Lx865_4:               cmp              ecx, 5;                              je    .Lx865_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx865_6
.Lx865_5:               movq             xmm1, rdi
.Lx865_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx865_7:                                                                     jmp   n224_assign_α
.Lx865_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx865_240
                        add              rsp, 16;                             jmp   n222_lit_integer_β
.Lx865_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n224_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n224_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # ns
                        mov              qword ptr [r9 + 360], rdx;           jmp   n225_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n225_statement_end_α:   add              rsp, 48;                             jmp   n226_statement_begin_α
#=======================================================================================================================
#                 si              =   0
#-----------------------------------------------------------------------------------------------------------------------
n226_statement_begin_α:                                                       jmp   n227_lit_integer_α
n226_statement_begin_β:                                                       jmp   n230_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx871_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n228_assign_α
.Lx871_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n228_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # si
                        mov              qword ptr [r9 + 88], rdx;            jmp   n229_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n229_statement_end_α:   add              rsp, 16;                             jmp   n230_statement_begin_α
#=======================================================================================================================
# pm_sent_loop    si              =   si + 1
#-----------------------------------------------------------------------------------------------------------------------
n230_statement_begin_α:                                                       jmp   n231_var_α
n230_statement_begin_β:                                                       jmp   n236_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # si
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n232_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx878_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n233_binop_α
n232_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n230_statement_begin_β
.Lx878_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n233_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx879_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx879_7
.Lx879_2:               and              edx, 1;                              jz    .Lx879_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx879_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx879_4
.Lx879_3:               movq             xmm0, rsi
.Lx879_4:               cmp              ecx, 5;                              je    .Lx879_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx879_6
.Lx879_5:               movq             xmm1, rdi
.Lx879_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx879_7:                                                                     jmp   n234_assign_α
.Lx879_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx879_240
                        add              rsp, 16;                             jmp   n232_lit_integer_β
.Lx879_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n234_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n234_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # si
                        mov              qword ptr [r9 + 88], rdx;            jmp   n235_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_end_α:   add              rsp, 48;                             jmp   n236_statement_begin_α
#=======================================================================================================================
#                 sentno          =   ssk[si,1]                   :F(pm_done)
#-----------------------------------------------------------------------------------------------------------------------
n236_statement_begin_α:                                                       jmp   n237_var_α
n236_statement_begin_β:                                                       jmp   n528_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ssk
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # si
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_subscript_α
n238_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n236_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n239_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx887_240
                        add              rsp, 16;                             jmp   n238_var_β
.Lx887_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n240_lit_integer_α
n239_subscript_β:       add              rsp, 16;                             jmp   n238_var_β
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx888_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n241_subscript_α
n240_lit_integer_β:     add              rsp, 16;                             jmp   n239_subscript_β
.Lx888_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n241_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx889_240
                        add              rsp, 16;                             jmp   n240_lit_integer_β
.Lx889_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_deref_α
n241_subscript_β:       add              rsp, 16;                             jmp   n240_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n242_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx890_240
                        add              rsp, 16;                             jmp   n241_subscript_β
.Lx890_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n243_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n243_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # sentno
                        mov              qword ptr [r9 + 104], rdx;           jmp   n244_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_end_α:   add              rsp, 96;                             jmp   n245_statement_begin_α
#=======================================================================================================================
#                 last_sent       =   ''
#-----------------------------------------------------------------------------------------------------------------------
n245_statement_begin_α:                                                       jmp   n246_lit_string_α
n245_statement_begin_β:                                                       jmp   n249_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx896_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n247_assign_α
.Lx896_0:               .quad            .Lx896_0_s
.Lx896_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n247_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # last_sent
                        mov              qword ptr [r9 + 328], rdx;           jmp   n248_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_end_α:   add              rsp, 16;                             jmp   n249_statement_begin_α
#=======================================================================================================================
#                 last_sent       =   IDENT(si, ns) 1
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_begin_α:                                                       jmp   n250_var_α
n249_statement_begin_β:                                                       jmp   n257_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # si
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_var_α
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # ns
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_call_α
n251_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n249_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n252_call_α:            sub              rsp, 16
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
.Lrkfnzd905:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd905]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx904_240
                        add              rsp, 16;                             jmp   n251_var_β
.Lx904_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n253_lit_integer_α
n252_call_β:            add              rsp, 16;                             jmp   n251_var_β
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx906_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n254_binop_α
n253_lit_integer_β:     add              rsp, 32;                             jmp   n251_var_β
.Lx906_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n254_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n255_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n255_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # last_sent
                        mov              qword ptr [r9 + 328], rdx;           jmp   n256_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_end_α:   add              rsp, 80;                             jmp   n257_statement_begin_α
#=======================================================================================================================
#                 pad             =   DUPL(' ', SIZE(sentno) + 4)
#-----------------------------------------------------------------------------------------------------------------------
n257_statement_begin_α:                                                       jmp   n258_lit_string_α
n257_statement_begin_β:                                                       jmp   n266_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx913_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n259_var_α
.Lx913_0:               .quad            .Lx913_0_s
.Lx913_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n259_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n260_call_α
n259_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n257_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n260_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd916:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd916]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx915_240
                        add              rsp, 16;                             jmp   n259_var_β
.Lx915_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n261_lit_integer_α
n260_call_β:            add              rsp, 16;                             jmp   n259_var_β
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx917_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n262_binop_α
n261_lit_integer_β:     add              rsp, 32;                             jmp   n259_var_β
.Lx917_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n262_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx918_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx918_7
.Lx918_2:               and              edx, 1;                              jz    .Lx918_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx918_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx918_4
.Lx918_3:               movq             xmm0, rsi
.Lx918_4:               cmp              ecx, 5;                              je    .Lx918_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx918_6
.Lx918_5:               movq             xmm1, rdi
.Lx918_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx918_7:                                                                     jmp   n263_call_α
.Lx918_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx918_240
                        add              rsp, 16;                             jmp   n261_lit_integer_β
.Lx918_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n263_call_α
n262_binop_β:           add              rsp, 16;                             jmp   n261_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n263_call_α:            sub              rsp, 16
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd920:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd920]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx919_240
                        add              rsp, 16;                             jmp   n262_binop_β
.Lx919_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n264_assign_α
n263_call_β:            add              rsp, 16;                             jmp   n262_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n264_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # pad
                        mov              qword ptr [r9 + 296], rdx;           jmp   n265_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n265_statement_end_α:   add              rsp, 96;                             jmp   n266_statement_begin_α
#=======================================================================================================================
#                 pfx             =   EQ(si, 1) '{' sentno ': {'
#-----------------------------------------------------------------------------------------------------------------------
n266_statement_begin_α:                                                       jmp   n267_var_α
n266_statement_begin_β:                                                       jmp   n280_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n267_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # si
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n268_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx927_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n269_coerce_numeric_α
n268_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n266_statement_begin_β
.Lx927_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n269_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx929_1
                        cmp              eax, 3;                              jne   .Lx929_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx929_0
.Lx929_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n270_coerce_numeric_α
.Lx929_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 101
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n270_coerce_numeric_α
n269_coerce_numeric_β:  add              rsp, 16;                             jmp   n268_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n270_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx931_1
                        cmp              eax, 3;                              jne   .Lx931_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              eax, 3;                              jne   .Lx931_0
.Lx931_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n271_cmp_test_α
.Lx931_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 102
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n271_cmp_test_α
n270_coerce_numeric_β:  add              rsp, 16;                             jmp   n269_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n271_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            je    .Lx933_240
                        add              rsp, 16;                             jmp   n270_coerce_numeric_β
.Lx933_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n272_lit_string_α
n271_cmp_test_β:        add              rsp, 16;                             jmp   n270_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx934_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n273_binop_α
n272_lit_string_β:      add              rsp, 16;                             jmp   n271_cmp_test_β
.Lx934_0:               .quad            .Lx934_0_s
.Lx934_0_s:             .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n273_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # cmp_test
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n274_var_α
n273_binop_β:           add              rsp, 16;                             jmp   n272_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n274_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n275_binop_α
n274_var_β:             add              rsp, 16;                             jmp   n273_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n275_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n276_lit_string_α
n275_binop_β:           add              rsp, 16;                             jmp   n274_var_β
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx938_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n277_binop_α
n276_lit_string_β:      add              rsp, 16;                             jmp   n275_binop_β
.Lx938_0:               .quad            .Lx938_0_s
.Lx938_0_s:             .string          ": {"
#-----------------------------------------------------------------------------------------------------------------------
n277_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n278_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n278_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # pfx
                        mov              qword ptr [r9 + 280], rdx;           jmp   n279_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n279_statement_end_α:   add              rsp, 176;                            jmp   n280_statement_begin_α
#=======================================================================================================================
#                 pfx             =   NE(si, 1) ' ' sentno ': {'
#-----------------------------------------------------------------------------------------------------------------------
n280_statement_begin_α:                                                       jmp   n281_var_α
n280_statement_begin_β:                                                       jmp   n294_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n281_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # si
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n282_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx946_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n283_coerce_numeric_α
n282_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n280_statement_begin_β
.Lx946_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n283_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx948_1
                        cmp              eax, 3;                              jne   .Lx948_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx948_0
.Lx948_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n284_coerce_numeric_α
.Lx948_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 149
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n284_coerce_numeric_α
n283_coerce_numeric_β:  add              rsp, 16;                             jmp   n282_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n284_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx950_1
                        cmp              eax, 3;                              jne   .Lx950_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              eax, 3;                              jne   .Lx950_0
.Lx950_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n285_cmp_test_α
.Lx950_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 150
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n285_cmp_test_α
n284_coerce_numeric_β:  add              rsp, 16;                             jmp   n283_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n285_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jne   .Lx952_240
                        add              rsp, 16;                             jmp   n284_coerce_numeric_β
.Lx952_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n286_lit_string_α
n285_cmp_test_β:        add              rsp, 16;                             jmp   n284_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx953_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n287_binop_α
n286_lit_string_β:      add              rsp, 16;                             jmp   n285_cmp_test_β
.Lx953_0:               .quad            .Lx953_0_s
.Lx953_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n287_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # cmp_test
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n288_var_α
n287_binop_β:           add              rsp, 16;                             jmp   n286_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n289_binop_α
n288_var_β:             add              rsp, 16;                             jmp   n287_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n289_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n290_lit_string_α
n289_binop_β:           add              rsp, 16;                             jmp   n288_var_β
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx957_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n291_binop_α
n290_lit_string_β:      add              rsp, 16;                             jmp   n289_binop_β
.Lx957_0:               .quad            .Lx957_0_s
.Lx957_0_s:             .string          ": {"
#-----------------------------------------------------------------------------------------------------------------------
n291_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n292_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n292_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # pfx
                        mov              qword ptr [r9 + 280], rdx;           jmp   n293_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n293_statement_end_α:   add              rsp, 176;                            jmp   n294_statement_begin_α
#=======================================================================================================================
#                 wsk             =   SORT(mem[sentno])
#-----------------------------------------------------------------------------------------------------------------------
n294_statement_begin_α:                                                       jmp   n295_var_α
n294_statement_begin_β:                                                       jmp   n302_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n295_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n296_var_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n297_subscript_α
n296_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n294_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n297_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx966_240
                        add              rsp, 16;                             jmp   n296_var_β
.Lx966_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n298_deref_α
n297_subscript_β:       add              rsp, 16;                             jmp   n296_var_β
#-----------------------------------------------------------------------------------------------------------------------
n298_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx967_240
                        add              rsp, 16;                             jmp   n297_subscript_β
.Lx967_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n299_call_α
n298_deref_β:           add              rsp, 16;                             jmp   n297_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n299_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd255:        .string          "SORT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd255]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx968_240
                        add              rsp, 16;                             jmp   n298_deref_β
.Lx968_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n300_assign_α
n299_call_β:            add              rsp, 16;                             jmp   n298_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n300_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # wsk
                        mov              qword ptr [r9 + 120], rdx;           jmp   n301_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n301_statement_end_α:   add              rsp, 80;                             jmp   n302_statement_begin_α
#=======================================================================================================================
#                 wi              =   0
#-----------------------------------------------------------------------------------------------------------------------
n302_statement_begin_α:                                                       jmp   n303_lit_integer_α
n302_statement_begin_β:                                                       jmp   n306_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx974_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n304_assign_α
.Lx974_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n304_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # wi
                        mov              qword ptr [r9 + 136], rdx;           jmp   n305_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n305_statement_end_α:   add              rsp, 16;                             jmp   n306_statement_begin_α
#=======================================================================================================================
# pm_wrd_loop     wi              =   wi + 1
#-----------------------------------------------------------------------------------------------------------------------
n306_statement_begin_α:                                                       jmp   n307_var_α
n306_statement_begin_β:                                                       jmp   n312_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n307_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # wi
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n308_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx981_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n309_binop_α
n308_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n306_statement_begin_β
.Lx981_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n309_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx982_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx982_7
.Lx982_2:               and              edx, 1;                              jz    .Lx982_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx982_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx982_4
.Lx982_3:               movq             xmm0, rsi
.Lx982_4:               cmp              ecx, 5;                              je    .Lx982_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx982_6
.Lx982_5:               movq             xmm1, rdi
.Lx982_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx982_7:                                                                     jmp   n310_assign_α
.Lx982_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx982_240
                        add              rsp, 16;                             jmp   n308_lit_integer_β
.Lx982_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n310_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n310_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # wi
                        mov              qword ptr [r9 + 136], rdx;           jmp   n311_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n311_statement_end_α:   add              rsp, 48;                             jmp   n312_statement_begin_α
#=======================================================================================================================
#                 wkey            =   wsk[wi,1]                   :F(pm_sent_loop)
#-----------------------------------------------------------------------------------------------------------------------
n312_statement_begin_α:                                                       jmp   n313_var_α
n312_statement_begin_β:                                                       jmp   n230_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # wsk
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n314_var_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # wi
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n315_subscript_α
n314_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n312_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n315_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx990_240
                        add              rsp, 16;                             jmp   n314_var_β
.Lx990_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n316_lit_integer_α
n315_subscript_β:       add              rsp, 16;                             jmp   n314_var_β
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx991_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n317_subscript_α
n316_lit_integer_β:     add              rsp, 16;                             jmp   n315_subscript_β
.Lx991_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n317_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx992_240
                        add              rsp, 16;                             jmp   n316_lit_integer_β
.Lx992_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n318_deref_α
n317_subscript_β:       add              rsp, 16;                             jmp   n316_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n318_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx993_240
                        add              rsp, 16;                             jmp   n317_subscript_β
.Lx993_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n319_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n319_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # wkey
                        mov              qword ptr [r9 + 152], rdx;           jmp   n320_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n320_statement_end_α:   add              rsp, 96;                             jmp   n321_statement_begin_α
#=======================================================================================================================
#                 next_wkey       =   ''
#-----------------------------------------------------------------------------------------------------------------------
n321_statement_begin_α:                                                       jmp   n322_lit_string_α
n321_statement_begin_β:                                                       jmp   n325_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx999_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n323_assign_α
.Lx999_0:               .quad            .Lx999_0_s
.Lx999_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n323_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # next_wkey
                        mov              qword ptr [r9 + 312], rdx;           jmp   n324_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n324_statement_end_α:   add              rsp, 16;                             jmp   n325_statement_begin_α
#=======================================================================================================================
#                 next_wkey       =   wsk[wi + 1,1]
#-----------------------------------------------------------------------------------------------------------------------
n325_statement_begin_α:                                                       jmp   n326_var_α
n325_statement_begin_β:                                                       jmp   n336_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n326_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # wsk
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n327_var_α
#-----------------------------------------------------------------------------------------------------------------------
n327_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # wi
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n328_lit_integer_α
n327_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n325_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1007_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n329_binop_α
n328_lit_integer_β:     add              rsp, 16;                             jmp   n327_var_β
.Lx1007_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n329_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1008_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1008_7
.Lx1008_2:              and              edx, 1;                              jz    .Lx1008_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1008_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1008_4
.Lx1008_3:              movq             xmm0, rsi
.Lx1008_4:              cmp              ecx, 5;                              je    .Lx1008_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1008_6
.Lx1008_5:              movq             xmm1, rdi
.Lx1008_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1008_7:                                                                    jmp   n330_subscript_α
.Lx1008_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1008_240
                        add              rsp, 16;                             jmp   n328_lit_integer_β
.Lx1008_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n330_subscript_α
n329_binop_β:           add              rsp, 16;                             jmp   n328_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n330_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1009_240
                        add              rsp, 16;                             jmp   n329_binop_β
.Lx1009_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n331_lit_integer_α
n330_subscript_β:       add              rsp, 16;                             jmp   n329_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n331_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1010_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n332_subscript_α
n331_lit_integer_β:     add              rsp, 16;                             jmp   n330_subscript_β
.Lx1010_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n332_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1011_240
                        add              rsp, 16;                             jmp   n331_lit_integer_β
.Lx1011_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n333_deref_α
n332_subscript_β:       add              rsp, 16;                             jmp   n331_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n333_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1012_240
                        add              rsp, 16;                             jmp   n332_subscript_β
.Lx1012_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n334_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n334_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # next_wkey
                        mov              qword ptr [r9 + 312], rdx;           jmp   n335_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n335_statement_end_α:   add              rsp, 128;                            jmp   n336_statement_begin_α
#=======================================================================================================================
#                 wrd             =   wkey
#-----------------------------------------------------------------------------------------------------------------------
n336_statement_begin_α:                                                       jmp   n337_var_α
n336_statement_begin_β:                                                       jmp   n340_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n337_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # wkey
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n338_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n338_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # wrd
                        mov              qword ptr [r9 + 184], rdx;           jmp   n339_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n339_statement_end_α:   add              rsp, 16;                             jmp   n340_statement_begin_α
#=======================================================================================================================
#                 wrd             ?   ARB "'"  =  ''              :F(pm_sq)
#-----------------------------------------------------------------------------------------------------------------------
n340_statement_begin_α:                                                       jmp   n341_var_α
n340_statement_begin_β:                                                       jmp   n357_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n341_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # wrd
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n342_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n342_match_begin_α:     mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
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
.Lx1026_0:              mov              r14d, dword ptr [rbp + -40];         jmp   n343_match_arb_α
n342_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1026_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1026_1
                                                                              jmp   .Lx1026_0
.Lx1026_1:
n342_match_begin_af:    mov              r12, qword ptr [rbp + -8]            # cas_mark
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
                        add              rsp, 16;                             jmp   n357_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n343_match_arb_α:       sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 4], eax;            jmp   n344_match_lit_α
n343_match_arb_β:       add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d;                           jg    .Lx1028_0
                        mov              r14d, eax;                           jmp   n344_match_lit_α
.Lx1028_0:              mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   n342_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n344_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n343_match_arb_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 39;                             jne   n343_match_arb_β
                        add              r14d, 1;                             jmp   n345_match_end_α
n344_match_lit_β:       sub              r14d, 1;                             jmp   n343_match_arb_β
#-----------------------------------------------------------------------------------------------------------------------
n345_match_end_α:       mov              eax, dword ptr [rbp + -40]           # repl_start
                        mov              dword ptr [rbp + -48], eax
                        mov              qword ptr [rbp + -56], r14           # repl_end
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
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              eax, dword ptr [rbp + -48]           # repl_start
                        mov              dword ptr [r12 + 0], eax
                        mov              rax, qword ptr [rbp + -56]           # repl_end
                        mov              qword ptr [r12 + 8], rax
                        add              r12, 16
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n346_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1033_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n347_match_replace_α
.Lx1033_0:              .quad            .Lx1033_0_s
.Lx1033_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n347_match_replace_α:   mov              rdi, qword ptr [rip + .Lx1035_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              ecx, dword ptr [r12 + -16]           # repl_start
                        mov              r8, qword ptr [r12 + -8]             # repl_end
                        sub              r12, 16
                        lea              r9, [rsp + 0]                        # lit_string
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_replace@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16;                             jmp   .Lx1035_1
.Lx1035_0:              .quad            .Lx1035_0_s
.Lx1035_0_s:            .string          "wrd"
.Lx1035_1:                                                                    jmp   n348_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n348_statement_end_α:   add              rsp, 16;                             jmp   n349_statement_begin_α
#=======================================================================================================================
#                 wq              =   '"' wkey '"'                :(pm_tdict)
#-----------------------------------------------------------------------------------------------------------------------
n349_statement_begin_α:                                                       jmp   n350_lit_string_α
n349_statement_begin_β:                                                       jmp   n365_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1040_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n351_var_α
.Lx1040_0:              .quad            .Lx1040_0_s
.Lx1040_0_s:            .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n351_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # wkey
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n352_binop_α
n351_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n349_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n352_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n353_lit_string_α
n352_binop_β:           add              rsp, 16;                             jmp   n351_var_β
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1043_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n354_binop_α
n353_lit_string_β:      add              rsp, 16;                             jmp   n352_binop_β
.Lx1043_0:              .quad            .Lx1043_0_s
.Lx1043_0_s:            .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n354_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n355_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n355_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # wq
                        mov              qword ptr [r9 + 168], rdx;           jmp   n356_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n356_statement_end_α:   add              rsp, 80;                             jmp   n365_statement_begin_α
#=======================================================================================================================
# pm_sq           wq              =   "'" wkey "'"
#-----------------------------------------------------------------------------------------------------------------------
n357_statement_begin_α:                                                       jmp   n358_lit_string_α
n357_statement_begin_β:                                                       jmp   n365_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1050_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n359_var_α
.Lx1050_0:              .quad            .Lx1050_0_s
.Lx1050_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n359_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # wkey
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n360_binop_α
n359_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n357_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n360_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n361_lit_string_α
n360_binop_β:           add              rsp, 16;                             jmp   n359_var_β
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1053_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n362_binop_α
n361_lit_string_β:      add              rsp, 16;                             jmp   n360_binop_β
.Lx1053_0:              .quad            .Lx1053_0_s
.Lx1053_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n362_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n363_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n363_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # wq
                        mov              qword ptr [r9 + 168], rdx;           jmp   n364_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n364_statement_end_α:   add              rsp, 80;                             jmp   n365_statement_begin_α
#=======================================================================================================================
# pm_tdict        tsk             =   SORT(mem[sentno][wkey])
#-----------------------------------------------------------------------------------------------------------------------
n365_statement_begin_α:                                                       jmp   n366_var_α
n365_statement_begin_β:                                                       jmp   n376_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n366_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n367_var_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n368_subscript_α
n367_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n365_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n368_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1062_240
                        add              rsp, 16;                             jmp   n367_var_β
.Lx1062_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n369_deref_α
n368_subscript_β:       add              rsp, 16;                             jmp   n367_var_β
#-----------------------------------------------------------------------------------------------------------------------
n369_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1063_240
                        add              rsp, 16;                             jmp   n368_subscript_β
.Lx1063_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n370_var_α
n369_deref_β:           add              rsp, 16;                             jmp   n368_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # wkey
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n371_subscript_α
n370_var_β:             add              rsp, 16;                             jmp   n369_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n371_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1065_240
                        add              rsp, 16;                             jmp   n370_var_β
.Lx1065_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n372_deref_α
n371_subscript_β:       add              rsp, 16;                             jmp   n370_var_β
#-----------------------------------------------------------------------------------------------------------------------
n372_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1066_240
                        add              rsp, 16;                             jmp   n371_subscript_β
.Lx1066_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n373_call_α
n372_deref_β:           add              rsp, 16;                             jmp   n371_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n373_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd329:        .string          "SORT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd329]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1067_240
                        add              rsp, 16;                             jmp   n372_deref_β
.Lx1067_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n374_assign_α
n373_call_β:            add              rsp, 16;                             jmp   n372_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n374_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # tsk
                        mov              qword ptr [r9 + 200], rdx;           jmp   n375_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n375_statement_end_α:   add              rsp, 128;                            jmp   n376_statement_begin_α
#=======================================================================================================================
#                 ti              =   0
#-----------------------------------------------------------------------------------------------------------------------
n376_statement_begin_α:                                                       jmp   n377_lit_integer_α
n376_statement_begin_β:                                                       jmp   n380_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1073_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n378_assign_α
.Lx1073_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n378_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ti
                        mov              qword ptr [r9 + 216], rdx;           jmp   n379_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n379_statement_end_α:   add              rsp, 16;                             jmp   n380_statement_begin_α
#=======================================================================================================================
#                 tline           =   '{'
#-----------------------------------------------------------------------------------------------------------------------
n380_statement_begin_α:                                                       jmp   n381_lit_string_α
n380_statement_begin_β:                                                       jmp   n384_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1079_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n382_assign_α
.Lx1079_0:              .quad            .Lx1079_0_s
.Lx1079_0_s:            .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n382_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # tline
                        mov              qword ptr [r9 + 264], rdx;           jmp   n383_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n383_statement_end_α:   add              rsp, 16;                             jmp   n384_statement_begin_α
#=======================================================================================================================
# pm_tag_loop     ti              =   ti + 1
#-----------------------------------------------------------------------------------------------------------------------
n384_statement_begin_α:                                                       jmp   n385_var_α
n384_statement_begin_β:                                                       jmp   n390_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n385_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ti
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n386_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1086_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n387_binop_α
n386_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n384_statement_begin_β
.Lx1086_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n387_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1087_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1087_7
.Lx1087_2:              and              edx, 1;                              jz    .Lx1087_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1087_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1087_4
.Lx1087_3:              movq             xmm0, rsi
.Lx1087_4:              cmp              ecx, 5;                              je    .Lx1087_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1087_6
.Lx1087_5:              movq             xmm1, rdi
.Lx1087_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1087_7:                                                                    jmp   n388_assign_α
.Lx1087_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1087_240
                        add              rsp, 16;                             jmp   n386_lit_integer_β
.Lx1087_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n388_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n388_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ti
                        mov              qword ptr [r9 + 216], rdx;           jmp   n389_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n389_statement_end_α:   add              rsp, 48;                             jmp   n390_statement_begin_α
#=======================================================================================================================
#                 tag             =   tsk[ti,1]                   :F(pm_tag_close)
#-----------------------------------------------------------------------------------------------------------------------
n390_statement_begin_α:                                                       jmp   n391_var_α
n390_statement_begin_β:                                                       jmp   n443_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n391_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # tsk
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n392_var_α
#-----------------------------------------------------------------------------------------------------------------------
n392_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ti
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n393_subscript_α
n392_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n390_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n393_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1095_240
                        add              rsp, 16;                             jmp   n392_var_β
.Lx1095_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n394_lit_integer_α
n393_subscript_β:       add              rsp, 16;                             jmp   n392_var_β
#-----------------------------------------------------------------------------------------------------------------------
n394_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1096_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n395_subscript_α
n394_lit_integer_β:     add              rsp, 16;                             jmp   n393_subscript_β
.Lx1096_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n395_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1097_240
                        add              rsp, 16;                             jmp   n394_lit_integer_β
.Lx1097_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n396_deref_α
n395_subscript_β:       add              rsp, 16;                             jmp   n394_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n396_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1098_240
                        add              rsp, 16;                             jmp   n395_subscript_β
.Lx1098_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n397_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n397_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # tag
                        mov              qword ptr [r9 + 232], rdx;           jmp   n398_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n398_statement_end_α:   add              rsp, 96;                             jmp   n399_statement_begin_α
#=======================================================================================================================
#                 tv              =   mem[sentno][wkey][tag]
#-----------------------------------------------------------------------------------------------------------------------
n399_statement_begin_α:                                                       jmp   n400_var_α
n399_statement_begin_β:                                                       jmp   n412_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n400_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n401_var_α
#-----------------------------------------------------------------------------------------------------------------------
n401_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # sentno
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n402_subscript_α
n401_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n399_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n402_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1106_240
                        add              rsp, 16;                             jmp   n401_var_β
.Lx1106_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n403_deref_α
n402_subscript_β:       add              rsp, 16;                             jmp   n401_var_β
#-----------------------------------------------------------------------------------------------------------------------
n403_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1107_240
                        add              rsp, 16;                             jmp   n402_subscript_β
.Lx1107_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n404_var_α
n403_deref_β:           add              rsp, 16;                             jmp   n402_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n404_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # wkey
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n405_subscript_α
n404_var_β:             add              rsp, 16;                             jmp   n403_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n405_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1109_240
                        add              rsp, 16;                             jmp   n404_var_β
.Lx1109_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n406_deref_α
n405_subscript_β:       add              rsp, 16;                             jmp   n404_var_β
#-----------------------------------------------------------------------------------------------------------------------
n406_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1110_240
                        add              rsp, 16;                             jmp   n405_subscript_β
.Lx1110_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n407_var_α
n406_deref_β:           add              rsp, 16;                             jmp   n405_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n407_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # tag
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n408_subscript_α
n407_var_β:             add              rsp, 16;                             jmp   n406_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n408_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1112_240
                        add              rsp, 16;                             jmp   n407_var_β
.Lx1112_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n409_deref_α
n408_subscript_β:       add              rsp, 16;                             jmp   n407_var_β
#-----------------------------------------------------------------------------------------------------------------------
n409_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1113_240
                        add              rsp, 16;                             jmp   n408_subscript_β
.Lx1113_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n410_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n410_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # tv
                        mov              qword ptr [r9 + 248], rdx;           jmp   n411_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n411_statement_end_α:   add              rsp, 160;                            jmp   n412_statement_begin_α
#=======================================================================================================================
#                 IDENT(tline, '{')                               :F(pm_tag_sep)
#-----------------------------------------------------------------------------------------------------------------------
n412_statement_begin_α:                                                       jmp   n413_var_α
n412_statement_begin_β:                                                       jmp   n429_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n413_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # tline
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n414_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1120_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n415_call_α
n414_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n412_statement_begin_β
.Lx1120_0:              .quad            .Lx1120_0_s
.Lx1120_0_s:            .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n415_call_α:            sub              rsp, 16
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
.Lrkfnzd1122:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1122]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx1121_240
                        add              rsp, 16;                             jmp   n414_lit_string_β
.Lx1121_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n416_statement_end_α
n415_call_β:            add              rsp, 16;                             jmp   n414_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n416_statement_end_α:   add              rsp, 48;                             jmp   n417_statement_begin_α
#=======================================================================================================================
#                 tline           =   tline "'" tag "': " tv      :(pm_tag_loop)
#-----------------------------------------------------------------------------------------------------------------------
n417_statement_begin_α:                                                       jmp   n418_var_α
n417_statement_begin_β:                                                       jmp   n384_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n418_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # tline
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n419_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1128_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n420_binop_α
n419_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n417_statement_begin_β
.Lx1128_0:              .quad            .Lx1128_0_s
.Lx1128_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n420_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n421_var_α
n420_binop_β:           add              rsp, 16;                             jmp   n419_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n421_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # tag
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n422_binop_α
n421_var_β:             add              rsp, 16;                             jmp   n420_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n422_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n423_lit_string_α
n422_binop_β:           add              rsp, 16;                             jmp   n421_var_β
#-----------------------------------------------------------------------------------------------------------------------
n423_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1132_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n424_binop_α
n423_lit_string_β:      add              rsp, 16;                             jmp   n422_binop_β
.Lx1132_0:              .quad            .Lx1132_0_s
.Lx1132_0_s:            .string          "': "
#-----------------------------------------------------------------------------------------------------------------------
n424_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n425_var_α
n424_binop_β:           add              rsp, 16;                             jmp   n423_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n425_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 240]            # tv
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n426_binop_α
n425_var_β:             add              rsp, 16;                             jmp   n424_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n426_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n427_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n427_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # tline
                        mov              qword ptr [r9 + 264], rdx;           jmp   n428_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n428_statement_end_α:   add              rsp, 144;                            jmp   n384_statement_begin_α
#=======================================================================================================================
# pm_tag_sep      tline           =   tline ', ' "'" tag "': " tv :(pm_tag_loop)
#-----------------------------------------------------------------------------------------------------------------------
n429_statement_begin_α:                                                       jmp   n430_var_α
n429_statement_begin_β:                                                       jmp   n384_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n430_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # tline
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n431_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n431_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1142_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n432_binop_α
n431_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n429_statement_begin_β
.Lx1142_0:              .quad            .Lx1142_0_s
.Lx1142_0_s:            .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n432_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n433_lit_string_α
n432_binop_β:           add              rsp, 16;                             jmp   n431_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1144_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n434_binop_α
n433_lit_string_β:      add              rsp, 16;                             jmp   n432_binop_β
.Lx1144_0:              .quad            .Lx1144_0_s
.Lx1144_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n434_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n435_var_α
n434_binop_β:           add              rsp, 16;                             jmp   n433_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n435_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # tag
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n436_binop_α
n435_var_β:             add              rsp, 16;                             jmp   n434_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n436_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n437_lit_string_α
n436_binop_β:           add              rsp, 16;                             jmp   n435_var_β
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1148_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n438_binop_α
n437_lit_string_β:      add              rsp, 16;                             jmp   n436_binop_β
.Lx1148_0:              .quad            .Lx1148_0_s
.Lx1148_0_s:            .string          "': "
#-----------------------------------------------------------------------------------------------------------------------
n438_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n439_var_α
n438_binop_β:           add              rsp, 16;                             jmp   n437_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n439_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 240]            # tv
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n440_binop_α
n439_var_β:             add              rsp, 16;                             jmp   n438_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n440_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n441_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n441_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # tline
                        mov              qword ptr [r9 + 264], rdx;           jmp   n442_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n442_statement_end_α:   add              rsp, 176;                            jmp   n384_statement_begin_α
#=======================================================================================================================
# pm_tag_close    tline           =   tline '}'
#-----------------------------------------------------------------------------------------------------------------------
n443_statement_begin_α:                                                       jmp   n444_var_α
n443_statement_begin_β:                                                       jmp   n449_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n444_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # tline
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n445_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1158_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n446_binop_α
n445_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n443_statement_begin_β
.Lx1158_0:              .quad            .Lx1158_0_s
.Lx1158_0_s:            .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n446_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n447_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n447_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # tline
                        mov              qword ptr [r9 + 264], rdx;           jmp   n448_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n448_statement_end_α:   add              rsp, 48;                             jmp   n449_statement_begin_α
#=======================================================================================================================
#                 GT(SIZE(next_wkey), 0)                          :F(pm_last_wrd)
#-----------------------------------------------------------------------------------------------------------------------
n449_statement_begin_α:                                                       jmp   n450_var_α
n449_statement_begin_β:                                                       jmp   n486_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n450_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 304]            # next_wkey
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n451_call_α
#-----------------------------------------------------------------------------------------------------------------------
n451_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1167:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1167]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1166_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n449_statement_begin_β
.Lx1166_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n452_lit_integer_α
n451_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n449_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1168_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n453_coerce_numeric_α
n452_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                             jmp   n449_statement_begin_β
.Lx1168_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n453_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx1170_1
                        cmp              eax, 3;                              jne   .Lx1170_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx1170_0
.Lx1170_1:              mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n454_coerce_numeric_α
.Lx1170_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n454_coerce_numeric_α
n453_coerce_numeric_β:  add              rsp, 16;                             jmp   n452_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n454_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1172_1
                        cmp              eax, 3;                              jne   .Lx1172_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx1172_0
.Lx1172_1:              mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n455_cmp_test_α
.Lx1172_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n455_cmp_test_α
n454_coerce_numeric_β:  add              rsp, 16;                             jmp   n453_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n455_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jg    .Lx1174_240
                        add              rsp, 16;                             jmp   n454_coerce_numeric_β
.Lx1174_240:                                                                  jmp   n456_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n456_statement_end_α:   add              rsp, 96;                             jmp   n457_statement_begin_α
#=======================================================================================================================
#                 IDENT(wi, 1)                                    :F(pm_mid_wrd)
#-----------------------------------------------------------------------------------------------------------------------
n457_statement_begin_α:                                                       jmp   n458_var_α
n457_statement_begin_β:                                                       jmp   n474_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n458_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # wi
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n459_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1180_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n460_call_α
n459_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n457_statement_begin_β
.Lx1180_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n460_call_α:            sub              rsp, 16
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
.Lrkfnzd1182:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1182]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx1181_240
                        add              rsp, 16;                             jmp   n459_lit_integer_β
.Lx1181_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n461_statement_end_α
n460_call_β:            add              rsp, 16;                             jmp   n459_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n461_statement_end_α:   add              rsp, 48;                             jmp   n462_statement_begin_α
#=======================================================================================================================
#                 OUTPUT          =   pfx wq ': ' tline ','       :(pm_wrd_loop)
#-----------------------------------------------------------------------------------------------------------------------
n462_statement_begin_α:                                                       jmp   n463_var_α
n462_statement_begin_β:                                                       jmp   n306_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n463_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # pfx
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n464_var_α
#-----------------------------------------------------------------------------------------------------------------------
n464_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # wq
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n465_binop_α
n464_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n462_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n465_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n466_lit_string_α
n465_binop_β:           add              rsp, 16;                             jmp   n464_var_β
#-----------------------------------------------------------------------------------------------------------------------
n466_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1190_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n467_binop_α
n466_lit_string_β:      add              rsp, 16;                             jmp   n465_binop_β
.Lx1190_0:              .quad            .Lx1190_0_s
.Lx1190_0_s:            .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n467_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n468_var_α
n467_binop_β:           add              rsp, 16;                             jmp   n466_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n468_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # tline
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n469_binop_α
n468_var_β:             add              rsp, 16;                             jmp   n467_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n469_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n470_lit_string_α
n469_binop_β:           add              rsp, 16;                             jmp   n468_var_β
#-----------------------------------------------------------------------------------------------------------------------
n470_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1194_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n471_binop_α
n470_lit_string_β:      add              rsp, 16;                             jmp   n469_binop_β
.Lx1194_0:              .quad            .Lx1194_0_s
.Lx1194_0_s:            .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n471_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n472_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n472_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1196_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n473_statement_end_α
.Lx1196_0:              .quad            .Lx1196_0_s
.Lx1196_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n473_statement_end_α:   add              rsp, 144;                            jmp   n306_statement_begin_α
#=======================================================================================================================
# pm_mid_wrd      OUTPUT          =   pad wq ': ' tline ','       :(pm_wrd_loop)
#-----------------------------------------------------------------------------------------------------------------------
n474_statement_begin_α:                                                       jmp   n475_var_α
n474_statement_begin_β:                                                       jmp   n306_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n475_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 288]            # pad
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n476_var_α
#-----------------------------------------------------------------------------------------------------------------------
n476_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # wq
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n477_binop_α
n476_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n474_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n477_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n478_lit_string_α
n477_binop_β:           add              rsp, 16;                             jmp   n476_var_β
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1204_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n479_binop_α
n478_lit_string_β:      add              rsp, 16;                             jmp   n477_binop_β
.Lx1204_0:              .quad            .Lx1204_0_s
.Lx1204_0_s:            .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n479_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n480_var_α
n479_binop_β:           add              rsp, 16;                             jmp   n478_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n480_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # tline
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n481_binop_α
n480_var_β:             add              rsp, 16;                             jmp   n479_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n481_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n482_lit_string_α
n481_binop_β:           add              rsp, 16;                             jmp   n480_var_β
#-----------------------------------------------------------------------------------------------------------------------
n482_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1208_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n483_binop_α
n482_lit_string_β:      add              rsp, 16;                             jmp   n481_binop_β
.Lx1208_0:              .quad            .Lx1208_0_s
.Lx1208_0_s:            .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n483_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n484_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n484_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1210_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n485_statement_end_α
.Lx1210_0:              .quad            .Lx1210_0_s
.Lx1210_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n485_statement_end_α:   add              rsp, 144;                            jmp   n306_statement_begin_α
#=======================================================================================================================
# pm_last_wrd     IDENT(wi, 1)                                    :F(pm_last_mid)
#-----------------------------------------------------------------------------------------------------------------------
n486_statement_begin_α:                                                       jmp   n487_var_α
n486_statement_begin_β:                                                       jmp   n501_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n487_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # wi
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n488_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1216_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n489_call_α
n488_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n486_statement_begin_β
.Lx1216_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n489_call_α:            sub              rsp, 16
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
.Lrkfnzd1218:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1218]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx1217_240
                        add              rsp, 16;                             jmp   n488_lit_integer_β
.Lx1217_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n490_statement_end_α
n489_call_β:            add              rsp, 16;                             jmp   n488_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n490_statement_end_α:   add              rsp, 48;                             jmp   n491_statement_begin_α
#=======================================================================================================================
#                 lline           =   pfx wq ': ' tline           :(pm_last_emit)
#-----------------------------------------------------------------------------------------------------------------------
n491_statement_begin_α:                                                       jmp   n492_var_α
n491_statement_begin_β:                                                       jmp   n511_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n492_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # pfx
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n493_var_α
#-----------------------------------------------------------------------------------------------------------------------
n493_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # wq
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n494_binop_α
n493_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n491_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n494_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n495_lit_string_α
n494_binop_β:           add              rsp, 16;                             jmp   n493_var_β
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1226_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n496_binop_α
n495_lit_string_β:      add              rsp, 16;                             jmp   n494_binop_β
.Lx1226_0:              .quad            .Lx1226_0_s
.Lx1226_0_s:            .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n496_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n497_var_α
n496_binop_β:           add              rsp, 16;                             jmp   n495_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n497_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # tline
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n498_binop_α
n497_var_β:             add              rsp, 16;                             jmp   n496_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n498_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n499_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n499_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # lline
                        mov              qword ptr [r9 + 344], rdx;           jmp   n500_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n500_statement_end_α:   add              rsp, 112;                            jmp   n511_statement_begin_α
#=======================================================================================================================
# pm_last_mid     lline           =   pad wq ': ' tline
#-----------------------------------------------------------------------------------------------------------------------
n501_statement_begin_α:                                                       jmp   n502_var_α
n501_statement_begin_β:                                                       jmp   n511_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n502_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 288]            # pad
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n503_var_α
#-----------------------------------------------------------------------------------------------------------------------
n503_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # wq
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n504_binop_α
n503_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n501_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n504_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n505_lit_string_α
n504_binop_β:           add              rsp, 16;                             jmp   n503_var_β
#-----------------------------------------------------------------------------------------------------------------------
n505_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1238_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n506_binop_α
n505_lit_string_β:      add              rsp, 16;                             jmp   n504_binop_β
.Lx1238_0:              .quad            .Lx1238_0_s
.Lx1238_0_s:            .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n506_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n507_var_α
n506_binop_β:           add              rsp, 16;                             jmp   n505_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n507_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # tline
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n508_binop_α
n507_var_β:             add              rsp, 16;                             jmp   n506_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n508_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n509_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n509_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # lline
                        mov              qword ptr [r9 + 344], rdx;           jmp   n510_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n510_statement_end_α:   add              rsp, 112;                            jmp   n511_statement_begin_α
#=======================================================================================================================
# pm_last_emit    IDENT(last_sent, 1)                             :F(pm_last_mid2)
#-----------------------------------------------------------------------------------------------------------------------
n511_statement_begin_α:                                                       jmp   n512_var_α
n511_statement_begin_β:                                                       jmp   n522_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n512_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 320]            # last_sent
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n513_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n513_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1248_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n514_call_α
n513_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n511_statement_begin_β
.Lx1248_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n514_call_α:            sub              rsp, 16
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
.Lrkfnzd1250:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1250]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx1249_240
                        add              rsp, 16;                             jmp   n513_lit_integer_β
.Lx1249_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n515_statement_end_α
n514_call_β:            add              rsp, 16;                             jmp   n513_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n515_statement_end_α:   add              rsp, 48;                             jmp   n516_statement_begin_α
#=======================================================================================================================
#                 OUTPUT          =   lline '}}'                  :(pm_sent_loop)
#-----------------------------------------------------------------------------------------------------------------------
n516_statement_begin_α:                                                       jmp   n517_var_α
n516_statement_begin_β:                                                       jmp   n230_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n517_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 336]            # lline
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n518_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n518_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1256_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n519_binop_α
n518_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n516_statement_begin_β
.Lx1256_0:              .quad            .Lx1256_0_s
.Lx1256_0_s:            .string          "}}"
#-----------------------------------------------------------------------------------------------------------------------
n519_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n520_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n520_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1258_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n521_statement_end_α
.Lx1258_0:              .quad            .Lx1258_0_s
.Lx1258_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n521_statement_end_α:   add              rsp, 48;                             jmp   n230_statement_begin_α
#=======================================================================================================================
# pm_last_mid2    OUTPUT          =   lline '},'                  :(pm_sent_loop)
#-----------------------------------------------------------------------------------------------------------------------
n522_statement_begin_α:                                                       jmp   n523_var_α
n522_statement_begin_β:                                                       jmp   n230_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n523_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 336]            # lline
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n524_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n524_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1264_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n525_binop_α
n524_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n522_statement_begin_β
.Lx1264_0:              .quad            .Lx1264_0_s
.Lx1264_0_s:            .string          "},"
#-----------------------------------------------------------------------------------------------------------------------
n525_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n526_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n526_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1266_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n527_statement_end_α
.Lx1266_0:              .quad            .Lx1266_0_s
.Lx1266_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n527_statement_end_α:   add              rsp, 48;                             jmp   n230_statement_begin_α
#=======================================================================================================================
# pm_done         pp_mem          =   .dummy                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n528_statement_begin_α:                                                       jmp   n529_lit_string_α
n528_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n529_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1271_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n530_call_α
.Lx1271_0:              .quad            .Lx1271_0_s
.Lx1271_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n530_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1273:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1273]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1272_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n528_statement_begin_β
.Lx1272_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n531_assign_α
n530_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n528_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n531_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # pp_mem
                        mov              qword ptr [r9 + 40], rdx;            jmp   n532_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n532_statement_end_α:   add              rsp, 32;                             jmp   RETURN
#=======================================================================================================================
# pp_mem_end  <stmt 63, line 74: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n533_statement_begin_α:                                                       jmp   n534_statement_end_α
n533_statement_begin_β:                                                       jmp   n535_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n534_statement_end_α:                                                         jmp   n535_statement_begin_α
#=======================================================================================================================
#                 &TRIM           =   0
#-----------------------------------------------------------------------------------------------------------------------
n535_statement_begin_α:                                                       jmp   n536_lit_string_α
n535_statement_begin_β:                                                       jmp   n540_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n536_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1283_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n537_lit_integer_α
.Lx1283_0:              .quad            .Lx1283_0_s
.Lx1283_0_s:            .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n537_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1284_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n538_call_α
n537_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n535_statement_begin_β
.Lx1284_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n538_call_α:            sub              rsp, 16
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
.Lrkfnzd1286:           .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1286]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx1285_240
                        add              rsp, 16;                             jmp   n537_lit_integer_β
.Lx1285_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n539_statement_end_α
n538_call_β:            add              rsp, 16;                             jmp   n537_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n539_statement_end_α:   add              rsp, 48;                             jmp   n540_statement_begin_α
#=======================================================================================================================
#                 nl              =   CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n540_statement_begin_α:                                                       jmp   n541_lit_integer_α
n540_statement_begin_β:                                                       jmp   n545_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n541_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1291_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n542_call_α
.Lx1291_0:              .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n542_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd498:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd498]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1292_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n540_statement_begin_β
.Lx1292_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n543_assign_α
n542_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n540_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n543_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # nl
                        mov              qword ptr [r9 + 376], rdx;           jmp   n544_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n544_statement_end_α:   add              rsp, 32;                             jmp   n545_statement_begin_α
#=======================================================================================================================
# slurp           line            =   INPUT                       :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
n545_statement_begin_α:                                                       jmp   n546_var_α
n545_statement_begin_β:                                                       jmp   n593_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n546_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1298_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1298_240
                        add              rsp, 16;                             jmp   n545_statement_begin_β
.Lx1298_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n547_assign_α
.Lx1298_0:              .quad            .Lx1298_0_s
.Lx1298_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n547_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax            # line
                        mov              qword ptr [r9 + 456], rdx;           jmp   n548_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n548_statement_end_α:   add              rsp, 16;                             jmp   n549_statement_begin_α
#=======================================================================================================================
#                 b1              =   b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
n549_statement_begin_α:                                                       jmp   n550_var_α
n549_statement_begin_β:                                                       jmp   n557_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n550_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # b1
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n551_var_α
#-----------------------------------------------------------------------------------------------------------------------
n551_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # line
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n552_binop_α
n551_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n549_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n552_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n553_var_α
n552_binop_β:           add              rsp, 16;                             jmp   n551_var_β
#-----------------------------------------------------------------------------------------------------------------------
n553_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # nl
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n554_binop_α
n553_var_β:             add              rsp, 16;                             jmp   n552_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n554_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n555_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n555_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax            # b1
                        mov              qword ptr [r9 + 472], rdx;           jmp   n556_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n556_statement_end_α:   add              rsp, 80;                             jmp   n557_statement_begin_α
#=======================================================================================================================
#                 GT(SIZE(b1), 8192)                              :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n557_statement_begin_α:                                                       jmp   n558_var_α
n557_statement_begin_β:                                                       jmp   n545_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n558_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # b1
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n559_call_α
#-----------------------------------------------------------------------------------------------------------------------
n559_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1316:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1316]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1315_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n557_statement_begin_β
.Lx1315_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n560_lit_integer_α
n559_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n557_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n560_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1317_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n561_coerce_numeric_α
n560_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                             jmp   n557_statement_begin_β
.Lx1317_0:              .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
n561_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx1319_1
                        cmp              eax, 3;                              jne   .Lx1319_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx1319_0
.Lx1319_1:              mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n562_coerce_numeric_α
.Lx1319_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n562_coerce_numeric_α
n561_coerce_numeric_β:  add              rsp, 16;                             jmp   n560_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n562_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1321_1
                        cmp              eax, 3;                              jne   .Lx1321_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx1321_0
.Lx1321_1:              mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n563_cmp_test_α
.Lx1321_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n563_cmp_test_α
n562_coerce_numeric_β:  add              rsp, 16;                             jmp   n561_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n563_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jg    .Lx1323_240
                        add              rsp, 16;                             jmp   n562_coerce_numeric_β
.Lx1323_240:                                                                  jmp   n564_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n564_statement_end_α:   add              rsp, 96;                             jmp   n565_statement_begin_α
#=======================================================================================================================
#                 b2              =   b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n565_statement_begin_α:                                                       jmp   n566_var_α
n565_statement_begin_β:                                                       jmp   n571_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n566_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # b2
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n567_var_α
#-----------------------------------------------------------------------------------------------------------------------
n567_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # b1
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n568_binop_α
n567_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n565_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n568_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n569_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n569_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # b2
                        mov              qword ptr [r9 + 488], rdx;           jmp   n570_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n570_statement_end_α:   add              rsp, 48;                             jmp   n571_statement_begin_α
#=======================================================================================================================
#                 b1              =
#-----------------------------------------------------------------------------------------------------------------------
n571_statement_begin_α:                                                       jmp   n572_lit_string_α
n571_statement_begin_β:                                                       jmp   n575_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n572_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1336_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n573_assign_α
.Lx1336_0:              .quad            .Lx1336_0_s
.Lx1336_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n573_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax            # b1
                        mov              qword ptr [r9 + 472], rdx;           jmp   n574_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n574_statement_end_α:   add              rsp, 16;                             jmp   n575_statement_begin_α
#=======================================================================================================================
#                 GT(SIZE(b2), 262144)                            :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n575_statement_begin_α:                                                       jmp   n576_var_α
n575_statement_begin_β:                                                       jmp   n545_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n576_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # b2
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n577_call_α
#-----------------------------------------------------------------------------------------------------------------------
n577_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1344:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1344]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1343_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n575_statement_begin_β
.Lx1343_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n578_lit_integer_α
n577_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n575_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n578_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1345_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n579_coerce_numeric_α
n578_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                             jmp   n575_statement_begin_β
.Lx1345_0:              .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
n579_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx1347_1
                        cmp              eax, 3;                              jne   .Lx1347_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx1347_0
.Lx1347_1:              mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n580_coerce_numeric_α
.Lx1347_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n580_coerce_numeric_α
n579_coerce_numeric_β:  add              rsp, 16;                             jmp   n578_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n580_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1349_1
                        cmp              eax, 3;                              jne   .Lx1349_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx1349_0
.Lx1349_1:              mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n581_cmp_test_α
.Lx1349_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n581_cmp_test_α
n580_coerce_numeric_β:  add              rsp, 16;                             jmp   n579_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n581_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jg    .Lx1351_240
                        add              rsp, 16;                             jmp   n580_coerce_numeric_β
.Lx1351_240:                                                                  jmp   n582_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n582_statement_end_α:   add              rsp, 96;                             jmp   n583_statement_begin_α
#=======================================================================================================================
#                 src             =   src b2
#-----------------------------------------------------------------------------------------------------------------------
n583_statement_begin_α:                                                       jmp   n584_var_α
n583_statement_begin_β:                                                       jmp   n589_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n584_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # src
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n585_var_α
#-----------------------------------------------------------------------------------------------------------------------
n585_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # b2
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n586_binop_α
n585_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n583_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n586_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n587_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n587_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # src
                        mov              qword ptr [r9 + 504], rdx;           jmp   n588_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n588_statement_end_α:   add              rsp, 48;                             jmp   n589_statement_begin_α
#=======================================================================================================================
#                 b2              =                               :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n589_statement_begin_α:                                                       jmp   n590_lit_string_α
n589_statement_begin_β:                                                       jmp   n545_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n590_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1364_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n591_assign_α
.Lx1364_0:              .quad            .Lx1364_0_s
.Lx1364_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n591_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # b2
                        mov              qword ptr [r9 + 488], rdx;           jmp   n592_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n592_statement_end_α:   add              rsp, 16;                             jmp   n545_statement_begin_α
#=======================================================================================================================
# slurp_f         src             =   src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n593_statement_begin_α:                                                       jmp   n594_var_α
n593_statement_begin_β:                                                       jmp   n601_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n594_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # src
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n595_var_α
#-----------------------------------------------------------------------------------------------------------------------
n595_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # b2
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n596_binop_α
n595_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n593_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n596_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n597_var_α
n596_binop_β:           add              rsp, 16;                             jmp   n595_var_β
#-----------------------------------------------------------------------------------------------------------------------
n597_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # b1
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n598_binop_α
n597_var_β:             add              rsp, 16;                             jmp   n596_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n598_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n599_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n599_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # src
                        mov              qword ptr [r9 + 504], rdx;           jmp   n600_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n600_statement_end_α:   add              rsp, 80;                             jmp   n601_statement_begin_α
#=======================================================================================================================
# slurp_done  <stmt 75, line 87: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n601_statement_begin_α:                                                       jmp   n602_statement_end_α
n601_statement_begin_β:                                                       jmp   n603_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n602_statement_end_α:                                                         jmp   n603_statement_begin_α
#=======================================================================================================================
#                 mem             =   TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n603_statement_begin_α:                                                       jmp   n604_call_α
n603_statement_begin_β:                                                       jmp   n607_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n604_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1385:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1385]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1384_240
                        add              rsp, 16;                             jmp   n603_statement_begin_β
.Lx1384_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n605_assign_α
n604_call_β:            add              rsp, 16;                             jmp   n603_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n605_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # mem
                        mov              qword ptr [r9 + 56], rdx;            jmp   n606_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n606_statement_end_α:   add              rsp, 16;                             jmp   n607_statement_begin_α
#=======================================================================================================================
#                 claws           =
#-----------------------------------------------------------------------------------------------------------------------
n607_statement_begin_α:                                                       jmp   n608_var_α
n607_statement_begin_β:                                                       jmp   n617_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n608_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 528]            # epsilon
                        mov              rdx, qword ptr [r9 + 536]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n609_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n609_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax            # PAT$0$V1
                        mov              qword ptr [r9 + 600], rdx;           jmp   n610_var_α
#-----------------------------------------------------------------------------------------------------------------------
n610_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 528]            # epsilon
                        mov              rdx, qword ptr [r9 + 536]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n611_assign_α
n610_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n607_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n611_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 576], rax            # PAT$0$V0
                        mov              qword ptr [r9 + 584], rdx;           jmp   n612_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n612_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1395_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n613_lit_string_α
n612_lit_string_β:      add              rsp, 16;                             jmp   n610_var_β
.Lx1395_0:              .quad            .Lx1395_0_s
.Lx1395_0_s:            .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n613_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1396_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n614_call_α
n613_lit_string_β:      add              rsp, 16;                             jmp   n612_lit_string_β
.Lx1396_0:              .quad            .Lx1396_0_s
.Lx1396_0_s:            .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n614_call_α:            sub              rsp, 16
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
.Lrkfnzd1398:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1398]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx1397_240
                        add              rsp, 16;                             jmp   n613_lit_string_β
.Lx1397_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n615_assign_α
n614_call_β:            add              rsp, 16;                             jmp   n613_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n615_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax            # claws
                        mov              qword ptr [r9 + 520], rdx;           jmp   n616_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n616_statement_end_α:   add              rsp, 80;                             jmp   n617_statement_begin_α
#=======================================================================================================================
#                 t0              =   TIME()
#-----------------------------------------------------------------------------------------------------------------------
n617_statement_begin_α:                                                       jmp   n618_call_α
n617_statement_begin_β:                                                       jmp   n621_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n618_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1405:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1405]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1404_240
                        add              rsp, 16;                             jmp   n617_statement_begin_β
.Lx1404_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n619_assign_α
n618_call_β:            add              rsp, 16;                             jmp   n617_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n619_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax            # t0
                        mov              qword ptr [r9 + 552], rdx;           jmp   n620_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n620_statement_end_α:   add              rsp, 16;                             jmp   n621_statement_begin_α
#=======================================================================================================================
#                 src             claws                           :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n621_statement_begin_α:                                                       jmp   n622_var_α
n621_statement_begin_β:                                                       jmp   n645_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n622_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # src
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n623_var_α
#-----------------------------------------------------------------------------------------------------------------------
n623_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 512]            # claws
                        mov              rdx, qword ptr [r9 + 520]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n624_assign_α
n623_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n645_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n624_assign_α:          mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1413_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n625_match_begin_α
n624_assign_β:                                                                jmp   n623_var_β
.Lx1413_0:              .quad            .Lx1413_0_s
.Lx1413_0_s:            .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n625_match_begin_α:     mov              rdi, qword ptr [rsp + 16]            # var
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
.Lx1415_0:              mov              r14d, dword ptr [rbp + -40];         jmp   n626_match_defer_α
n625_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1415_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1415_1
                                                                              jmp   .Lx1415_0
.Lx1415_1:
n625_match_begin_af:    mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n624_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n626_match_defer_α:     lea              rdi, [rip + .S8]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx1416_14
                        mov              rax, qword ptr [rdx + 0]
.Lx1416_14:             test             rax, rax;                            jz    .Lx1416_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx1416_4]
                        lea              r11, [rip + .Lx1416_5];              jmp   rax
.Lx1416_4:                                                                    jmp   n627_match_end_α
.Lx1416_5:                                                                    jmp   n625_match_begin_β
.Lx1416_0:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n625_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1416_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n627_match_end_α
.Lx1416_6:              add              rsp, 16;                             jmp   n625_match_begin_β
n626_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n627_match_end_α:       push             r14
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
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n628_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n628_statement_end_α:   add              rsp, 32;                             jmp   n629_statement_begin_α
#=======================================================================================================================
#                 t1              =   TIME()
#-----------------------------------------------------------------------------------------------------------------------
n629_statement_begin_α:                                                       jmp   n630_call_α
n629_statement_begin_β:                                                       jmp   n633_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n630_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1424:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1424]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1423_240
                        add              rsp, 16;                             jmp   n629_statement_begin_β
.Lx1423_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n631_assign_α
n630_call_β:            add              rsp, 16;                             jmp   n629_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n631_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # t1
                        mov              qword ptr [r9 + 568], rdx;           jmp   n632_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n632_statement_end_α:   add              rsp, 16;                             jmp   n633_statement_begin_α
#=======================================================================================================================
#                 TERMINAL        =   'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n633_statement_begin_α:                                                       jmp   n634_lit_string_α
n633_statement_begin_β:                                                       jmp   n641_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n634_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1430_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n635_var_α
.Lx1430_0:              .quad            .Lx1430_0_s
.Lx1430_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n635_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 560]            # t1
                        mov              rdx, qword ptr [r9 + 568]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n636_var_α
n635_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n633_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n636_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # t0
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n637_binop_α
n636_var_β:             add              rsp, 16;                             jmp   n635_var_β
#-----------------------------------------------------------------------------------------------------------------------
n637_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1433_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1433_7
.Lx1433_2:              and              edx, 1;                              jz    .Lx1433_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx1433_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1433_4
.Lx1433_3:              movq             xmm0, rsi
.Lx1433_4:              cmp              ecx, 5;                              je    .Lx1433_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1433_6
.Lx1433_5:              movq             xmm1, rdi
.Lx1433_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1433_7:                                                                    jmp   n638_binop_α
.Lx1433_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1433_240
                        add              rsp, 16;                             jmp   n636_var_β
.Lx1433_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n638_binop_α
n637_binop_β:           add              rsp, 16;                             jmp   n636_var_β
#-----------------------------------------------------------------------------------------------------------------------
n638_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n639_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n639_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1435_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n640_statement_end_α
.Lx1435_0:              .quad            .Lx1435_0_s
.Lx1435_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n640_statement_end_α:   add              rsp, 80;                             jmp   n641_statement_begin_α
#=======================================================================================================================
#                 pp_mem(mem)                                     :(END)
#-----------------------------------------------------------------------------------------------------------------------
n641_statement_begin_α:                                                       jmp   n642_var_α
n641_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n642_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # mem
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n643_call_α
#-----------------------------------------------------------------------------------------------------------------------
n643_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1442z]
                        lea              rax, [rip + pp_mem_α];               jmp   rax
.Lsig1442z:             .quad            1
                        .quad            .Lx1442_2
                        .quad            .Lx1442_2
                        .quad            16
.Lx1442_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1442_29
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
.Lx1442_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1442_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n641_statement_begin_β
.Lx1442_240:                                                                  jmp   n644_statement_end_α
n643_call_β:                                                                  jmp   n641_statement_begin_β
.Lx1442_0:              .quad            .Lx1442_0_s
.Lx1442_0_s:            .string          "pp_mem"
#-----------------------------------------------------------------------------------------------------------------------
n644_statement_end_α:   add              rsp, 32;                             jmp   main_γ
#=======================================================================================================================
# fail            OUTPUT          =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n645_statement_begin_α:                                                       jmp   n646_lit_string_α
n645_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n646_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx1447_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n647_assign_α
.Lx1447_0:              .quad            .Lx1447_0_s
.Lx1447_0_s:            .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n647_assign_α:          mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1448_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n648_statement_end_α
.Lx1448_0:              .quad            .Lx1448_0_s
.Lx1448_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n648_statement_end_α:   add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 pop              rcx
                        add              rsp, 8;                              jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                add              rsp, 8
                        pop              rcx;                                 jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rax + 0], 1;              jmp   RETURN
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
                        .section         .rodata
.S0:                    .string          "wrd"
.S1:                    .string          "tag"
.S2:                    .string          "PAT$0$V1"
.S3:                    .string          "*add_tok"
.S4:                    .string          "num"
.S5:                    .string          "PAT$0$V0"
.S6:                    .string          "*new_sent"
.S7:                    .string          "nl"
.S8:                    .string          "PATV$0"
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
