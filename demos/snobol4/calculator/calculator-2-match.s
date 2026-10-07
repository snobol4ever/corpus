                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/calculator/calculator-2-match.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        cmp              r14d, r15d
                                                                              jge   .Lfg_none_0
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        lea              rcx, [rip + .C0]
                        movzx            eax, byte ptr [rcx + rax]
                        test             eax, eax
                                                                              jne   .Lfg_ok_0
.Lfg_fire_0:
.Lfg_none_0:
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
.Lfg_ok_0:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], 8
                        mov              qword ptr [rsp + 24], rdx
                        mov              qword ptr [rsp + 0], 3
                        mov              qword ptr [rsp + 8], r12
                        .type            n0_match_any_bx, @function
n0_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_any_α:         mov              eax, r14d
                        cmp              eax, r15d;                           jge   PAT$0_ω
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    PAT$0_ω
                        add              r14d, 1;                             jmp   PAT$0_γ
n0_match_any_β:         sub              r14d, 1;                             jmp   PAT$0_ω
                        .size            n0_match_any_bx, .-n0_match_any_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n0_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_γ:
                        mov              rdx, qword ptr [rsp + 40]
                        mov              rcx, qword ptr [rsp + 32]
                        sub              rsp, 8
                        push             rdx
                        push             rcx
                        lea              rax, [rip + PAT$0_res]
                        push             rax;                                 jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_ω:
                        mov              r12, qword ptr [rsp + 8]
                        add              rsp, 32
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_PAT$0:            .quad            FN__PAT$0
                        .long            48, 1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$1:
PAT$1_α_body:
                        cmp              r14d, r15d
                                                                              jge   .Lfg_none_1
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        lea              rcx, [rip + .C1]
                        movzx            eax, byte ptr [rcx + rax]
                        test             eax, eax
                                                                              jne   .Lfg_ok_1
.Lfg_fire_1:
.Lfg_none_1:
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
.Lfg_ok_1:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], 8
                        mov              qword ptr [rsp + 24], rdx
                        mov              qword ptr [rsp + 0], 3
                        mov              qword ptr [rsp + 8], r12
                        .type            n3_match_span_bx, @function
n3_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_match_span_α:        sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lmatch_span_α_5_0:     cmp              ecx, r15d;                           jge   .Lmatch_span_α_5_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_5_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_5_0
.Lmatch_span_α_5_1:     cmp              ecx, r14d;                           jg    .Lmatch_span_α_5_240
                        add              rsp, 16;                             jmp   PAT$1_ω
.Lmatch_span_α_5_240:   mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   PAT$1_γ
n3_match_span_β:        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   PAT$1_ω
                        .size            n3_match_span_bx, .-n3_match_span_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   n3_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_γ:
                        mov              rdx, qword ptr [rsp + 56]
                        mov              rcx, qword ptr [rsp + 48]
                        sub              rsp, 8
                        push             rdx
                        push             rcx
                        lea              rax, [rip + PAT$1_res]
                        push             rax;                                 jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_ω:
                        mov              r12, qword ptr [rsp + 8]
                        add              rsp, 32
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_PAT$1:            .quad            FN__PAT$1
                        .long            32, 1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$2:
PAT$2_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 88
                        lea              rax, [rip + .Lgcmap_PAT$2]
                        mov              qword ptr [rbp + -80], rax
                        mov              dword ptr [rbp + -88], 160
                        mov              dword ptr [rbp + -84], 88
                        xorps            xmm0, xmm0
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n6_match_alternate_bx, @function
n6_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_match_alternate_α:   mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_13_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n11_match_defer_α
.Lmatch_alternate_α_13_21:
                        lea              rax, [rip + .Lmatch_alternate_α_13_22]
                        mov              qword ptr [rbp + -56], rax;          jmp   n10_match_defer_α
.Lmatch_alternate_α_13_22:
                        lea              rax, [rip + .Lmatch_alternate_α_13_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n7_match_lit_α
.Lmatch_alternate_γ_6_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_13_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_6_as
.Lmatch_alternate_γ_6_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_13_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_6_as
.Lmatch_alternate_γ_6_s2:
                        lea              rax, [rip + .Lmatch_alternate_α_13_42]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_6_as
.Lmatch_alternate_α_13_40:
                                                                              jmp   n11_match_defer_β
.Lmatch_alternate_α_13_41:
                                                                              jmp   n10_match_defer_β
.Lmatch_alternate_α_13_42:
                                                                              jmp   n9_match_lit_β
.Lmatch_alternate_γ_6_as:
                                                                              jmp   PAT$2_γ
n6_match_alternate_β:   mov              rax, qword ptr [rbp + -64];          jmp   rax
.Lmatch_alternate_γ_6_af:
.Lmatch_alternate_ω_6_af:
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lmatch_alternate_α_13_19:
                                                                              jmp   PAT$2_ω
                        .size            n6_match_alternate_bx, .-n6_match_alternate_bx
                        .type            n7_match_lit_bx, @function
n7_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_match_lit_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_6_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   .Lmatch_alternate_ω_6_af
                        add              r14d, 1;                             jmp   n8_match_defer_α
n7_match_lit_β:         sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_6_af
                        .size            n7_match_lit_bx, .-n7_match_lit_bx
                        .type            n8_match_defer_bx, @function
n8_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_match_defer_α:       mov              rax, qword ptr [r9 + 80]             # X
                        mov              rdx, qword ptr [r9 + 88]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_16_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_16_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
.Lgcsite_PAT$2_15:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_match_defer.cpp:149
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_PAT$2_14:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdx, qword ptr [r9 + 88];            jmp   .Lmatch_defer_α_16_10
.Lmatch_defer_α_16_9:   xor              eax, eax
.Lmatch_defer_α_16_10:  test             rax, rax;                            jz    .Lmatch_defer_α_16_0
.Lmatch_defer_α_16_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_16_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_16_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_16_4:                                                         jmp   n9_match_lit_α
.Lmatch_defer_α_16_5:                                                         jmp   n7_match_lit_β
.Lmatch_defer_α_16_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [r9 + 80]                       # X
                        xor              esi, esi
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open_cell@PLT
.Lgcsite_PAT$2_13:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_16_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_16_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$2_12:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_16_2:   test             rax, rax;                            je    .Lmatch_defer_α_16_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_16_40
                        sub              rsp, 64
                        mov              qword ptr [rsp + 56], r12
                        mov              qword ptr [rsp + 48], rbx
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rcx, rdx
                        and              rcx, 255
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_16_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_16_141
                        lea              rcx, [rip + .Lmatch_defer_α_16_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_16_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_16_42]
                        lea              rdx, [rip + .Lmatch_defer_α_16_43];  jmp   rax
.Lmatch_defer_α_16_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_16_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_16_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_16_44:
.Lgcsite_PAT$2_11:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_16_46
.Lmatch_defer_α_16_45:
.Lgcsite_PAT$2_10:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_16_47
.Lmatch_defer_α_16_42:
.Lgcsite_PAT$2_9:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_16_46
.Lmatch_defer_α_16_43:
.Lgcsite_PAT$2_8:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_16_47
.Lmatch_defer_α_16_141: lea              rcx, [rip + .Lmatch_defer_α_16_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_16_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_16_142]
                        lea              rdx, [rip + .Lmatch_defer_α_16_143]; jmp   rax
.Lmatch_defer_α_16_142:
.Lgcsite_PAT$2_7:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_16_46
.Lmatch_defer_α_16_143:
.Lgcsite_PAT$2_6:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_16_47
.Lmatch_defer_α_16_46:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_PAT$2_5:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_16_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_16_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$2_4:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_16_2
.Lmatch_defer_α_16_47:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_PAT$2_3:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_16_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_16_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$2_2:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_16_2
.Lmatch_defer_α_16_40:  mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_16_48
.Lmatch_defer_α_16_3:   mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              edi, r14d
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_PAT$2_1:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$2_0:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_16_49:  test             eax, eax;                            js    n7_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_16_6]
                        push             rcx
                        push             rax;                                 jmp   n9_match_lit_α
.Lmatch_defer_α_16_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n7_match_lit_β
n8_match_defer_β:       cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_16_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_16_12
                                                                              jmp   rax
.Lmatch_defer_β_16_12:                                                        jmp   qword ptr [rsp]
                        .size            n8_match_defer_bx, .-n8_match_defer_bx
                        .type            n9_match_lit_bx, @function
n9_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_match_lit_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n8_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n8_match_defer_β
                        add              r14d, 1;                             jmp   .Lmatch_alternate_γ_6_s2
n9_match_lit_β:         sub              r14d, 1;                             jmp   n8_match_defer_β
                        .size            n9_match_lit_bx, .-n9_match_lit_bx
                        .type            n10_match_defer_bx, @function
n10_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_19_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_19_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_19_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_19_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_19_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_19_18
.Lmatch_defer_α_19_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_PAT$2_31:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        test             rax, rax;                            je    .Lmatch_defer_α_19_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_19_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$2_30:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_19_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_19_16:
.Lmatch_defer_α_19_18:  test             rax, rax;                            jz    .Lmatch_defer_α_19_0
.Lmatch_defer_α_19_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_19_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_19_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_19_4:                                                         jmp   .Lmatch_alternate_γ_6_s1
.Lmatch_defer_α_19_5:                                                         jmp   .Lmatch_alternate_ω_6_af
.Lmatch_defer_α_19_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_PAT$2_29:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_19_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_19_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$2_28:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_19_2:   test             rax, rax;                            je    .Lmatch_defer_α_19_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_19_40
                        sub              rsp, 64
                        mov              qword ptr [rsp + 56], r12
                        mov              qword ptr [rsp + 48], rbx
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rcx, rdx
                        and              rcx, 255
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_19_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_19_141
                        lea              rcx, [rip + .Lmatch_defer_α_19_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_19_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_19_42]
                        lea              rdx, [rip + .Lmatch_defer_α_19_43];  jmp   rax
.Lmatch_defer_α_19_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_19_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_19_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_19_44:
.Lgcsite_PAT$2_27:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_19_46
.Lmatch_defer_α_19_45:
.Lgcsite_PAT$2_26:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_19_47
.Lmatch_defer_α_19_42:
.Lgcsite_PAT$2_25:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_19_46
.Lmatch_defer_α_19_43:
.Lgcsite_PAT$2_24:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_19_47
.Lmatch_defer_α_19_141: lea              rcx, [rip + .Lmatch_defer_α_19_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_19_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_19_142]
                        lea              rdx, [rip + .Lmatch_defer_α_19_143]; jmp   rax
.Lmatch_defer_α_19_142:
.Lgcsite_PAT$2_23:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_19_46
.Lmatch_defer_α_19_143:
.Lgcsite_PAT$2_22:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_19_47
.Lmatch_defer_α_19_46:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_PAT$2_21:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_19_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_19_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$2_20:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_19_2
.Lmatch_defer_α_19_47:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_PAT$2_19:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_19_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_19_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$2_18:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_19_2
.Lmatch_defer_α_19_40:  mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_19_48
.Lmatch_defer_α_19_3:   mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              edi, r14d
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_PAT$2_17:      push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$2_16:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_19_49:  test             eax, eax;                            js    .Lmatch_alternate_ω_6_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_19_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_6_s1
.Lmatch_defer_α_19_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_6_af
n10_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_19_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_19_12
                                                                              jmp   rax
.Lmatch_defer_β_19_12:                                                        jmp   qword ptr [rsp]
                        .size            n10_match_defer_bx, .-n10_match_defer_bx
                        .type            n11_match_defer_bx, @function
n11_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_20_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_20_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_20_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_20_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_20_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_20_18
.Lmatch_defer_α_20_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_PAT$2_47:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        test             rax, rax;                            je    .Lmatch_defer_α_20_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_20_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$2_46:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_20_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_20_16:
.Lmatch_defer_α_20_18:  test             rax, rax;                            jz    .Lmatch_defer_α_20_0
.Lmatch_defer_α_20_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_20_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_20_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_20_4:                                                         jmp   .Lmatch_alternate_γ_6_s0
.Lmatch_defer_α_20_5:                                                         jmp   .Lmatch_alternate_ω_6_af
.Lmatch_defer_α_20_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_PAT$2_45:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_20_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_20_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$2_44:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_20_2:   test             rax, rax;                            je    .Lmatch_defer_α_20_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_20_40
                        sub              rsp, 64
                        mov              qword ptr [rsp + 56], r12
                        mov              qword ptr [rsp + 48], rbx
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rcx, rdx
                        and              rcx, 255
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_20_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_20_141
                        lea              rcx, [rip + .Lmatch_defer_α_20_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_20_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_20_42]
                        lea              rdx, [rip + .Lmatch_defer_α_20_43];  jmp   rax
.Lmatch_defer_α_20_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_20_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_20_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_20_44:
.Lgcsite_PAT$2_43:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_20_46
.Lmatch_defer_α_20_45:
.Lgcsite_PAT$2_42:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_20_47
.Lmatch_defer_α_20_42:
.Lgcsite_PAT$2_41:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_20_46
.Lmatch_defer_α_20_43:
.Lgcsite_PAT$2_40:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_20_47
.Lmatch_defer_α_20_141: lea              rcx, [rip + .Lmatch_defer_α_20_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_20_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_20_142]
                        lea              rdx, [rip + .Lmatch_defer_α_20_143]; jmp   rax
.Lmatch_defer_α_20_142:
.Lgcsite_PAT$2_39:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_20_46
.Lmatch_defer_α_20_143:
.Lgcsite_PAT$2_38:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_20_47
.Lmatch_defer_α_20_46:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_PAT$2_37:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_20_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_20_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$2_36:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_20_2
.Lmatch_defer_α_20_47:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_PAT$2_35:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_20_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_20_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$2_34:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_20_2
.Lmatch_defer_α_20_40:  mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_20_48
.Lmatch_defer_α_20_3:   mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              edi, r14d
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_PAT$2_33:      push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$2_32:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_20_49:  test             eax, eax;                            js    .Lmatch_alternate_ω_6_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_20_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_6_s0
.Lmatch_defer_α_20_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_6_af
n11_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_20_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_20_12
                                                                              jmp   rax
.Lmatch_defer_β_20_12:                                                        jmp   qword ptr [rsp]
                        .size            n11_match_defer_bx, .-n11_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_β:
                                                                              jmp   n6_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + PAT$2_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_PAT$2:
                        .quad            379303578970
                        .quad            17179869208
                        .quad            0
                        .quad            88
                        .quad            12
                        .quad            8804682956728
                        .quad            8813272891328
                        .quad            8813272891336
                        .quad            8804682956752
                        .quad            8804682956760
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcsites_PAT$2_2:      .quad            48
                        .quad            .Lgcmap_PAT$2
                        .quad            0
                        .quad            .Lgcsite_PAT$2_0
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_1
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_2
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_3
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_4
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_5
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_6
                        .quad            196610
                        .quad            .Lgcsite_PAT$2_7
                        .quad            196610
                        .quad            .Lgcsite_PAT$2_8
                        .quad            196610
                        .quad            .Lgcsite_PAT$2_9
                        .quad            196610
                        .quad            .Lgcsite_PAT$2_10
                        .quad            196610
                        .quad            .Lgcsite_PAT$2_11
                        .quad            196610
                        .quad            .Lgcsite_PAT$2_12
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_13
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_14
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_15
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_16
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_17
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_18
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_19
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_20
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_21
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_22
                        .quad            196610
                        .quad            .Lgcsite_PAT$2_23
                        .quad            196610
                        .quad            .Lgcsite_PAT$2_24
                        .quad            196610
                        .quad            .Lgcsite_PAT$2_25
                        .quad            196610
                        .quad            .Lgcsite_PAT$2_26
                        .quad            196610
                        .quad            .Lgcsite_PAT$2_27
                        .quad            196610
                        .quad            .Lgcsite_PAT$2_28
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_29
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_30
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_31
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_32
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_33
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_34
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_35
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_36
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_37
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_38
                        .quad            196610
                        .quad            .Lgcsite_PAT$2_39
                        .quad            196610
                        .quad            .Lgcsite_PAT$2_40
                        .quad            196610
                        .quad            .Lgcsite_PAT$2_41
                        .quad            196610
                        .quad            .Lgcsite_PAT$2_42
                        .quad            196610
                        .quad            .Lgcsite_PAT$2_43
                        .quad            196610
                        .quad            .Lgcsite_PAT$2_44
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_45
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_46
                        .quad            196609
                        .quad            .Lgcsite_PAT$2_47
                        .quad            196609
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_PAT$2:            .quad            FN__PAT$2
                        .long            144, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$3:
PAT$3_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 88
                        lea              rax, [rip + .Lgcmap_PAT$3]
                        mov              qword ptr [rbp + -80], rax
                        mov              dword ptr [rbp + -88], 160
                        mov              dword ptr [rbp + -84], 88
                        xorps            xmm0, xmm0
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n21_match_alternate_bx, @function
n21_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_match_alternate_α:  mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_26_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n24_match_defer_α
.Lmatch_alternate_α_26_21:
                        lea              rax, [rip + .Lmatch_alternate_α_26_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n22_match_any_α
.Lmatch_alternate_γ_21_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_26_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_21_as
.Lmatch_alternate_γ_21_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_26_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_21_as
.Lmatch_alternate_α_26_40:
                                                                              jmp   n24_match_defer_β
.Lmatch_alternate_α_26_41:
                                                                              jmp   n23_match_defer_β
.Lmatch_alternate_γ_21_as:
                                                                              jmp   PAT$3_γ
n21_match_alternate_β:  mov              rax, qword ptr [rbp + -64];          jmp   rax
.Lmatch_alternate_γ_21_af:
.Lmatch_alternate_ω_21_af:
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lmatch_alternate_α_26_19:
                                                                              jmp   PAT$3_ω
                        .size            n21_match_alternate_bx, .-n21_match_alternate_bx
                        .type            n22_match_any_bx, @function
n22_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_21_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .Lmatch_any_α_28_0
                        cmp              esi, 45;                             je    .Lmatch_any_α_28_0
                                                                              jmp   .Lmatch_alternate_ω_21_af
.Lmatch_any_α_28_0:     add              r14d, 1;                             jmp   n23_match_defer_α
n22_match_any_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_21_af
                        .size            n22_match_any_bx, .-n22_match_any_bx
                        .type            n23_match_defer_bx, @function
n23_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_match_defer_α:      mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_29_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_29_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
.Lgcsite_PAT$3_15:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_match_defer.cpp:149
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_PAT$3_14:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdx, qword ptr [r9 + 56];            jmp   .Lmatch_defer_α_29_10
.Lmatch_defer_α_29_9:   xor              eax, eax
.Lmatch_defer_α_29_10:  test             rax, rax;                            jz    .Lmatch_defer_α_29_0
.Lmatch_defer_α_29_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_29_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_29_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_29_4:                                                         jmp   .Lmatch_alternate_γ_21_s1
.Lmatch_defer_α_29_5:                                                         jmp   n22_match_any_β
.Lmatch_defer_α_29_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [r9 + 48]                       # F
                        xor              esi, esi
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open_cell@PLT
.Lgcsite_PAT$3_13:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_29_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_29_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$3_12:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_29_2:   test             rax, rax;                            je    .Lmatch_defer_α_29_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_29_40
                        sub              rsp, 64
                        mov              qword ptr [rsp + 56], r12
                        mov              qword ptr [rsp + 48], rbx
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rcx, rdx
                        and              rcx, 255
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_29_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_29_141
                        lea              rcx, [rip + .Lmatch_defer_α_29_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_29_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_29_42]
                        lea              rdx, [rip + .Lmatch_defer_α_29_43];  jmp   rax
.Lmatch_defer_α_29_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_29_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_29_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_29_44:
.Lgcsite_PAT$3_11:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_29_46
.Lmatch_defer_α_29_45:
.Lgcsite_PAT$3_10:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_29_47
.Lmatch_defer_α_29_42:
.Lgcsite_PAT$3_9:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_29_46
.Lmatch_defer_α_29_43:
.Lgcsite_PAT$3_8:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_29_47
.Lmatch_defer_α_29_141: lea              rcx, [rip + .Lmatch_defer_α_29_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_29_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_29_142]
                        lea              rdx, [rip + .Lmatch_defer_α_29_143]; jmp   rax
.Lmatch_defer_α_29_142:
.Lgcsite_PAT$3_7:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_29_46
.Lmatch_defer_α_29_143:
.Lgcsite_PAT$3_6:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_29_47
.Lmatch_defer_α_29_46:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_PAT$3_5:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_29_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_29_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$3_4:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_29_2
.Lmatch_defer_α_29_47:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_PAT$3_3:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_29_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_29_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$3_2:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_29_2
.Lmatch_defer_α_29_40:  mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_29_48
.Lmatch_defer_α_29_3:   mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              edi, r14d
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_PAT$3_1:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$3_0:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_29_49:  test             eax, eax;                            js    n22_match_any_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_29_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_21_s1
.Lmatch_defer_α_29_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n22_match_any_β
n23_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_29_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_29_12
                                                                              jmp   rax
.Lmatch_defer_β_29_12:                                                        jmp   qword ptr [rsp]
                        .size            n23_match_defer_bx, .-n23_match_defer_bx
                        .type            n24_match_defer_bx, @function
n24_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_30_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_30_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_30_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_30_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_30_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_30_18
.Lmatch_defer_α_30_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_PAT$3_31:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        test             rax, rax;                            je    .Lmatch_defer_α_30_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_30_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$3_30:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_30_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_30_16:
.Lmatch_defer_α_30_18:  test             rax, rax;                            jz    .Lmatch_defer_α_30_0
.Lmatch_defer_α_30_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_30_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_30_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_30_4:                                                         jmp   .Lmatch_alternate_γ_21_s0
.Lmatch_defer_α_30_5:                                                         jmp   .Lmatch_alternate_ω_21_af
.Lmatch_defer_α_30_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_PAT$3_29:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_30_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_30_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$3_28:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_30_2:   test             rax, rax;                            je    .Lmatch_defer_α_30_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_30_40
                        sub              rsp, 64
                        mov              qword ptr [rsp + 56], r12
                        mov              qword ptr [rsp + 48], rbx
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rcx, rdx
                        and              rcx, 255
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_30_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_30_141
                        lea              rcx, [rip + .Lmatch_defer_α_30_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_30_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_30_42]
                        lea              rdx, [rip + .Lmatch_defer_α_30_43];  jmp   rax
.Lmatch_defer_α_30_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_30_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_30_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_30_44:
.Lgcsite_PAT$3_27:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_30_46
.Lmatch_defer_α_30_45:
.Lgcsite_PAT$3_26:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_30_47
.Lmatch_defer_α_30_42:
.Lgcsite_PAT$3_25:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_30_46
.Lmatch_defer_α_30_43:
.Lgcsite_PAT$3_24:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_30_47
.Lmatch_defer_α_30_141: lea              rcx, [rip + .Lmatch_defer_α_30_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_30_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_30_142]
                        lea              rdx, [rip + .Lmatch_defer_α_30_143]; jmp   rax
.Lmatch_defer_α_30_142:
.Lgcsite_PAT$3_23:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_30_46
.Lmatch_defer_α_30_143:
.Lgcsite_PAT$3_22:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_30_47
.Lmatch_defer_α_30_46:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_PAT$3_21:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_30_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_30_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$3_20:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_30_2
.Lmatch_defer_α_30_47:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_PAT$3_19:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_30_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_30_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$3_18:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_30_2
.Lmatch_defer_α_30_40:  mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_30_48
.Lmatch_defer_α_30_3:   mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              edi, r14d
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_PAT$3_17:      push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$3_16:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_30_49:  test             eax, eax;                            js    .Lmatch_alternate_ω_21_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_30_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_21_s0
.Lmatch_defer_α_30_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_21_af
n24_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_30_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_30_12
                                                                              jmp   rax
.Lmatch_defer_β_30_12:                                                        jmp   qword ptr [rsp]
                        .size            n24_match_defer_bx, .-n24_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_β:
                                                                              jmp   n21_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + PAT$3_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_PAT$3:
                        .quad            379303578970
                        .quad            17179869208
                        .quad            0
                        .quad            88
                        .quad            12
                        .quad            8804682956728
                        .quad            8813272891328
                        .quad            8813272891336
                        .quad            8804682956752
                        .quad            8804682956760
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcsites_PAT$3_3:      .quad            32
                        .quad            .Lgcmap_PAT$3
                        .quad            0
                        .quad            .Lgcsite_PAT$3_0
                        .quad            196609
                        .quad            .Lgcsite_PAT$3_1
                        .quad            196609
                        .quad            .Lgcsite_PAT$3_2
                        .quad            196609
                        .quad            .Lgcsite_PAT$3_3
                        .quad            196609
                        .quad            .Lgcsite_PAT$3_4
                        .quad            196609
                        .quad            .Lgcsite_PAT$3_5
                        .quad            196609
                        .quad            .Lgcsite_PAT$3_6
                        .quad            196610
                        .quad            .Lgcsite_PAT$3_7
                        .quad            196610
                        .quad            .Lgcsite_PAT$3_8
                        .quad            196610
                        .quad            .Lgcsite_PAT$3_9
                        .quad            196610
                        .quad            .Lgcsite_PAT$3_10
                        .quad            196610
                        .quad            .Lgcsite_PAT$3_11
                        .quad            196610
                        .quad            .Lgcsite_PAT$3_12
                        .quad            196609
                        .quad            .Lgcsite_PAT$3_13
                        .quad            196609
                        .quad            .Lgcsite_PAT$3_14
                        .quad            196609
                        .quad            .Lgcsite_PAT$3_15
                        .quad            196609
                        .quad            .Lgcsite_PAT$3_16
                        .quad            196609
                        .quad            .Lgcsite_PAT$3_17
                        .quad            196609
                        .quad            .Lgcsite_PAT$3_18
                        .quad            196609
                        .quad            .Lgcsite_PAT$3_19
                        .quad            196609
                        .quad            .Lgcsite_PAT$3_20
                        .quad            196609
                        .quad            .Lgcsite_PAT$3_21
                        .quad            196609
                        .quad            .Lgcsite_PAT$3_22
                        .quad            196610
                        .quad            .Lgcsite_PAT$3_23
                        .quad            196610
                        .quad            .Lgcsite_PAT$3_24
                        .quad            196610
                        .quad            .Lgcsite_PAT$3_25
                        .quad            196610
                        .quad            .Lgcsite_PAT$3_26
                        .quad            196610
                        .quad            .Lgcsite_PAT$3_27
                        .quad            196610
                        .quad            .Lgcsite_PAT$3_28
                        .quad            196609
                        .quad            .Lgcsite_PAT$3_29
                        .quad            196609
                        .quad            .Lgcsite_PAT$3_30
                        .quad            196609
                        .quad            .Lgcsite_PAT$3_31
                        .quad            196609
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_PAT$3:            .quad            FN__PAT$3
                        .long            128, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$4:
PAT$4_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 72
                        lea              rax, [rip + .Lgcmap_PAT$4]
                        mov              qword ptr [rbp + -64], rax
                        mov              dword ptr [rbp + -72], 160
                        mov              dword ptr [rbp + -68], 72
                        xorps            xmm0, xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n31_match_defer_bx, @function
n31_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_35_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_35_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_35_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_35_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_35_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_35_18
.Lmatch_defer_α_35_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_PAT$4_15:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        test             rax, rax;                            je    .Lmatch_defer_α_35_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_35_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$4_14:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_35_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_35_16:
.Lmatch_defer_α_35_18:  test             rax, rax;                            jz    .Lmatch_defer_α_35_0
.Lmatch_defer_α_35_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_35_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_35_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_35_4:                                                         jmp   n32_match_arbno_α
.Lmatch_defer_α_35_5:   add              rsp, 16;                             jmp   PAT$4_ω
.Lmatch_defer_α_35_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_PAT$4_13:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_35_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_35_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$4_12:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_35_2:   test             rax, rax;                            je    .Lmatch_defer_α_35_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_35_40
                        sub              rsp, 64
                        mov              qword ptr [rsp + 56], r12
                        mov              qword ptr [rsp + 48], rbx
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rcx, rdx
                        and              rcx, 255
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_35_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_35_141
                        lea              rcx, [rip + .Lmatch_defer_α_35_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_35_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_35_42]
                        lea              rdx, [rip + .Lmatch_defer_α_35_43];  jmp   rax
.Lmatch_defer_α_35_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_35_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_35_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_35_44:
.Lgcsite_PAT$4_11:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_35_46
.Lmatch_defer_α_35_45:
.Lgcsite_PAT$4_10:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_35_47
.Lmatch_defer_α_35_42:
.Lgcsite_PAT$4_9:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_35_46
.Lmatch_defer_α_35_43:
.Lgcsite_PAT$4_8:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_35_47
.Lmatch_defer_α_35_141: lea              rcx, [rip + .Lmatch_defer_α_35_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_35_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_35_142]
                        lea              rdx, [rip + .Lmatch_defer_α_35_143]; jmp   rax
.Lmatch_defer_α_35_142:
.Lgcsite_PAT$4_7:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_35_46
.Lmatch_defer_α_35_143:
.Lgcsite_PAT$4_6:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_35_47
.Lmatch_defer_α_35_46:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_PAT$4_5:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_35_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_35_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$4_4:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_35_2
.Lmatch_defer_α_35_47:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_PAT$4_3:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_35_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_35_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$4_2:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_35_2
.Lmatch_defer_α_35_40:  mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_35_48
.Lmatch_defer_α_35_3:   mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              edi, r14d
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_PAT$4_1:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$4_0:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_35_49:  test             eax, eax;                            jns   .Lmatch_defer_α_35_240
                        add              rsp, 16;                             jmp   PAT$4_ω
.Lmatch_defer_α_35_240: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_35_6]
                        push             rcx
                        push             rax;                                 jmp   n32_match_arbno_α
.Lmatch_defer_α_35_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$4_ω
n31_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_35_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_35_12
                                                                              jmp   rax
.Lmatch_defer_β_35_12:                                                        jmp   qword ptr [rsp]
                        .size            n31_match_defer_bx, .-n31_match_defer_bx
                        .type            n32_match_arbno_bx, @function
n32_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_match_arbno_α:      sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   PAT$4_γ
n32_match_arbno_β:      mov              rax, qword ptr [rbp + -48]
                        mov              r12, qword ptr [rax + 8];            jmp   n33_match_any_α
.Lmatch_arbno_γ_32_as:  mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n34_match_defer_β
                        sub              rsp, 32
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rbp + -48], rsp;          jmp   PAT$4_γ
.Lmatch_arbno_γ_32_af:
.Lmatch_arbno_ω_32_af:  mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -48], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_37_3
                        lea              rsp, [rcx + 32];                     jmp   n34_match_defer_β
.Lmatch_arbno_β_37_3:   lea              rsp, [rcx + 32];                     jmp   n31_match_defer_β
                        .size            n32_match_arbno_bx, .-n32_match_arbno_bx
                        .type            n33_match_any_bx, @function
n33_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_arbno_ω_32_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 42;                             je    .Lmatch_any_α_39_0
                        cmp              esi, 47;                             je    .Lmatch_any_α_39_0
                                                                              jmp   .Lmatch_arbno_ω_32_af
.Lmatch_any_α_39_0:     add              r14d, 1;                             jmp   n34_match_defer_α
n33_match_any_β:        sub              r14d, 1;                             jmp   .Lmatch_arbno_ω_32_af
                        .size            n33_match_any_bx, .-n33_match_any_bx
                        .type            n34_match_defer_bx, @function
n34_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_40_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_40_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_40_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_40_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_40_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_40_18
.Lmatch_defer_α_40_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_PAT$4_31:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        test             rax, rax;                            je    .Lmatch_defer_α_40_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_40_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$4_30:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_40_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_40_16:
.Lmatch_defer_α_40_18:  test             rax, rax;                            jz    .Lmatch_defer_α_40_0
.Lmatch_defer_α_40_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_40_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_40_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_40_4:                                                         jmp   .Lmatch_arbno_γ_32_as
.Lmatch_defer_α_40_5:   cmp              r14d, -2;                            je    n32_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n32_match_arbno_β
                                                                              jmp   n33_match_any_β
.Lmatch_defer_α_40_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_PAT$4_29:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_40_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_40_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$4_28:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_40_2:   test             rax, rax;                            je    .Lmatch_defer_α_40_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_40_40
                        sub              rsp, 64
                        mov              qword ptr [rsp + 56], r12
                        mov              qword ptr [rsp + 48], rbx
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rcx, rdx
                        and              rcx, 255
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_40_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_40_141
                        lea              rcx, [rip + .Lmatch_defer_α_40_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_40_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_40_42]
                        lea              rdx, [rip + .Lmatch_defer_α_40_43];  jmp   rax
.Lmatch_defer_α_40_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_40_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_40_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_40_44:
.Lgcsite_PAT$4_27:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_40_46
.Lmatch_defer_α_40_45:
.Lgcsite_PAT$4_26:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_40_47
.Lmatch_defer_α_40_42:
.Lgcsite_PAT$4_25:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_40_46
.Lmatch_defer_α_40_43:
.Lgcsite_PAT$4_24:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_40_47
.Lmatch_defer_α_40_141: lea              rcx, [rip + .Lmatch_defer_α_40_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_40_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_40_142]
                        lea              rdx, [rip + .Lmatch_defer_α_40_143]; jmp   rax
.Lmatch_defer_α_40_142:
.Lgcsite_PAT$4_23:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_40_46
.Lmatch_defer_α_40_143:
.Lgcsite_PAT$4_22:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_40_47
.Lmatch_defer_α_40_46:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_PAT$4_21:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_40_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_40_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$4_20:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_40_2
.Lmatch_defer_α_40_47:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_PAT$4_19:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_40_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_40_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$4_18:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_40_2
.Lmatch_defer_α_40_40:  mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_40_48
.Lmatch_defer_α_40_3:   mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              edi, r14d
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_PAT$4_17:      push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$4_16:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_40_49:  cmp              r14d, -2;                            je    n32_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n32_match_arbno_β
                        test             eax, eax;                            js    n33_match_any_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_40_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_arbno_γ_32_as
.Lmatch_defer_α_40_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n33_match_any_β
n34_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_40_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_40_12
                                                                              jmp   rax
.Lmatch_defer_β_40_12:                                                        jmp   qword ptr [rsp]
                        .size            n34_match_defer_bx, .-n34_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_β:
                                                                              jmp   n32_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + PAT$4_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_PAT$4:
                        .quad            310584102234
                        .quad            17179869208
                        .quad            0
                        .quad            72
                        .quad            9
                        .quad            8804682956744
                        .quad            17600775978960
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcsites_PAT$4_4:      .quad            32
                        .quad            .Lgcmap_PAT$4
                        .quad            0
                        .quad            .Lgcsite_PAT$4_0
                        .quad            196609
                        .quad            .Lgcsite_PAT$4_1
                        .quad            196609
                        .quad            .Lgcsite_PAT$4_2
                        .quad            196609
                        .quad            .Lgcsite_PAT$4_3
                        .quad            196609
                        .quad            .Lgcsite_PAT$4_4
                        .quad            196609
                        .quad            .Lgcsite_PAT$4_5
                        .quad            196609
                        .quad            .Lgcsite_PAT$4_6
                        .quad            196610
                        .quad            .Lgcsite_PAT$4_7
                        .quad            196610
                        .quad            .Lgcsite_PAT$4_8
                        .quad            196610
                        .quad            .Lgcsite_PAT$4_9
                        .quad            196610
                        .quad            .Lgcsite_PAT$4_10
                        .quad            196610
                        .quad            .Lgcsite_PAT$4_11
                        .quad            196610
                        .quad            .Lgcsite_PAT$4_12
                        .quad            196609
                        .quad            .Lgcsite_PAT$4_13
                        .quad            196609
                        .quad            .Lgcsite_PAT$4_14
                        .quad            196609
                        .quad            .Lgcsite_PAT$4_15
                        .quad            196609
                        .quad            .Lgcsite_PAT$4_16
                        .quad            196609
                        .quad            .Lgcsite_PAT$4_17
                        .quad            196609
                        .quad            .Lgcsite_PAT$4_18
                        .quad            196609
                        .quad            .Lgcsite_PAT$4_19
                        .quad            196609
                        .quad            .Lgcsite_PAT$4_20
                        .quad            196609
                        .quad            .Lgcsite_PAT$4_21
                        .quad            196609
                        .quad            .Lgcsite_PAT$4_22
                        .quad            196610
                        .quad            .Lgcsite_PAT$4_23
                        .quad            196610
                        .quad            .Lgcsite_PAT$4_24
                        .quad            196610
                        .quad            .Lgcsite_PAT$4_25
                        .quad            196610
                        .quad            .Lgcsite_PAT$4_26
                        .quad            196610
                        .quad            .Lgcsite_PAT$4_27
                        .quad            196610
                        .quad            .Lgcsite_PAT$4_28
                        .quad            196609
                        .quad            .Lgcsite_PAT$4_29
                        .quad            196609
                        .quad            .Lgcsite_PAT$4_30
                        .quad            196609
                        .quad            .Lgcsite_PAT$4_31
                        .quad            196609
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_PAT$4:            .quad            FN__PAT$4
                        .long            176, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$5:
PAT$5_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 72
                        lea              rax, [rip + .Lgcmap_PAT$5]
                        mov              qword ptr [rbp + -64], rax
                        mov              dword ptr [rbp + -72], 160
                        mov              dword ptr [rbp + -68], 72
                        xorps            xmm0, xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n41_match_defer_bx, @function
n41_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_45_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_45_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_45_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_45_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_45_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_45_18
.Lmatch_defer_α_45_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_PAT$5_15:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        test             rax, rax;                            je    .Lmatch_defer_α_45_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_45_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$5_14:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_45_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_45_16:
.Lmatch_defer_α_45_18:  test             rax, rax;                            jz    .Lmatch_defer_α_45_0
.Lmatch_defer_α_45_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_45_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_45_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_45_4:                                                         jmp   n42_match_arbno_α
.Lmatch_defer_α_45_5:   add              rsp, 16;                             jmp   PAT$5_ω
.Lmatch_defer_α_45_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_PAT$5_13:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_45_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_45_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$5_12:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_45_2:   test             rax, rax;                            je    .Lmatch_defer_α_45_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_45_40
                        sub              rsp, 64
                        mov              qword ptr [rsp + 56], r12
                        mov              qword ptr [rsp + 48], rbx
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rcx, rdx
                        and              rcx, 255
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_45_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_45_141
                        lea              rcx, [rip + .Lmatch_defer_α_45_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_45_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_45_42]
                        lea              rdx, [rip + .Lmatch_defer_α_45_43];  jmp   rax
.Lmatch_defer_α_45_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_45_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_45_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_45_44:
.Lgcsite_PAT$5_11:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_45_46
.Lmatch_defer_α_45_45:
.Lgcsite_PAT$5_10:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_45_47
.Lmatch_defer_α_45_42:
.Lgcsite_PAT$5_9:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_45_46
.Lmatch_defer_α_45_43:
.Lgcsite_PAT$5_8:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_45_47
.Lmatch_defer_α_45_141: lea              rcx, [rip + .Lmatch_defer_α_45_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_45_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_45_142]
                        lea              rdx, [rip + .Lmatch_defer_α_45_143]; jmp   rax
.Lmatch_defer_α_45_142:
.Lgcsite_PAT$5_7:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_45_46
.Lmatch_defer_α_45_143:
.Lgcsite_PAT$5_6:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_45_47
.Lmatch_defer_α_45_46:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_PAT$5_5:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_45_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_45_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$5_4:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_45_2
.Lmatch_defer_α_45_47:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_PAT$5_3:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_45_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_45_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$5_2:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_45_2
.Lmatch_defer_α_45_40:  mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_45_48
.Lmatch_defer_α_45_3:   mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              edi, r14d
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_PAT$5_1:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$5_0:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_45_49:  test             eax, eax;                            jns   .Lmatch_defer_α_45_240
                        add              rsp, 16;                             jmp   PAT$5_ω
.Lmatch_defer_α_45_240: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_45_6]
                        push             rcx
                        push             rax;                                 jmp   n42_match_arbno_α
.Lmatch_defer_α_45_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$5_ω
n41_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_45_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_45_12
                                                                              jmp   rax
.Lmatch_defer_β_45_12:                                                        jmp   qword ptr [rsp]
                        .size            n41_match_defer_bx, .-n41_match_defer_bx
                        .type            n42_match_arbno_bx, @function
n42_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_match_arbno_α:      sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   PAT$5_γ
n42_match_arbno_β:      mov              rax, qword ptr [rbp + -48]
                        mov              r12, qword ptr [rax + 8];            jmp   n43_match_any_α
.Lmatch_arbno_γ_42_as:  mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n44_match_defer_β
                        sub              rsp, 32
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rbp + -48], rsp;          jmp   PAT$5_γ
.Lmatch_arbno_γ_42_af:
.Lmatch_arbno_ω_42_af:  mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -48], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_47_3
                        lea              rsp, [rcx + 32];                     jmp   n44_match_defer_β
.Lmatch_arbno_β_47_3:   lea              rsp, [rcx + 32];                     jmp   n41_match_defer_β
                        .size            n42_match_arbno_bx, .-n42_match_arbno_bx
                        .type            n43_match_any_bx, @function
n43_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_arbno_ω_42_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .Lmatch_any_α_49_0
                        cmp              esi, 45;                             je    .Lmatch_any_α_49_0
                                                                              jmp   .Lmatch_arbno_ω_42_af
.Lmatch_any_α_49_0:     add              r14d, 1;                             jmp   n44_match_defer_α
n43_match_any_β:        sub              r14d, 1;                             jmp   .Lmatch_arbno_ω_42_af
                        .size            n43_match_any_bx, .-n43_match_any_bx
                        .type            n44_match_defer_bx, @function
n44_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_50_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_50_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_50_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_50_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_50_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_50_18
.Lmatch_defer_α_50_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_PAT$5_31:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        test             rax, rax;                            je    .Lmatch_defer_α_50_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_50_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$5_30:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_50_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_50_16:
.Lmatch_defer_α_50_18:  test             rax, rax;                            jz    .Lmatch_defer_α_50_0
.Lmatch_defer_α_50_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_50_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_50_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_50_4:                                                         jmp   .Lmatch_arbno_γ_42_as
.Lmatch_defer_α_50_5:   cmp              r14d, -2;                            je    n42_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n42_match_arbno_β
                                                                              jmp   n43_match_any_β
.Lmatch_defer_α_50_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_PAT$5_29:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_50_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_50_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$5_28:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_50_2:   test             rax, rax;                            je    .Lmatch_defer_α_50_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_50_40
                        sub              rsp, 64
                        mov              qword ptr [rsp + 56], r12
                        mov              qword ptr [rsp + 48], rbx
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rcx, rdx
                        and              rcx, 255
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_50_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_50_141
                        lea              rcx, [rip + .Lmatch_defer_α_50_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_50_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_50_42]
                        lea              rdx, [rip + .Lmatch_defer_α_50_43];  jmp   rax
.Lmatch_defer_α_50_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_50_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_50_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_50_44:
.Lgcsite_PAT$5_27:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_50_46
.Lmatch_defer_α_50_45:
.Lgcsite_PAT$5_26:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_50_47
.Lmatch_defer_α_50_42:
.Lgcsite_PAT$5_25:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_50_46
.Lmatch_defer_α_50_43:
.Lgcsite_PAT$5_24:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_50_47
.Lmatch_defer_α_50_141: lea              rcx, [rip + .Lmatch_defer_α_50_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_50_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_50_142]
                        lea              rdx, [rip + .Lmatch_defer_α_50_143]; jmp   rax
.Lmatch_defer_α_50_142:
.Lgcsite_PAT$5_23:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_50_46
.Lmatch_defer_α_50_143:
.Lgcsite_PAT$5_22:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_50_47
.Lmatch_defer_α_50_46:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_PAT$5_21:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_50_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_50_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$5_20:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_50_2
.Lmatch_defer_α_50_47:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_PAT$5_19:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_50_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_50_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$5_18:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_50_2
.Lmatch_defer_α_50_40:  mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_50_48
.Lmatch_defer_α_50_3:   mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              edi, r14d
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_PAT$5_17:      push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$5_16:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_50_49:  cmp              r14d, -2;                            je    n42_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n42_match_arbno_β
                        test             eax, eax;                            js    n43_match_any_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_50_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_arbno_γ_42_as
.Lmatch_defer_α_50_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n43_match_any_β
n44_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_50_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_50_12
                                                                              jmp   rax
.Lmatch_defer_β_50_12:                                                        jmp   qword ptr [rsp]
                        .size            n44_match_defer_bx, .-n44_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_β:
                                                                              jmp   n42_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + PAT$5_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_PAT$5:
                        .quad            310584102234
                        .quad            17179869208
                        .quad            0
                        .quad            72
                        .quad            9
                        .quad            8804682956744
                        .quad            17600775978960
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcsites_PAT$5_5:      .quad            32
                        .quad            .Lgcmap_PAT$5
                        .quad            0
                        .quad            .Lgcsite_PAT$5_0
                        .quad            196609
                        .quad            .Lgcsite_PAT$5_1
                        .quad            196609
                        .quad            .Lgcsite_PAT$5_2
                        .quad            196609
                        .quad            .Lgcsite_PAT$5_3
                        .quad            196609
                        .quad            .Lgcsite_PAT$5_4
                        .quad            196609
                        .quad            .Lgcsite_PAT$5_5
                        .quad            196609
                        .quad            .Lgcsite_PAT$5_6
                        .quad            196610
                        .quad            .Lgcsite_PAT$5_7
                        .quad            196610
                        .quad            .Lgcsite_PAT$5_8
                        .quad            196610
                        .quad            .Lgcsite_PAT$5_9
                        .quad            196610
                        .quad            .Lgcsite_PAT$5_10
                        .quad            196610
                        .quad            .Lgcsite_PAT$5_11
                        .quad            196610
                        .quad            .Lgcsite_PAT$5_12
                        .quad            196609
                        .quad            .Lgcsite_PAT$5_13
                        .quad            196609
                        .quad            .Lgcsite_PAT$5_14
                        .quad            196609
                        .quad            .Lgcsite_PAT$5_15
                        .quad            196609
                        .quad            .Lgcsite_PAT$5_16
                        .quad            196609
                        .quad            .Lgcsite_PAT$5_17
                        .quad            196609
                        .quad            .Lgcsite_PAT$5_18
                        .quad            196609
                        .quad            .Lgcsite_PAT$5_19
                        .quad            196609
                        .quad            .Lgcsite_PAT$5_20
                        .quad            196609
                        .quad            .Lgcsite_PAT$5_21
                        .quad            196609
                        .quad            .Lgcsite_PAT$5_22
                        .quad            196610
                        .quad            .Lgcsite_PAT$5_23
                        .quad            196610
                        .quad            .Lgcsite_PAT$5_24
                        .quad            196610
                        .quad            .Lgcsite_PAT$5_25
                        .quad            196610
                        .quad            .Lgcsite_PAT$5_26
                        .quad            196610
                        .quad            .Lgcsite_PAT$5_27
                        .quad            196610
                        .quad            .Lgcsite_PAT$5_28
                        .quad            196609
                        .quad            .Lgcsite_PAT$5_29
                        .quad            196609
                        .quad            .Lgcsite_PAT$5_30
                        .quad            196609
                        .quad            .Lgcsite_PAT$5_31
                        .quad            196609
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_PAT$5:            .quad            FN__PAT$5
                        .long            176, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$6:
PAT$6_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 88
                        lea              rax, [rip + .Lgcmap_PAT$6]
                        mov              qword ptr [rbp + -80], rax
                        mov              dword ptr [rbp + -88], 160
                        mov              dword ptr [rbp + -84], 88
                        xorps            xmm0, xmm0
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n51_match_pos_bx, @function
n51_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_match_pos_α:        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$6_ω
                                                                              jmp   n52_match_arbno_α
n51_match_pos_β:                                                              jmp   PAT$6_ω
                        .size            n51_match_pos_bx, .-n51_match_pos_bx
                        .type            n52_match_arbno_bx, @function
n52_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_match_arbno_α:      sub              rsp, 48
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   n53_match_rpos_α
n52_match_arbno_β:      mov              rax, qword ptr [rbp + -48]
                        mov              r12, qword ptr [rax + 8];            jmp   n54_match_defer_α
.Lmatch_arbno_γ_52_as:  mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n55_match_defer_β
                        sub              rsp, 48
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rbp + -56]
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   n53_match_rpos_α
.Lmatch_arbno_γ_52_af:
.Lmatch_arbno_ω_52_af:  mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -48], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_58_3
                        mov              rax, qword ptr [rcx + 32]
                        mov              qword ptr [rbp + -64], rax
                        mov              rax, qword ptr [rcx + 40]
                        mov              qword ptr [rbp + -56], rax
                        lea              rsp, [rcx + 48];                     jmp   n55_match_defer_β
.Lmatch_arbno_β_58_3:   lea              rsp, [rcx + 48];                     jmp   n51_match_pos_β
                        .size            n52_match_arbno_bx, .-n52_match_arbno_bx
                        .type            n53_match_rpos_bx, @function
n53_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_match_rpos_α:       mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n52_match_arbno_β
                                                                              jmp   PAT$6_γ
n53_match_rpos_β:                                                             jmp   n52_match_arbno_β
                        .size            n53_match_rpos_bx, .-n53_match_rpos_bx
                        .type            n54_match_defer_bx, @function
n54_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_60_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_60_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_60_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_60_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_60_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_60_18
.Lmatch_defer_α_60_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_PAT$6_15:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        test             rax, rax;                            je    .Lmatch_defer_α_60_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_60_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$6_14:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_60_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_60_16:
.Lmatch_defer_α_60_18:  test             rax, rax;                            jz    .Lmatch_defer_α_60_0
.Lmatch_defer_α_60_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_60_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_60_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_60_4:                                                         jmp   n55_match_defer_α
.Lmatch_defer_α_60_5:   cmp              r14d, -2;                            je    n52_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n52_match_arbno_β
                                                                              jmp   .Lmatch_arbno_ω_52_af
.Lmatch_defer_α_60_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_PAT$6_13:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_60_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_60_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$6_12:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_60_2:   test             rax, rax;                            je    .Lmatch_defer_α_60_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_60_40
                        sub              rsp, 64
                        mov              qword ptr [rsp + 56], r12
                        mov              qword ptr [rsp + 48], rbx
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rcx, rdx
                        and              rcx, 255
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_60_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_60_141
                        lea              rcx, [rip + .Lmatch_defer_α_60_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_60_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_60_42]
                        lea              rdx, [rip + .Lmatch_defer_α_60_43];  jmp   rax
.Lmatch_defer_α_60_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_60_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_60_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_60_44:
.Lgcsite_PAT$6_11:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_60_46
.Lmatch_defer_α_60_45:
.Lgcsite_PAT$6_10:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_60_47
.Lmatch_defer_α_60_42:
.Lgcsite_PAT$6_9:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_60_46
.Lmatch_defer_α_60_43:
.Lgcsite_PAT$6_8:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_60_47
.Lmatch_defer_α_60_141: lea              rcx, [rip + .Lmatch_defer_α_60_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_60_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_60_142]
                        lea              rdx, [rip + .Lmatch_defer_α_60_143]; jmp   rax
.Lmatch_defer_α_60_142:
.Lgcsite_PAT$6_7:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_60_46
.Lmatch_defer_α_60_143:
.Lgcsite_PAT$6_6:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_60_47
.Lmatch_defer_α_60_46:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_PAT$6_5:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_60_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_60_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$6_4:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_60_2
.Lmatch_defer_α_60_47:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_PAT$6_3:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_60_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_60_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$6_2:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_60_2
.Lmatch_defer_α_60_40:  mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_60_48
.Lmatch_defer_α_60_3:   mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              edi, r14d
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_PAT$6_1:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$6_0:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_60_49:  cmp              r14d, -2;                            je    n52_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n52_match_arbno_β
                        test             eax, eax;                            js    .Lmatch_arbno_ω_52_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_60_6]
                        push             rcx
                        push             rax;                                 jmp   n55_match_defer_α
.Lmatch_defer_α_60_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_arbno_ω_52_af
n54_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_60_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_60_12
                                                                              jmp   rax
.Lmatch_defer_β_60_12:                                                        jmp   qword ptr [rsp]
                        .size            n54_match_defer_bx, .-n54_match_defer_bx
                        .type            n55_match_defer_bx, @function
n55_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_61_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_61_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_61_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_61_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_61_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_61_18
.Lmatch_defer_α_61_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_PAT$6_31:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        test             rax, rax;                            je    .Lmatch_defer_α_61_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_61_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$6_30:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_61_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_61_16:
.Lmatch_defer_α_61_18:  test             rax, rax;                            jz    .Lmatch_defer_α_61_0
.Lmatch_defer_α_61_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_61_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_61_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_61_4:                                                         jmp   .Lmatch_arbno_γ_52_as
.Lmatch_defer_α_61_5:   cmp              r14d, -2;                            je    n52_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n52_match_arbno_β
                                                                              jmp   n54_match_defer_β
.Lmatch_defer_α_61_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_PAT$6_29:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_61_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_61_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$6_28:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_61_2:   test             rax, rax;                            je    .Lmatch_defer_α_61_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_61_40
                        sub              rsp, 64
                        mov              qword ptr [rsp + 56], r12
                        mov              qword ptr [rsp + 48], rbx
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rcx, rdx
                        and              rcx, 255
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_61_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_61_141
                        lea              rcx, [rip + .Lmatch_defer_α_61_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_61_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_61_42]
                        lea              rdx, [rip + .Lmatch_defer_α_61_43];  jmp   rax
.Lmatch_defer_α_61_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_61_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_61_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_61_44:
.Lgcsite_PAT$6_27:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_61_46
.Lmatch_defer_α_61_45:
.Lgcsite_PAT$6_26:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_61_47
.Lmatch_defer_α_61_42:
.Lgcsite_PAT$6_25:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_61_46
.Lmatch_defer_α_61_43:
.Lgcsite_PAT$6_24:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_61_47
.Lmatch_defer_α_61_141: lea              rcx, [rip + .Lmatch_defer_α_61_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_61_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_61_142]
                        lea              rdx, [rip + .Lmatch_defer_α_61_143]; jmp   rax
.Lmatch_defer_α_61_142:
.Lgcsite_PAT$6_23:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_61_46
.Lmatch_defer_α_61_143:
.Lgcsite_PAT$6_22:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_61_47
.Lmatch_defer_α_61_46:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_PAT$6_21:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_61_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_61_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$6_20:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_61_2
.Lmatch_defer_α_61_47:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_PAT$6_19:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_61_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_61_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$6_18:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_61_2
.Lmatch_defer_α_61_40:  mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_61_48
.Lmatch_defer_α_61_3:   mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              edi, r14d
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_PAT$6_17:      push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_PAT$6_16:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_61_49:  cmp              r14d, -2;                            je    n52_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n52_match_arbno_β
                        test             eax, eax;                            js    n54_match_defer_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_61_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_arbno_γ_52_as
.Lmatch_defer_α_61_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n54_match_defer_β
n55_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_61_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_61_12
                                                                              jmp   rax
.Lmatch_defer_β_61_12:                                                        jmp   qword ptr [rsp]
                        .size            n55_match_defer_bx, .-n55_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_β:
                                                                              jmp   n53_match_rpos_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + PAT$6_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_PAT$6:
                        .quad            379303578970
                        .quad            17179869208
                        .quad            0
                        .quad            88
                        .quad            10
                        .quad            8804682956728
                        .quad            17596481011648
                        .quad            17600775978960
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcsites_PAT$6_6:      .quad            32
                        .quad            .Lgcmap_PAT$6
                        .quad            0
                        .quad            .Lgcsite_PAT$6_0
                        .quad            196609
                        .quad            .Lgcsite_PAT$6_1
                        .quad            196609
                        .quad            .Lgcsite_PAT$6_2
                        .quad            196609
                        .quad            .Lgcsite_PAT$6_3
                        .quad            196609
                        .quad            .Lgcsite_PAT$6_4
                        .quad            196609
                        .quad            .Lgcsite_PAT$6_5
                        .quad            196609
                        .quad            .Lgcsite_PAT$6_6
                        .quad            196610
                        .quad            .Lgcsite_PAT$6_7
                        .quad            196610
                        .quad            .Lgcsite_PAT$6_8
                        .quad            196610
                        .quad            .Lgcsite_PAT$6_9
                        .quad            196610
                        .quad            .Lgcsite_PAT$6_10
                        .quad            196610
                        .quad            .Lgcsite_PAT$6_11
                        .quad            196610
                        .quad            .Lgcsite_PAT$6_12
                        .quad            196609
                        .quad            .Lgcsite_PAT$6_13
                        .quad            196609
                        .quad            .Lgcsite_PAT$6_14
                        .quad            196609
                        .quad            .Lgcsite_PAT$6_15
                        .quad            196609
                        .quad            .Lgcsite_PAT$6_16
                        .quad            196609
                        .quad            .Lgcsite_PAT$6_17
                        .quad            196609
                        .quad            .Lgcsite_PAT$6_18
                        .quad            196609
                        .quad            .Lgcsite_PAT$6_19
                        .quad            196609
                        .quad            .Lgcsite_PAT$6_20
                        .quad            196609
                        .quad            .Lgcsite_PAT$6_21
                        .quad            196609
                        .quad            .Lgcsite_PAT$6_22
                        .quad            196610
                        .quad            .Lgcsite_PAT$6_23
                        .quad            196610
                        .quad            .Lgcsite_PAT$6_24
                        .quad            196610
                        .quad            .Lgcsite_PAT$6_25
                        .quad            196610
                        .quad            .Lgcsite_PAT$6_26
                        .quad            196610
                        .quad            .Lgcsite_PAT$6_27
                        .quad            196610
                        .quad            .Lgcsite_PAT$6_28
                        .quad            196609
                        .quad            .Lgcsite_PAT$6_29
                        .quad            196609
                        .quad            .Lgcsite_PAT$6_30
                        .quad            196609
                        .quad            .Lgcsite_PAT$6_31
                        .quad            196609
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_PAT$6:            .quad            FN__PAT$6
                        .long            176, 0
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        push             rdi
                        push             rsi
                        sub              rsp, 8
                        call             rt_main_stack_adopt@PLT
                        mov              rsi, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rsp + 16]
                        add              rsp, 24
                        test             rax, rax;                            jz    .Lmain_stack_kept
                        mov              rsp, rax
.Lmain_stack_kept:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 19
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 19
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 2
                        call             rt_label_table_install@PLT
                        lea              rdi, [rip + __gc_frame_maps]
                        call             rt_gc_frame_maps_install_counted@PLT
                        lea              rdi, [rip + __gc_frame_sites]
                        call             rt_gc_frame_sites_install_counted@PLT
                        mov              rdi, qword ptr [rsp]
                        mov              rdi, qword ptr [rdi]
                        call             rt_main_progname_stage@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage_argv@PLT
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
.Lgvan0:                .string          "V"
.Lgvan1:                .string          "I"
.Lgvan2:                .string          "A"
.Lgvan3:                .string          "F"
.Lgvan4:                .string          "T"
.Lgvan5:                .string          "X"
.Lgvan6:                .string          "eol"
.Lgvan7:                .string          "C"
.Lgvan8:                .string          "src"
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
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "fail"
.Llbln1:                .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 1352], rax
                        mov              dword ptr [rsp + 1344], 160
                        mov              dword ptr [rsp + 1348], 1360
                        mov              eax, 0
main_α_body:
                        sub              rsp, 0
                        .type            n62_call_bx, @function
n62_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_call_α:             sub              rsp, 16
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_fp_model_spitbol@PLT
.Lgcsite_main_0:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_1:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_α_161_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n63_call_α
.Lcall_α_161_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n63_call_α
n62_call_β:             add              rsp, 16
                        add              rsp, -16;                            jmp   n63_call_α
                        .size            n62_call_bx, .-n62_call_bx
                        .type            n63_call_bx, @function
n63_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_call_α:             sub              rsp, 16
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_quit_trap_320@PLT
.Lgcsite_main_2:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_3:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_α_162_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n64_statement_begin_α
.Lcall_α_162_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n64_statement_begin_α
n63_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n64_statement_begin_α
                        .size            n63_call_bx, .-n63_call_bx
                        .type            n64_statement_begin_bx, @function
n64_statement_begin_bx:
                        .pushsection     .rodata
.Lstnof1:               .string          "snobol4/calculator/calculator-2-match.sno"
                        .popsection
.Lstatement_begin_α_163_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_163_stno
                        .long            1
                        .long            21
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         V              =  ANY('abcdefghijklmnopqrstuvwxyz')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n64_statement_begin_α:                                                        jmp   n65_lit_string_α
n64_statement_begin_β:                                                        jmp   n69_setexit_test_α
                        .size            n64_statement_begin_bx, .-n64_statement_begin_bx
                        .type            n65_lit_string_bx, @function
n65_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_165_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n66_call_α
.Llit_string_α_165_0:   .quad            .Lthk_PAT$0
                        .size            n65_lit_string_bx, .-n65_lit_string_bx
                        .type            n66_call_bx, @function
n66_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_4:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_5:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_166_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n64_statement_begin_β
.Lcall_α_166_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_assign_α
n66_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n64_statement_begin_β
                        .size            n66_call_bx, .-n66_call_bx
                        .type            n67_assign_bx, @function
n67_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # V
                        mov              qword ptr [r9 + 8], rdx;             jmp   n68_statement_end_α
                        .size            n67_assign_bx, .-n67_assign_bx
                        .type            n68_statement_end_bx, @function
n68_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    add              rsp, 32;                             jmp   n70_statement_begin_α
                        .size            n68_statement_end_bx, .-n68_statement_end_bx
                        .type            n69_setexit_test_bx, @function
n69_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_170_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_170_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_170_61:
.Lsetexit_test_α_170_1:                                                       jmp   n70_statement_begin_α
                        .size            n69_setexit_test_bx, .-n69_setexit_test_bx
                        .type            n70_statement_begin_bx, @function
n70_statement_begin_bx:
.Lstatement_begin_α_171_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_171_stno
                        .long            2
                        .long            22
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         I              =  SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n70_statement_begin_α:                                                        jmp   n71_lit_string_α
n70_statement_begin_β:                                                        jmp   n75_setexit_test_α
                        .size            n70_statement_begin_bx, .-n70_statement_begin_bx
                        .type            n71_lit_string_bx, @function
n71_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_173_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_call_α
.Llit_string_α_173_0:   .quad            .Lthk_PAT$1
                        .size            n71_lit_string_bx, .-n71_lit_string_bx
                        .type            n72_call_bx, @function
n72_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_6:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_7:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_174_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n70_statement_begin_β
.Lcall_α_174_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_assign_α
n72_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n70_statement_begin_β
                        .size            n72_call_bx, .-n72_call_bx
                        .type            n73_assign_bx, @function
n73_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # I
                        mov              qword ptr [r9 + 24], rdx;            jmp   n74_statement_end_α
                        .size            n73_assign_bx, .-n73_assign_bx
                        .type            n74_statement_end_bx, @function
n74_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_end_α:    add              rsp, 32;                             jmp   n76_statement_begin_α
                        .size            n74_statement_end_bx, .-n74_statement_end_bx
                        .type            n75_setexit_test_bx, @function
n75_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_178_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_178_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_178_61:
.Lsetexit_test_α_178_1:                                                       jmp   n76_statement_begin_α
                        .size            n75_setexit_test_bx, .-n75_setexit_test_bx
                        .type            n76_statement_begin_bx, @function
n76_statement_begin_bx:
.Lstatement_begin_α_179_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_179_stno
                        .long            3
                        .long            23
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         A              =  V | I | '(' *X ')'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 23 0
n76_statement_begin_α:                                                        jmp   n77_lit_string_α
n76_statement_begin_β:                                                        jmp   n83_setexit_test_α
                        .size            n76_statement_begin_bx, .-n76_statement_begin_bx
                        .type            n77_lit_string_bx, @function
n77_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_181_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_var_α
.Llit_string_α_181_0:   .quad            .Lthk_PAT$2
                        .size            n77_lit_string_bx, .-n77_lit_string_bx
                        .type            n78_var_bx, @function
n78_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # V
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_var_α
n78_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n76_statement_begin_β
                        .size            n78_var_bx, .-n78_var_bx
                        .type            n79_var_bx, @function
n79_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # I
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_call_α
n79_var_β:              add              rsp, 16;                             jmp   n78_var_β
                        .size            n79_var_bx, .-n79_var_bx
                        .type            n80_call_bx, @function
n80_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_call_α:             sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_8:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_9:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_184_240
                        add              rsp, 16;                             jmp   n79_var_β
.Lcall_α_184_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n81_assign_α
n80_call_β:             add              rsp, 16;                             jmp   n79_var_β
                        .size            n80_call_bx, .-n80_call_bx
                        .type            n81_assign_bx, @function
n81_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # A
                        mov              qword ptr [r9 + 40], rdx;            jmp   n82_statement_end_α
                        .size            n81_assign_bx, .-n81_assign_bx
                        .type            n82_statement_end_bx, @function
n82_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_end_α:    add              rsp, 64;                             jmp   n84_statement_begin_α
                        .size            n82_statement_end_bx, .-n82_statement_end_bx
                        .type            n83_setexit_test_bx, @function
n83_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_188_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_188_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_188_61:
.Lsetexit_test_α_188_1:                                                       jmp   n84_statement_begin_α
                        .size            n83_setexit_test_bx, .-n83_setexit_test_bx
                        .type            n84_statement_begin_bx, @function
n84_statement_begin_bx:
.Lstatement_begin_α_189_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_189_stno
                        .long            4
                        .long            24
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         F              =  A | ANY('+-') *F
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n84_statement_begin_α:                                                        jmp   n85_lit_string_α
n84_statement_begin_β:                                                        jmp   n90_setexit_test_α
                        .size            n84_statement_begin_bx, .-n84_statement_begin_bx
                        .type            n85_lit_string_bx, @function
n85_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_191_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_var_α
.Llit_string_α_191_0:   .quad            .Lthk_PAT$3
                        .size            n85_lit_string_bx, .-n85_lit_string_bx
                        .type            n86_var_bx, @function
n86_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # A
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n87_call_α
n86_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n84_statement_begin_β
                        .size            n86_var_bx, .-n86_var_bx
                        .type            n87_call_bx, @function
n87_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_call_α:             sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_10:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_11:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_193_240
                        add              rsp, 16;                             jmp   n86_var_β
.Lcall_α_193_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n88_assign_α
n87_call_β:             add              rsp, 16;                             jmp   n86_var_β
                        .size            n87_call_bx, .-n87_call_bx
                        .type            n88_assign_bx, @function
n88_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # F
                        mov              qword ptr [r9 + 56], rdx;            jmp   n89_statement_end_α
                        .size            n88_assign_bx, .-n88_assign_bx
                        .type            n89_statement_end_bx, @function
n89_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_end_α:    add              rsp, 48;                             jmp   n91_statement_begin_α
                        .size            n89_statement_end_bx, .-n89_statement_end_bx
                        .type            n90_setexit_test_bx, @function
n90_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_197_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_197_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_197_61:
.Lsetexit_test_α_197_1:                                                       jmp   n91_statement_begin_α
                        .size            n90_setexit_test_bx, .-n90_setexit_test_bx
                        .type            n91_statement_begin_bx, @function
n91_statement_begin_bx:
.Lstatement_begin_α_198_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_198_stno
                        .long            5
                        .long            25
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         T              =  F ARBNO(ANY('*/') F)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n91_statement_begin_α:                                                        jmp   n92_lit_string_α
n91_statement_begin_β:                                                        jmp   n98_setexit_test_α
                        .size            n91_statement_begin_bx, .-n91_statement_begin_bx
                        .type            n92_lit_string_bx, @function
n92_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_200_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n93_var_α
.Llit_string_α_200_0:   .quad            .Lthk_PAT$4
                        .size            n92_lit_string_bx, .-n92_lit_string_bx
                        .type            n93_var_bx, @function
n93_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n94_var_α
n93_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n91_statement_begin_β
                        .size            n93_var_bx, .-n93_var_bx
                        .type            n94_var_bx, @function
n94_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n95_call_α
n94_var_β:              add              rsp, 16;                             jmp   n93_var_β
                        .size            n94_var_bx, .-n94_var_bx
                        .type            n95_call_bx, @function
n95_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_call_α:             sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_12:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_13:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_203_240
                        add              rsp, 16;                             jmp   n94_var_β
.Lcall_α_203_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_assign_α
n95_call_β:             add              rsp, 16;                             jmp   n94_var_β
                        .size            n95_call_bx, .-n95_call_bx
                        .type            n96_assign_bx, @function
n96_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # T
                        mov              qword ptr [r9 + 72], rdx;            jmp   n97_statement_end_α
                        .size            n96_assign_bx, .-n96_assign_bx
                        .type            n97_statement_end_bx, @function
n97_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_end_α:    add              rsp, 64;                             jmp   n99_statement_begin_α
                        .size            n97_statement_end_bx, .-n97_statement_end_bx
                        .type            n98_setexit_test_bx, @function
n98_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_207_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_207_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_207_61:
.Lsetexit_test_α_207_1:                                                       jmp   n99_statement_begin_α
                        .size            n98_setexit_test_bx, .-n98_setexit_test_bx
                        .type            n99_statement_begin_bx, @function
n99_statement_begin_bx:
.Lstatement_begin_α_208_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_208_stno
                        .long            6
                        .long            26
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         X              =  T ARBNO(ANY('+-') T)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n99_statement_begin_α:                                                        jmp   n100_lit_string_α
n99_statement_begin_β:                                                        jmp   n106_setexit_test_α
                        .size            n99_statement_begin_bx, .-n99_statement_begin_bx
                        .type            n100_lit_string_bx, @function
n100_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_210_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n101_var_α
.Llit_string_α_210_0:   .quad            .Lthk_PAT$5
                        .size            n100_lit_string_bx, .-n100_lit_string_bx
                        .type            n101_var_bx, @function
n101_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # T
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_var_α
n101_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n99_statement_begin_β
                        .size            n101_var_bx, .-n101_var_bx
                        .type            n102_var_bx, @function
n102_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # T
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_call_α
n102_var_β:             add              rsp, 16;                             jmp   n101_var_β
                        .size            n102_var_bx, .-n102_var_bx
                        .type            n103_call_bx, @function
n103_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_14:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_15:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_213_240
                        add              rsp, 16;                             jmp   n102_var_β
.Lcall_α_213_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n104_assign_α
n103_call_β:            add              rsp, 16;                             jmp   n102_var_β
                        .size            n103_call_bx, .-n103_call_bx
                        .type            n104_assign_bx, @function
n104_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # X
                        mov              qword ptr [r9 + 88], rdx;            jmp   n105_statement_end_α
                        .size            n104_assign_bx, .-n104_assign_bx
                        .type            n105_statement_end_bx, @function
n105_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_end_α:   add              rsp, 64;                             jmp   n107_statement_begin_α
                        .size            n105_statement_end_bx, .-n105_statement_end_bx
                        .type            n106_setexit_test_bx, @function
n106_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_217_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_217_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_217_61:
.Lsetexit_test_α_217_1:                                                       jmp   n107_statement_begin_α
                        .size            n106_setexit_test_bx, .-n106_setexit_test_bx
                        .type            n107_statement_begin_bx, @function
n107_statement_begin_bx:
.Lstatement_begin_α_218_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_218_stno
                        .long            7
                        .long            27
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         eol            =  CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n107_statement_begin_α:                                                       jmp   n108_lit_integer_α
n107_statement_begin_β:                                                       jmp   n112_setexit_test_α
                        .size            n107_statement_begin_bx, .-n107_statement_begin_bx
                        .type            n108_lit_integer_bx, @function
n108_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_220_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n109_call_α
.Llit_integer_α_220_0:  .quad            10
                        .size            n108_lit_integer_bx, .-n108_lit_integer_bx
                        .type            n109_call_bx, @function
n109_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_bynamefnzd73:  .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd73]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311296
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
.Lgcsite_main_16:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_17:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_221_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n107_statement_begin_β
.Lcall_α_221_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n110_assign_α
n109_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n107_statement_begin_β
                        .size            n109_call_bx, .-n109_call_bx
                        .type            n110_assign_bx, @function
n110_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # eol
                        mov              qword ptr [r9 + 104], rdx;           jmp   n111_statement_end_α
                        .size            n110_assign_bx, .-n110_assign_bx
                        .type            n111_statement_end_bx, @function
n111_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_end_α:   add              rsp, 32;                             jmp   n113_statement_begin_α
                        .size            n111_statement_end_bx, .-n111_statement_end_bx
                        .type            n112_setexit_test_bx, @function
n112_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_225_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_225_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_225_61:
.Lsetexit_test_α_225_1:                                                       jmp   n113_statement_begin_α
                        .size            n112_setexit_test_bx, .-n112_setexit_test_bx
                        .type            n113_statement_begin_bx, @function
n113_statement_begin_bx:
.Lstatement_begin_α_226_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_226_stno
                        .long            8
                        .long            28
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         C              =  POS(0) ARBNO(X eol) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n113_statement_begin_α:                                                       jmp   n114_lit_string_α
n113_statement_begin_β:                                                       jmp   n120_setexit_test_α
                        .size            n113_statement_begin_bx, .-n113_statement_begin_bx
                        .type            n114_lit_string_bx, @function
n114_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_228_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n115_var_α
.Llit_string_α_228_0:   .quad            .Lthk_PAT$6
                        .size            n114_lit_string_bx, .-n114_lit_string_bx
                        .type            n115_var_bx, @function
n115_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # X
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n116_var_α
n115_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n113_statement_begin_β
                        .size            n115_var_bx, .-n115_var_bx
                        .type            n116_var_bx, @function
n116_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # eol
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_call_α
n116_var_β:             add              rsp, 16;                             jmp   n115_var_β
                        .size            n116_var_bx, .-n116_var_bx
                        .type            n117_call_bx, @function
n117_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_18:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_19:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_231_240
                        add              rsp, 16;                             jmp   n116_var_β
.Lcall_α_231_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_assign_α
n117_call_β:            add              rsp, 16;                             jmp   n116_var_β
                        .size            n117_call_bx, .-n117_call_bx
                        .type            n118_assign_bx, @function
n118_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # C
                        mov              qword ptr [r9 + 120], rdx;           jmp   n119_statement_end_α
                        .size            n118_assign_bx, .-n118_assign_bx
                        .type            n119_statement_end_bx, @function
n119_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_statement_end_α:   add              rsp, 64;                             jmp   n121_statement_begin_α
                        .size            n119_statement_end_bx, .-n119_statement_end_bx
                        .type            n120_setexit_test_bx, @function
n120_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_235_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_235_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_235_61:
.Lsetexit_test_α_235_1:                                                       jmp   n121_statement_begin_α
                        .size            n120_setexit_test_bx, .-n120_setexit_test_bx
                        .type            n121_statement_begin_bx, @function
n121_statement_begin_bx:
.Lstatement_begin_α_236_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_236_stno
                        .long            9
                        .long            30
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n121_statement_begin_α:                                                       jmp   n122_lit_integer_α
n121_statement_begin_β:                                                       jmp   n125_setexit_test_α
                        .size            n121_statement_begin_bx, .-n121_statement_begin_bx
                        .type            n122_lit_integer_bx, @function
n122_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_238_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n123_kw_assign_snobol4_α
.Llit_integer_α_238_0:  .quad            0
                        .size            n122_lit_integer_bx, .-n122_lit_integer_bx
                        .type            n123_kw_assign_snobol4_bx, @function
n123_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_239_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_write_idx@PLT
.Lgcsite_main_21:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_239_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n121_statement_begin_β
.Lkw_assign_snobol4_α_239_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_keyword_assign_snobol4.cpp:32
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_20:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n124_statement_end_α
.Lkw_assign_snobol4_α_239_0:
                        .quad            1
                        .size            n123_kw_assign_snobol4_bx, .-n123_kw_assign_snobol4_bx
                        .type            n124_statement_end_bx, @function
n124_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_end_α:   add              rsp, 32;                             jmp   n126_statement_begin_α
                        .size            n124_statement_end_bx, .-n124_statement_end_bx
                        .type            n125_setexit_test_bx, @function
n125_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_242_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_242_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_242_61:
.Lsetexit_test_α_242_1:                                                       jmp   n126_statement_begin_α
                        .size            n125_setexit_test_bx, .-n125_setexit_test_bx
                        .type            n126_statement_begin_bx, @function
n126_statement_begin_bx:
.Lstatement_begin_α_243_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_243_stno
                        .long            10
                        .long            34
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n126_statement_begin_α:                                                       jmp   n127_lit_name_α
n126_statement_begin_β:                                                       jmp   n132_setexit_test_α
                        .size            n126_statement_begin_bx, .-n126_statement_begin_bx
                        .type            n127_lit_name_bx, @function
n127_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_name_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_245_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n128_lit_integer_α
.Llit_name_α_245_0:     .quad            .Llit_name_α_245_0_s
.Llit_name_α_245_0_s:   .string          "INPUT"
                        .size            n127_lit_name_bx, .-n127_lit_name_bx
                        .type            n128_lit_integer_bx, @function
n128_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_246_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_lit_string_α
n128_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n126_statement_begin_β
.Llit_integer_α_246_0:  .quad            9
                        .size            n128_lit_integer_bx, .-n128_lit_integer_bx
                        .type            n129_lit_string_bx, @function
n129_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_247_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n130_call_α
n129_lit_string_β:      add              rsp, 16;                             jmp   n128_lit_integer_β
.Llit_string_α_247_0:   .quad            .Llit_string_α_247_0_s
.Llit_string_α_247_0_s: .string          "[-f0 -r4194304]"
                        .size            n129_lit_string_bx, .-n129_lit_string_bx
                        .type            n130_call_bx, @function
n130_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_α_bynamefnzd94:  .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd94]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 360448
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl_sn4@PLT
.Lgcsite_main_22:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_23:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_248_240
                        add              rsp, 16;                             jmp   n129_lit_string_β
.Lcall_α_248_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n131_statement_end_α
n130_call_β:            add              rsp, 16;                             jmp   n129_lit_string_β
                        .size            n130_call_bx, .-n130_call_bx
                        .type            n131_statement_end_bx, @function
n131_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_end_α:   add              rsp, 64;                             jmp   n133_statement_begin_α
                        .size            n131_statement_end_bx, .-n131_statement_end_bx
                        .type            n132_setexit_test_bx, @function
n132_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_251_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_251_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_251_61:
.Lsetexit_test_α_251_1:                                                       jmp   n133_statement_begin_α
                        .size            n132_setexit_test_bx, .-n132_setexit_test_bx
                        .type            n133_statement_begin_bx, @function
n133_statement_begin_bx:
.Lstatement_begin_α_252_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_252_stno
                        .long            11
                        .long            35
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         src            =  INPUT                          :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n133_statement_begin_α:                                                       jmp   n134_var_α
n133_statement_begin_β:                                                       jmp   n137_setexit_test_α
                        .size            n133_statement_begin_bx, .-n133_statement_begin_bx
                        .type            n134_var_bx, @function
n134_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lvar_α_254_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
.Lgcsite_main_25:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_254_240
                        add              rsp, 16;                             jmp   n133_statement_begin_β
.Lvar_α_254_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_var_global.cpp:72
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_24:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n135_assign_α
.Lvar_α_254_0:          .quad            .Lvar_α_254_0_s
.Lvar_α_254_0_s:        .string          "INPUT"
                        .size            n134_var_bx, .-n134_var_bx
                        .type            n135_assign_bx, @function
n135_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # src
                        mov              qword ptr [r9 + 136], rdx;           jmp   n136_statement_end_α
                        .size            n135_assign_bx, .-n135_assign_bx
                        .type            n136_statement_end_bx, @function
n136_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_end_α:   add              rsp, 16;                             jmp   n138_statement_begin_α
                        .size            n136_statement_end_bx, .-n136_statement_end_bx
                        .type            n137_setexit_test_bx, @function
n137_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_258_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_258_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_258_61:
.Lsetexit_test_α_258_1:                                                       jmp   n155_statement_begin_α
                        .size            n137_setexit_test_bx, .-n137_setexit_test_bx
                        .type            n138_statement_begin_bx, @function
n138_statement_begin_bx:
.Lstatement_begin_α_259_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_259_stno
                        .long            12
                        .long            36
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         src            C                                 :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 36 0
n138_statement_begin_α:                                                       jmp   n139_var_α
n138_statement_begin_β:                                                       jmp   n146_setexit_test_α
                        .size            n138_statement_begin_bx, .-n138_statement_begin_bx
                        .type            n139_var_bx, @function
n139_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # src
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_var_α
                        .size            n139_var_bx, .-n139_var_bx
                        .type            n140_var_bx, @function
n140_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # C
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_assign_α
n140_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n146_setexit_test_α
                        .size            n140_var_bx, .-n140_var_bx
                        .type            n141_assign_bx, @function
n141_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # PATV$0
                        mov              qword ptr [r9 + 152], rdx;           jmp   n142_match_begin_α
n141_assign_β:                                                                jmp   n140_var_β
                        .size            n141_assign_bx, .-n141_assign_bx
                        .type            n142_match_begin_bx, @function
n142_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_match_begin_α:     mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
.Lgcsite_main_29:       push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 56
                        mov              rax, qword ptr [rip + Σ@GOTPCREL]
                        mov              rax, qword ptr [rax]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              ecx, dword ptr [rcx + 0]
                        mov              dword ptr [rbp + -88], 2
                        mov              dword ptr [rbp + -84], ecx
                        mov              qword ptr [rbp + -80], rax
                        neg              rax
                        mov              qword ptr [rbp + -72], rax
                        call             qword ptr [rip + rt_match_enter@GOTPCREL]
.Lgcsite_main_28:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], edx
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_27:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0               # cas_mark
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_265_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_265_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n143_match_defer_α
n142_match_begin_β:
.Lmatch_begin_α_265_13: lea              rsp, [rbp + -88]                     # retry_whack
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_β_265_1
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_265_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_265_1
                                                                              jmp   .Lmatch_begin_α_265_0
.Lmatch_begin_β_265_1:
.Lmatch_begin_γ_142_af:
.Lmatch_begin_ω_142_af: mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        lea              rdx, [rbp + -88]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
.Lgcsite_main_26:       mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              r13, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n141_assign_β
                        .size            n142_match_begin_bx, .-n142_match_begin_bx
                        .type            n143_match_defer_bx, @function
n143_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_match_defer_α:     mov              rax, qword ptr [r9 + 144]            # PATV$0
                        mov              rdx, qword ptr [r9 + 152]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_266_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_266_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
.Lgcsite_main_45:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_match_defer.cpp:149
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_44:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdx, qword ptr [r9 + 152];           jmp   .Lmatch_defer_α_266_10
.Lmatch_defer_α_266_9:  xor              eax, eax
.Lmatch_defer_α_266_10: test             rax, rax;                            jz    .Lmatch_defer_α_266_0
.Lmatch_defer_α_266_48: mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_266_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_266_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_266_4:                                                        jmp   n144_match_end_α
.Lmatch_defer_α_266_5:  cmp              r14d, -2;                            je    .Lmatch_begin_ω_142_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_142_af
                                                                              jmp   n142_match_begin_β
.Lmatch_defer_α_266_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [r9 + 144]                      # PATV$0
                        xor              esi, esi
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open_cell@PLT
.Lgcsite_main_43:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_266_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_266_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_42:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_266_2:  test             rax, rax;                            je    .Lmatch_defer_α_266_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_266_40
                        sub              rsp, 64
                        mov              qword ptr [rsp + 56], r12
                        mov              qword ptr [rsp + 48], rbx
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rcx, rdx
                        and              rcx, 255
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_266_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_266_141
                        lea              rcx, [rip + .Lmatch_defer_α_266_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_266_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_266_42]
                        lea              rdx, [rip + .Lmatch_defer_α_266_43]; jmp   rax
.Lmatch_defer_α_266_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_266_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_266_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_266_44:
.Lgcsite_main_41:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_266_46
.Lmatch_defer_α_266_45:
.Lgcsite_main_40:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_266_47
.Lmatch_defer_α_266_42:
.Lgcsite_main_39:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_266_46
.Lmatch_defer_α_266_43:
.Lgcsite_main_38:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_266_47
.Lmatch_defer_α_266_141:
                        lea              rcx, [rip + .Lmatch_defer_α_266_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_266_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_266_142]
                        lea              rdx, [rip + .Lmatch_defer_α_266_143]
                                                                              jmp   rax
.Lmatch_defer_α_266_142:
.Lgcsite_main_37:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_266_46
.Lmatch_defer_α_266_143:
.Lgcsite_main_36:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_266_47
.Lmatch_defer_α_266_46: mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_main_35:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_266_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_266_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_34:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_266_2
.Lmatch_defer_α_266_47: mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_main_33:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_266_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_266_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_32:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_266_2
.Lmatch_defer_α_266_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_266_48
.Lmatch_defer_α_266_3:  mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              edi, r14d
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_main_31:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_30:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_266_49: cmp              r14d, -2;                            je    .Lmatch_begin_ω_142_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_142_af
                        test             eax, eax;                            js    n142_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_266_6]
                        push             rcx
                        push             rax;                                 jmp   n144_match_end_α
.Lmatch_defer_α_266_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n142_match_begin_β
n143_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_266_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_266_12
                                                                              jmp   rax
.Lmatch_defer_β_266_12:                                                       jmp   qword ptr [rsp]
                        .size            n143_match_defer_bx, .-n143_match_defer_bx
                        .type            n144_match_end_bx, @function
n144_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_match_end_α:       mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_142_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rsi, r12
                        mov              rdx, r13
                        call             qword ptr [rip + rt_dcap_end_ok_open@GOTPCREL]
.Lgcsite_main_60:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_59:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:
.Lmatch_end_α_268_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_268_2
                        sub              rsp, 64
                        mov              qword ptr [rsp + 56], r12
                        mov              qword ptr [rsp + 48], rbx
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rcx, rdx
                        and              rcx, 255
                        cmp              rcx, 2;                              je    .Lmatch_end_α_268_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_268_120
                        lea              rcx, [rip + .Lmatch_end_α_268_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_268_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_268_21]
                        lea              rdx, [rip + .Lmatch_end_α_268_22];   jmp   rax
.Lmatch_end_α_268_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_268_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_268_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_268_23:
.Lgcsite_main_58:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_268_8
.Lmatch_end_α_268_24:
.Lgcsite_main_57:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_268_9
.Lmatch_end_α_268_21:
.Lgcsite_main_56:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_268_8
.Lmatch_end_α_268_22:
.Lgcsite_main_55:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_268_9
.Lmatch_end_α_268_120:  lea              rcx, [rip + .Lmatch_end_α_268_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_268_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_268_121]
                        lea              rdx, [rip + .Lmatch_end_α_268_122];  jmp   rax
.Lmatch_end_α_268_121:
.Lgcsite_main_54:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_268_8
.Lmatch_end_α_268_122:
.Lgcsite_main_53:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_268_9
.Lmatch_end_α_268_8:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_land_γ@PLT
.Lgcsite_main_52:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_51:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_268_1
.Lmatch_end_α_268_9:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_land_ω@PLT
.Lgcsite_main_50:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_49:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_268_1
.Lmatch_end_α_268_2:    mov              qword ptr [rsp + 0], rax
                        call             qword ptr [rip + rt_dcap_end_ok_close@GOTPCREL]
.Lgcsite_main_48:       mov              rdi, qword ptr [rbp + -16]           # outer_Σ
                        mov              rsi, qword ptr [rbp + -32]           # outer_Δ
                        lea              rdx, [rbp + -88]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
.Lgcsite_main_47:       mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              rax, qword ptr [rsp + 0]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        test             rax, rax;                            je    .Lmatch_end_α_268_13
                                                                              jmp   .Lmatch_begin_ω_142_af
.Lmatch_end_α_268_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp
.Lgcsite_main_46:                                                             jmp   n145_statement_end_α
                        .size            n144_match_end_bx, .-n144_match_end_bx
                        .type            n145_statement_end_bx, @function
n145_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_end_α:   add              rsp, 32;                             jmp   n147_statement_begin_α
                        .size            n145_statement_end_bx, .-n145_statement_end_bx
                        .type            n146_setexit_test_bx, @function
n146_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_271_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_271_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_271_61:
.Lsetexit_test_α_271_1:                                                       jmp   n155_statement_begin_α
                        .size            n146_setexit_test_bx, .-n146_setexit_test_bx
                        .type            n147_statement_begin_bx, @function
n147_statement_begin_bx:
.Lstatement_begin_α_272_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_272_stno
                        .long            13
                        .long            37
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         OUTPUT         =  'matched bytes=' SIZE(src)      :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n147_statement_begin_α:                                                       jmp   n148_lit_string_α
n147_statement_begin_β:                                                       jmp   n154_setexit_test_α
                        .size            n147_statement_begin_bx, .-n147_statement_begin_bx
                        .type            n148_lit_string_bx, @function
n148_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_274_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n149_var_α
.Llit_string_α_274_0:   .quad            .Llit_string_α_274_0_s
.Llit_string_α_274_0_s: .string          "matched bytes="
                        .size            n148_lit_string_bx, .-n148_lit_string_bx
                        .type            n149_var_bx, @function
n149_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # src
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n150_call_α
n149_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n147_statement_begin_β
                        .size            n149_var_bx, .-n149_var_bx
                        .type            n150_call_bx, @function
n150_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd277:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd277]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
.Lgcsite_main_61:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_62:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_276_240
                        add              rsp, 16;                             jmp   n149_var_β
.Lcall_α_276_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n151_binop_α
n150_call_β:            add              rsp, 16;                             jmp   n149_var_β
                        .size            n150_call_bx, .-n150_call_bx
                        .type            n151_binop_bx, @function
n151_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             sno_concat_d@PLT
.Lgcsite_main_64:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_63:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_278_240
                        add              rsp, 32;                             jmp   n149_var_β
.Lbinop_α_278_240:                                                            jmp   n152_assign_α
n151_binop_β:           add              rsp, 32;                             jmp   n149_var_β
                        .size            n151_binop_bx, .-n151_binop_bx
                        .type            n152_assign_bx, @function
n152_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_279_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
.Lgcsite_main_66:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_65:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n153_statement_end_α
.Lassign_α_279_0:       .quad            .Lassign_α_279_0_s
.Lassign_α_279_0_s:     .string          "OUTPUT"
                        .size            n152_assign_bx, .-n152_assign_bx
                        .type            n153_statement_end_bx, @function
n153_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_end_α:   add              rsp, 64;                             jmp   main_γ
                        .size            n153_statement_end_bx, .-n153_statement_end_bx
                        .type            n154_setexit_test_bx, @function
n154_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_282_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_282_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_282_61:
.Lsetexit_test_α_282_1:                                                       jmp   main_γ
                        .size            n154_setexit_test_bx, .-n154_setexit_test_bx
                        .type            n155_statement_begin_bx, @function
n155_statement_begin_bx:
.Lstatement_begin_α_283_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_283_stno
                        .long            14
                        .long            38
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# fail    OUTPUT         =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 38 0
n155_statement_begin_α:                                                       jmp   n156_lit_string_α
n155_statement_begin_β:                                                       jmp   n159_setexit_test_α
                        .size            n155_statement_begin_bx, .-n155_statement_begin_bx
                        .type            n156_lit_string_bx, @function
n156_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_285_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_assign_α
.Llit_string_α_285_0:   .quad            .Llit_string_α_285_0_s
.Llit_string_α_285_0_s: .string          "Pattern match failed"
                        .size            n156_lit_string_bx, .-n156_lit_string_bx
                        .type            n157_assign_bx, @function
n157_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_286_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
.Lgcsite_main_68:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_67:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n158_statement_end_α
.Lassign_α_286_0:       .quad            .Lassign_α_286_0_s
.Lassign_α_286_0_s:     .string          "OUTPUT"
                        .size            n157_assign_bx, .-n157_assign_bx
                        .type            n158_statement_end_bx, @function
n158_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_end_α:   add              rsp, 16;                             jmp   main_γ
                        .size            n158_statement_end_bx, .-n158_statement_end_bx
                        .type            n159_setexit_test_bx, @function
n159_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_289_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_289_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_289_61:
.Lsetexit_test_α_289_1:                                                       jmp   main_γ
                        .size            n159_setexit_test_bx, .-n159_setexit_test_bx
                        .type            n160_goto_bx, @function
n160_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_goto_α:                                                                  jmp   n155_statement_begin_α
n160_goto_β:                                                                  jmp   main_ω
                        .size            n160_goto_bx, .-n160_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        call             sno_setexit_fire_on_end@PLT
.Lgcsite_main_71:       push             rax                                  # gc_poll bb_glue_flat.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_70:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      xor              edi, edi
                        call             exit@PLT
.Lgcsite_main_69:
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
.Lgcsite_main_72:
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            5842501979482
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            1344
                        .quad            5
                        .quad            1161084278931456
                        .quad            8800387990560
                        .quad            17600775980072
                        .quad            79169132168248
                        .quad            211106232534144
.Lgcmap_main_s:         .string          "main"
.Lgcsites_main_7:       .quad            73
                        .quad            .Lgcmap_main
                        .quad            0
                        .quad            .Lgcsite_main_0
                        .quad            68719476737
                        .quad            .Lgcsite_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_2
                        .quad            137438953473
                        .quad            .Lgcsite_main_3
                        .quad            274877906945
                        .quad            .Lgcsite_main_4
                        .quad            206158430209
                        .quad            .Lgcsite_main_5
                        .quad            343597383681
                        .quad            .Lgcsite_main_6
                        .quad            206158430209
                        .quad            .Lgcsite_main_7
                        .quad            343597383681
                        .quad            .Lgcsite_main_8
                        .quad            481036337153
                        .quad            .Lgcsite_main_9
                        .quad            618475290625
                        .quad            .Lgcsite_main_10
                        .quad            343597383681
                        .quad            .Lgcsite_main_11
                        .quad            481036337153
                        .quad            .Lgcsite_main_12
                        .quad            481036337153
                        .quad            .Lgcsite_main_13
                        .quad            618475290625
                        .quad            .Lgcsite_main_14
                        .quad            481036337153
                        .quad            .Lgcsite_main_15
                        .quad            618475290625
                        .quad            .Lgcsite_main_16
                        .quad            206158430209
                        .quad            .Lgcsite_main_17
                        .quad            343597383681
                        .quad            .Lgcsite_main_18
                        .quad            481036337153
                        .quad            .Lgcsite_main_19
                        .quad            618475290625
                        .quad            .Lgcsite_main_20
                        .quad            137438953473
                        .quad            .Lgcsite_main_21
                        .quad            137438953473
                        .quad            .Lgcsite_main_22
                        .quad            481036337153
                        .quad            .Lgcsite_main_23
                        .quad            618475290625
                        .quad            .Lgcsite_main_24
                        .quad            68719476737
                        .quad            .Lgcsite_main_25
                        .quad            68719476737
                        .quad            .Lgcsite_main_26
                        .quad            137439346945
                        .quad            .Lgcsite_main_27
                        .quad            137439346945
                        .quad            .Lgcsite_main_28
                        .quad            137439346945
                        .quad            .Lgcsite_main_29
                        .quad            137438953476
                        .quad            .Lgcsite_main_30
                        .quad            137439346945
                        .quad            .Lgcsite_main_31
                        .quad            137439346945
                        .quad            .Lgcsite_main_32
                        .quad            137439346945
                        .quad            .Lgcsite_main_33
                        .quad            137439346945
                        .quad            .Lgcsite_main_34
                        .quad            137439346945
                        .quad            .Lgcsite_main_35
                        .quad            137439346945
                        .quad            .Lgcsite_main_36
                        .quad            137439346946
                        .quad            .Lgcsite_main_37
                        .quad            137439346946
                        .quad            .Lgcsite_main_38
                        .quad            137439346946
                        .quad            .Lgcsite_main_39
                        .quad            137439346946
                        .quad            .Lgcsite_main_40
                        .quad            137439346946
                        .quad            .Lgcsite_main_41
                        .quad            137439346946
                        .quad            .Lgcsite_main_42
                        .quad            137439346945
                        .quad            .Lgcsite_main_43
                        .quad            137439346945
                        .quad            .Lgcsite_main_44
                        .quad            137439346945
                        .quad            .Lgcsite_main_45
                        .quad            137439346945
                        .quad            .Lgcsite_main_46
                        .quad            137438953477
                        .quad            .Lgcsite_main_47
                        .quad            137439346945
                        .quad            .Lgcsite_main_48
                        .quad            137439346945
                        .quad            .Lgcsite_main_49
                        .quad            137439346945
                        .quad            .Lgcsite_main_50
                        .quad            137439346945
                        .quad            .Lgcsite_main_51
                        .quad            137439346945
                        .quad            .Lgcsite_main_52
                        .quad            137439346945
                        .quad            .Lgcsite_main_53
                        .quad            137439346946
                        .quad            .Lgcsite_main_54
                        .quad            137439346946
                        .quad            .Lgcsite_main_55
                        .quad            137439346946
                        .quad            .Lgcsite_main_56
                        .quad            137439346946
                        .quad            .Lgcsite_main_57
                        .quad            137439346946
                        .quad            .Lgcsite_main_58
                        .quad            137439346946
                        .quad            .Lgcsite_main_59
                        .quad            137439346945
                        .quad            .Lgcsite_main_60
                        .quad            137439346945
                        .quad            .Lgcsite_main_61
                        .quad            274877906945
                        .quad            .Lgcsite_main_62
                        .quad            412316860417
                        .quad            .Lgcsite_main_63
                        .quad            274877906945
                        .quad            .Lgcsite_main_64
                        .quad            274877906945
                        .quad            .Lgcsite_main_65
                        .quad            343597383681
                        .quad            .Lgcsite_main_66
                        .quad            274877906945
                        .quad            .Lgcsite_main_67
                        .quad            137438953473
                        .quad            .Lgcsite_main_68
                        .quad            68719476737
                        .quad            .Lgcsite_main_69
                        .quad            1
                        .quad            .Lgcsite_main_70
                        .quad            1
                        .quad            .Lgcsite_main_71
                        .quad            1
                        .quad            .Lgcsite_main_72
                        .quad            1
module_init:
                        sub              rsp, 8
                        add              rsp, 8
                        ret
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            6
                        .quad            .Lgcmap_PAT$2
                        .quad            .Lgcmap_PAT$3
                        .quad            .Lgcmap_PAT$4
                        .quad            .Lgcmap_PAT$5
                        .quad            .Lgcmap_PAT$6
                        .quad            .Lgcmap_main
                        .align           8
__gc_frame_sites:       .quad            6
                        .quad            .Lgcsites_PAT$2_2
                        .quad            .Lgcsites_PAT$3_3
                        .quad            .Lgcsites_PAT$4_4
                        .quad            .Lgcsites_PAT$5_5
                        .quad            .Lgcsites_PAT$6_6
                        .quad            .Lgcsites_main_7
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
.C1:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
