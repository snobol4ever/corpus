                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/calculator/calculator-2-match-fence.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_.LTp0_0:
.LTp0:
.LTp0_α_body:
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
                        cmp              eax, r15d;                           jge   .LTp0_ω
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    .LTp0_ω
                        add              r14d, 1;                             jmp   .LTp0_γ
n0_match_any_β:         sub              r14d, 1;                             jmp   .LTp0_ω
                        .size            n0_match_any_bx, .-n0_match_any_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_res:
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_β:
                                                                              jmp   n0_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_γ:
                        mov              rdx, qword ptr [rsp + 40]
                        mov              rcx, qword ptr [rsp + 32]
                        sub              rsp, 8
                        push             rdx
                        push             rcx
                        lea              rax, [rip + .LTp0_res]
                        push             rax;                                 jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_ω:
                        mov              r12, qword ptr [rsp + 8]
                        add              rsp, 32
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp0:            .quad            .LTp0
                        .long            48, 1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_.LTp1_1:
.LTp1:
.LTp1_α_body:
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
                        add              rsp, 16;                             jmp   .LTp1_ω
.Lmatch_span_α_5_240:   mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   .LTp1_γ
n3_match_span_β:        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   .LTp1_ω
                        .size            n3_match_span_bx, .-n3_match_span_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp1_res:
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp1_β:
                                                                              jmp   n3_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
.LTp1_γ:
                        mov              rdx, qword ptr [rsp + 56]
                        mov              rcx, qword ptr [rsp + 48]
                        sub              rsp, 8
                        push             rdx
                        push             rcx
                        lea              rax, [rip + .LTp1_res]
                        push             rax;                                 jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.LTp1_ω:
                        mov              r12, qword ptr [rsp + 8]
                        add              rsp, 32
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp1:            .quad            .LTp1
                        .long            32, 1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_.LTp2_2:
.LTp2:
.LTp2_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 136
                        lea              rax, [rip + .Lgcmap_.LTp2]
                        mov              qword ptr [rbp + -128], rax
                        mov              dword ptr [rbp + -136], 160
                        mov              dword ptr [rbp + -132], 136
                        xorps            xmm0, xmm0
                        movups           xmmword ptr [rbp + -120], xmm0
                        movups           xmmword ptr [rbp + -104], xmm0
                        movups           xmmword ptr [rbp + -88], xmm0
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -32], 8
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -40], r12
                        .type            n6_match_fence1_bx, @function
n6_match_fence1_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_match_fence1_α:      mov              qword ptr [rbp + -80], rsp
                        mov              qword ptr [rbp + -72], r12
                        mov              qword ptr [rbp + -64], 0
                        mov              dword ptr [rbp + -60], r14d
                        sub              rsp, 0;                              jmp   n7_match_alternate_α
.Lmatch_fence1_γ_6_as:  add              rsp, 0
                        mov              rsp, qword ptr [rbp + -80];          jmp   .LTp2_γ
.Lmatch_fence1_γ_6_af:
.Lmatch_fence1_ω_6_af:  add              rsp, 0
n6_match_fence1_β:      mov              r12, qword ptr [rbp + -72]
                        mov              r14d, dword ptr [rbp + -60]
                        mov              rsp, qword ptr [rbp + -80];          jmp   .LTp2_ω
                        .size            n6_match_fence1_bx, .-n6_match_fence1_bx
                        .type            n7_match_alternate_bx, @function
n7_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_match_alternate_α:   mov              dword ptr [rbp + -112], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_16_21]
                        mov              qword ptr [rbp + -96], rax;          jmp   n12_match_defer_α
.Lmatch_alternate_α_16_21:
                        lea              rax, [rip + .Lmatch_alternate_α_16_22]
                        mov              qword ptr [rbp + -96], rax;          jmp   n11_match_defer_α
.Lmatch_alternate_α_16_22:
                        lea              rax, [rip + .Lmatch_alternate_α_16_19]
                        mov              qword ptr [rbp + -96], rax;          jmp   n8_match_lit_α
.Lmatch_alternate_γ_7_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_16_40]
                        mov              qword ptr [rbp + -104], rax;         jmp   .Lmatch_alternate_γ_7_as
.Lmatch_alternate_γ_7_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_16_41]
                        mov              qword ptr [rbp + -104], rax;         jmp   .Lmatch_alternate_γ_7_as
.Lmatch_alternate_γ_7_s2:
                        lea              rax, [rip + .Lmatch_alternate_α_16_42]
                        mov              qword ptr [rbp + -104], rax;         jmp   .Lmatch_alternate_γ_7_as
.Lmatch_alternate_α_16_40:
                                                                              jmp   n12_match_defer_β
.Lmatch_alternate_α_16_41:
                                                                              jmp   n11_match_defer_β
.Lmatch_alternate_α_16_42:
                                                                              jmp   n10_match_lit_β
.Lmatch_alternate_γ_7_as:
                                                                              jmp   .Lmatch_fence1_γ_6_as
n7_match_alternate_β:   mov              rax, qword ptr [rbp + -104];         jmp   rax
.Lmatch_alternate_γ_7_af:
.Lmatch_alternate_ω_7_af:
                        mov              r14d, dword ptr [rbp + -112]
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
.Lmatch_alternate_α_16_19:
                                                                              jmp   .Lmatch_fence1_ω_6_af
                        .size            n7_match_alternate_bx, .-n7_match_alternate_bx
                        .type            n8_match_lit_bx, @function
n8_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_match_lit_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_7_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   .Lmatch_alternate_ω_7_af
                        add              r14d, 1;                             jmp   n9_match_defer_α
n8_match_lit_β:         sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_7_af
                        .size            n8_match_lit_bx, .-n8_match_lit_bx
                        .type            n9_match_defer_bx, @function
n9_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_match_defer_α:       mov              rax, qword ptr [r9 + 80]             # X
                        mov              rdx, qword ptr [r9 + 88]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_19_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_19_10
                        mov              rdi, rdx                             # headv
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp2_17:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:116
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp2_16:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 88];            jmp   .Lmatch_defer_α_19_10
.Lmatch_defer_α_19_9:   xor              eax, eax
.Lmatch_defer_α_19_10:  test             rax, rax;                            jz    .Lmatch_defer_α_19_0
.Lmatch_defer_α_19_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_19_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_19_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_19_4:
.Lgcsite_.LTp2_15:                                                            jmp   n10_match_lit_α
.Lmatch_defer_α_19_5:
.Lgcsite_.LTp2_14:                                                            jmp   n8_match_lit_β
.Lmatch_defer_α_19_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        lea              rdi, [r9 + 80]                       # X
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_defer_open_cell@PLT
.Lgcsite_.LTp2_13:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_12:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        and              rcx, 63
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
.Lgcsite_.LTp2_11:      add              rsp, 48
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
.Lgcsite_.LTp2_10:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_19_47
.Lmatch_defer_α_19_42:
.Lgcsite_.LTp2_9:       add              rsp, 16
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
.Lgcsite_.LTp2_8:       add              rsp, 16
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
.Lgcsite_.LTp2_7:       add              rsp, 0
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
.Lgcsite_.LTp2_6:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_19_47
.Lmatch_defer_α_19_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp2_5:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_4:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_19_2
.Lmatch_defer_α_19_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp2_3:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_2:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_19_2
.Lmatch_defer_α_19_40:  add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_19_48
.Lmatch_defer_α_19_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp2_1:       add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
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
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_0:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_19_49:  test             eax, eax;                            js    n8_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_19_6]
                        push             rcx
                        push             rax;                                 jmp   n10_match_lit_α
.Lmatch_defer_α_19_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n8_match_lit_β
n9_match_defer_β:       cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_19_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_19_12
                                                                              jmp   rax
.Lmatch_defer_β_19_12:                                                        jmp   qword ptr [rsp]
                        .size            n9_match_defer_bx, .-n9_match_defer_bx
                        .type            n10_match_lit_bx, @function
n10_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n9_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n9_match_defer_β
                        add              r14d, 1;                             jmp   .Lmatch_alternate_γ_7_s2
n10_match_lit_β:        sub              r14d, 1;                             jmp   n9_match_defer_β
                        .size            n10_match_lit_bx, .-n10_match_lit_bx
                        .type            n11_match_defer_bx, @function
n11_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_22_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_22_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_22_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_22_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_22_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_22_18
.Lmatch_defer_α_22_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp2_35:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_22_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_22_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_34:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_22_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_22_16:
.Lmatch_defer_α_22_18:  test             rax, rax;                            jz    .Lmatch_defer_α_22_0
.Lmatch_defer_α_22_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_22_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_22_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_22_4:
.Lgcsite_.LTp2_33:                                                            jmp   .Lmatch_alternate_γ_7_s1
.Lmatch_defer_α_22_5:
.Lgcsite_.LTp2_32:                                                            jmp   .Lmatch_alternate_ω_7_af
.Lmatch_defer_α_22_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp2_31:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_22_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_22_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_30:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_22_2:   test             rax, rax;                            je    .Lmatch_defer_α_22_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_22_40
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
                        and              rcx, 63
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_22_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_22_141
                        lea              rcx, [rip + .Lmatch_defer_α_22_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_22_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_22_42]
                        lea              rdx, [rip + .Lmatch_defer_α_22_43];  jmp   rax
.Lmatch_defer_α_22_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_22_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_22_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_22_44:
.Lgcsite_.LTp2_29:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_22_46
.Lmatch_defer_α_22_45:
.Lgcsite_.LTp2_28:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_22_47
.Lmatch_defer_α_22_42:
.Lgcsite_.LTp2_27:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_22_46
.Lmatch_defer_α_22_43:
.Lgcsite_.LTp2_26:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_22_47
.Lmatch_defer_α_22_141: lea              rcx, [rip + .Lmatch_defer_α_22_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_22_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_22_142]
                        lea              rdx, [rip + .Lmatch_defer_α_22_143]; jmp   rax
.Lmatch_defer_α_22_142:
.Lgcsite_.LTp2_25:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_22_46
.Lmatch_defer_α_22_143:
.Lgcsite_.LTp2_24:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_22_47
.Lmatch_defer_α_22_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp2_23:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_22_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_22_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_22:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_22_2
.Lmatch_defer_α_22_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp2_21:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_22_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_22_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_20:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_22_2
.Lmatch_defer_α_22_40:  add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_22_48
.Lmatch_defer_α_22_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp2_19:      add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
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
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_18:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_22_49:  test             eax, eax;                            js    .Lmatch_alternate_ω_7_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_22_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_7_s1
.Lmatch_defer_α_22_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_7_af
n11_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_22_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_22_12
                                                                              jmp   rax
.Lmatch_defer_β_22_12:                                                        jmp   qword ptr [rsp]
                        .size            n11_match_defer_bx, .-n11_match_defer_bx
                        .type            n12_match_defer_bx, @function
n12_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_23_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_23_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_23_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_23_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_23_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_23_18
.Lmatch_defer_α_23_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp2_53:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_23_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_23_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_52:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_23_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_23_16:
.Lmatch_defer_α_23_18:  test             rax, rax;                            jz    .Lmatch_defer_α_23_0
.Lmatch_defer_α_23_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_23_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_23_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_23_4:
.Lgcsite_.LTp2_51:                                                            jmp   .Lmatch_alternate_γ_7_s0
.Lmatch_defer_α_23_5:
.Lgcsite_.LTp2_50:                                                            jmp   .Lmatch_alternate_ω_7_af
.Lmatch_defer_α_23_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp2_49:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_23_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_23_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_48:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_23_2:   test             rax, rax;                            je    .Lmatch_defer_α_23_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_23_40
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
                        and              rcx, 63
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_23_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_23_141
                        lea              rcx, [rip + .Lmatch_defer_α_23_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_23_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_23_42]
                        lea              rdx, [rip + .Lmatch_defer_α_23_43];  jmp   rax
.Lmatch_defer_α_23_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_23_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_23_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_23_44:
.Lgcsite_.LTp2_47:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_23_46
.Lmatch_defer_α_23_45:
.Lgcsite_.LTp2_46:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_23_47
.Lmatch_defer_α_23_42:
.Lgcsite_.LTp2_45:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_23_46
.Lmatch_defer_α_23_43:
.Lgcsite_.LTp2_44:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_23_47
.Lmatch_defer_α_23_141: lea              rcx, [rip + .Lmatch_defer_α_23_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_23_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_23_142]
                        lea              rdx, [rip + .Lmatch_defer_α_23_143]; jmp   rax
.Lmatch_defer_α_23_142:
.Lgcsite_.LTp2_43:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_23_46
.Lmatch_defer_α_23_143:
.Lgcsite_.LTp2_42:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_23_47
.Lmatch_defer_α_23_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp2_41:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_23_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_23_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_40:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_23_2
.Lmatch_defer_α_23_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp2_39:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_23_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_23_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_38:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_23_2
.Lmatch_defer_α_23_40:  add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_23_48
.Lmatch_defer_α_23_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp2_37:      add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
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
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_36:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_23_49:  test             eax, eax;                            js    .Lmatch_alternate_ω_7_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_23_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_7_s0
.Lmatch_defer_α_23_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_7_af
n12_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_23_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_23_12
                                                                              jmp   rax
.Lmatch_defer_β_23_12:                                                        jmp   qword ptr [rsp]
                        .size            n12_match_defer_bx, .-n12_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp2_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp2_β:
                                                                              jmp   .LTp2_ω
#-----------------------------------------------------------------------------------------------------------------------
.LTp2_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + .LTp2_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.LTp2_ω:
                        mov              r12, qword ptr [rbp + -40]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_.LTp2:
                        .quad            585462009178
                        .quad            17179869208
                        .quad            0
                        .quad            136
                        .quad            15
                        .quad            8804682956680
                        .quad            8804682956688
                        .quad            8813272891288
                        .quad            8813272891296
                        .quad            8804682956712
                        .quad            17600775978928
                        .quad            17600775978944
                        .quad            8804682956752
                        .quad            8804682956760
                        .quad            17596481011680
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcsites_.LTp2_2:      .quad            54
                        .quad            .Lgcmap_.LTp2
                        .quad            9223653477471748104
                        .quad            .Lgccode_.LTp2_2
                        .quad            .Lgcsite_.LTp2_0
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_1
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_7
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_8
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_9
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_10
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_11
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_12
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_13
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_14
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_15
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_16
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_17
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_18
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_19
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_20
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_21
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_22
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_23
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_24
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_25
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_26
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_27
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_28
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_29
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_30
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_31
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_32
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_33
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_34
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_35
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_36
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_37
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_38
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_39
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_40
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_41
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_42
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_43
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_44
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_45
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_46
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_47
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_48
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_49
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_50
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_51
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_52
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_53
                        .quad            196609
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp2:            .quad            .LTp2
                        .long            192, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_.LTp3_3:
.LTp3:
.LTp3_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 136
                        lea              rax, [rip + .Lgcmap_.LTp3]
                        mov              qword ptr [rbp + -128], rax
                        mov              dword ptr [rbp + -136], 160
                        mov              dword ptr [rbp + -132], 136
                        xorps            xmm0, xmm0
                        movups           xmmword ptr [rbp + -120], xmm0
                        movups           xmmword ptr [rbp + -104], xmm0
                        movups           xmmword ptr [rbp + -88], xmm0
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -32], 8
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -40], r12
                        .type            n24_match_fence1_bx, @function
n24_match_fence1_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_match_fence1_α:     mov              qword ptr [rbp + -80], rsp
                        mov              qword ptr [rbp + -72], r12
                        mov              qword ptr [rbp + -64], 0
                        mov              dword ptr [rbp + -60], r14d
                        sub              rsp, 0;                              jmp   n25_match_alternate_α
.Lmatch_fence1_γ_24_as: add              rsp, 0
                        mov              rsp, qword ptr [rbp + -80];          jmp   .LTp3_γ
.Lmatch_fence1_γ_24_af:
.Lmatch_fence1_ω_24_af: add              rsp, 0
n24_match_fence1_β:     mov              r12, qword ptr [rbp + -72]
                        mov              r14d, dword ptr [rbp + -60]
                        mov              rsp, qword ptr [rbp + -80];          jmp   .LTp3_ω
                        .size            n24_match_fence1_bx, .-n24_match_fence1_bx
                        .type            n25_match_alternate_bx, @function
n25_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_match_alternate_α:  mov              dword ptr [rbp + -112], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_32_21]
                        mov              qword ptr [rbp + -96], rax;          jmp   n28_match_defer_α
.Lmatch_alternate_α_32_21:
                        lea              rax, [rip + .Lmatch_alternate_α_32_19]
                        mov              qword ptr [rbp + -96], rax;          jmp   n26_match_any_α
.Lmatch_alternate_γ_25_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_32_40]
                        mov              qword ptr [rbp + -104], rax;         jmp   .Lmatch_alternate_γ_25_as
.Lmatch_alternate_γ_25_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_32_41]
                        mov              qword ptr [rbp + -104], rax;         jmp   .Lmatch_alternate_γ_25_as
.Lmatch_alternate_α_32_40:
                                                                              jmp   n28_match_defer_β
.Lmatch_alternate_α_32_41:
                                                                              jmp   n27_match_defer_β
.Lmatch_alternate_γ_25_as:
                                                                              jmp   .Lmatch_fence1_γ_24_as
n25_match_alternate_β:  mov              rax, qword ptr [rbp + -104];         jmp   rax
.Lmatch_alternate_γ_25_af:
.Lmatch_alternate_ω_25_af:
                        mov              r14d, dword ptr [rbp + -112]
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
.Lmatch_alternate_α_32_19:
                                                                              jmp   .Lmatch_fence1_ω_24_af
                        .size            n25_match_alternate_bx, .-n25_match_alternate_bx
                        .type            n26_match_any_bx, @function
n26_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_25_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .Lmatch_any_α_34_0
                        cmp              esi, 45;                             je    .Lmatch_any_α_34_0
                                                                              jmp   .Lmatch_alternate_ω_25_af
.Lmatch_any_α_34_0:     add              r14d, 1;                             jmp   n27_match_defer_α
n26_match_any_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_25_af
                        .size            n26_match_any_bx, .-n26_match_any_bx
                        .type            n27_match_defer_bx, @function
n27_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_match_defer_α:      mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_35_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_35_10
                        mov              rdi, rdx                             # headv
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp3_17:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:116
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp3_16:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 56];            jmp   .Lmatch_defer_α_35_10
.Lmatch_defer_α_35_9:   xor              eax, eax
.Lmatch_defer_α_35_10:  test             rax, rax;                            jz    .Lmatch_defer_α_35_0
.Lmatch_defer_α_35_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_35_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_35_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_35_4:
.Lgcsite_.LTp3_15:                                                            jmp   .Lmatch_alternate_γ_25_s1
.Lmatch_defer_α_35_5:
.Lgcsite_.LTp3_14:                                                            jmp   n26_match_any_β
.Lmatch_defer_α_35_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        lea              rdi, [r9 + 48]                       # F
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_defer_open_cell@PLT
.Lgcsite_.LTp3_13:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_12:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        and              rcx, 63
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
.Lgcsite_.LTp3_11:      add              rsp, 48
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
.Lgcsite_.LTp3_10:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_35_47
.Lmatch_defer_α_35_42:
.Lgcsite_.LTp3_9:       add              rsp, 16
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
.Lgcsite_.LTp3_8:       add              rsp, 16
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
.Lgcsite_.LTp3_7:       add              rsp, 0
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
.Lgcsite_.LTp3_6:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_35_47
.Lmatch_defer_α_35_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp3_5:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_4:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_35_2
.Lmatch_defer_α_35_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp3_3:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_2:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_35_2
.Lmatch_defer_α_35_40:  add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_35_48
.Lmatch_defer_α_35_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp3_1:       add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
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
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_0:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_35_49:  test             eax, eax;                            js    n26_match_any_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_35_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_25_s1
.Lmatch_defer_α_35_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n26_match_any_β
n27_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_35_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_35_12
                                                                              jmp   rax
.Lmatch_defer_β_35_12:                                                        jmp   qword ptr [rsp]
                        .size            n27_match_defer_bx, .-n27_match_defer_bx
                        .type            n28_match_defer_bx, @function
n28_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_36_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_36_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_36_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_36_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_36_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_36_18
.Lmatch_defer_α_36_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp3_35:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_36_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_36_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_34:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_36_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_36_16:
.Lmatch_defer_α_36_18:  test             rax, rax;                            jz    .Lmatch_defer_α_36_0
.Lmatch_defer_α_36_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_36_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_36_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_36_4:
.Lgcsite_.LTp3_33:                                                            jmp   .Lmatch_alternate_γ_25_s0
.Lmatch_defer_α_36_5:
.Lgcsite_.LTp3_32:                                                            jmp   .Lmatch_alternate_ω_25_af
.Lmatch_defer_α_36_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp3_31:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_36_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_36_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_30:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_36_2:   test             rax, rax;                            je    .Lmatch_defer_α_36_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_36_40
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
                        and              rcx, 63
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_36_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_36_141
                        lea              rcx, [rip + .Lmatch_defer_α_36_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_36_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_36_42]
                        lea              rdx, [rip + .Lmatch_defer_α_36_43];  jmp   rax
.Lmatch_defer_α_36_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_36_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_36_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_36_44:
.Lgcsite_.LTp3_29:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_36_46
.Lmatch_defer_α_36_45:
.Lgcsite_.LTp3_28:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_36_47
.Lmatch_defer_α_36_42:
.Lgcsite_.LTp3_27:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_36_46
.Lmatch_defer_α_36_43:
.Lgcsite_.LTp3_26:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_36_47
.Lmatch_defer_α_36_141: lea              rcx, [rip + .Lmatch_defer_α_36_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_36_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_36_142]
                        lea              rdx, [rip + .Lmatch_defer_α_36_143]; jmp   rax
.Lmatch_defer_α_36_142:
.Lgcsite_.LTp3_25:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_36_46
.Lmatch_defer_α_36_143:
.Lgcsite_.LTp3_24:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_36_47
.Lmatch_defer_α_36_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp3_23:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_36_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_36_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_22:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_36_2
.Lmatch_defer_α_36_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp3_21:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_36_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_36_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_20:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_36_2
.Lmatch_defer_α_36_40:  add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_36_48
.Lmatch_defer_α_36_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp3_19:      add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
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
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_18:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_36_49:  test             eax, eax;                            js    .Lmatch_alternate_ω_25_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_36_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_25_s0
.Lmatch_defer_α_36_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_25_af
n28_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_36_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_36_12
                                                                              jmp   rax
.Lmatch_defer_β_36_12:                                                        jmp   qword ptr [rsp]
                        .size            n28_match_defer_bx, .-n28_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp3_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp3_β:
                                                                              jmp   .LTp3_ω
#-----------------------------------------------------------------------------------------------------------------------
.LTp3_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + .LTp3_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.LTp3_ω:
                        mov              r12, qword ptr [rbp + -40]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_.LTp3:
                        .quad            585462009178
                        .quad            17179869208
                        .quad            0
                        .quad            136
                        .quad            15
                        .quad            8804682956680
                        .quad            8804682956688
                        .quad            8813272891288
                        .quad            8813272891296
                        .quad            8804682956712
                        .quad            17600775978928
                        .quad            17600775978944
                        .quad            8804682956752
                        .quad            8804682956760
                        .quad            17596481011680
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcsites_.LTp3_3:      .quad            36
                        .quad            .Lgcmap_.LTp3
                        .quad            9223653477471748104
                        .quad            .Lgccode_.LTp3_3
                        .quad            .Lgcsite_.LTp3_0
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_1
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_7
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_8
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_9
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_10
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_11
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_12
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_13
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_14
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_15
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_16
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_17
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_18
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_19
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_20
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_21
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_22
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_23
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_24
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_25
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_26
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_27
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_28
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_29
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_30
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_31
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_32
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_33
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_34
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_35
                        .quad            196609
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp3:            .quad            .LTp3
                        .long            176, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_.LTp4_4:
.LTp4:
.LTp4_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 88
                        lea              rax, [rip + .Lgcmap_.LTp4]
                        mov              qword ptr [rbp + -80], rax
                        mov              dword ptr [rbp + -88], 160
                        mov              dword ptr [rbp + -84], 88
                        xorps            xmm0, xmm0
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -32], 8
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -40], r12
                        .type            n37_match_defer_bx, @function
n37_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_41_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_41_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_41_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_41_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_41_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_41_18
.Lmatch_defer_α_41_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp4_17:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_41_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_41_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_16:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_41_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_41_16:
.Lmatch_defer_α_41_18:  test             rax, rax;                            jz    .Lmatch_defer_α_41_0
.Lmatch_defer_α_41_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_41_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_41_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_41_4:
.Lgcsite_.LTp4_15:                                                            jmp   n38_match_arbno_α
.Lmatch_defer_α_41_5:
.Lgcsite_.LTp4_14:      add              rsp, 16;                             jmp   .LTp4_ω
.Lmatch_defer_α_41_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp4_13:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_41_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_41_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_12:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_41_2:   test             rax, rax;                            je    .Lmatch_defer_α_41_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_41_40
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
                        and              rcx, 63
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_41_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_41_141
                        lea              rcx, [rip + .Lmatch_defer_α_41_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_41_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_41_42]
                        lea              rdx, [rip + .Lmatch_defer_α_41_43];  jmp   rax
.Lmatch_defer_α_41_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_41_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_41_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_41_44:
.Lgcsite_.LTp4_11:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_41_46
.Lmatch_defer_α_41_45:
.Lgcsite_.LTp4_10:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_41_47
.Lmatch_defer_α_41_42:
.Lgcsite_.LTp4_9:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_41_46
.Lmatch_defer_α_41_43:
.Lgcsite_.LTp4_8:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_41_47
.Lmatch_defer_α_41_141: lea              rcx, [rip + .Lmatch_defer_α_41_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_41_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_41_142]
                        lea              rdx, [rip + .Lmatch_defer_α_41_143]; jmp   rax
.Lmatch_defer_α_41_142:
.Lgcsite_.LTp4_7:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_41_46
.Lmatch_defer_α_41_143:
.Lgcsite_.LTp4_6:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_41_47
.Lmatch_defer_α_41_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp4_5:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_41_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_41_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_4:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_41_2
.Lmatch_defer_α_41_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp4_3:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_41_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_41_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_2:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_41_2
.Lmatch_defer_α_41_40:  add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_41_48
.Lmatch_defer_α_41_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp4_1:       add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
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
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_0:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_41_49:  test             eax, eax;                            jns   .Lmatch_defer_α_41_240
                        add              rsp, 16;                             jmp   .LTp4_ω
.Lmatch_defer_α_41_240: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_41_6]
                        push             rcx
                        push             rax;                                 jmp   n38_match_arbno_α
.Lmatch_defer_α_41_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .LTp4_ω
n37_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_41_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_41_12
                                                                              jmp   rax
.Lmatch_defer_β_41_12:                                                        jmp   qword ptr [rsp]
                        .size            n37_match_defer_bx, .-n37_match_defer_bx
                        .type            n38_match_arbno_bx, @function
n38_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_match_arbno_α:      sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -64], rsp;          jmp   .LTp4_γ
n38_match_arbno_β:      mov              rax, qword ptr [rbp + -64]
                        mov              r12, qword ptr [rax + 8];            jmp   n39_match_any_α
.Lmatch_arbno_γ_38_as:  mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n40_match_defer_β
                        sub              rsp, 32
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rbp + -64], rsp;          jmp   .LTp4_γ
.Lmatch_arbno_γ_38_af:
.Lmatch_arbno_ω_38_af:  mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -64], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_43_3
                        lea              rsp, [rcx + 32];                     jmp   n40_match_defer_β
.Lmatch_arbno_β_43_3:   lea              rsp, [rcx + 32];                     jmp   n37_match_defer_β
                        .size            n38_match_arbno_bx, .-n38_match_arbno_bx
                        .type            n39_match_any_bx, @function
n39_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_arbno_ω_38_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 42;                             je    .Lmatch_any_α_45_0
                        cmp              esi, 47;                             je    .Lmatch_any_α_45_0
                                                                              jmp   .Lmatch_arbno_ω_38_af
.Lmatch_any_α_45_0:     add              r14d, 1;                             jmp   n40_match_defer_α
n39_match_any_β:        sub              r14d, 1;                             jmp   .Lmatch_arbno_ω_38_af
                        .size            n39_match_any_bx, .-n39_match_any_bx
                        .type            n40_match_defer_bx, @function
n40_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_46_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_46_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_46_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_46_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_46_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_46_18
.Lmatch_defer_α_46_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp4_35:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_46_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_46_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_34:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_46_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_46_16:
.Lmatch_defer_α_46_18:  test             rax, rax;                            jz    .Lmatch_defer_α_46_0
.Lmatch_defer_α_46_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_46_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_46_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_46_4:
.Lgcsite_.LTp4_33:                                                            jmp   .Lmatch_arbno_γ_38_as
.Lmatch_defer_α_46_5:
.Lgcsite_.LTp4_32:      cmp              r14d, -2;                            je    n38_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n38_match_arbno_β
                                                                              jmp   n39_match_any_β
.Lmatch_defer_α_46_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp4_31:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_46_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_46_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_30:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_46_2:   test             rax, rax;                            je    .Lmatch_defer_α_46_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_46_40
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
                        and              rcx, 63
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_46_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_46_141
                        lea              rcx, [rip + .Lmatch_defer_α_46_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_46_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_46_42]
                        lea              rdx, [rip + .Lmatch_defer_α_46_43];  jmp   rax
.Lmatch_defer_α_46_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_46_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_46_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_46_44:
.Lgcsite_.LTp4_29:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_46_46
.Lmatch_defer_α_46_45:
.Lgcsite_.LTp4_28:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_46_47
.Lmatch_defer_α_46_42:
.Lgcsite_.LTp4_27:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_46_46
.Lmatch_defer_α_46_43:
.Lgcsite_.LTp4_26:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_46_47
.Lmatch_defer_α_46_141: lea              rcx, [rip + .Lmatch_defer_α_46_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_46_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_46_142]
                        lea              rdx, [rip + .Lmatch_defer_α_46_143]; jmp   rax
.Lmatch_defer_α_46_142:
.Lgcsite_.LTp4_25:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_46_46
.Lmatch_defer_α_46_143:
.Lgcsite_.LTp4_24:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_46_47
.Lmatch_defer_α_46_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp4_23:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_46_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_46_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_22:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_46_2
.Lmatch_defer_α_46_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp4_21:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_46_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_46_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_20:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_46_2
.Lmatch_defer_α_46_40:  add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_46_48
.Lmatch_defer_α_46_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp4_19:      add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
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
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_18:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_46_49:  cmp              r14d, -2;                            je    n38_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n38_match_arbno_β
                        test             eax, eax;                            js    n39_match_any_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_46_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_arbno_γ_38_as
.Lmatch_defer_α_46_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n39_match_any_β
n40_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_46_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_46_12
                                                                              jmp   rax
.Lmatch_defer_β_46_12:                                                        jmp   qword ptr [rsp]
                        .size            n40_match_defer_bx, .-n40_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp4_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp4_β:
                                                                              jmp   n38_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
.LTp4_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + .LTp4_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.LTp4_ω:
                        mov              r12, qword ptr [rbp + -40]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_.LTp4:
                        .quad            379303578970
                        .quad            17179869208
                        .quad            0
                        .quad            88
                        .quad            10
                        .quad            8804682956728
                        .quad            17600775978944
                        .quad            8804682956752
                        .quad            8804682956760
                        .quad            17596481011680
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcsites_.LTp4_4:      .quad            36
                        .quad            .Lgcmap_.LTp4
                        .quad            9223653477471748104
                        .quad            .Lgccode_.LTp4_4
                        .quad            .Lgcsite_.LTp4_0
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_1
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_7
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_8
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_9
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_10
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_11
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_12
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_13
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_14
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_15
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_16
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_17
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_18
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_19
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_20
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_21
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_22
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_23
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_24
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_25
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_26
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_27
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_28
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_29
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_30
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_31
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_32
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_33
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_34
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_35
                        .quad            196609
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp4:            .quad            .LTp4
                        .long            176, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_.LTp5_5:
.LTp5:
.LTp5_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 88
                        lea              rax, [rip + .Lgcmap_.LTp5]
                        mov              qword ptr [rbp + -80], rax
                        mov              dword ptr [rbp + -88], 160
                        mov              dword ptr [rbp + -84], 88
                        xorps            xmm0, xmm0
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -32], 8
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -40], r12
                        .type            n47_match_defer_bx, @function
n47_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_51_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_51_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_51_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_51_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_51_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_51_18
.Lmatch_defer_α_51_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp5_17:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_51_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_51_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_16:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_51_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_51_16:
.Lmatch_defer_α_51_18:  test             rax, rax;                            jz    .Lmatch_defer_α_51_0
.Lmatch_defer_α_51_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_51_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_51_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_51_4:
.Lgcsite_.LTp5_15:                                                            jmp   n48_match_arbno_α
.Lmatch_defer_α_51_5:
.Lgcsite_.LTp5_14:      add              rsp, 16;                             jmp   .LTp5_ω
.Lmatch_defer_α_51_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp5_13:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_51_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_51_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_12:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_51_2:   test             rax, rax;                            je    .Lmatch_defer_α_51_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_51_40
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
                        and              rcx, 63
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_51_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_51_141
                        lea              rcx, [rip + .Lmatch_defer_α_51_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_51_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_51_42]
                        lea              rdx, [rip + .Lmatch_defer_α_51_43];  jmp   rax
.Lmatch_defer_α_51_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_51_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_51_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_51_44:
.Lgcsite_.LTp5_11:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_51_46
.Lmatch_defer_α_51_45:
.Lgcsite_.LTp5_10:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_51_47
.Lmatch_defer_α_51_42:
.Lgcsite_.LTp5_9:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_51_46
.Lmatch_defer_α_51_43:
.Lgcsite_.LTp5_8:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_51_47
.Lmatch_defer_α_51_141: lea              rcx, [rip + .Lmatch_defer_α_51_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_51_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_51_142]
                        lea              rdx, [rip + .Lmatch_defer_α_51_143]; jmp   rax
.Lmatch_defer_α_51_142:
.Lgcsite_.LTp5_7:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_51_46
.Lmatch_defer_α_51_143:
.Lgcsite_.LTp5_6:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_51_47
.Lmatch_defer_α_51_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp5_5:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_51_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_51_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_4:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_51_2
.Lmatch_defer_α_51_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp5_3:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_51_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_51_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_2:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_51_2
.Lmatch_defer_α_51_40:  add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_51_48
.Lmatch_defer_α_51_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp5_1:       add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
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
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_0:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_51_49:  test             eax, eax;                            jns   .Lmatch_defer_α_51_240
                        add              rsp, 16;                             jmp   .LTp5_ω
.Lmatch_defer_α_51_240: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_51_6]
                        push             rcx
                        push             rax;                                 jmp   n48_match_arbno_α
.Lmatch_defer_α_51_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .LTp5_ω
n47_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_51_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_51_12
                                                                              jmp   rax
.Lmatch_defer_β_51_12:                                                        jmp   qword ptr [rsp]
                        .size            n47_match_defer_bx, .-n47_match_defer_bx
                        .type            n48_match_arbno_bx, @function
n48_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_match_arbno_α:      sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -64], rsp;          jmp   .LTp5_γ
n48_match_arbno_β:      mov              rax, qword ptr [rbp + -64]
                        mov              r12, qword ptr [rax + 8];            jmp   n49_match_any_α
.Lmatch_arbno_γ_48_as:  mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n50_match_defer_β
                        sub              rsp, 32
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rbp + -64], rsp;          jmp   .LTp5_γ
.Lmatch_arbno_γ_48_af:
.Lmatch_arbno_ω_48_af:  mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -64], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_53_3
                        lea              rsp, [rcx + 32];                     jmp   n50_match_defer_β
.Lmatch_arbno_β_53_3:   lea              rsp, [rcx + 32];                     jmp   n47_match_defer_β
                        .size            n48_match_arbno_bx, .-n48_match_arbno_bx
                        .type            n49_match_any_bx, @function
n49_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_arbno_ω_48_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .Lmatch_any_α_55_0
                        cmp              esi, 45;                             je    .Lmatch_any_α_55_0
                                                                              jmp   .Lmatch_arbno_ω_48_af
.Lmatch_any_α_55_0:     add              r14d, 1;                             jmp   n50_match_defer_α
n49_match_any_β:        sub              r14d, 1;                             jmp   .Lmatch_arbno_ω_48_af
                        .size            n49_match_any_bx, .-n49_match_any_bx
                        .type            n50_match_defer_bx, @function
n50_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_56_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_56_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_56_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_56_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_56_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_56_18
.Lmatch_defer_α_56_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp5_35:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_56_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_56_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_34:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_56_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_56_16:
.Lmatch_defer_α_56_18:  test             rax, rax;                            jz    .Lmatch_defer_α_56_0
.Lmatch_defer_α_56_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_56_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_56_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_56_4:
.Lgcsite_.LTp5_33:                                                            jmp   .Lmatch_arbno_γ_48_as
.Lmatch_defer_α_56_5:
.Lgcsite_.LTp5_32:      cmp              r14d, -2;                            je    n48_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n48_match_arbno_β
                                                                              jmp   n49_match_any_β
.Lmatch_defer_α_56_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp5_31:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_56_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_56_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_30:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_56_2:   test             rax, rax;                            je    .Lmatch_defer_α_56_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_56_40
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
                        and              rcx, 63
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_56_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_56_141
                        lea              rcx, [rip + .Lmatch_defer_α_56_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_56_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_56_42]
                        lea              rdx, [rip + .Lmatch_defer_α_56_43];  jmp   rax
.Lmatch_defer_α_56_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_56_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_56_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_56_44:
.Lgcsite_.LTp5_29:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_56_46
.Lmatch_defer_α_56_45:
.Lgcsite_.LTp5_28:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_56_47
.Lmatch_defer_α_56_42:
.Lgcsite_.LTp5_27:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_56_46
.Lmatch_defer_α_56_43:
.Lgcsite_.LTp5_26:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_56_47
.Lmatch_defer_α_56_141: lea              rcx, [rip + .Lmatch_defer_α_56_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_56_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_56_142]
                        lea              rdx, [rip + .Lmatch_defer_α_56_143]; jmp   rax
.Lmatch_defer_α_56_142:
.Lgcsite_.LTp5_25:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_56_46
.Lmatch_defer_α_56_143:
.Lgcsite_.LTp5_24:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_56_47
.Lmatch_defer_α_56_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp5_23:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_56_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_56_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_22:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_56_2
.Lmatch_defer_α_56_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp5_21:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_56_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_56_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_20:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_56_2
.Lmatch_defer_α_56_40:  add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_56_48
.Lmatch_defer_α_56_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp5_19:      add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
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
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_18:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_56_49:  cmp              r14d, -2;                            je    n48_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n48_match_arbno_β
                        test             eax, eax;                            js    n49_match_any_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_56_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_arbno_γ_48_as
.Lmatch_defer_α_56_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n49_match_any_β
n50_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_56_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_56_12
                                                                              jmp   rax
.Lmatch_defer_β_56_12:                                                        jmp   qword ptr [rsp]
                        .size            n50_match_defer_bx, .-n50_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp5_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp5_β:
                                                                              jmp   n48_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
.LTp5_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + .LTp5_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.LTp5_ω:
                        mov              r12, qword ptr [rbp + -40]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_.LTp5:
                        .quad            379303578970
                        .quad            17179869208
                        .quad            0
                        .quad            88
                        .quad            10
                        .quad            8804682956728
                        .quad            17600775978944
                        .quad            8804682956752
                        .quad            8804682956760
                        .quad            17596481011680
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcsites_.LTp5_5:      .quad            36
                        .quad            .Lgcmap_.LTp5
                        .quad            9223653477471748104
                        .quad            .Lgccode_.LTp5_5
                        .quad            .Lgcsite_.LTp5_0
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_1
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_7
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_8
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_9
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_10
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_11
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_12
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_13
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_14
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_15
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_16
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_17
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_18
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_19
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_20
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_21
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_22
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_23
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_24
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_25
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_26
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_27
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_28
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_29
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_30
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_31
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_32
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_33
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_34
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_35
                        .quad            196609
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp5:            .quad            .LTp5
                        .long            176, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_.LTp6_6:
.LTp6:
.LTp6_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 104
                        lea              rax, [rip + .Lgcmap_.LTp6]
                        mov              qword ptr [rbp + -96], rax
                        mov              dword ptr [rbp + -104], 160
                        mov              dword ptr [rbp + -100], 104
                        xorps            xmm0, xmm0
                        movups           xmmword ptr [rbp + -88], xmm0
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -32], 8
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -40], r12
                        .type            n57_match_pos_bx, @function
n57_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_match_pos_α:        mov              rax, 0
                        cmp              r14d, eax;                           jne   .LTp6_ω
                                                                              jmp   n58_match_arbno_α
n57_match_pos_β:                                                              jmp   .LTp6_ω
                        .size            n57_match_pos_bx, .-n57_match_pos_bx
                        .type            n58_match_arbno_bx, @function
n58_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_match_arbno_α:      sub              rsp, 48
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -64], rsp;          jmp   n59_match_rpos_α
n58_match_arbno_β:      mov              rax, qword ptr [rbp + -64]
                        mov              r12, qword ptr [rax + 8];            jmp   n60_match_defer_α
.Lmatch_arbno_γ_58_as:  mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n61_match_defer_β
                        sub              rsp, 48
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              rax, qword ptr [rbp + -80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rbp + -72]
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [rbp + -64], rsp;          jmp   n59_match_rpos_α
.Lmatch_arbno_γ_58_af:
.Lmatch_arbno_ω_58_af:  mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -64], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_64_3
                        mov              rax, qword ptr [rcx + 32]
                        mov              qword ptr [rbp + -80], rax
                        mov              rax, qword ptr [rcx + 40]
                        mov              qword ptr [rbp + -72], rax
                        lea              rsp, [rcx + 48];                     jmp   n61_match_defer_β
.Lmatch_arbno_β_64_3:   lea              rsp, [rcx + 48];                     jmp   n57_match_pos_β
                        .size            n58_match_arbno_bx, .-n58_match_arbno_bx
                        .type            n59_match_rpos_bx, @function
n59_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_match_rpos_α:       mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n58_match_arbno_β
                                                                              jmp   .LTp6_γ
n59_match_rpos_β:                                                             jmp   n58_match_arbno_β
                        .size            n59_match_rpos_bx, .-n59_match_rpos_bx
                        .type            n60_match_defer_bx, @function
n60_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_66_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_66_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_66_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_66_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_66_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_66_18
.Lmatch_defer_α_66_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp6_17:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_66_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_66_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_16:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_66_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_66_16:
.Lmatch_defer_α_66_18:  test             rax, rax;                            jz    .Lmatch_defer_α_66_0
.Lmatch_defer_α_66_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_66_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_66_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_66_4:
.Lgcsite_.LTp6_15:                                                            jmp   n61_match_defer_α
.Lmatch_defer_α_66_5:
.Lgcsite_.LTp6_14:      cmp              r14d, -2;                            je    n58_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n58_match_arbno_β
                                                                              jmp   .Lmatch_arbno_ω_58_af
.Lmatch_defer_α_66_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp6_13:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_66_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_66_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_12:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_66_2:   test             rax, rax;                            je    .Lmatch_defer_α_66_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_66_40
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
                        and              rcx, 63
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_66_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_66_141
                        lea              rcx, [rip + .Lmatch_defer_α_66_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_66_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_66_42]
                        lea              rdx, [rip + .Lmatch_defer_α_66_43];  jmp   rax
.Lmatch_defer_α_66_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_66_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_66_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_66_44:
.Lgcsite_.LTp6_11:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_66_46
.Lmatch_defer_α_66_45:
.Lgcsite_.LTp6_10:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_66_47
.Lmatch_defer_α_66_42:
.Lgcsite_.LTp6_9:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_66_46
.Lmatch_defer_α_66_43:
.Lgcsite_.LTp6_8:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_66_47
.Lmatch_defer_α_66_141: lea              rcx, [rip + .Lmatch_defer_α_66_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_66_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_66_142]
                        lea              rdx, [rip + .Lmatch_defer_α_66_143]; jmp   rax
.Lmatch_defer_α_66_142:
.Lgcsite_.LTp6_7:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_66_46
.Lmatch_defer_α_66_143:
.Lgcsite_.LTp6_6:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_66_47
.Lmatch_defer_α_66_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp6_5:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_66_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_66_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_4:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_66_2
.Lmatch_defer_α_66_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp6_3:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_66_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_66_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_2:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_66_2
.Lmatch_defer_α_66_40:  add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_66_48
.Lmatch_defer_α_66_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp6_1:       add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
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
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_0:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_66_49:  cmp              r14d, -2;                            je    n58_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n58_match_arbno_β
                        test             eax, eax;                            js    .Lmatch_arbno_ω_58_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_66_6]
                        push             rcx
                        push             rax;                                 jmp   n61_match_defer_α
.Lmatch_defer_α_66_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_arbno_ω_58_af
n60_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_66_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_66_12
                                                                              jmp   rax
.Lmatch_defer_β_66_12:                                                        jmp   qword ptr [rsp]
                        .size            n60_match_defer_bx, .-n60_match_defer_bx
                        .type            n61_match_defer_bx, @function
n61_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_67_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_67_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_67_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_67_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_67_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_67_18
.Lmatch_defer_α_67_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp6_35:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_67_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_67_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_34:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_67_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_67_16:
.Lmatch_defer_α_67_18:  test             rax, rax;                            jz    .Lmatch_defer_α_67_0
.Lmatch_defer_α_67_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_67_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_67_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_67_4:
.Lgcsite_.LTp6_33:                                                            jmp   .Lmatch_arbno_γ_58_as
.Lmatch_defer_α_67_5:
.Lgcsite_.LTp6_32:      cmp              r14d, -2;                            je    n58_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n58_match_arbno_β
                                                                              jmp   n60_match_defer_β
.Lmatch_defer_α_67_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp6_31:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_67_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_67_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_30:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_67_2:   test             rax, rax;                            je    .Lmatch_defer_α_67_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_67_40
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
                        and              rcx, 63
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_67_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_67_141
                        lea              rcx, [rip + .Lmatch_defer_α_67_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_67_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_67_42]
                        lea              rdx, [rip + .Lmatch_defer_α_67_43];  jmp   rax
.Lmatch_defer_α_67_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_67_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_67_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_67_44:
.Lgcsite_.LTp6_29:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_67_46
.Lmatch_defer_α_67_45:
.Lgcsite_.LTp6_28:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_67_47
.Lmatch_defer_α_67_42:
.Lgcsite_.LTp6_27:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_67_46
.Lmatch_defer_α_67_43:
.Lgcsite_.LTp6_26:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_67_47
.Lmatch_defer_α_67_141: lea              rcx, [rip + .Lmatch_defer_α_67_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_67_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_67_142]
                        lea              rdx, [rip + .Lmatch_defer_α_67_143]; jmp   rax
.Lmatch_defer_α_67_142:
.Lgcsite_.LTp6_25:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_67_46
.Lmatch_defer_α_67_143:
.Lgcsite_.LTp6_24:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_67_47
.Lmatch_defer_α_67_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp6_23:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_67_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_67_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_22:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_67_2
.Lmatch_defer_α_67_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp6_21:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_67_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_67_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_20:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_67_2
.Lmatch_defer_α_67_40:  add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_67_48
.Lmatch_defer_α_67_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp6_19:      add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
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
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_18:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_67_49:  cmp              r14d, -2;                            je    n58_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n58_match_arbno_β
                        test             eax, eax;                            js    n60_match_defer_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_67_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_arbno_γ_58_as
.Lmatch_defer_α_67_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n60_match_defer_β
n61_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_67_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_67_12
                                                                              jmp   rax
.Lmatch_defer_β_67_12:                                                        jmp   qword ptr [rsp]
                        .size            n61_match_defer_bx, .-n61_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp6_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp6_β:
                                                                              jmp   n59_match_rpos_β
#-----------------------------------------------------------------------------------------------------------------------
.LTp6_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + .LTp6_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.LTp6_ω:
                        mov              r12, qword ptr [rbp + -40]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_.LTp6:
                        .quad            448023055706
                        .quad            17179869208
                        .quad            0
                        .quad            104
                        .quad            11
                        .quad            8804682956712
                        .quad            17596481011632
                        .quad            17600775978944
                        .quad            8804682956752
                        .quad            8804682956760
                        .quad            17596481011680
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcsites_.LTp6_6:      .quad            36
                        .quad            .Lgcmap_.LTp6
                        .quad            9223653477471748104
                        .quad            .Lgccode_.LTp6_6
                        .quad            .Lgcsite_.LTp6_0
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_1
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_7
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_8
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_9
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_10
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_11
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_12
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_13
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_14
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_15
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_16
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_17
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_18
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_19
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_20
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_21
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_22
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_23
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_24
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_25
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_26
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_27
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_28
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_29
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_30
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_31
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_32
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_33
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_34
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_35
                        .quad            196609
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp6:            .quad            .LTp6
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
                        lea              rdi, [rip + __alpha_cellp_tab]
                        call             rt_ab_cell_bind_table@PLT
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
.Lgccode_main_7:
main_α:
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 1352], rax
                        mov              dword ptr [rsp + 1344], 160
                        mov              dword ptr [rsp + 1348], 1360
                        mov              eax, 0
main_α_body:
                        sub              rsp, 0
                        .type            n68_call_bx, @function
n68_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_call_α:             sub              rsp, 16
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        call             rt_fp_model_spitbol@PLT
.Lgcsite_main_0:        mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_1:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_α_167_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n69_call_α
.Lcall_α_167_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n69_call_α
n68_call_β:             add              rsp, 16
                        add              rsp, -16;                            jmp   n69_call_α
                        .size            n68_call_bx, .-n68_call_bx
                        .type            n69_call_bx, @function
n69_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_call_α:             sub              rsp, 16
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        call             rt_quit_trap_320@PLT
.Lgcsite_main_2:        mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_3:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_α_168_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n70_statement_begin_α
.Lcall_α_168_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n70_statement_begin_α
n69_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n70_statement_begin_α
                        .size            n69_call_bx, .-n69_call_bx
                        .type            n70_statement_begin_bx, @function
n70_statement_begin_bx:
                        .pushsection     .rodata
.Lstnof1:               .string          "snobol4/calculator/calculator-2-match-fence.sno"
                        .popsection
.Lstatement_begin_α_169_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_169_stno
                        .long            1
                        .long            1
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         V              =  ANY('abcdefghijklmnopqrstuvwxyz')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n70_statement_begin_α:                                                        jmp   n71_lit_string_α
n70_statement_begin_β:                                                        jmp   n75_setexit_test_α
                        .size            n70_statement_begin_bx, .-n70_statement_begin_bx
                        .type            n71_lit_string_bx, @function
n71_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_171_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_call_α
.Llit_string_α_171_0:   .quad            .Lthk_.LTp0
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
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_4:        mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_5:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_172_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n70_statement_begin_β
.Lcall_α_172_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_assign_α
n72_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n70_statement_begin_β
                        .size            n72_call_bx, .-n72_call_bx
                        .type            n73_assign_bx, @function
n73_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # V
                        mov              qword ptr [r9 + 8], rdx;             jmp   n74_statement_end_α
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
                        test             rax, rax;                            jz    .Lsetexit_test_α_176_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_176_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_176_61:
.Lsetexit_test_α_176_1:                                                       jmp   n76_statement_begin_α
                        .size            n75_setexit_test_bx, .-n75_setexit_test_bx
                        .type            n76_statement_begin_bx, @function
n76_statement_begin_bx:
.Lstatement_begin_α_177_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_177_stno
                        .long            2
                        .long            2
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         I              =  SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n76_statement_begin_α:                                                        jmp   n77_lit_string_α
n76_statement_begin_β:                                                        jmp   n81_setexit_test_α
                        .size            n76_statement_begin_bx, .-n76_statement_begin_bx
                        .type            n77_lit_string_bx, @function
n77_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_179_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_call_α
.Llit_string_α_179_0:   .quad            .Lthk_.LTp1
                        .size            n77_lit_string_bx, .-n77_lit_string_bx
                        .type            n78_call_bx, @function
n78_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_6:        mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_7:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_180_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n76_statement_begin_β
.Lcall_α_180_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_assign_α
n78_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n76_statement_begin_β
                        .size            n78_call_bx, .-n78_call_bx
                        .type            n79_assign_bx, @function
n79_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # I
                        mov              qword ptr [r9 + 24], rdx;            jmp   n80_statement_end_α
                        .size            n79_assign_bx, .-n79_assign_bx
                        .type            n80_statement_end_bx, @function
n80_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    add              rsp, 32;                             jmp   n82_statement_begin_α
                        .size            n80_statement_end_bx, .-n80_statement_end_bx
                        .type            n81_setexit_test_bx, @function
n81_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_184_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_184_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_184_61:
.Lsetexit_test_α_184_1:                                                       jmp   n82_statement_begin_α
                        .size            n81_setexit_test_bx, .-n81_setexit_test_bx
                        .type            n82_statement_begin_bx, @function
n82_statement_begin_bx:
.Lstatement_begin_α_185_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_185_stno
                        .long            3
                        .long            3
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         A              =  FENCE(V | I | '(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n82_statement_begin_α:                                                        jmp   n83_lit_string_α
n82_statement_begin_β:                                                        jmp   n89_setexit_test_α
                        .size            n82_statement_begin_bx, .-n82_statement_begin_bx
                        .type            n83_lit_string_bx, @function
n83_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_187_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_var_α
.Llit_string_α_187_0:   .quad            .Lthk_.LTp2
                        .size            n83_lit_string_bx, .-n83_lit_string_bx
                        .type            n84_var_bx, @function
n84_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # V
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n85_var_α
n84_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n82_statement_begin_β
                        .size            n84_var_bx, .-n84_var_bx
                        .type            n85_var_bx, @function
n85_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # I
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n86_call_α
n85_var_β:              add              rsp, 16;                             jmp   n84_var_β
                        .size            n85_var_bx, .-n85_var_bx
                        .type            n86_call_bx, @function
n86_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_call_α:             sub              rsp, 16
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
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_8:        mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_9:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_190_240
                        add              rsp, 16;                             jmp   n85_var_β
.Lcall_α_190_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n87_assign_α
n86_call_β:             add              rsp, 16;                             jmp   n85_var_β
                        .size            n86_call_bx, .-n86_call_bx
                        .type            n87_assign_bx, @function
n87_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # A
                        mov              qword ptr [r9 + 40], rdx;            jmp   n88_statement_end_α
                        .size            n87_assign_bx, .-n87_assign_bx
                        .type            n88_statement_end_bx, @function
n88_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_end_α:    add              rsp, 64;                             jmp   n90_statement_begin_α
                        .size            n88_statement_end_bx, .-n88_statement_end_bx
                        .type            n89_setexit_test_bx, @function
n89_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_194_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_194_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_194_61:
.Lsetexit_test_α_194_1:                                                       jmp   n90_statement_begin_α
                        .size            n89_setexit_test_bx, .-n89_setexit_test_bx
                        .type            n90_statement_begin_bx, @function
n90_statement_begin_bx:
.Lstatement_begin_α_195_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_195_stno
                        .long            4
                        .long            4
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         F              =  FENCE(A | ANY('+-') *F)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n90_statement_begin_α:                                                        jmp   n91_lit_string_α
n90_statement_begin_β:                                                        jmp   n96_setexit_test_α
                        .size            n90_statement_begin_bx, .-n90_statement_begin_bx
                        .type            n91_lit_string_bx, @function
n91_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_197_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_var_α
.Llit_string_α_197_0:   .quad            .Lthk_.LTp3
                        .size            n91_lit_string_bx, .-n91_lit_string_bx
                        .type            n92_var_bx, @function
n92_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # A
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n93_call_α
n92_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n90_statement_begin_β
                        .size            n92_var_bx, .-n92_var_bx
                        .type            n93_call_bx, @function
n93_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_call_α:             sub              rsp, 16
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
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_10:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_11:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_199_240
                        add              rsp, 16;                             jmp   n92_var_β
.Lcall_α_199_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n94_assign_α
n93_call_β:             add              rsp, 16;                             jmp   n92_var_β
                        .size            n93_call_bx, .-n93_call_bx
                        .type            n94_assign_bx, @function
n94_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # F
                        mov              qword ptr [r9 + 56], rdx;            jmp   n95_statement_end_α
                        .size            n94_assign_bx, .-n94_assign_bx
                        .type            n95_statement_end_bx, @function
n95_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:    add              rsp, 48;                             jmp   n97_statement_begin_α
                        .size            n95_statement_end_bx, .-n95_statement_end_bx
                        .type            n96_setexit_test_bx, @function
n96_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_203_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_203_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_203_61:
.Lsetexit_test_α_203_1:                                                       jmp   n97_statement_begin_α
                        .size            n96_setexit_test_bx, .-n96_setexit_test_bx
                        .type            n97_statement_begin_bx, @function
n97_statement_begin_bx:
.Lstatement_begin_α_204_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_204_stno
                        .long            5
                        .long            5
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         T              =  F ARBNO(ANY('*/') F)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n97_statement_begin_α:                                                        jmp   n98_lit_string_α
n97_statement_begin_β:                                                        jmp   n104_setexit_test_α
                        .size            n97_statement_begin_bx, .-n97_statement_begin_bx
                        .type            n98_lit_string_bx, @function
n98_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_206_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n99_var_α
.Llit_string_α_206_0:   .quad            .Lthk_.LTp4
                        .size            n98_lit_string_bx, .-n98_lit_string_bx
                        .type            n99_var_bx, @function
n99_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_var_α
n99_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n97_statement_begin_β
                        .size            n99_var_bx, .-n99_var_bx
                        .type            n100_var_bx, @function
n100_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_call_α
n100_var_β:             add              rsp, 16;                             jmp   n99_var_β
                        .size            n100_var_bx, .-n100_var_bx
                        .type            n101_call_bx, @function
n101_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_call_α:            sub              rsp, 16
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
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_12:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_13:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_209_240
                        add              rsp, 16;                             jmp   n100_var_β
.Lcall_α_209_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_assign_α
n101_call_β:            add              rsp, 16;                             jmp   n100_var_β
                        .size            n101_call_bx, .-n101_call_bx
                        .type            n102_assign_bx, @function
n102_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # T
                        mov              qword ptr [r9 + 72], rdx;            jmp   n103_statement_end_α
                        .size            n102_assign_bx, .-n102_assign_bx
                        .type            n103_statement_end_bx, @function
n103_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_end_α:   add              rsp, 64;                             jmp   n105_statement_begin_α
                        .size            n103_statement_end_bx, .-n103_statement_end_bx
                        .type            n104_setexit_test_bx, @function
n104_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_213_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_213_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_213_61:
.Lsetexit_test_α_213_1:                                                       jmp   n105_statement_begin_α
                        .size            n104_setexit_test_bx, .-n104_setexit_test_bx
                        .type            n105_statement_begin_bx, @function
n105_statement_begin_bx:
.Lstatement_begin_α_214_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_214_stno
                        .long            6
                        .long            6
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         X              =  T ARBNO(ANY('+-') T)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n105_statement_begin_α:                                                       jmp   n106_lit_string_α
n105_statement_begin_β:                                                       jmp   n112_setexit_test_α
                        .size            n105_statement_begin_bx, .-n105_statement_begin_bx
                        .type            n106_lit_string_bx, @function
n106_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_216_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_var_α
.Llit_string_α_216_0:   .quad            .Lthk_.LTp5
                        .size            n106_lit_string_bx, .-n106_lit_string_bx
                        .type            n107_var_bx, @function
n107_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # T
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n108_var_α
n107_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n105_statement_begin_β
                        .size            n107_var_bx, .-n107_var_bx
                        .type            n108_var_bx, @function
n108_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # T
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_call_α
n108_var_β:             add              rsp, 16;                             jmp   n107_var_β
                        .size            n108_var_bx, .-n108_var_bx
                        .type            n109_call_bx, @function
n109_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_call_α:            sub              rsp, 16
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
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_14:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_15:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_219_240
                        add              rsp, 16;                             jmp   n108_var_β
.Lcall_α_219_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n110_assign_α
n109_call_β:            add              rsp, 16;                             jmp   n108_var_β
                        .size            n109_call_bx, .-n109_call_bx
                        .type            n110_assign_bx, @function
n110_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # X
                        mov              qword ptr [r9 + 88], rdx;            jmp   n111_statement_end_α
                        .size            n110_assign_bx, .-n110_assign_bx
                        .type            n111_statement_end_bx, @function
n111_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_end_α:   add              rsp, 64;                             jmp   n113_statement_begin_α
                        .size            n111_statement_end_bx, .-n111_statement_end_bx
                        .type            n112_setexit_test_bx, @function
n112_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_223_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_223_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_223_61:
.Lsetexit_test_α_223_1:                                                       jmp   n113_statement_begin_α
                        .size            n112_setexit_test_bx, .-n112_setexit_test_bx
                        .type            n113_statement_begin_bx, @function
n113_statement_begin_bx:
.Lstatement_begin_α_224_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_224_stno
                        .long            7
                        .long            7
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         eol            =  CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n113_statement_begin_α:                                                       jmp   n114_lit_integer_α
n113_statement_begin_β:                                                       jmp   n118_setexit_test_α
                        .size            n113_statement_begin_bx, .-n113_statement_begin_bx
                        .type            n114_lit_integer_bx, @function
n114_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_226_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n115_call_α
.Llit_integer_α_226_0:  .quad            10
                        .size            n114_lit_integer_bx, .-n114_lit_integer_bx
                        .type            n115_call_bx, @function
n115_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_bynamefnzd75:  .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd75]
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
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_17:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_227_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n113_statement_begin_β
.Lcall_α_227_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n116_assign_α
n115_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n113_statement_begin_β
                        .size            n115_call_bx, .-n115_call_bx
                        .type            n116_assign_bx, @function
n116_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # eol
                        mov              qword ptr [r9 + 104], rdx;           jmp   n117_statement_end_α
                        .size            n116_assign_bx, .-n116_assign_bx
                        .type            n117_statement_end_bx, @function
n117_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_end_α:   add              rsp, 32;                             jmp   n119_statement_begin_α
                        .size            n117_statement_end_bx, .-n117_statement_end_bx
                        .type            n118_setexit_test_bx, @function
n118_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_231_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_231_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_231_61:
.Lsetexit_test_α_231_1:                                                       jmp   n119_statement_begin_α
                        .size            n118_setexit_test_bx, .-n118_setexit_test_bx
                        .type            n119_statement_begin_bx, @function
n119_statement_begin_bx:
.Lstatement_begin_α_232_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_232_stno
                        .long            8
                        .long            8
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         C              =  POS(0) ARBNO(X eol) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n119_statement_begin_α:                                                       jmp   n120_lit_string_α
n119_statement_begin_β:                                                       jmp   n126_setexit_test_α
                        .size            n119_statement_begin_bx, .-n119_statement_begin_bx
                        .type            n120_lit_string_bx, @function
n120_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_234_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n121_var_α
.Llit_string_α_234_0:   .quad            .Lthk_.LTp6
                        .size            n120_lit_string_bx, .-n120_lit_string_bx
                        .type            n121_var_bx, @function
n121_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # X
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_var_α
n121_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n119_statement_begin_β
                        .size            n121_var_bx, .-n121_var_bx
                        .type            n122_var_bx, @function
n122_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # eol
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n123_call_α
n122_var_β:             add              rsp, 16;                             jmp   n121_var_β
                        .size            n122_var_bx, .-n122_var_bx
                        .type            n123_call_bx, @function
n123_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_call_α:            sub              rsp, 16
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
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_18:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_19:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_237_240
                        add              rsp, 16;                             jmp   n122_var_β
.Lcall_α_237_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_assign_α
n123_call_β:            add              rsp, 16;                             jmp   n122_var_β
                        .size            n123_call_bx, .-n123_call_bx
                        .type            n124_assign_bx, @function
n124_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # C
                        mov              qword ptr [r9 + 120], rdx;           jmp   n125_statement_end_α
                        .size            n124_assign_bx, .-n124_assign_bx
                        .type            n125_statement_end_bx, @function
n125_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_end_α:   add              rsp, 64;                             jmp   n127_statement_begin_α
                        .size            n125_statement_end_bx, .-n125_statement_end_bx
                        .type            n126_setexit_test_bx, @function
n126_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_241_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_241_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_241_61:
.Lsetexit_test_α_241_1:                                                       jmp   n127_statement_begin_α
                        .size            n126_setexit_test_bx, .-n126_setexit_test_bx
                        .type            n127_statement_begin_bx, @function
n127_statement_begin_bx:
.Lstatement_begin_α_242_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_242_stno
                        .long            9
                        .long            9
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n127_statement_begin_α:                                                       jmp   n128_lit_integer_α
n127_statement_begin_β:                                                       jmp   n131_setexit_test_α
                        .size            n127_statement_begin_bx, .-n127_statement_begin_bx
                        .type            n128_lit_integer_bx, @function
n128_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_244_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_kw_assign_snobol4_α
.Llit_integer_α_244_0:  .quad            0
                        .size            n128_lit_integer_bx, .-n128_lit_integer_bx
                        .type            n129_kw_assign_snobol4_bx, @function
n129_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_245_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        call             rt_kw_write_idx@PLT
.Lgcsite_main_21:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_245_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n127_statement_begin_β
.Lkw_assign_snobol4_α_245_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_keyword_assign_snobol4.cpp:32
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_20:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n130_statement_end_α
.Lkw_assign_snobol4_α_245_0:
                        .quad            1
                        .size            n129_kw_assign_snobol4_bx, .-n129_kw_assign_snobol4_bx
                        .type            n130_statement_end_bx, @function
n130_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_end_α:   add              rsp, 32;                             jmp   n132_statement_begin_α
                        .size            n130_statement_end_bx, .-n130_statement_end_bx
                        .type            n131_setexit_test_bx, @function
n131_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_248_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_248_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_248_61:
.Lsetexit_test_α_248_1:                                                       jmp   n132_statement_begin_α
                        .size            n131_setexit_test_bx, .-n131_setexit_test_bx
                        .type            n132_statement_begin_bx, @function
n132_statement_begin_bx:
.Lstatement_begin_α_249_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_249_stno
                        .long            10
                        .long            10
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n132_statement_begin_α:                                                       jmp   n133_lit_name_α
n132_statement_begin_β:                                                       jmp   n138_setexit_test_α
                        .size            n132_statement_begin_bx, .-n132_statement_begin_bx
                        .type            n133_lit_name_bx, @function
n133_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_name_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_251_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n134_lit_integer_α
.Llit_name_α_251_0:     .quad            .Llit_name_α_251_0_s
.Llit_name_α_251_0_s:   .string          "INPUT"
                        .size            n133_lit_name_bx, .-n133_lit_name_bx
                        .type            n134_lit_integer_bx, @function
n134_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_252_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n135_lit_string_α
n134_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n132_statement_begin_β
.Llit_integer_α_252_0:  .quad            9
                        .size            n134_lit_integer_bx, .-n134_lit_integer_bx
                        .type            n135_lit_string_bx, @function
n135_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_253_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n136_call_α
n135_lit_string_β:      add              rsp, 16;                             jmp   n134_lit_integer_β
.Llit_string_α_253_0:   .quad            .Llit_string_α_253_0_s
.Llit_string_α_253_0_s: .string          "[-f0 -r4194304]"
                        .size            n135_lit_string_bx, .-n135_lit_string_bx
                        .type            n136_call_bx, @function
n136_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_call_α:            sub              rsp, 16
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
.Lcall_α_bynamefnzd96:  .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd96]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 360448
                        call             rt_call_arr_bl_sn4@PLT
.Lgcsite_main_22:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_23:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_254_240
                        add              rsp, 16;                             jmp   n135_lit_string_β
.Lcall_α_254_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_statement_end_α
n136_call_β:            add              rsp, 16;                             jmp   n135_lit_string_β
                        .size            n136_call_bx, .-n136_call_bx
                        .type            n137_statement_end_bx, @function
n137_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_end_α:   add              rsp, 64;                             jmp   n139_statement_begin_α
                        .size            n137_statement_end_bx, .-n137_statement_end_bx
                        .type            n138_setexit_test_bx, @function
n138_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_257_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_257_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_257_61:
.Lsetexit_test_α_257_1:                                                       jmp   n139_statement_begin_α
                        .size            n138_setexit_test_bx, .-n138_setexit_test_bx
                        .type            n139_statement_begin_bx, @function
n139_statement_begin_bx:
.Lstatement_begin_α_258_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_258_stno
                        .long            11
                        .long            11
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         src            =  INPUT                          :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n139_statement_begin_α:                                                       jmp   n140_var_α
n139_statement_begin_β:                                                       jmp   n143_setexit_test_α
                        .size            n139_statement_begin_bx, .-n139_statement_begin_bx
                        .type            n140_var_bx, @function
n140_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lvar_α_260_0] # name
                        call             NV_GET_fn@PLT
.Lgcsite_main_25:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lvar_α_260_240
                        add              rsp, 16;                             jmp   n139_statement_begin_β
.Lvar_α_260_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_var_global.cpp:84
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_24:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n141_assign_α
.Lvar_α_260_0:          .quad            .Lvar_α_260_0_s
.Lvar_α_260_0_s:        .string          "INPUT"
                        .size            n140_var_bx, .-n140_var_bx
                        .type            n141_assign_bx, @function
n141_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # src
                        mov              qword ptr [r9 + 136], rdx;           jmp   n142_statement_end_α
                        .size            n141_assign_bx, .-n141_assign_bx
                        .type            n142_statement_end_bx, @function
n142_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_end_α:   add              rsp, 16;                             jmp   n144_statement_begin_α
                        .size            n142_statement_end_bx, .-n142_statement_end_bx
                        .type            n143_setexit_test_bx, @function
n143_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_264_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_264_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_264_61:
.Lsetexit_test_α_264_1:                                                       jmp   n161_statement_begin_α
                        .size            n143_setexit_test_bx, .-n143_setexit_test_bx
                        .type            n144_statement_begin_bx, @function
n144_statement_begin_bx:
.Lstatement_begin_α_265_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_265_stno
                        .long            12
                        .long            12
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         src            C                                 :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n144_statement_begin_α:                                                       jmp   n145_var_α
n144_statement_begin_β:                                                       jmp   n152_setexit_test_α
                        .size            n144_statement_begin_bx, .-n144_statement_begin_bx
                        .type            n145_var_bx, @function
n145_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # src
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n146_var_α
                        .size            n145_var_bx, .-n145_var_bx
                        .type            n146_var_bx, @function
n146_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # C
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n147_assign_α
n146_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n152_setexit_test_α
                        .size            n146_var_bx, .-n146_var_bx
                        .type            n147_assign_bx, @function
n147_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax
                        mov              qword ptr [r9 + 152], rdx;           jmp   n148_match_begin_α
n147_assign_β:                                                                jmp   n146_var_β
                        .size            n147_assign_bx, .-n147_assign_bx
                        .type            n148_match_begin_bx, @function
n148_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_match_begin_α:     mov              rdi, qword ptr [rsp + 16]            # var
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_27:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0               # cas_mark
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24
                        test             r13, r13;                            jne   .Lmatch_begin_α_271_14
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax;          jmp   .Lmatch_begin_α_271_1
.Lmatch_begin_α_271_14: mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_271_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_271_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n149_match_defer_α
n148_match_begin_β:
.Lmatch_begin_α_271_13: lea              rsp, [rbp + -88]                     # retry_whack
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_α_271_1
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_α_271_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_α_271_1
                                                                              jmp   .Lmatch_begin_α_271_0
.Lmatch_begin_α_271_1:
.Lmatch_begin_γ_148_af:
.Lmatch_begin_ω_148_af: mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        pop              rbp;                                 jmp   n147_assign_β
                        .size            n148_match_begin_bx, .-n148_match_begin_bx
                        .type            n149_match_defer_bx, @function
n149_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_match_defer_α:     mov              rax, qword ptr [r9 + 144]
                        mov              rdx, qword ptr [r9 + 152]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_272_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_272_10
                        mov              rdi, rdx                             # headv
                        call             dtp_fn_of@PLT
.Lgcsite_main_47:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:116
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_46:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 152];           jmp   .Lmatch_defer_α_272_10
.Lmatch_defer_α_272_9:  xor              eax, eax
.Lmatch_defer_α_272_10: test             rax, rax;                            jz    .Lmatch_defer_α_272_0
.Lmatch_defer_α_272_48: mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_272_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_272_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_272_4:
.Lgcsite_main_45:                                                             jmp   n150_match_end_α
.Lmatch_defer_α_272_5:
.Lgcsite_main_44:       cmp              r14d, -2;                            je    .Lmatch_begin_ω_148_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_148_af
                                                                              jmp   n148_match_begin_β
.Lmatch_defer_α_272_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        lea              rdi, [r9 + 144]
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_defer_open_cell@PLT
.Lgcsite_main_43:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_272_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_272_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_42:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_272_2:  test             rax, rax;                            je    .Lmatch_defer_α_272_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_272_40
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
                        and              rcx, 63
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_272_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_272_141
                        lea              rcx, [rip + .Lmatch_defer_α_272_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_272_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_272_42]
                        lea              rdx, [rip + .Lmatch_defer_α_272_43]; jmp   rax
.Lmatch_defer_α_272_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_272_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_272_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_272_44:
.Lgcsite_main_41:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_272_46
.Lmatch_defer_α_272_45:
.Lgcsite_main_40:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_272_47
.Lmatch_defer_α_272_42:
.Lgcsite_main_39:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_272_46
.Lmatch_defer_α_272_43:
.Lgcsite_main_38:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_272_47
.Lmatch_defer_α_272_141:
                        lea              rcx, [rip + .Lmatch_defer_α_272_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_272_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_272_142]
                        lea              rdx, [rip + .Lmatch_defer_α_272_143]
                                                                              jmp   rax
.Lmatch_defer_α_272_142:
.Lgcsite_main_37:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_272_46
.Lmatch_defer_α_272_143:
.Lgcsite_main_36:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_272_47
.Lmatch_defer_α_272_46: mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_main_35:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_272_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_272_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_34:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_272_2
.Lmatch_defer_α_272_47: mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_main_33:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_272_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_272_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_32:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_272_2
.Lmatch_defer_α_272_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_272_48
.Lmatch_defer_α_272_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_main_31:       add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
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
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_30:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_272_49: cmp              r14d, -2;                            je    .Lmatch_begin_ω_148_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_148_af
                        test             eax, eax;                            js    n148_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_272_6]
                        push             rcx
                        push             rax;                                 jmp   n150_match_end_α
.Lmatch_defer_α_272_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n148_match_begin_β
n149_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_272_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_272_12
                                                                              jmp   rax
.Lmatch_defer_β_272_12:                                                       jmp   qword ptr [rsp]
                        .size            n149_match_defer_bx, .-n149_match_defer_bx
                        .type            n150_match_end_bx, @function
n150_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_match_end_α:       mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_148_af
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
                        sub              rsp, 112
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rsi, r12
                        mov              rdx, r13
                        mov              rcx, rsp
                        call             qword ptr [rip + rt_dcap_end_ok_open@GOTPCREL]
.Lgcsite_main_61:       push             rax
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_60:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:
.Lmatch_end_α_274_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_274_2
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
                        and              rcx, 63
                        cmp              rcx, 2;                              je    .Lmatch_end_α_274_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_274_120
                        lea              rcx, [rip + .Lmatch_end_α_274_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_274_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_274_21]
                        lea              rdx, [rip + .Lmatch_end_α_274_22];   jmp   rax
.Lmatch_end_α_274_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_274_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_274_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_274_23:
.Lgcsite_main_59:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_274_8
.Lmatch_end_α_274_24:
.Lgcsite_main_58:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_274_9
.Lmatch_end_α_274_21:
.Lgcsite_main_57:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_274_8
.Lmatch_end_α_274_22:
.Lgcsite_main_56:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_274_9
.Lmatch_end_α_274_120:  lea              rcx, [rip + .Lmatch_end_α_274_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_274_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_274_121]
                        lea              rdx, [rip + .Lmatch_end_α_274_122];  jmp   rax
.Lmatch_end_α_274_121:
.Lgcsite_main_55:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_274_8
.Lmatch_end_α_274_122:
.Lgcsite_main_54:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_274_9
.Lmatch_end_α_274_8:    mov              rdx, rsp
                        call             rt_dcap_land_γ@PLT
.Lgcsite_main_53:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_52:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_274_1
.Lmatch_end_α_274_9:    mov              rdi, rsp
                        call             rt_dcap_land_ω@PLT
.Lgcsite_main_51:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_50:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_274_1
.Lmatch_end_α_274_2:    add              rsp, 112
                        mov              qword ptr [rsp + 0], rax
                        mov              rdi, qword ptr [rbp + -16]           # outer_Σ
                        mov              rsi, qword ptr [rbp + -32]           # outer_Δ
                        lea              rdx, [rbp + -88]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
.Lgcsite_main_49:       mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              rax, qword ptr [rsp + 0]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        test             rax, rax;                            je    .Lmatch_end_α_274_13
                                                                              jmp   .Lmatch_begin_ω_148_af
.Lmatch_end_α_274_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp
.Lgcsite_main_48:                                                             jmp   n151_statement_end_α
                        .size            n150_match_end_bx, .-n150_match_end_bx
                        .type            n151_statement_end_bx, @function
n151_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:   add              rsp, 32;                             jmp   n153_statement_begin_α
                        .size            n151_statement_end_bx, .-n151_statement_end_bx
                        .type            n152_setexit_test_bx, @function
n152_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_277_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_277_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_277_61:
.Lsetexit_test_α_277_1:                                                       jmp   n161_statement_begin_α
                        .size            n152_setexit_test_bx, .-n152_setexit_test_bx
                        .type            n153_statement_begin_bx, @function
n153_statement_begin_bx:
.Lstatement_begin_α_278_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_278_stno
                        .long            13
                        .long            13
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         OUTPUT         =  'matched bytes=' SIZE(src)      :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n153_statement_begin_α:                                                       jmp   n154_lit_string_α
n153_statement_begin_β:                                                       jmp   n160_setexit_test_α
                        .size            n153_statement_begin_bx, .-n153_statement_begin_bx
                        .type            n154_lit_string_bx, @function
n154_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_280_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n155_var_α
.Llit_string_α_280_0:   .quad            .Llit_string_α_280_0_s
.Llit_string_α_280_0_s: .string          "matched bytes="
                        .size            n154_lit_string_bx, .-n154_lit_string_bx
                        .type            n155_var_bx, @function
n155_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # src
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n156_call_α
n155_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n153_statement_begin_β
                        .size            n155_var_bx, .-n155_var_bx
                        .type            n156_call_bx, @function
n156_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd283:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd283]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
.Lgcsite_main_62:       push             rax
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
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_63:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_282_240
                        add              rsp, 16;                             jmp   n155_var_β
.Lcall_α_282_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n157_binop_α
n156_call_β:            add              rsp, 16;                             jmp   n155_var_β
                        .size            n156_call_bx, .-n156_call_bx
                        .type            n157_binop_bx, @function
n157_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             sno_concat_d@PLT
.Lgcsite_main_65:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_64:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_284_240
                        add              rsp, 32;                             jmp   n155_var_β
.Lbinop_α_284_240:                                                            jmp   n158_assign_α
n157_binop_β:           add              rsp, 32;                             jmp   n155_var_β
                        .size            n157_binop_bx, .-n157_binop_bx
                        .type            n158_assign_bx, @function
n158_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]             # val
                        mov              rsi, rax                             # val
                        mov              rdi, qword ptr [rip + .Lassign_α_285_0] # name
                        call             NV_SET_fn@PLT
.Lgcsite_main_67:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_66:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n159_statement_end_α
.Lassign_α_285_0:       .quad            .Lassign_α_285_0_s
.Lassign_α_285_0_s:     .string          "OUTPUT"
                        .size            n158_assign_bx, .-n158_assign_bx
                        .type            n159_statement_end_bx, @function
n159_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_end_α:   add              rsp, 64;                             jmp   main_γ
                        .size            n159_statement_end_bx, .-n159_statement_end_bx
                        .type            n160_setexit_test_bx, @function
n160_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_288_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_288_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_288_61:
.Lsetexit_test_α_288_1:                                                       jmp   main_γ
                        .size            n160_setexit_test_bx, .-n160_setexit_test_bx
                        .type            n161_statement_begin_bx, @function
n161_statement_begin_bx:
.Lstatement_begin_α_289_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_289_stno
                        .long            14
                        .long            14
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# fail    OUTPUT         =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n161_statement_begin_α:                                                       jmp   n162_lit_string_α
n161_statement_begin_β:                                                       jmp   n165_setexit_test_α
                        .size            n161_statement_begin_bx, .-n161_statement_begin_bx
                        .type            n162_lit_string_bx, @function
n162_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_291_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n163_assign_α
.Llit_string_α_291_0:   .quad            .Llit_string_α_291_0_s
.Llit_string_α_291_0_s: .string          "Pattern match failed"
                        .size            n162_lit_string_bx, .-n162_lit_string_bx
                        .type            n163_assign_bx, @function
n163_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]             # val
                        mov              rsi, rax                             # val
                        mov              rdi, qword ptr [rip + .Lassign_α_292_0] # name
                        call             NV_SET_fn@PLT
.Lgcsite_main_69:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_68:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n164_statement_end_α
.Lassign_α_292_0:       .quad            .Lassign_α_292_0_s
.Lassign_α_292_0_s:     .string          "OUTPUT"
                        .size            n163_assign_bx, .-n163_assign_bx
                        .type            n164_statement_end_bx, @function
n164_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_end_α:   add              rsp, 16;                             jmp   main_γ
                        .size            n164_statement_end_bx, .-n164_statement_end_bx
                        .type            n165_setexit_test_bx, @function
n165_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_295_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_295_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_295_61:
.Lsetexit_test_α_295_1:                                                       jmp   main_γ
                        .size            n165_setexit_test_bx, .-n165_setexit_test_bx
                        .type            n166_goto_bx, @function
n166_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_goto_α:                                                                  jmp   n161_statement_begin_α
n166_goto_β:                                                                  jmp   main_ω
                        .size            n166_goto_bx, .-n166_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        call             sno_setexit_fire_on_end@PLT
.Lgcsite_main_72:       push             rax                                  # gc_poll bb_glue_flat.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_71:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      xor              edi, edi
                        call             exit@PLT
.Lgcsite_main_70:
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
.Lgcsite_main_73:
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
.Lgcsites_main_7:       .quad            74
                        .quad            .Lgcmap_main
                        .quad            0
                        .quad            .Lgccode_main_7
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
                        .quad            137439346946
                        .quad            .Lgcsite_main_45
                        .quad            137439346946
                        .quad            .Lgcsite_main_46
                        .quad            137439346945
                        .quad            .Lgcsite_main_47
                        .quad            137439346945
                        .quad            .Lgcsite_main_48
                        .quad            137438953477
                        .quad            .Lgcsite_main_49
                        .quad            137439346945
                        .quad            .Lgcsite_main_50
                        .quad            137439346945
                        .quad            .Lgcsite_main_51
                        .quad            137439346945
                        .quad            .Lgcsite_main_52
                        .quad            137439346945
                        .quad            .Lgcsite_main_53
                        .quad            137439346945
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
                        .quad            137439346946
                        .quad            .Lgcsite_main_60
                        .quad            137439346945
                        .quad            .Lgcsite_main_61
                        .quad            137439346945
                        .quad            .Lgcsite_main_62
                        .quad            274877906945
                        .quad            .Lgcsite_main_63
                        .quad            412316860417
                        .quad            .Lgcsite_main_64
                        .quad            274877906945
                        .quad            .Lgcsite_main_65
                        .quad            274877906945
                        .quad            .Lgcsite_main_66
                        .quad            343597383681
                        .quad            .Lgcsite_main_67
                        .quad            274877906945
                        .quad            .Lgcsite_main_68
                        .quad            137438953473
                        .quad            .Lgcsite_main_69
                        .quad            68719476737
                        .quad            .Lgcsite_main_70
                        .quad            1
                        .quad            .Lgcsite_main_71
                        .quad            1
                        .quad            .Lgcsite_main_72
                        .quad            1
                        .quad            .Lgcsite_main_73
                        .quad            1
module_init:
                        sub              rsp, 8
                        add              rsp, 8
                        ret
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            6
                        .quad            .Lgcmap_.LTp2
                        .quad            .Lgcmap_.LTp3
                        .quad            .Lgcmap_.LTp4
                        .quad            .Lgcmap_.LTp5
                        .quad            .Lgcmap_.LTp6
                        .quad            .Lgcmap_main
                        .align           8
__gc_frame_sites:       .quad            6
                        .quad            .Lgcsites_.LTp2_2
                        .quad            .Lgcsites_.LTp3_3
                        .quad            .Lgcsites_.LTp4_4
                        .quad            .Lgcsites_.LTp5_5
                        .quad            .Lgcsites_.LTp6_6
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
                        .section         .data
                        .align           8
__alpha_cellp_tab:      .quad            0
                        .section         .rodata
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
