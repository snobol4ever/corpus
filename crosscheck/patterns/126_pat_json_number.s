                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 72
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n0_match_span_α:        sub              rsp, 16
                        mov              r11, 1
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx2_0:                 cmp              ecx, r15d;                           jge   .Lx2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx2_1
                        add              ecx, 1;                              jmp   .Lx2_0
.Lx2_1:                 cmp              ecx, r14d;                           jg    .Lx2_240
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lx2_240:               mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   PAT$0_γ
n0_match_span_β:        mov              r11, 1
                        mov              r14d, dword ptr [rbp + -60]
                        add              rsp, 16;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n0_match_span_β
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
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$1:
PAT$1_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 40
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n3_match_len_α:         mov              r11, 2
                        mov              eax, r14d
                        add              eax, 0
                        cmp              eax, r15d;                           jg    PAT$1_ω
                        add              r14d, 0;                             jmp   PAT$1_γ
n3_match_len_β:         mov              r11, 2
                        sub              r14d, 0;                             jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   n3_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$1_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$2:
PAT$2_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 120
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n5_match_assign_save_α: sub              rsp, 16
                        mov              r11, 3
                        mov              dword ptr [rbp + -48], r14d;         jmp   n6_match_defer_α
n5_match_assign_save_β: mov              r11, 3
                        add              rsp, 16;                             jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_match_defer_α:       sub              rsp, 16
                        mov              r11, 4
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx17_16
                        mov              rax, qword ptr [rdx + 0]
.Lx17_16:               test             rax, rax;                            jz    .Lx17_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx17_5]
                        push             rcx
                        lea              rcx, [rip + .Lx17_4]
                        push             rcx;                                 jmp   rax
.Lx17_4:                                                                      jmp   n7_match_assign_cond_α
.Lx17_5:                add              rsp, 16;                             jmp   n5_match_assign_save_β
.Lx17_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S0]
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
                        test             eax, eax;                            jns   .Lx17_240
                        add              rsp, 16;                             jmp   n5_match_assign_save_β
.Lx17_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx17_6]
                        push             rcx
                        push             rax;                                 jmp   n7_match_assign_cond_α
.Lx17_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n5_match_assign_save_β
n6_match_defer_β:       mov              r11, 4
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx17_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx17_12
                                                                              jmp   rax
.Lx17_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n7_match_assign_cond_α: mov              r11, 5
                        mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n8_match_assign_save_α
n7_match_assign_cond_β: mov              r11, 5
                        sub              r12, 24;                             jmp   n6_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_assign_save_α: sub              rsp, 16
                        mov              r11, 6
                        mov              dword ptr [rbp + -64], r14d;         jmp   n9_match_alternate_α
n8_match_assign_save_β: mov              r11, 6
                        add              rsp, 16;                             jmp   n7_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_alternate_α:   mov              r11, 7
                        mov              dword ptr [rbp + -120], r14d
                        lea              rax, [rip + .Lx23_21]
                        mov              qword ptr [rbp + -104], rax;         jmp   n13_match_lit_α
.Lx23_21:               lea              rax, [rip + .Lx23_19]
                        mov              qword ptr [rbp + -104], rax;         jmp   n11_match_defer_α
n9_match_alternate_s0:  mov              r11, 7
                        lea              rax, [rip + .Lx23_40]
                        mov              qword ptr [rbp + -112], rax;         jmp   n9_match_alternate_as
n9_match_alternate_s1:  mov              r11, 7
                        lea              rax, [rip + .Lx23_41]
                        mov              qword ptr [rbp + -112], rax;         jmp   n9_match_alternate_as
.Lx23_40:                                                                     jmp   n12_goto_β
.Lx23_41:                                                                     jmp   n11_match_defer_β
n9_match_alternate_as:  mov              r11, 7;                              jmp   n10_match_assign_cond_α
n9_match_alternate_β:   mov              r11, 7
                        mov              rax, qword ptr [rbp + -112];         jmp   rax
n9_match_alternate_af:  mov              r11, 7
                        mov              r14d, dword ptr [rbp + -120]
                        mov              rax, qword ptr [rbp + -104];         jmp   rax
.Lx23_19:                                                                     jmp   n8_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_assign_cond_α:
                        mov              r11, 8
                        mov              eax, dword ptr [rbp + -64]
                        lea              rcx, [rip + .S2]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   PAT$2_γ
n10_match_assign_cond_β:
                        mov              r11, 8
                        sub              r12, 24;                             jmp   n9_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n11_match_defer_α:      mov              r11, 9
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S3]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx26_16
                        mov              rax, qword ptr [rdx + 0]
.Lx26_16:               test             rax, rax;                            jz    .Lx26_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx26_5]
                        push             rcx
                        lea              rcx, [rip + .Lx26_4]
                        push             rcx;                                 jmp   rax
.Lx26_4:                                                                      jmp   n9_match_alternate_s1
.Lx26_5:                                                                      jmp   n9_match_alternate_af
.Lx26_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S3]
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
                        test             eax, eax;                            js    n9_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx26_6]
                        push             rcx
                        push             rax;                                 jmp   n9_match_alternate_s1
.Lx26_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n9_match_alternate_af
n11_match_defer_β:      mov              r11, 9
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx26_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx26_12
                                                                              jmp   rax
.Lx26_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n12_goto_α:             mov              r11, 10;                             jmp   n9_match_alternate_af
n12_goto_β:             mov              r11, 10;                             jmp   n9_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n13_match_lit_α:        mov              r11, 11
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n9_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 46;                             jne   n9_match_alternate_af
                        add              r14d, 1;                             jmp   n14_match_defer_α
n13_match_lit_β:        mov              r11, 11
                        sub              r14d, 1;                             jmp   n9_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n14_match_defer_α:      mov              r11, 12
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S4]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx30_16
                        mov              rax, qword ptr [rdx + 0]
.Lx30_16:               test             rax, rax;                            jz    .Lx30_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx30_5]
                        push             rcx
                        lea              rcx, [rip + .Lx30_4]
                        push             rcx;                                 jmp   rax
.Lx30_4:                                                                      jmp   n9_match_alternate_s0
.Lx30_5:                                                                      jmp   n13_match_lit_β
.Lx30_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S4]
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
                        test             eax, eax;                            js    n13_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx30_6]
                        push             rcx
                        push             rax;                                 jmp   n9_match_alternate_s0
.Lx30_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n13_match_lit_β
n14_match_defer_β:      mov              r11, 12
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx30_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx30_12
                                                                              jmp   rax
.Lx30_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_β:
                                                                              jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$2_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_ω:
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
                        mov              edi, 9
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 9
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "digits"
.Lgvan1:                .string          "eps"
.Lgvan2:                .string          "num"
.Lgvan3:                .string          "INT"
.Lgvan4:                .string          "FRAC"
.Lgvan5:                .string          "s"
.Lgvan6:                .string          "PAT$2$V0"
.Lgvan7:                .string          "PAT$2$V1"
.Lgvan8:                .string          "PAT$2$V2"
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
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         digits = SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_begin_α:  mov              r11, 13
                        mov              r10, 1;                              jmp   n32_lit_string_α
n31_statement_begin_β:  mov              r11, 13;                             jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n33_call_α
.Lx83_0:                .quad            .Lx83_0_s
.Lx83_0_s:              .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_α:             sub              rsp, 16
                        mov              r11, 15
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd85:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd85]
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
                        cmp              al, 104;                             jne   .Lx84_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n31_statement_begin_β
.Lx84_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n34_assign_α
n33_call_β:             mov              r11, 15
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n31_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              r11, 16
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # digits
                        mov              qword ptr [r9 + 8], rdx;             jmp   n35_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:    mov              r11, 17
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n36_statement_begin_α
#=======================================================================================================================
#         eps    = LEN(0)
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:  mov              r11, 18
                        mov              r10, 2;                              jmp   n37_lit_string_α
n36_statement_begin_β:  mov              r11, 18;                             jmp   n41_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       sub              rsp, 16
                        mov              r11, 19
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_call_α
.Lx91_0:                .quad            .Lx91_0_s
.Lx91_0_s:              .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:             sub              rsp, 16
                        mov              r11, 20
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd93:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd93]
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
                        cmp              al, 104;                             jne   .Lx92_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n36_statement_begin_β
.Lx92_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_assign_α
n38_call_β:             mov              r11, 20
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n36_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              r11, 21
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # eps
                        mov              qword ptr [r9 + 24], rdx;            jmp   n40_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    mov              r11, 22
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n41_statement_begin_α
#=======================================================================================================================
#         num    = digits . INT FENCE('.' digits | eps) . FRAC
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:  mov              r11, 23
                        mov              r10, 3;                              jmp   n42_var_α
n41_statement_begin_β:  mov              r11, 23;                             jmp   n53_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              sub              rsp, 16
                        mov              r11, 24
                        mov              rax, qword ptr [r9 + 0]              # digits
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:           mov              r11, 25
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # PAT$2$V0
                        mov              qword ptr [r9 + 104], rdx;           jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              sub              rsp, 16
                        mov              r11, 26
                        mov              rax, qword ptr [r9 + 0]              # digits
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_assign_α
n44_var_β:              mov              r11, 26
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n41_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              r11, 27
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # PAT$2$V1
                        mov              qword ptr [r9 + 120], rdx;           jmp   n46_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              sub              rsp, 16
                        mov              r11, 28
                        mov              rax, qword ptr [r9 + 16]             # eps
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n47_assign_α
n46_var_β:              mov              r11, 28
                        add              rsp, 16;                             jmp   n44_var_β
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              r11, 29
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # PAT$2$V2
                        mov              qword ptr [r9 + 136], rdx;           jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       sub              rsp, 16
                        mov              r11, 30
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_lit_string_α
n48_lit_string_β:       mov              r11, 30
                        add              rsp, 16;                             jmp   n46_var_β
.Lx105_0:               .quad            .Lx105_0_s
.Lx105_0_s:             .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_call_α
n49_lit_string_β:       mov              r11, 31
                        add              rsp, 16;                             jmp   n48_lit_string_β
.Lx106_0:               .quad            .Lx106_0_s
.Lx106_0_s:             .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n50_call_α:             sub              rsp, 16
                        mov              r11, 32
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
.Lrkfnzd108:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd108]
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
                        cmp              al, 104;                             jne   .Lx107_240
                        add              rsp, 16;                             jmp   n49_lit_string_β
.Lx107_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_assign_α
n50_call_β:             mov              r11, 32
                        add              rsp, 16;                             jmp   n49_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              r11, 33
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # num
                        mov              qword ptr [r9 + 40], rdx;            jmp   n52_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    mov              r11, 34
                        mov              r10, 3
                        add              rsp, 96;                             jmp   n53_statement_begin_α
#=======================================================================================================================
#         s = '42.7'
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:  mov              r11, 35
                        mov              r10, 4;                              jmp   n54_lit_string_α
n53_statement_begin_β:  mov              r11, 35;                             jmp   n57_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       sub              rsp, 16
                        mov              r11, 36
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_assign_α
.Lx114_0:               .quad            .Lx114_0_s
.Lx114_0_s:             .string          "42.7"
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:           mov              r11, 37
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # s
                        mov              qword ptr [r9 + 88], rdx;            jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    mov              r11, 38
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n57_statement_begin_α
#=======================================================================================================================
#         s POS(0) num RPOS(0)                                  :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:  mov              r11, 39
                        mov              r10, 5;                              jmp   n58_var_α
n57_statement_begin_β:  mov              r11, 39;                             jmp   n77_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              sub              rsp, 16
                        mov              r11, 40
                        mov              rax, qword ptr [r9 + 80]             # s
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n59_var_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              sub              rsp, 16
                        mov              r11, 41
                        mov              rax, qword ptr [r9 + 32]             # num
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n60_assign_α
n59_var_β:              mov              r11, 41
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n77_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:           mov              r11, 42
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n61_match_begin_α
n60_assign_β:           mov              r11, 42;                             jmp   n59_var_β
.Lx122_0:               .quad            .Lx122_0_s
.Lx122_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n61_match_begin_α:      mov              r11, 43
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
.Lx124_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx124_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n62_match_pos_α
n61_match_begin_β:      mov              r11, 43
.Lx124_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx124_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx124_1
                                                                              jmp   .Lx124_0
.Lx124_1:
n61_match_begin_af:     mov              r11, 43
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
                        pop              rbp;                                 jmp   n60_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n62_match_pos_α:        mov              r11, 44
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n61_match_begin_β
                                                                              jmp   n63_match_defer_α
n62_match_pos_β:        mov              r11, 44;                             jmp   n61_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n63_match_defer_α:      mov              r11, 45
                        lea              rdi, [rip + .S5]
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
                        test             rax, rax;                            je    .Lx126_14
                        mov              rax, qword ptr [rdx + 0]
.Lx126_14:              test             rax, rax;                            jz    .Lx126_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx126_5]
                        push             rcx
                        lea              rcx, [rip + .Lx126_4]
                        push             rcx;                                 jmp   rax
.Lx126_4:                                                                     jmp   n64_match_rpos_α
.Lx126_5:                                                                     jmp   n61_match_begin_β
.Lx126_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
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
                        test             eax, eax;                            js    n61_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx126_6]
                        push             rcx
                        push             rax;                                 jmp   n64_match_rpos_α
.Lx126_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n61_match_begin_β
n63_match_defer_β:      mov              r11, 45
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx126_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx126_12
                                                                              jmp   rax
.Lx126_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n64_match_rpos_α:       mov              r11, 46
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n63_match_defer_β
                                                                              jmp   n65_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n65_match_end_α:        mov              r11, 47
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
                        test             rax, rax;                            je    .Lx129_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n61_match_begin_af
.Lx129_13:              add              rsp, 16
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
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:    mov              r11, 48
                        mov              r10, 5
                        add              rsp, 32;                             jmp   n67_statement_begin_α
#=======================================================================================================================
# YES     OUTPUT = 'int=' INT ' frac=' FRAC                     :(END)
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_begin_α:  mov              r11, 49
                        mov              r10, 6;                              jmp   n68_lit_string_α
n67_statement_begin_β:  mov              r11, 49;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       sub              rsp, 16
                        mov              r11, 50
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_var_α
.Lx134_0:               .quad            .Lx134_0_s
.Lx134_0_s:             .string          "int="
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              sub              rsp, 16
                        mov              r11, 51
                        mov              rax, qword ptr [r9 + 48]             # INT
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_binop_α
n69_var_β:              mov              r11, 51
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n67_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n70_binop_α:            sub              rsp, 16
                        mov              r11, 52
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n71_lit_string_α
n70_binop_β:            mov              r11, 52
                        add              rsp, 16;                             jmp   n69_var_β
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_binop_α
n71_lit_string_β:       mov              r11, 53
                        add              rsp, 16;                             jmp   n70_binop_β
.Lx137_0:               .quad            .Lx137_0_s
.Lx137_0_s:             .string          " frac="
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_α:            sub              rsp, 16
                        mov              r11, 54
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n73_var_α
n72_binop_β:            mov              r11, 54
                        add              rsp, 16;                             jmp   n71_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              sub              rsp, 16
                        mov              r11, 55
                        mov              rax, qword ptr [r9 + 64]             # FRAC
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_binop_α
n73_var_β:              mov              r11, 55
                        add              rsp, 16;                             jmp   n72_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n74_binop_α:            sub              rsp, 16
                        mov              r11, 56
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n75_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:           mov              r11, 57
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n76_statement_end_α
.Lx141_0:               .quad            .Lx141_0_s
.Lx141_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_end_α:    mov              r11, 58
                        mov              r10, 6
                        add              rsp, 112;                            jmp   main_γ
#=======================================================================================================================
# NO      OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_begin_α:  mov              r11, 59
                        mov              r10, 7;                              jmp   n78_lit_string_α
n77_statement_begin_β:  mov              r11, 59;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       sub              rsp, 16
                        mov              r11, 60
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_assign_α
.Lx146_0:               .quad            .Lx146_0_s
.Lx146_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              r11, 61
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n80_statement_end_α
.Lx147_0:               .quad            .Lx147_0_s
.Lx147_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    mov              r11, 62
                        mov              r10, 7
                        add              rsp, 16;                             jmp   main_γ
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
                        .long            32
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "PAT$1"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__PAT$1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            48
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "PAT$2"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__PAT$2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            224
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "PAT$2$V0"
.S1:                    .string          "INT"
.S2:                    .string          "FRAC"
.S3:                    .string          "PAT$2$V2"
.S4:                    .string          "PAT$2$V1"
.S5:                    .string          "PATV$0"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
