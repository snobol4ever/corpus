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
                        sub              rsp, 104
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n3_match_assign_save_α: sub              rsp, 16
                        mov              r11, 2
                        mov              dword ptr [rbp + -48], r14d;         jmp   n4_match_defer_α
n3_match_assign_save_β: mov              r11, 2
                        add              rsp, 16;                             jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_match_defer_α:       sub              rsp, 16
                        mov              r11, 3
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
                        test             rax, rax;                            je    .Lx14_16
                        mov              rax, qword ptr [rdx + 0]
.Lx14_16:               test             rax, rax;                            jz    .Lx14_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx14_5]
                        push             rcx
                        lea              rcx, [rip + .Lx14_4]
                        push             rcx;                                 jmp   rax
.Lx14_4:                                                                      jmp   n5_match_assign_cond_α
.Lx14_5:                add              rsp, 16;                             jmp   n3_match_assign_save_β
.Lx14_0:                push             r14
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
                        test             eax, eax;                            jns   .Lx14_240
                        add              rsp, 16;                             jmp   n3_match_assign_save_β
.Lx14_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx14_6]
                        push             rcx
                        push             rax;                                 jmp   n5_match_assign_cond_α
.Lx14_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n3_match_assign_save_β
n4_match_defer_β:       mov              r11, 3
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx14_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx14_12
                                                                              jmp   rax
.Lx14_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n5_match_assign_cond_α: mov              r11, 4
                        mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n6_match_arbno_α
n5_match_assign_cond_β: mov              r11, 4
                        sub              r12, 24;                             jmp   n4_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n6_match_arbno_α:       mov              r11, 5
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   PAT$1_γ
n6_match_arbno_β:       mov              r11, 5;                              jmp   n7_match_fence1_α
n6_match_arbno_as:      mov              r11, 5
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n10_match_assign_cond_β
                        mov              dword ptr [rbp + -60], r14d;         jmp   PAT$1_γ
n6_match_arbno_af:      mov              r11, 5
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n5_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n7_match_fence1_α:      mov              r11, 6
                        mov              qword ptr [rbp + -96], rsp;          jmp   n11_match_lit_α
n7_match_fence1_as:     mov              r11, 6
                        mov              rsp, qword ptr [rbp + -96];          jmp   n8_match_assign_save_α
n7_match_fence1_af:     mov              r11, 6
n7_match_fence1_β:      mov              r11, 6
                        mov              rsp, qword ptr [rbp + -96];          jmp   n6_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n8_match_assign_save_α: mov              r11, 7
                        mov              dword ptr [rbp + -80], r14d;         jmp   n9_match_defer_α
n8_match_assign_save_β: mov              r11, 7;                              jmp   n6_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n9_match_defer_α:       mov              r11, 8
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx23_16
                        mov              rax, qword ptr [rdx + 0]
.Lx23_16:               test             rax, rax;                            jz    .Lx23_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx23_5]
                        push             rcx
                        lea              rcx, [rip + .Lx23_4]
                        push             rcx;                                 jmp   rax
.Lx23_4:                                                                      jmp   n10_match_assign_cond_α
.Lx23_5:                                                                      jmp   n8_match_assign_save_β
.Lx23_0:                push             r14
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
                        test             eax, eax;                            js    n8_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx23_6]
                        push             rcx
                        push             rax;                                 jmp   n10_match_assign_cond_α
.Lx23_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n8_match_assign_save_β
n9_match_defer_β:       mov              r11, 8
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx23_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx23_12
                                                                              jmp   rax
.Lx23_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n10_match_assign_cond_α:
                        mov              r11, 9
                        mov              eax, dword ptr [rbp + -80]
                        lea              rcx, [rip + .S3]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n6_match_arbno_as
n10_match_assign_cond_β:
                        mov              r11, 9
                        sub              r12, 24;                             jmp   n9_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n11_match_lit_α:        mov              r11, 10
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n7_match_fence1_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   n7_match_fence1_af
                        add              r14d, 1;                             jmp   n7_match_fence1_as
n11_match_lit_β:        mov              r11, 10
                        sub              r14d, 1;                             jmp   n7_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   n6_match_arbno_β
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
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 7
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 7
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "num"
.Lgvan1:                .string          "expr"
.Lgvan2:                .string          "FIRST"
.Lgvan3:                .string          "LAST"
.Lgvan4:                .string          "s"
.Lgvan5:                .string          "PAT$1$V0"
.Lgvan6:                .string          "PAT$1$V1"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         num   = SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:  mov              r11, 11
                        mov              r10, 1;                              jmp   n29_lit_string_α
n28_statement_begin_β:  mov              r11, 11;                             jmp   n33_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       sub              rsp, 16
                        mov              r11, 12
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_call_α
.Lx73_0:                .quad            .Lx73_0_s
.Lx73_0_s:              .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n30_call_α:             sub              rsp, 16
                        mov              r11, 13
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd75:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd75]
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
                        cmp              al, 104;                             jne   .Lx74_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n28_statement_begin_β
.Lx74_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_assign_α
n30_call_β:             mov              r11, 13
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n28_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:           mov              r11, 14
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # num
                        mov              qword ptr [r9 + 8], rdx;             jmp   n32_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_end_α:    mov              r11, 15
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n33_statement_begin_α
#=======================================================================================================================
#         expr  = num . FIRST ARBNO(FENCE('+') num . LAST)
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_begin_α:  mov              r11, 16
                        mov              r10, 2;                              jmp   n34_var_α
n33_statement_begin_β:  mov              r11, 16;                             jmp   n43_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              sub              rsp, 16
                        mov              r11, 17
                        mov              rax, qword ptr [r9 + 0]              # num
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n35_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:           mov              r11, 18
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # PAT$1$V0
                        mov              qword ptr [r9 + 88], rdx;            jmp   n36_var_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              sub              rsp, 16
                        mov              r11, 19
                        mov              rax, qword ptr [r9 + 0]              # num
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n37_assign_α
n36_var_β:              mov              r11, 19
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n33_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:           mov              r11, 20
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # PAT$1$V1
                        mov              qword ptr [r9 + 104], rdx;           jmp   n38_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:       sub              rsp, 16
                        mov              r11, 21
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_lit_string_α
n38_lit_string_β:       mov              r11, 21
                        add              rsp, 16;                             jmp   n36_var_β
.Lx85_0:                .quad            .Lx85_0_s
.Lx85_0_s:              .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       sub              rsp, 16
                        mov              r11, 22
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_call_α
n39_lit_string_β:       mov              r11, 22
                        add              rsp, 16;                             jmp   n38_lit_string_β
.Lx86_0:                .quad            .Lx86_0_s
.Lx86_0_s:              .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n40_call_α:             sub              rsp, 16
                        mov              r11, 23
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
.Lrkfnzd88:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd88]
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
                        cmp              al, 104;                             jne   .Lx87_240
                        add              rsp, 16;                             jmp   n39_lit_string_β
.Lx87_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n41_assign_α
n40_call_β:             mov              r11, 23
                        add              rsp, 16;                             jmp   n39_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:           mov              r11, 24
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # expr
                        mov              qword ptr [r9 + 24], rdx;            jmp   n42_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:    mov              r11, 25
                        mov              r10, 2
                        add              rsp, 80;                             jmp   n43_statement_begin_α
#=======================================================================================================================
#         s     = '1+2+3+4+5'
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:  mov              r11, 26
                        mov              r10, 3;                              jmp   n44_lit_string_α
n43_statement_begin_β:  mov              r11, 26;                             jmp   n47_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_assign_α
.Lx94_0:                .quad            .Lx94_0_s
.Lx94_0_s:              .string          "1+2+3+4+5"
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              r11, 28
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # s
                        mov              qword ptr [r9 + 72], rdx;            jmp   n46_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    mov              r11, 29
                        mov              r10, 3
                        add              rsp, 16;                             jmp   n47_statement_begin_α
#=======================================================================================================================
#         s POS(0) expr RPOS(0)                                 :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_begin_α:  mov              r11, 30
                        mov              r10, 4;                              jmp   n48_var_α
n47_statement_begin_β:  mov              r11, 30;                             jmp   n67_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:              sub              rsp, 16
                        mov              r11, 31
                        mov              rax, qword ptr [r9 + 64]             # s
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:              sub              rsp, 16
                        mov              r11, 32
                        mov              rax, qword ptr [r9 + 16]             # expr
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n50_assign_α
n49_var_β:              mov              r11, 32
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n67_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:           mov              r11, 33
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n51_match_begin_α
n50_assign_β:           mov              r11, 33;                             jmp   n49_var_β
.Lx102_0:               .quad            .Lx102_0_s
.Lx102_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n51_match_begin_α:      mov              r11, 34
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
.Lx104_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx104_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n52_match_pos_α
n51_match_begin_β:      mov              r11, 34
.Lx104_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx104_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx104_1
                                                                              jmp   .Lx104_0
.Lx104_1:
n51_match_begin_af:     mov              r11, 34
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
                        pop              rbp;                                 jmp   n50_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n52_match_pos_α:        mov              r11, 35
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n51_match_begin_β
                                                                              jmp   n53_match_defer_α
n52_match_pos_β:        mov              r11, 35;                             jmp   n51_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n53_match_defer_α:      mov              r11, 36
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S4]
                        cmp              rax, rdx;                            jne   .Lx106_30
                        mov              rax, qword ptr [rcx + 8]
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              jne   .Lx106_30
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lx106_30
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lx106_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lx106_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lx106_0
.Lx106_31:              mov              edx, -1;                             jmp   .Lx106_0
.Lx106_30:              push             r14
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
                        test             rax, rax;                            jz    .Lx106_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx106_5]
                        push             rcx
                        lea              rcx, [rip + .Lx106_4]
                        push             rcx;                                 jmp   rax
.Lx106_4:                                                                     jmp   n54_match_rpos_α
.Lx106_5:                                                                     jmp   n51_match_begin_β
.Lx106_0:               mov              eax, edx
                        test             eax, eax;                            js    n51_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx106_6]
                        push             rcx
                        push             rax;                                 jmp   n54_match_rpos_α
.Lx106_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n51_match_begin_β
n53_match_defer_β:      mov              r11, 36
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx106_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx106_12
                                                                              jmp   rax
.Lx106_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n54_match_rpos_α:       mov              r11, 37
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n53_match_defer_β
                                                                              jmp   n55_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n55_match_end_α:        mov              r11, 38
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
                        test             rax, rax;                            je    .Lx109_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n51_match_begin_af
.Lx109_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    mov              r11, 39
                        mov              r10, 4
                        add              rsp, 32;                             jmp   n57_statement_begin_α
#=======================================================================================================================
# YES     OUTPUT = 'first=' FIRST ' last=' LAST                 :(END)
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:  mov              r11, 40
                        mov              r10, 5;                              jmp   n58_lit_string_α
n57_statement_begin_β:  mov              r11, 40;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_var_α
.Lx114_0:               .quad            .Lx114_0_s
.Lx114_0_s:             .string          "first="
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              sub              rsp, 16
                        mov              r11, 42
                        mov              rax, qword ptr [r9 + 32]             # FIRST
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n60_binop_α
n59_var_β:              mov              r11, 42
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n57_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:            sub              rsp, 16
                        mov              r11, 43
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n61_lit_string_α
n60_binop_β:            mov              r11, 43
                        add              rsp, 16;                             jmp   n59_var_β
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:       sub              rsp, 16
                        mov              r11, 44
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n62_binop_α
n61_lit_string_β:       mov              r11, 44
                        add              rsp, 16;                             jmp   n60_binop_β
.Lx117_0:               .quad            .Lx117_0_s
.Lx117_0_s:             .string          " last="
#-----------------------------------------------------------------------------------------------------------------------
n62_binop_α:            sub              rsp, 16
                        mov              r11, 45
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n63_var_α
n62_binop_β:            mov              r11, 45
                        add              rsp, 16;                             jmp   n61_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:              sub              rsp, 16
                        mov              r11, 46
                        mov              rax, qword ptr [r9 + 48]             # LAST
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n64_binop_α
n63_var_β:              mov              r11, 46
                        add              rsp, 16;                             jmp   n62_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n64_binop_α:            sub              rsp, 16
                        mov              r11, 47
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n65_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:           mov              r11, 48
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n66_statement_end_α
.Lx121_0:               .quad            .Lx121_0_s
.Lx121_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:    mov              r11, 49
                        mov              r10, 5
                        add              rsp, 112;                            jmp   main_γ
#=======================================================================================================================
# NO      OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_begin_α:  mov              r11, 50
                        mov              r10, 6;                              jmp   n68_lit_string_α
n67_statement_begin_β:  mov              r11, 50;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       sub              rsp, 16
                        mov              r11, 51
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_assign_α
.Lx126_0:               .quad            .Lx126_0_s
.Lx126_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:           mov              r11, 52
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n70_statement_end_α
.Lx127_0:               .quad            .Lx127_0_s
.Lx127_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_end_α:    mov              r11, 53
                        mov              r10, 6
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
                        .long            272
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "PAT$1$V0"
.S1:                    .string          "FIRST"
.S2:                    .string          "PAT$1$V1"
.S3:                    .string          "LAST"
.S4:                    .string          "PATV$0"
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
