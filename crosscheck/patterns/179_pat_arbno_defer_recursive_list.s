                        .intel_syntax    noprefix
                        .text
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
#-----------------------------------------------------------------------------------------------------------------------
n0_match_alternate_α:   mov              r11, 1
                        mov              dword ptr [rbp + -104], r14d
                        lea              rax, [rip + .Lx4_21]
                        mov              qword ptr [rbp + -88], rax;          jmp   n2_match_span_α
.Lx4_21:                lea              rax, [rip + .Lx4_19]
                        mov              qword ptr [rbp + -88], rax;          jmp   n1_match_defer_α
n0_match_alternate_s0:  mov              r11, 1
                        lea              rax, [rip + .Lx4_40]
                        mov              qword ptr [rbp + -96], rax;          jmp   n0_match_alternate_as
n0_match_alternate_s1:  mov              r11, 1
                        lea              rax, [rip + .Lx4_41]
                        mov              qword ptr [rbp + -96], rax;          jmp   n0_match_alternate_as
.Lx4_40:                                                                      jmp   n2_match_span_β
.Lx4_41:                                                                      jmp   n1_match_defer_β
n0_match_alternate_as:  mov              r11, 1;                              jmp   PAT$0_γ
n0_match_alternate_β:   mov              r11, 1
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
n0_match_alternate_af:  mov              r11, 1
                        mov              r14d, dword ptr [rbp + -104]
                        mov              rax, qword ptr [rbp + -88];          jmp   rax
.Lx4_19:                                                                      jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_defer_α:       mov              r11, 2
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx5_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx5_11
.Lx5_13:                mov              rax, qword ptr [r9 + 16]             # LIST
                        mov              rdx, qword ptr [r9 + 24]
                        cmp              al, 8;                               jne   .Lx5_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx5_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 24];            jmp   .Lx5_10
.Lx5_9:                 cmp              al, 88;                              jne   .Lx5_21
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_xpat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx5_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx5_10
.Lx5_21:                xor              eax, eax
.Lx5_10:                test             rax, rax;                            je    .Lx5_15
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rdx
.Lx5_15:
.Lx5_11:                test             rax, rax;                            jz    .Lx5_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx5_5]
                        push             rcx
                        lea              rcx, [rip + .Lx5_4]
                        push             rcx;                                 jmp   rax
.Lx5_4:                                                                       jmp   n0_match_alternate_s1
.Lx5_5:                                                                       jmp   n0_match_alternate_af
.Lx5_0:                 push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
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
                        test             eax, eax;                            js    n0_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx5_6]
                        push             rcx
                        push             rax;                                 jmp   n0_match_alternate_s1
.Lx5_6:                 add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n0_match_alternate_af
n1_match_defer_β:       mov              r11, 2
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx5_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx5_12
                                                                              jmp   rax
.Lx5_12:                                                                      jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n2_match_span_α:        sub              rsp, 16
                        mov              r11, 3
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx7_0:                 cmp              ecx, r15d;                           jge   .Lx7_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx7_1
                        add              ecx, 1;                              jmp   .Lx7_0
.Lx7_1:                 cmp              ecx, r14d;                           jg    .Lx7_240
                        add              rsp, 16;                             jmp   n0_match_alternate_af
.Lx7_240:               mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   n0_match_alternate_s0
n2_match_span_β:        mov              r11, 3
                        mov              r14d, dword ptr [rbp + -60]
                        add              rsp, 16;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n0_match_alternate_β
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
                        sub              rsp, 56
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n8_match_lit_α:         mov              r11, 4
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    PAT$1_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   PAT$1_ω
                        add              r14d, 1;                             jmp   n9_match_defer_α
n8_match_lit_β:         mov              r11, 4
                        sub              r14d, 1;                             jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_match_defer_α:       sub              rsp, 16
                        mov              r11, 5
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S1]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx16_16
                        mov              rax, qword ptr [rdx + 0]
.Lx16_16:               test             rax, rax;                            jz    .Lx16_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx16_5]
                        push             rcx
                        lea              rcx, [rip + .Lx16_4]
                        push             rcx;                                 jmp   rax
.Lx16_4:                                                                      jmp   n10_match_arbno_α
.Lx16_5:                add              rsp, 16;                             jmp   n8_match_lit_β
.Lx16_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S1]
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
                        test             eax, eax;                            jns   .Lx16_240
                        add              rsp, 16;                             jmp   n8_match_lit_β
.Lx16_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx16_6]
                        push             rcx
                        push             rax;                                 jmp   n10_match_arbno_α
.Lx16_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n8_match_lit_β
n9_match_defer_β:       mov              r11, 5
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx16_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx16_12
                                                                              jmp   rax
.Lx16_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n10_match_arbno_α:      mov              r11, 6
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d;         jmp   n11_match_lit_α
n10_match_arbno_β:      mov              r11, 6;                              jmp   n12_match_lit_α
n10_match_arbno_as:     mov              r11, 6
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n12_match_lit_β
                        mov              dword ptr [rbp + -44], r14d;         jmp   n11_match_lit_α
n10_match_arbno_af:     mov              r11, 6
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jne   n13_match_defer_β
                                                                              jmp   n9_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n11_match_lit_α:        mov              r11, 7
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n10_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n10_match_arbno_β
                        add              r14d, 1;                             jmp   PAT$1_γ
n11_match_lit_β:        mov              r11, 7
                        sub              r14d, 1;                             jmp   n10_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n12_match_lit_α:        mov              r11, 8
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n10_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n10_match_arbno_af
                        add              r14d, 1;                             jmp   n13_match_defer_α
n12_match_lit_β:        mov              r11, 8
                        sub              r14d, 1;                             jmp   n10_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n13_match_defer_α:      mov              r11, 9
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
.Lx23_4:                                                                      jmp   n10_match_arbno_as
.Lx23_5:                                                                      jmp   n12_match_lit_β
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
                        test             eax, eax;                            js    n12_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx23_6]
                        push             rcx
                        push             rax;                                 jmp   n10_match_arbno_as
.Lx23_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n12_match_lit_β
n13_match_defer_β:      mov              r11, 9
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx23_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx23_12
                                                                              jmp   rax
.Lx23_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   n11_match_lit_β
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
                        sub              rsp, 40
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n24_match_pos_α:        mov              r11, 10
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$2_ω
                                                                              jmp   n25_match_defer_α
n24_match_pos_β:        mov              r11, 10;                             jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n25_match_defer_α:      sub              rsp, 16
                        mov              r11, 11
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
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
                        test             rax, rax;                            je    .Lx28_16
                        mov              rax, qword ptr [rdx + 0]
.Lx28_16:               test             rax, rax;                            jz    .Lx28_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx28_5]
                        push             rcx
                        lea              rcx, [rip + .Lx28_4]
                        push             rcx;                                 jmp   rax
.Lx28_4:                                                                      jmp   n26_match_rpos_α
.Lx28_5:                add              rsp, 16;                             jmp   PAT$2_ω
.Lx28_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
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
                        test             eax, eax;                            jns   .Lx28_240
                        add              rsp, 16;                             jmp   PAT$2_ω
.Lx28_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx28_6]
                        push             rcx
                        push             rax;                                 jmp   n26_match_rpos_α
.Lx28_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$2_ω
n25_match_defer_β:      mov              r11, 11
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx28_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx28_12
                                                                              jmp   rax
.Lx28_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n26_match_rpos_α:       mov              r11, 12
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n25_match_defer_β
                                                                              jmp   PAT$2_γ
n26_match_rpos_β:       mov              r11, 12;                             jmp   n25_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_β:
                                                                              jmp   n26_match_rpos_β
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
                        mov              edi, 6
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 6
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "ITEM"
.Lgvan1:                .string          "LIST"
.Lgvan2:                .string          "TEST"
.Lgvan3:                .string          "PAT$1$V0"
.Lgvan4:                .string          "PAT$1$V1"
.Lgvan5:                .string          "PAT$2$V0"
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
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         ITEM = SPAN('0123456789') | *LIST
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_begin_α:  mov              r11, 13
                        mov              r10, 1;                              jmp   n31_lit_string_α
n30_statement_begin_β:  mov              r11, 13;                             jmp   n35_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_call_α
.Lx103_0:               .quad            .Lx103_0_s
.Lx103_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:             sub              rsp, 16
                        mov              r11, 15
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd105:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd105]
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
                        cmp              al, 104;                             jne   .Lx104_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n30_statement_begin_β
.Lx104_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n33_assign_α
n32_call_β:             mov              r11, 15
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n30_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:           mov              r11, 16
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ITEM
                        mov              qword ptr [r9 + 8], rdx;             jmp   n34_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:    mov              r11, 17
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n35_statement_begin_α
#=======================================================================================================================
#         LIST = '(' ITEM ARBNO(',' ITEM) ')'
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_begin_α:  mov              r11, 18
                        mov              r10, 2;                              jmp   n36_var_α
n35_statement_begin_β:  mov              r11, 18;                             jmp   n45_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              sub              rsp, 16
                        mov              r11, 19
                        mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n37_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:           mov              r11, 20
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # PAT$1$V0
                        mov              qword ptr [r9 + 56], rdx;            jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              sub              rsp, 16
                        mov              r11, 21
                        mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_assign_α
n38_var_β:              mov              r11, 21
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n35_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              r11, 22
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # PAT$1$V1
                        mov              qword ptr [r9 + 72], rdx;            jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       sub              rsp, 16
                        mov              r11, 23
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_lit_string_α
n40_lit_string_β:       mov              r11, 23
                        add              rsp, 16;                             jmp   n38_var_β
.Lx115_0:               .quad            .Lx115_0_s
.Lx115_0_s:             .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_call_α
n41_lit_string_β:       mov              r11, 24
                        add              rsp, 16;                             jmp   n40_lit_string_β
.Lx116_0:               .quad            .Lx116_0_s
.Lx116_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n42_call_α:             sub              rsp, 16
                        mov              r11, 25
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
.Lrkfnzd118:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd118]
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
                        cmp              al, 104;                             jne   .Lx117_240
                        add              rsp, 16;                             jmp   n41_lit_string_β
.Lx117_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_assign_α
n42_call_β:             mov              r11, 25
                        add              rsp, 16;                             jmp   n41_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:           mov              r11, 26
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # LIST
                        mov              qword ptr [r9 + 24], rdx;            jmp   n44_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_end_α:    mov              r11, 27
                        mov              r10, 2
                        add              rsp, 80;                             jmp   n45_statement_begin_α
#=======================================================================================================================
#         TEST = POS(0) LIST RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_begin_α:  mov              r11, 28
                        mov              r10, 3;                              jmp   n46_var_α
n45_statement_begin_β:  mov              r11, 28;                             jmp   n53_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              sub              rsp, 16
                        mov              r11, 29
                        mov              rax, qword ptr [r9 + 16]             # LIST
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n47_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              r11, 30
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # PAT$2$V0
                        mov              qword ptr [r9 + 88], rdx;            jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_lit_string_α
n48_lit_string_β:       mov              r11, 31
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n45_statement_begin_β
.Lx126_0:               .quad            .Lx126_0_s
.Lx126_0_s:             .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       sub              rsp, 16
                        mov              r11, 32
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_call_α
n49_lit_string_β:       mov              r11, 32
                        add              rsp, 16;                             jmp   n48_lit_string_β
.Lx127_0:               .quad            .Lx127_0_s
.Lx127_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n50_call_α:             sub              rsp, 16
                        mov              r11, 33
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
.Lrkfnzd129:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd129]
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
                        cmp              al, 104;                             jne   .Lx128_240
                        add              rsp, 16;                             jmp   n49_lit_string_β
.Lx128_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_assign_α
n50_call_β:             mov              r11, 33
                        add              rsp, 16;                             jmp   n49_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              r11, 34
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # TEST
                        mov              qword ptr [r9 + 40], rdx;            jmp   n52_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    mov              r11, 35
                        mov              r10, 3
                        add              rsp, 64;                             jmp   n53_statement_begin_α
#=======================================================================================================================
#         '(12,(3,45,(6)),78)' ? TEST                           :S(OK1)F(BAD1)
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:  mov              r11, 36
                        mov              r10, 4;                              jmp   n54_lit_string_α
n53_statement_begin_β:  mov              r11, 36;                             jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       sub              rsp, 16
                        mov              r11, 37
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_var_α
.Lx135_0:               .quad            .Lx135_0_s
.Lx135_0_s:             .string          "(12,(3,45,(6)),78)"
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              sub              rsp, 16
                        mov              r11, 38
                        mov              rax, qword ptr [r9 + 32]             # TEST
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n56_assign_α
n55_var_β:              mov              r11, 38
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:           mov              r11, 39
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_match_begin_α
n56_assign_β:           mov              r11, 39;                             jmp   n55_var_β
.Lx137_0:               .quad            .Lx137_0_s
.Lx137_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n57_match_begin_α:      mov              r11, 40
                        mov              rdi, qword ptr [rsp + 16]            # lit_string
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
.Lx139_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx139_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n58_match_defer_α
n57_match_begin_β:      mov              r11, 40
.Lx139_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx139_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx139_1
                                                                              jmp   .Lx139_0
.Lx139_1:
n57_match_begin_af:     mov              r11, 40
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
                        pop              rbp;                                 jmp   n56_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n58_match_defer_α:      mov              r11, 41
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S4]
                        cmp              rax, rdx;                            jne   .Lx140_30
                        mov              rax, qword ptr [rcx + 8]
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              jne   .Lx140_30
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lx140_30
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lx140_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lx140_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lx140_0
.Lx140_31:              mov              edx, -1;                             jmp   .Lx140_0
.Lx140_30:              push             r14
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
                        test             rax, rax;                            jz    .Lx140_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx140_5]
                        push             rcx
                        lea              rcx, [rip + .Lx140_4]
                        push             rcx;                                 jmp   rax
.Lx140_4:                                                                     jmp   n59_match_end_α
.Lx140_5:                                                                     jmp   n57_match_begin_β
.Lx140_0:               mov              eax, edx
                        test             eax, eax;                            js    n57_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx140_6]
                        push             rcx
                        push             rax;                                 jmp   n59_match_end_α
.Lx140_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n57_match_begin_β
n58_match_defer_β:      mov              r11, 41
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx140_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx140_12
                                                                              jmp   rax
.Lx140_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n59_match_end_α:        mov              r11, 42
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
                        test             rax, rax;                            je    .Lx142_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n57_match_begin_af
.Lx142_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n60_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:    mov              r11, 43
                        mov              r10, 4
                        add              rsp, 32;                             jmp   n61_statement_begin_α
#=======================================================================================================================
# OK1     OUTPUT = 'match1 ok'                                   :(T2)
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_begin_α:  mov              r11, 44
                        mov              r10, 5;                              jmp   n62_lit_string_α
n61_statement_begin_β:  mov              r11, 44;                             jmp   n69_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       sub              rsp, 16
                        mov              r11, 45
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_assign_α
.Lx147_0:               .quad            .Lx147_0_s
.Lx147_0_s:             .string          "match1 ok"
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:           mov              r11, 46
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n64_statement_end_α
.Lx148_0:               .quad            .Lx148_0_s
.Lx148_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    mov              r11, 47
                        mov              r10, 5
                        add              rsp, 16;                             jmp   n69_statement_begin_α
#=======================================================================================================================
# BAD1    OUTPUT = 'match1 FAIL'
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:  mov              r11, 48
                        mov              r10, 6;                              jmp   n66_lit_string_α
n65_statement_begin_β:  mov              r11, 48;                             jmp   n69_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       sub              rsp, 16
                        mov              r11, 49
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_assign_α
.Lx153_0:               .quad            .Lx153_0_s
.Lx153_0_s:             .string          "match1 FAIL"
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              r11, 50
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n68_statement_end_α
.Lx154_0:               .quad            .Lx154_0_s
.Lx154_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    mov              r11, 51
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n69_statement_begin_α
#=======================================================================================================================
# T2      '(12,(34)' ? TEST                                     :S(BAD2)F(OK2)
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:  mov              r11, 52
                        mov              r10, 7;                              jmp   n70_lit_string_α
n69_statement_begin_β:  mov              r11, 52;                             jmp   n77_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_var_α
.Lx159_0:               .quad            .Lx159_0_s
.Lx159_0_s:             .string          "(12,(34)"
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              r11, 54
                        mov              rax, qword ptr [r9 + 32]             # TEST
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_assign_α
n71_var_β:              mov              r11, 54
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n77_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:           mov              r11, 55
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n73_match_begin_α
n72_assign_β:           mov              r11, 55;                             jmp   n71_var_β
.Lx161_0:               .quad            .Lx161_0_s
.Lx161_0_s:             .string          "PATV$1"
#-----------------------------------------------------------------------------------------------------------------------
n73_match_begin_α:      mov              r11, 56
                        mov              rdi, qword ptr [rsp + 16]            # lit_string
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
.Lx163_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx163_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n74_match_defer_α
n73_match_begin_β:      mov              r11, 56
.Lx163_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx163_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx163_1
                                                                              jmp   .Lx163_0
.Lx163_1:
n73_match_begin_af:     mov              r11, 56
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
                        pop              rbp;                                 jmp   n72_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n74_match_defer_α:      mov              r11, 57
                        lea              rcx, [rip + g_sno_defer_cells+16400]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S5]
                        cmp              rax, rdx;                            jne   .Lx164_30
                        mov              rax, qword ptr [rcx + 8]
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              jne   .Lx164_30
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lx164_30
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lx164_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lx164_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lx164_0
.Lx164_31:              mov              edx, -1;                             jmp   .Lx164_0
.Lx164_30:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        mov              esi, r14d
                        mov              rdx, 1
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
                        test             rax, rax;                            jz    .Lx164_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx164_5]
                        push             rcx
                        lea              rcx, [rip + .Lx164_4]
                        push             rcx;                                 jmp   rax
.Lx164_4:                                                                     jmp   n75_match_end_α
.Lx164_5:                                                                     jmp   n73_match_begin_β
.Lx164_0:               mov              eax, edx
                        test             eax, eax;                            js    n73_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx164_6]
                        push             rcx
                        push             rax;                                 jmp   n75_match_end_α
.Lx164_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n73_match_begin_β
n74_match_defer_β:      mov              r11, 57
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx164_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx164_12
                                                                              jmp   rax
.Lx164_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n75_match_end_α:        mov              r11, 58
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
                        test             rax, rax;                            je    .Lx166_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n73_match_begin_af
.Lx166_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n76_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_end_α:    mov              r11, 59
                        mov              r10, 7
                        add              rsp, 32;                             jmp   n81_statement_begin_α
#=======================================================================================================================
# OK2     OUTPUT = 'match2 rejected ok'                          :(T3)
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_begin_α:  mov              r11, 60
                        mov              r10, 8;                              jmp   n78_lit_string_α
n77_statement_begin_β:  mov              r11, 60;                             jmp   n85_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       sub              rsp, 16
                        mov              r11, 61
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_assign_α
.Lx171_0:               .quad            .Lx171_0_s
.Lx171_0_s:             .string          "match2 rejected ok"
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              r11, 62
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n80_statement_end_α
.Lx172_0:               .quad            .Lx172_0_s
.Lx172_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    mov              r11, 63
                        mov              r10, 8
                        add              rsp, 16;                             jmp   n85_statement_begin_α
#=======================================================================================================================
# BAD2    OUTPUT = 'match2 FAIL'
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:  mov              r11, 64
                        mov              r10, 9;                              jmp   n82_lit_string_α
n81_statement_begin_β:  mov              r11, 64;                             jmp   n85_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       sub              rsp, 16
                        mov              r11, 65
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_assign_α
.Lx177_0:               .quad            .Lx177_0_s
.Lx177_0_s:             .string          "match2 FAIL"
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:           mov              r11, 66
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n84_statement_end_α
.Lx178_0:               .quad            .Lx178_0_s
.Lx178_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_end_α:    mov              r11, 67
                        mov              r10, 9
                        add              rsp, 16;                             jmp   n85_statement_begin_α
#=======================================================================================================================
# T3      '((1,2),(3,(4,5,6)),7)' ? TEST                        :S(OK3)F(BAD3)
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_begin_α:  mov              r11, 68
                        mov              r10, 10;                             jmp   n86_lit_string_α
n85_statement_begin_β:  mov              r11, 68;                             jmp   n97_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       sub              rsp, 16
                        mov              r11, 69
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_var_α
.Lx183_0:               .quad            .Lx183_0_s
.Lx183_0_s:             .string          "((1,2),(3,(4,5,6)),7)"
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:              sub              rsp, 16
                        mov              r11, 70
                        mov              rax, qword ptr [r9 + 32]             # TEST
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n88_assign_α
n87_var_β:              mov              r11, 70
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n97_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:           mov              r11, 71
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n89_match_begin_α
n88_assign_β:           mov              r11, 71;                             jmp   n87_var_β
.Lx185_0:               .quad            .Lx185_0_s
.Lx185_0_s:             .string          "PATV$2"
#-----------------------------------------------------------------------------------------------------------------------
n89_match_begin_α:      mov              r11, 72
                        mov              rdi, qword ptr [rsp + 16]            # lit_string
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
.Lx187_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx187_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n90_match_defer_α
n89_match_begin_β:      mov              r11, 72
.Lx187_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx187_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx187_1
                                                                              jmp   .Lx187_0
.Lx187_1:
n89_match_begin_af:     mov              r11, 72
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
                        pop              rbp;                                 jmp   n88_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n90_match_defer_α:      mov              r11, 73
                        lea              rcx, [rip + g_sno_defer_cells+16416]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S6]
                        cmp              rax, rdx;                            jne   .Lx188_30
                        mov              rax, qword ptr [rcx + 8]
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              jne   .Lx188_30
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lx188_30
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lx188_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lx188_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lx188_0
.Lx188_31:              mov              edx, -1;                             jmp   .Lx188_0
.Lx188_30:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        mov              esi, r14d
                        mov              rdx, 2
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
                        test             rax, rax;                            jz    .Lx188_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx188_5]
                        push             rcx
                        lea              rcx, [rip + .Lx188_4]
                        push             rcx;                                 jmp   rax
.Lx188_4:                                                                     jmp   n91_match_end_α
.Lx188_5:                                                                     jmp   n89_match_begin_β
.Lx188_0:               mov              eax, edx
                        test             eax, eax;                            js    n89_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx188_6]
                        push             rcx
                        push             rax;                                 jmp   n91_match_end_α
.Lx188_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n89_match_begin_β
n90_match_defer_β:      mov              r11, 73
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx188_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx188_12
                                                                              jmp   rax
.Lx188_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n91_match_end_α:        mov              r11, 74
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
                        test             rax, rax;                            je    .Lx190_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n89_match_begin_af
.Lx190_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n92_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:    mov              r11, 75
                        mov              r10, 10
                        add              rsp, 32;                             jmp   n93_statement_begin_α
#=======================================================================================================================
# OK3     OUTPUT = 'match3 ok'                                   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_begin_α:  mov              r11, 76
                        mov              r10, 11;                             jmp   n94_lit_string_α
n93_statement_begin_β:  mov              r11, 76;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       sub              rsp, 16
                        mov              r11, 77
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n95_assign_α
.Lx195_0:               .quad            .Lx195_0_s
.Lx195_0_s:             .string          "match3 ok"
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:           mov              r11, 78
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n96_statement_end_α
.Lx196_0:               .quad            .Lx196_0_s
.Lx196_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_end_α:    mov              r11, 79
                        mov              r10, 11
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# BAD3    OUTPUT = 'match3 FAIL'
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_begin_α:  mov              r11, 80
                        mov              r10, 12;                             jmp   n98_lit_string_α
n97_statement_begin_β:  mov              r11, 80;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       sub              rsp, 16
                        mov              r11, 81
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n99_assign_α
.Lx201_0:               .quad            .Lx201_0_s
.Lx201_0_s:             .string          "match3 FAIL"
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:           mov              r11, 82
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n100_statement_end_α
.Lx202_0:               .quad            .Lx202_0_s
.Lx202_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_end_α:   mov              r11, 83
                        mov              r10, 12
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
                        .long            80
                        .long            16
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
                        .long            176
                        .long            16
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
                        .long            64
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
.S0:                    .string          "LIST"
.S1:                    .string          "PAT$1$V0"
.S2:                    .string          "PAT$1$V1"
.S3:                    .string          "PAT$2$V0"
.S4:                    .string          "PATV$0"
.S5:                    .string          "PATV$1"
.S6:                    .string          "PATV$2"
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
