                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
proc_PAT$0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_alternate_α:   sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx4_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n2_match_lit_α
.Lx4_21:                lea              rax, [rip + .Lx4_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n1_match_lit_α
n0_match_alternate_s0:  lea              rax, [rip + .Lx4_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n0_match_alternate_as
n0_match_alternate_s1:  lea              rax, [rip + .Lx4_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n0_match_alternate_as
.Lx4_40:                                                                      jmp   n2_match_lit_β
.Lx4_41:                                                                      jmp   n1_match_lit_β
n0_match_alternate_as:                                                        jmp   proc_PAT$0_γ
n0_match_alternate_β:   mov              rax, qword ptr [rsp + 8];            jmp   rax
n0_match_alternate_af:  mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx4_19:                add              rsp, 32;                             jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_lit_α:         mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1936482662;                     jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 101;                            jne   n0_match_alternate_af
                        add              r14d, 5;                             jmp   n0_match_alternate_s1
n1_match_lit_β:         sub              r14d, 5;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n2_match_lit_α:         mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1702195828;                     jne   n0_match_alternate_af
                        add              r14d, 4;                             jmp   n0_match_alternate_s0
n2_match_lit_β:         sub              r14d, 4;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                              jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax;                                 jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                                                                              jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
proc_PAT$1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n9_match_alternate_α:   sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx13_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n11_match_span_α
.Lx13_21:               lea              rax, [rip + .Lx13_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n10_match_len_α
n9_match_alternate_s0:  lea              rax, [rip + .Lx13_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_match_alternate_as
n9_match_alternate_s1:  lea              rax, [rip + .Lx13_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_match_alternate_as
.Lx13_40:                                                                     jmp   n11_match_span_β
.Lx13_41:                                                                     jmp   n10_match_len_β
n9_match_alternate_as:                                                        jmp   proc_PAT$1_γ
n9_match_alternate_β:   mov              rax, qword ptr [rsp + 8];            jmp   rax
n9_match_alternate_af:  mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx13_19:               add              rsp, 32;                             jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_match_len_α:        mov              eax, r14d
                        add              eax, 0
                        cmp              eax, r15d;                           jg    n9_match_alternate_af
                        add              r14d, 0;                             jmp   n9_match_alternate_s1
n10_match_len_β:        sub              r14d, 0;                             jmp   n9_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n11_match_span_α:       movsxd           rcx, r14d
.Lx16_0:                cmp              ecx, r15d;                           jge   .Lx16_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lx16_10
                                                                              jmp   .Lx16_1
.Lx16_10:               add              ecx, 1;                              jmp   .Lx16_0
.Lx16_1:                cmp              ecx, r14d;                           jle   n9_match_alternate_af
                        mov              dword ptr [rsp + 52], r14d
                        mov              r14d, ecx;                           jmp   n9_match_alternate_s0
n11_match_span_β:       mov              r14d, dword ptr [rsp + 52];          jmp   n9_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                              jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax;                                 jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                                                                              jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
proc_PAT$2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n17_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx22_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n20_match_lit_α
.Lx22_21:               lea              rax, [rip + .Lx22_22]
                        mov              qword ptr [rsp + 16], rax;           jmp   n19_match_lit_α
.Lx22_22:               lea              rax, [rip + .Lx22_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n18_match_lit_α
n17_match_alternate_s0: lea              rax, [rip + .Lx22_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_match_alternate_as
n17_match_alternate_s1: lea              rax, [rip + .Lx22_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_match_alternate_as
n17_match_alternate_s2: lea              rax, [rip + .Lx22_42]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_match_alternate_as
.Lx22_40:                                                                     jmp   n20_match_lit_β
.Lx22_41:                                                                     jmp   n19_match_lit_β
.Lx22_42:                                                                     jmp   n18_match_lit_β
n17_match_alternate_as:                                                       jmp   proc_PAT$2_γ
n17_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n17_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx22_19:               add              rsp, 32;                             jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n18_match_lit_α:        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    n17_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 88;                             jne   n17_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 79;                             jne   n17_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 82;                             jne   n17_match_alternate_af
                        add              r14d, 3;                             jmp   n17_match_alternate_s2
n18_match_lit_β:        sub              r14d, 3;                             jmp   n17_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n19_match_lit_α:        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n17_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 79;                             jne   n17_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 82;                             jne   n17_match_alternate_af
                        add              r14d, 2;                             jmp   n17_match_alternate_s1
n19_match_lit_β:        sub              r14d, 2;                             jmp   n17_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n20_match_lit_α:        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    n17_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65;                             jne   n17_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 78;                             jne   n17_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 68;                             jne   n17_match_alternate_af
                        add              r14d, 3;                             jmp   n17_match_alternate_s0
n20_match_lit_β:        sub              r14d, 3;                             jmp   n17_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                              jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax;                                 jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                                                                              jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
proc_PAT$3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n29_match_len_α:        mov              eax, r14d
                        add              eax, 0
                        cmp              eax, r15d;                           jg    proc_PAT$3_ω
                        add              r14d, 0;                             jmp   proc_PAT$3_γ
n29_match_len_β:        sub              r14d, 0;                             jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                              jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax;                                 jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                                                                              jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
proc_PAT$4_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 72
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
#-----------------------------------------------------------------------------------------------------------------------
n31_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + -32], r14d;         jmp   n32_match_defer_α
n31_match_assign_save_β:
                        add              rsp, 16;                             jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n32_match_defer_α:      sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # PAT$4$V0
                        mov              rdx, qword ptr [r9 + 152]
                        cmp              eax, 8;                              jne   .Lx47_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx47_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx47_10
.Lx47_9:                xor              eax, eax
.Lx47_10:               test             rax, rax;                            jz    .Lx47_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx47_4]
                        lea              r11, [rip + .Lx47_5];                jmp   rax
.Lx47_4:                                                                      jmp   n33_match_assign_cond_α
.Lx47_5:                add              rsp, 16;                             jmp   n31_match_assign_save_β
.Lx47_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx47_2:                test             rax, rax;                            je    .Lx47_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx47_7]
                        lea              rdx, [rip + .Lx47_8];                jmp   rax
.Lx47_7:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx47_2
.Lx47_8:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx47_2
.Lx47_3:                add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jns   .Lx47_240
                        add              rsp, 16;                             jmp   n31_match_assign_save_β
.Lx47_240:              mov              r14d, eax
                        lea              rax, [rip + .Lx47_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n33_match_assign_cond_α
.Lx47_6:                add              rsp, 16
                        add              rsp, 16;                             jmp   n31_match_assign_save_β
n32_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n33_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -32]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n34_match_defer_α
n33_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n32_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n34_match_defer_α:      sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # PAT$4$V1
                        mov              rdx, qword ptr [r9 + 168]
                        cmp              eax, 8;                              jne   .Lx50_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx50_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx50_10
.Lx50_9:                xor              eax, eax
.Lx50_10:               test             rax, rax;                            jz    .Lx50_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx50_4]
                        lea              r11, [rip + .Lx50_5];                jmp   rax
.Lx50_4:                                                                      jmp   n35_match_alternate_α
.Lx50_5:                add              rsp, 16;                             jmp   n33_match_assign_cond_β
.Lx50_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx50_2:                test             rax, rax;                            je    .Lx50_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx50_7]
                        lea              rdx, [rip + .Lx50_8];                jmp   rax
.Lx50_7:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx50_2
.Lx50_8:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx50_2
.Lx50_3:                add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jns   .Lx50_240
                        add              rsp, 16;                             jmp   n33_match_assign_cond_β
.Lx50_240:              mov              r14d, eax
                        lea              rax, [rip + .Lx50_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n35_match_alternate_α
.Lx50_6:                add              rsp, 16
                        add              rsp, 16;                             jmp   n33_match_assign_cond_β
n34_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n35_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx52_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n38_match_assign_save_α
.Lx52_21:               lea              rax, [rip + .Lx52_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n36_match_defer_α
n35_match_alternate_s0: lea              rax, [rip + .Lx52_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_match_alternate_as
n35_match_alternate_s1: lea              rax, [rip + .Lx52_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_match_alternate_as
.Lx52_40:                                                                     jmp   n37_goto_β
.Lx52_41:                                                                     jmp   n36_match_defer_β
n35_match_alternate_as:                                                       jmp   proc_PAT$4_γ
n35_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n35_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx52_19:               add              rsp, 32;                             jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_match_defer_α:      mov              rax, qword ptr [r9 + 224]            # PAT$4$V5
                        mov              rdx, qword ptr [r9 + 232]
                        cmp              eax, 8;                              jne   .Lx53_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx53_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx53_10
.Lx53_9:                xor              eax, eax
.Lx53_10:               test             rax, rax;                            jz    .Lx53_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx53_4]
                        lea              r11, [rip + .Lx53_5];                jmp   rax
.Lx53_4:                                                                      jmp   n35_match_alternate_s1
.Lx53_5:                                                                      jmp   n35_match_alternate_af
.Lx53_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx53_2:                test             rax, rax;                            je    .Lx53_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx53_7]
                        lea              rdx, [rip + .Lx53_8];                jmp   rax
.Lx53_7:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx53_2
.Lx53_8:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx53_2
.Lx53_3:                add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n35_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx53_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n35_match_alternate_s1
.Lx53_6:                add              rsp, 16;                             jmp   n35_match_alternate_af
n36_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n37_goto_α:                                                                   jmp   n35_match_alternate_af
n37_goto_β:                                                                   jmp   n35_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n38_match_assign_save_α:
                        mov              dword ptr [rbp + -48], r14d;         jmp   n39_match_defer_α
n38_match_assign_save_β:
                                                                              jmp   n35_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n39_match_defer_α:      mov              rax, qword ptr [r9 + 176]            # PAT$4$V2
                        mov              rdx, qword ptr [r9 + 184]
                        cmp              eax, 8;                              jne   .Lx57_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx57_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx57_10
.Lx57_9:                xor              eax, eax
.Lx57_10:               test             rax, rax;                            jz    .Lx57_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx57_4]
                        lea              r11, [rip + .Lx57_5];                jmp   rax
.Lx57_4:                                                                      jmp   n40_match_assign_cond_α
.Lx57_5:                                                                      jmp   n38_match_assign_save_β
.Lx57_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx57_2:                test             rax, rax;                            je    .Lx57_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx57_7]
                        lea              rdx, [rip + .Lx57_8];                jmp   rax
.Lx57_7:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx57_2
.Lx57_8:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx57_2
.Lx57_3:                add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n38_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx57_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n40_match_assign_cond_α
.Lx57_6:                add              rsp, 16;                             jmp   n38_match_assign_save_β
n39_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n40_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S5]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n41_match_defer_α
n40_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n39_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n41_match_defer_α:      mov              rax, qword ptr [r9 + 192]            # PAT$4$V3
                        mov              rdx, qword ptr [r9 + 200]
                        cmp              eax, 8;                              jne   .Lx60_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx60_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx60_10
.Lx60_9:                xor              eax, eax
.Lx60_10:               test             rax, rax;                            jz    .Lx60_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx60_4]
                        lea              r11, [rip + .Lx60_5];                jmp   rax
.Lx60_4:                                                                      jmp   n42_match_assign_save_α
.Lx60_5:                                                                      jmp   n40_match_assign_cond_β
.Lx60_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx60_2:                test             rax, rax;                            je    .Lx60_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx60_7]
                        lea              rdx, [rip + .Lx60_8];                jmp   rax
.Lx60_7:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx60_2
.Lx60_8:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx60_2
.Lx60_3:                add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n40_match_assign_cond_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx60_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n42_match_assign_save_α
.Lx60_6:                add              rsp, 16;                             jmp   n40_match_assign_cond_β
n41_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n42_match_assign_save_α:
                        mov              dword ptr [rbp + -64], r14d;         jmp   n43_match_defer_α
n42_match_assign_save_β:
                                                                              jmp   n35_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n43_match_defer_α:      mov              rax, qword ptr [r9 + 208]            # PAT$4$V4
                        mov              rdx, qword ptr [r9 + 216]
                        cmp              eax, 8;                              jne   .Lx63_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx63_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx63_10
.Lx63_9:                xor              eax, eax
.Lx63_10:               test             rax, rax;                            jz    .Lx63_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx63_4]
                        lea              r11, [rip + .Lx63_5];                jmp   rax
.Lx63_4:                                                                      jmp   n44_match_assign_cond_α
.Lx63_5:                                                                      jmp   n42_match_assign_save_β
.Lx63_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx63_2:                test             rax, rax;                            je    .Lx63_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx63_7]
                        lea              rdx, [rip + .Lx63_8];                jmp   rax
.Lx63_7:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx63_2
.Lx63_8:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx63_2
.Lx63_3:                add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n42_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx63_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n44_match_assign_cond_α
.Lx63_6:                add              rsp, 16;                             jmp   n42_match_assign_save_β
n43_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n44_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -64]
                        lea              rcx, [rip + .S8]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n35_match_alternate_s0
n44_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n43_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                              jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 80
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "PAT$1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_PAT$1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "PAT$2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_PAT$2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 80
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "PAT$3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_PAT$3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 48
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "PAT$4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_PAT$4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "atom"
.Lgvan1:                .string          "ws"
.Lgvan2:                .string          "op"
.Lgvan3:                .string          "eps"
.Lgvan4:                .string          "expr"
.Lgvan5:                .string          "A"
.Lgvan6:                .string          "OP"
.Lgvan7:                .string          "B"
.Lgvan8:                .string          "s"
.Lgvan9:                .string          "PAT$4$V0"
.Lgvan10:               .string          "PAT$4$V1"
.Lgvan11:               .string          "PAT$4$V2"
.Lgvan12:               .string          "PAT$4$V3"
.Lgvan13:               .string          "PAT$4$V4"
.Lgvan14:               .string          "PAT$4$V5"
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
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 15
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 15
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         atom  = FENCE('true' | 'false')
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_begin_α:                                                        jmp   n67_lit_string_α
n66_statement_begin_β:                                                        jmp   n71_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n68_call_α
.Lx135_0:               .quad            .Lx135_0_s
.Lx135_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n68_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd137:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd137]
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
                        cmp              eax, 104;                            jne   .Lx136_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n66_statement_begin_β
.Lx136_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n69_assign_α
n68_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n66_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # atom
                        mov              qword ptr [r9 + 8], rdx;             jmp   n70_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_end_α:    add              rsp, 32;                             jmp   n71_statement_begin_α
#=======================================================================================================================
#         ws    = SPAN(' ') | LEN(0)
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_begin_α:                                                        jmp   n72_lit_string_α
n71_statement_begin_β:                                                        jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_call_α
.Lx143_0:               .quad            .Lx143_0_s
.Lx143_0_s:             .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n73_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd145:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd145]
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
                        cmp              eax, 104;                            jne   .Lx144_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n71_statement_begin_β
.Lx144_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_assign_α
n73_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n71_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # ws
                        mov              qword ptr [r9 + 24], rdx;            jmp   n75_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    add              rsp, 32;                             jmp   n76_statement_begin_α
#=======================================================================================================================
#         op    = FENCE('AND' | 'OR' | 'XOR')
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:                                                        jmp   n77_lit_string_α
n76_statement_begin_β:                                                        jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_call_α
.Lx151_0:               .quad            .Lx151_0_s
.Lx151_0_s:             .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd153:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd153]
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
                        cmp              eax, 104;                            jne   .Lx152_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n76_statement_begin_β
.Lx152_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_assign_α
n78_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n76_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # op
                        mov              qword ptr [r9 + 40], rdx;            jmp   n80_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    add              rsp, 32;                             jmp   n81_statement_begin_α
#=======================================================================================================================
#         eps   = LEN(0)
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:                                                        jmp   n82_lit_string_α
n81_statement_begin_β:                                                        jmp   n86_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_call_α
.Lx159_0:               .quad            .Lx159_0_s
.Lx159_0_s:             .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd161:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd161]
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
                        cmp              eax, 104;                            jne   .Lx160_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n81_statement_begin_β
.Lx160_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n84_assign_α
n83_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n81_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # eps
                        mov              qword ptr [r9 + 56], rdx;            jmp   n85_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_end_α:    add              rsp, 32;                             jmp   n86_statement_begin_α
#=======================================================================================================================
#         expr  = atom . A ws (op . OP ws atom . B | eps)
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_begin_α:                                                        jmp   n87_var_α
n86_statement_begin_β:                                                        jmp   n103_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # eps
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n88_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # PAT$4$V5
                        mov              qword ptr [r9 + 232], rdx;           jmp   n89_var_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # atom
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n90_assign_α
n89_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n86_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # PAT$4$V4
                        mov              qword ptr [r9 + 216], rdx;           jmp   n91_var_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # ws
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n92_assign_α
n91_var_β:              add              rsp, 16;                             jmp   n89_var_β
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # PAT$4$V3
                        mov              qword ptr [r9 + 200], rdx;           jmp   n93_var_α
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # op
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n94_assign_α
n93_var_β:              add              rsp, 16;                             jmp   n91_var_β
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # PAT$4$V2
                        mov              qword ptr [r9 + 184], rdx;           jmp   n95_var_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # ws
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_assign_α
n95_var_β:              add              rsp, 16;                             jmp   n93_var_β
#-----------------------------------------------------------------------------------------------------------------------
n96_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 168], rdx;           jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # atom
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_assign_α
n97_var_β:              add              rsp, 16;                             jmp   n95_var_β
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 152], rdx;           jmp   n99_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n100_call_α
n99_lit_string_β:       add              rsp, 16;                             jmp   n97_var_β
.Lx179_0:               .quad            .Lx179_0_s
.Lx179_0_s:             .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n100_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd181:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd181]
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
                        cmp              eax, 104;                            jne   .Lx180_240
                        add              rsp, 16;                             jmp   n99_lit_string_β
.Lx180_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_assign_α
n100_call_β:            add              rsp, 16;                             jmp   n99_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # expr
                        mov              qword ptr [r9 + 72], rdx;            jmp   n102_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:   add              rsp, 128;                            jmp   n103_statement_begin_α
#=======================================================================================================================
#         s = 'true AND false'
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_begin_α:                                                       jmp   n104_lit_string_α
n103_statement_begin_β:                                                       jmp   n107_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n105_assign_α
.Lx187_0:               .quad            .Lx187_0_s
.Lx187_0_s:             .string          "true AND false"
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # s
                        mov              qword ptr [r9 + 136], rdx;           jmp   n106_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_end_α:   add              rsp, 16;                             jmp   n107_statement_begin_α
#=======================================================================================================================
#         s POS(0) expr RPOS(0)                                 :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_begin_α:                                                       jmp   n108_var_α
n107_statement_begin_β:                                                       jmp   n129_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # s
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # expr
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n110_assign_α
n109_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n129_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n110_assign_α:          mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n111_match_begin_α
n110_assign_β:                                                                jmp   n109_var_β
.Lx195_0:               .quad            .Lx195_0_s
.Lx195_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n111_match_begin_α:     mov              rdi, qword ptr [rsp + 16]            # var
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
.Lx197_0:               mov              r14d, dword ptr [rbp + -40];         jmp   n112_match_pos_α
n111_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx197_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx197_1
                                                                              jmp   .Lx197_0
.Lx197_1:
n111_match_begin_af:    mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n110_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n112_match_pos_α:       mov              rax, 0
                        cmp              r14d, eax;                           jne   n111_match_begin_β
                                                                              jmp   n113_match_defer_α
n112_match_pos_β:                                                             jmp   n111_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n113_match_defer_α:     lea              rdi, [rip + .S9]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_get_pat_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx199_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx199_4]
                        lea              r11, [rip + .Lx199_5];               jmp   rax
.Lx199_4:                                                                     jmp   n114_match_rpos_α
.Lx199_5:                                                                     jmp   n111_match_begin_β
.Lx199_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx199_2:               test             rax, rax;                            je    .Lx199_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx199_7]
                        lea              rdx, [rip + .Lx199_8];               jmp   rax
.Lx199_7:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx199_2
.Lx199_8:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx199_2
.Lx199_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n111_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx199_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n114_match_rpos_α
.Lx199_6:               add              rsp, 16;                             jmp   n111_match_begin_β
n113_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n114_match_rpos_α:      mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n111_match_begin_β
                                                                              jmp   n115_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n115_match_end_α:       push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rdx, r13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_end_ok_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx202_1:               test             rax, rax;                            je    .Lx202_2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx202_3]
                        lea              rdx, [rip + .Lx202_4];               jmp   rax
.Lx202_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx202_1
.Lx202_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx202_1
.Lx202_2:               call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n116_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:   add              rsp, 32;                             jmp   n117_statement_begin_α
#=======================================================================================================================
# YES     OUTPUT = A ' ' OP ' ' B                               :(END)
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_begin_α:                                                       jmp   n118_var_α
n117_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # A
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_binop_α
n119_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n117_statement_begin_β
.Lx208_0:               .quad            .Lx208_0_s
.Lx208_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n120_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n121_var_α
n120_binop_β:           add              rsp, 16;                             jmp   n119_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # OP
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_binop_α
n121_var_β:             add              rsp, 16;                             jmp   n120_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n122_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n123_lit_string_α
n122_binop_β:           add              rsp, 16;                             jmp   n121_var_β
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n124_binop_α
n123_lit_string_β:      add              rsp, 16;                             jmp   n122_binop_β
.Lx212_0:               .quad            .Lx212_0_s
.Lx212_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n124_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n125_var_α
n124_binop_β:           add              rsp, 16;                             jmp   n123_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # B
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_binop_α
n125_var_β:             add              rsp, 16;                             jmp   n124_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n126_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n127_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n128_statement_end_α
.Lx216_0:               .quad            .Lx216_0_s
.Lx216_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_end_α:   add              rsp, 144;                            jmp   main_γ
#=======================================================================================================================
# NO      OUTPUT = 'parse fail'
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_begin_α:                                                       jmp   n130_lit_string_α
n129_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n131_assign_α
.Lx221_0:               .quad            .Lx221_0_s
.Lx221_0_s:             .string          "parse fail"
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_α:          mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n132_statement_end_α
.Lx222_0:               .quad            .Lx222_0_s
.Lx222_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_end_α:   add              rsp, 16;                             jmp   main_γ
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
.S0:                    .string          "PAT$4$V0"
.S1:                    .string          "A"
.S2:                    .string          "PAT$4$V1"
.S3:                    .string          "PAT$4$V5"
.S4:                    .string          "PAT$4$V2"
.S5:                    .string          "OP"
.S6:                    .string          "PAT$4$V3"
.S7:                    .string          "PAT$4$V4"
.S8:                    .string          "B"
.S9:                    .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
