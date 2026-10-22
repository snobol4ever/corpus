                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/calculator/calculator-1-match.sno"
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
                        .type            n0_match_span_bx, @function
n0_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_span_α:        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lmatch_span_α_2_0:     cmp              ecx, r15d;                           jge   .Lmatch_span_α_2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_2_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_2_0
.Lmatch_span_α_2_1:     cmp              ecx, r14d;                           jg    .Lmatch_span_α_2_999
                        add              rsp, 16;                             jmp   .LTp0_ω
.Lmatch_span_α_2_999:   mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   .LTp0_γ
n0_match_span_β:        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   .LTp0_ω
                        .size            n0_match_span_bx, .-n0_match_span_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_res:
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_β:
                                                                              jmp   n0_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_γ:
                        mov              rdx, qword ptr [rsp + 56]
                        mov              rcx, qword ptr [rsp + 48]
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
                        .long            0, 1
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
                        .type            n3_match_any_bx, @function
n3_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_match_any_α:         mov              eax, r14d
                        cmp              eax, r15d;                           jge   .LTp1_ω
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C1]
                        cmp              byte ptr [rdi+rsi], 0;               je    .LTp1_ω
                        add              r14d, 1;                             jmp   .LTp1_γ
n3_match_any_β:         sub              r14d, 1;                             jmp   .LTp1_ω
                        .size            n3_match_any_bx, .-n3_match_any_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp1_res:
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp1_β:
                                                                              jmp   n3_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
.LTp1_γ:
                        mov              rdx, qword ptr [rsp + 40]
                        mov              rcx, qword ptr [rsp + 32]
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
                        .long            0, 1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_.LTp2_2:
.LTp2:
.LTp2_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 104
                        xorps            xmm0, xmm0                           # GCANCHOR .Lgcmap_.LTp2 qword ptr [rbp + -96]
                        movups           xmmword ptr [rbp + -88], xmm0
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -32], 8
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -40], r12
                        .type            n6_match_alternate_bx, @function
n6_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_match_alternate_α:   mov              dword ptr [rbp + -88], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_14_21]
                        mov              qword ptr [rbp + -72], rax;          jmp   n11_match_defer_α
.Lmatch_alternate_α_14_21:
                        lea              rax, [rip + .Lmatch_alternate_α_14_22]
                        mov              qword ptr [rbp + -72], rax;          jmp   n10_match_defer_α
.Lmatch_alternate_α_14_22:
                        lea              rax, [rip + .Lmatch_alternate_α_14_19]
                        mov              qword ptr [rbp + -72], rax;          jmp   n7_match_lit_α
.Lmatch_alternate_γ_6_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_14_40]
                        mov              qword ptr [rbp + -80], rax;          jmp   .Lmatch_alternate_γ_6_as
.Lmatch_alternate_γ_6_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_14_41]
                        mov              qword ptr [rbp + -80], rax;          jmp   .Lmatch_alternate_γ_6_as
.Lmatch_alternate_γ_6_s2:
                        lea              rax, [rip + .Lmatch_alternate_α_14_42]
                        mov              qword ptr [rbp + -80], rax;          jmp   .Lmatch_alternate_γ_6_as
.Lmatch_alternate_α_14_40:
                                                                              jmp   n11_match_defer_β
.Lmatch_alternate_α_14_41:
                                                                              jmp   n10_match_defer_β
.Lmatch_alternate_α_14_42:
                                                                              jmp   n9_match_lit_β
.Lmatch_alternate_γ_6_as:
                                                                              jmp   .LTp2_γ
n6_match_alternate_β:   mov              rax, qword ptr [rbp + -80];          jmp   rax
.Lmatch_alternate_γ_6_af:
.Lmatch_alternate_ω_6_af:
                        mov              r14d, dword ptr [rbp + -88]
                        mov              rax, qword ptr [rbp + -72];          jmp   rax
.Lmatch_alternate_α_14_19:
                                                                              jmp   .LTp2_ω
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
n8_match_defer_α:       sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11936]          # X
                        mov              rdx, qword ptr [r9 + 11944]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_17_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_17_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp2_22:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:102
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp2_21:      mov              r9,  qword ptr [rip + g_rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11944];         jmp   .Lmatch_defer_α_17_10
.Lmatch_defer_α_17_9:   xor              eax, eax
.Lmatch_defer_α_17_10:  test             rax, rax;                            jz    .Lmatch_defer_α_17_0
.Lmatch_defer_α_17_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_17_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_17_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_17_4:
.Lgcsite_.LTp2_20:                                                            jmp   n9_match_lit_α
.Lmatch_defer_α_17_5:
.Lgcsite_.LTp2_19:      cmp              r14d, -2;                            je    n12_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n12_match_abort_β
                        add              rsp, 16;                             jmp   n7_match_lit_β
.Lmatch_defer_α_17_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        lea              rdi, [r9 + 11936]                    # X
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        call             qword ptr [rip + rt_defer_open_cell@GOTPCREL]
.Lgcsite_.LTp2_18:      cmp              rax, -1;                             jne   .Lmatch_defer_vd_17_1
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_.LTp2_17:      mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_17_1:  push             rax
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_17_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_17_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_16:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_17_2:   test             rax, rax;                            je    .Lmatch_defer_α_17_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_17_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_17_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_17_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_17_141
                        lea              rcx, [rip + .Lmatch_defer_α_17_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_17_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_17_42]
                        lea              rdx, [rip + .Lmatch_defer_α_17_43];  jmp   rax
.Lmatch_defer_α_17_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_17_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_17_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_17_44:
.Lgcsite_.LTp2_15:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_17_46
.Lmatch_defer_α_17_45:
.Lgcsite_.LTp2_14:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_17_47
.Lmatch_defer_α_17_42:
.Lgcsite_.LTp2_13:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_17_46
.Lmatch_defer_α_17_43:
.Lgcsite_.LTp2_12:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_17_47
.Lmatch_defer_α_17_141: lea              rcx, [rip + .Lmatch_defer_α_17_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_17_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_17_142]
                        lea              rdx, [rip + .Lmatch_defer_α_17_143]; jmp   rax
.Lmatch_defer_α_17_142:
.Lgcsite_.LTp2_11:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_17_46
.Lmatch_defer_α_17_143:
.Lgcsite_.LTp2_10:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_17_47
.Lmatch_defer_α_17_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp2_9:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_17_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_17_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_8:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_17_2
.Lmatch_defer_α_17_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp2_7:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_17_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_17_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_6:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_17_2
.Lmatch_defer_α_17_61:  sub              rsp, 64
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
                        mov              rcx, qword ptr [rip + Σ@GOTPCREL]
                        mov              r13, qword ptr [rcx + 0]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              r15d, dword ptr [rcx + 0]
                        xor              ecx, ecx
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_17_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_17_62:
.Lgcsite_.LTp2_5:       add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_.LTp2_4:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_17_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_17_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_3:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_17_2
.Lmatch_defer_α_17_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_17_48
.Lmatch_defer_α_17_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp2_2:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_17_0
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp2_1:       mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_17_0:  add              rsp, 144
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
.Lgcsite_.LTp2_0:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_17_49:  cmp              r14d, -2;                            je    n12_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n12_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_17_999
                        add              rsp, 16;                             jmp   n7_match_lit_β
.Lmatch_defer_α_17_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_17_6]
                        push             rcx
                        push             rax;                                 jmp   n9_match_lit_α
.Lmatch_defer_α_17_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n7_match_lit_β
n8_match_defer_β:       cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_17_12
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_17_12
                                                                              jmp   rax
.Lmatch_defer_β_17_12:                                                        jmp   qword ptr [rsp]
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
n10_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_20_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_20_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_20_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_20_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_20_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_20_18
.Lmatch_defer_α_20_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 1                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp2_44:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_43:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lmatch_defer_α_20_4:
.Lgcsite_.LTp2_42:                                                            jmp   .Lmatch_alternate_γ_6_s1
.Lmatch_defer_α_20_5:
.Lgcsite_.LTp2_41:      cmp              r14d, -2;                            je    n12_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n12_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_6_af
.Lmatch_defer_α_20_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp2_40:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_39:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_20_2:   test             rax, rax;                            je    .Lmatch_defer_α_20_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_20_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_20_61
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
.Lgcsite_.LTp2_38:      add              rsp, 48
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
.Lgcsite_.LTp2_37:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_20_47
.Lmatch_defer_α_20_42:
.Lgcsite_.LTp2_36:      add              rsp, 16
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
.Lgcsite_.LTp2_35:      add              rsp, 16
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
.Lgcsite_.LTp2_34:      add              rsp, 0
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
.Lgcsite_.LTp2_33:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_20_47
.Lmatch_defer_α_20_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp2_32:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_31:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_20_2
.Lmatch_defer_α_20_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp2_30:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_29:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_20_2
.Lmatch_defer_α_20_61:  sub              rsp, 64
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
                        mov              rcx, qword ptr [rip + Σ@GOTPCREL]
                        mov              r13, qword ptr [rcx + 0]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              r15d, dword ptr [rcx + 0]
                        xor              ecx, ecx
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_20_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_20_62:
.Lgcsite_.LTp2_28:      add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_.LTp2_27:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_20_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_20_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_26:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_20_2
.Lmatch_defer_α_20_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_20_48
.Lmatch_defer_α_20_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp2_25:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_20_2
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp2_24:      mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_20_2:  add              rsp, 144
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
.Lgcsite_.LTp2_23:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_20_49:  cmp              r14d, -2;                            je    n12_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n12_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_20_999
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_6_af
.Lmatch_defer_α_20_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_20_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_6_s1
.Lmatch_defer_α_20_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_6_af
n10_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_20_12
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_20_12
                                                                              jmp   rax
.Lmatch_defer_β_20_12:                                                        jmp   qword ptr [rsp]
                        .size            n10_match_defer_bx, .-n10_match_defer_bx
                        .type            n11_match_defer_bx, @function
n11_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_21_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_21_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_21_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_21_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_21_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_21_18
.Lmatch_defer_α_21_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 0                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp2_66:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_21_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_21_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_65:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_21_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_21_16:
.Lmatch_defer_α_21_18:  test             rax, rax;                            jz    .Lmatch_defer_α_21_0
.Lmatch_defer_α_21_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_21_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_21_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_21_4:
.Lgcsite_.LTp2_64:                                                            jmp   .Lmatch_alternate_γ_6_s0
.Lmatch_defer_α_21_5:
.Lgcsite_.LTp2_63:      cmp              r14d, -2;                            je    n12_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n12_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_6_af
.Lmatch_defer_α_21_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp2_62:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_21_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_21_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_61:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_21_2:   test             rax, rax;                            je    .Lmatch_defer_α_21_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_21_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_21_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_21_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_21_141
                        lea              rcx, [rip + .Lmatch_defer_α_21_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_21_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_21_42]
                        lea              rdx, [rip + .Lmatch_defer_α_21_43];  jmp   rax
.Lmatch_defer_α_21_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_21_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_21_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_21_44:
.Lgcsite_.LTp2_60:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_21_46
.Lmatch_defer_α_21_45:
.Lgcsite_.LTp2_59:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_21_47
.Lmatch_defer_α_21_42:
.Lgcsite_.LTp2_58:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_21_46
.Lmatch_defer_α_21_43:
.Lgcsite_.LTp2_57:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_21_47
.Lmatch_defer_α_21_141: lea              rcx, [rip + .Lmatch_defer_α_21_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_21_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_21_142]
                        lea              rdx, [rip + .Lmatch_defer_α_21_143]; jmp   rax
.Lmatch_defer_α_21_142:
.Lgcsite_.LTp2_56:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_21_46
.Lmatch_defer_α_21_143:
.Lgcsite_.LTp2_55:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_21_47
.Lmatch_defer_α_21_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp2_54:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_21_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_21_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_53:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_21_2
.Lmatch_defer_α_21_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp2_52:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_21_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_21_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_51:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_21_2
.Lmatch_defer_α_21_61:  sub              rsp, 64
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
                        mov              rcx, qword ptr [rip + Σ@GOTPCREL]
                        mov              r13, qword ptr [rcx + 0]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              r15d, dword ptr [rcx + 0]
                        xor              ecx, ecx
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_21_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_21_62:
.Lgcsite_.LTp2_50:      add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_.LTp2_49:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_21_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_21_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_48:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_21_2
.Lmatch_defer_α_21_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_21_48
.Lmatch_defer_α_21_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp2_47:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_21_3
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp2_46:      mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_21_3:  add              rsp, 144
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
.Lgcsite_.LTp2_45:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_21_49:  cmp              r14d, -2;                            je    n12_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n12_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_21_999
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_6_af
.Lmatch_defer_α_21_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_21_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_6_s0
.Lmatch_defer_α_21_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_6_af
n11_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_21_12
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_21_12
                                                                              jmp   rax
.Lmatch_defer_β_21_12:                                                        jmp   qword ptr [rsp]
                        .size            n11_match_defer_bx, .-n11_match_defer_bx
                        .type            n12_match_abort_bx, @function
n12_match_abort_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_match_abort_α:      mov              r14d, -2;                            jmp   .LTp2_ω
n12_match_abort_β:      mov              r14d, -2;                            jmp   .LTp2_ω
                        .size            n12_match_abort_bx, .-n12_match_abort_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp2_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp2_β:
                                                                              jmp   n6_match_alternate_β
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
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_.LTp2:
                        .quad            448023055706
                        .quad            17179869208
                        .quad            0
                        .quad            104
                        .quad            13
                        .quad            8804682956712
                        .quad            8813272891312
                        .quad            8813272891320
                        .quad            8804682956736
                        .quad            8804682956744
                        .quad            8804682956752
                        .quad            8804682956760
                        .quad            17596481011680
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_.LTp2_2:      .quad            67
                        .quad            .Lgcmap_.LTp2
                        .quad            9223389626893336584
                        .quad            .Lgccode_.LTp2_2
                        .quad            .Lgcsite_.LTp2_22-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_21-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_20-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_19-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_18-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_17-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_16-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_15-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_14-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_13-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_12-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_11-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_10-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_9-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_8-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_7-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_6-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_5-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_4-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_3-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_2-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_1-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_0-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_44-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_43-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_42-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_41-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_40-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_39-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_38-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_37-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_36-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_35-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_34-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_33-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_32-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_31-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_30-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_29-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_28-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_27-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_26-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_25-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_24-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_23-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_66-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_65-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_64-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_63-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_62-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_61-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_60-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_59-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_58-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_57-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_56-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_55-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_54-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_53-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_52-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_51-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_50-.Lgccode_.LTp2_2
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_49-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_48-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_47-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_46-.Lgccode_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_45-.Lgccode_.LTp2_2
                        .quad            196609
                        .popsection
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp2:            .quad            .LTp2
                        .long            0, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_.LTp3_3:
.LTp3:
.LTp3_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 104
                        xorps            xmm0, xmm0                           # GCANCHOR .Lgcmap_.LTp3 qword ptr [rbp + -96]
                        movups           xmmword ptr [rbp + -88], xmm0
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -32], 8
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -40], r12
                        .type            n23_match_alternate_bx, @function
n23_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_match_alternate_α:  mov              dword ptr [rbp + -88], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_31_21]
                        mov              qword ptr [rbp + -72], rax;          jmp   n27_match_lit_α
.Lmatch_alternate_α_31_21:
                        lea              rax, [rip + .Lmatch_alternate_α_31_22]
                        mov              qword ptr [rbp + -72], rax;          jmp   n25_match_lit_α
.Lmatch_alternate_α_31_22:
                        lea              rax, [rip + .Lmatch_alternate_α_31_19]
                        mov              qword ptr [rbp + -72], rax;          jmp   n24_match_defer_α
.Lmatch_alternate_γ_23_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_31_40]
                        mov              qword ptr [rbp + -80], rax;          jmp   .Lmatch_alternate_γ_23_as
.Lmatch_alternate_γ_23_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_31_41]
                        mov              qword ptr [rbp + -80], rax;          jmp   .Lmatch_alternate_γ_23_as
.Lmatch_alternate_γ_23_s2:
                        lea              rax, [rip + .Lmatch_alternate_α_31_42]
                        mov              qword ptr [rbp + -80], rax;          jmp   .Lmatch_alternate_γ_23_as
.Lmatch_alternate_α_31_40:
                                                                              jmp   n28_match_defer_β
.Lmatch_alternate_α_31_41:
                                                                              jmp   n26_match_defer_β
.Lmatch_alternate_α_31_42:
                                                                              jmp   n24_match_defer_β
.Lmatch_alternate_γ_23_as:
                                                                              jmp   .LTp3_γ
n23_match_alternate_β:  mov              rax, qword ptr [rbp + -80];          jmp   rax
.Lmatch_alternate_γ_23_af:
.Lmatch_alternate_ω_23_af:
                        mov              r14d, dword ptr [rbp + -88]
                        mov              rax, qword ptr [rbp + -72];          jmp   rax
.Lmatch_alternate_α_31_19:
                                                                              jmp   .LTp3_ω
                        .size            n23_match_alternate_bx, .-n23_match_alternate_bx
                        .type            n24_match_defer_bx, @function
n24_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_32_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_32_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_32_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_32_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_32_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_32_18
.Lmatch_defer_α_32_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 0                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp3_21:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_32_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_32_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_20:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_32_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_32_16:
.Lmatch_defer_α_32_18:  test             rax, rax;                            jz    .Lmatch_defer_α_32_0
.Lmatch_defer_α_32_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_32_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_32_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_32_4:
.Lgcsite_.LTp3_19:                                                            jmp   .Lmatch_alternate_γ_23_s2
.Lmatch_defer_α_32_5:
.Lgcsite_.LTp3_18:      cmp              r14d, -2;                            je    n29_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n29_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_23_af
.Lmatch_defer_α_32_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp3_17:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_32_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_32_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_16:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_32_2:   test             rax, rax;                            je    .Lmatch_defer_α_32_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_32_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_32_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_32_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_32_141
                        lea              rcx, [rip + .Lmatch_defer_α_32_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_32_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_32_42]
                        lea              rdx, [rip + .Lmatch_defer_α_32_43];  jmp   rax
.Lmatch_defer_α_32_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_32_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_32_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_32_44:
.Lgcsite_.LTp3_15:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_32_46
.Lmatch_defer_α_32_45:
.Lgcsite_.LTp3_14:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_32_47
.Lmatch_defer_α_32_42:
.Lgcsite_.LTp3_13:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_32_46
.Lmatch_defer_α_32_43:
.Lgcsite_.LTp3_12:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_32_47
.Lmatch_defer_α_32_141: lea              rcx, [rip + .Lmatch_defer_α_32_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_32_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_32_142]
                        lea              rdx, [rip + .Lmatch_defer_α_32_143]; jmp   rax
.Lmatch_defer_α_32_142:
.Lgcsite_.LTp3_11:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_32_46
.Lmatch_defer_α_32_143:
.Lgcsite_.LTp3_10:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_32_47
.Lmatch_defer_α_32_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp3_9:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_32_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_32_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_8:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_32_2
.Lmatch_defer_α_32_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp3_7:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_32_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_32_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_6:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_32_2
.Lmatch_defer_α_32_61:  sub              rsp, 64
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
                        mov              rcx, qword ptr [rip + Σ@GOTPCREL]
                        mov              r13, qword ptr [rcx + 0]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              r15d, dword ptr [rcx + 0]
                        xor              ecx, ecx
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_32_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_32_62:
.Lgcsite_.LTp3_5:       add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_.LTp3_4:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_32_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_32_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_3:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_32_2
.Lmatch_defer_α_32_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_32_48
.Lmatch_defer_α_32_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp3_2:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_32_4
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp3_1:       mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_32_4:  add              rsp, 144
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
.Lgcsite_.LTp3_0:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_32_49:  cmp              r14d, -2;                            je    n29_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n29_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_32_999
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_23_af
.Lmatch_defer_α_32_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_32_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_23_s2
.Lmatch_defer_α_32_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_23_af
n24_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_32_12
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_32_12
                                                                              jmp   rax
.Lmatch_defer_β_32_12:                                                        jmp   qword ptr [rsp]
                        .size            n24_match_defer_bx, .-n24_match_defer_bx
                        .type            n25_match_lit_bx, @function
n25_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_23_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   .Lmatch_alternate_ω_23_af
                        add              r14d, 1;                             jmp   n26_match_defer_α
n25_match_lit_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_23_af
                        .size            n25_match_lit_bx, .-n25_match_lit_bx
                        .type            n26_match_defer_bx, @function
n26_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_match_defer_α:      sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11904]          # F
                        mov              rdx, qword ptr [r9 + 11912]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_35_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_35_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp3_44:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:102
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp3_43:      mov              r9,  qword ptr [rip + g_rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11912];         jmp   .Lmatch_defer_α_35_10
.Lmatch_defer_α_35_9:   xor              eax, eax
.Lmatch_defer_α_35_10:  test             rax, rax;                            jz    .Lmatch_defer_α_35_0
.Lmatch_defer_α_35_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_35_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_35_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_35_4:
.Lgcsite_.LTp3_42:                                                            jmp   .Lmatch_alternate_γ_23_s1
.Lmatch_defer_α_35_5:
.Lgcsite_.LTp3_41:      cmp              r14d, -2;                            je    n29_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n29_match_abort_β
                        add              rsp, 16;                             jmp   n25_match_lit_β
.Lmatch_defer_α_35_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        lea              rdi, [r9 + 11904]                    # F
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        call             qword ptr [rip + rt_defer_open_cell@GOTPCREL]
.Lgcsite_.LTp3_40:      cmp              rax, -1;                             jne   .Lmatch_defer_vd_35_6
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_.LTp3_39:      mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_35_6:  push             rax
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
.Lgcsite_.LTp3_38:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_35_2:   test             rax, rax;                            je    .Lmatch_defer_α_35_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_35_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_35_61
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
.Lgcsite_.LTp3_37:      add              rsp, 48
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
.Lgcsite_.LTp3_36:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_35_47
.Lmatch_defer_α_35_42:
.Lgcsite_.LTp3_35:      add              rsp, 16
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
.Lgcsite_.LTp3_34:      add              rsp, 16
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
.Lgcsite_.LTp3_33:      add              rsp, 0
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
.Lgcsite_.LTp3_32:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_35_47
.Lmatch_defer_α_35_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp3_31:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_.LTp3_30:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_35_2
.Lmatch_defer_α_35_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp3_29:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_.LTp3_28:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_35_2
.Lmatch_defer_α_35_61:  sub              rsp, 64
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
                        mov              rcx, qword ptr [rip + Σ@GOTPCREL]
                        mov              r13, qword ptr [rcx + 0]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              r15d, dword ptr [rcx + 0]
                        xor              ecx, ecx
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_35_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_35_62:
.Lgcsite_.LTp3_27:      add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_.LTp3_26:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_35_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_35_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_25:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_35_2
.Lmatch_defer_α_35_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_35_48
.Lmatch_defer_α_35_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp3_24:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_35_5
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp3_23:      mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_35_5:  add              rsp, 144
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
.Lgcsite_.LTp3_22:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_35_49:  cmp              r14d, -2;                            je    n29_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n29_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_35_999
                        add              rsp, 16;                             jmp   n25_match_lit_β
.Lmatch_defer_α_35_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_35_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_23_s1
.Lmatch_defer_α_35_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n25_match_lit_β
n26_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_35_12
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_35_12
                                                                              jmp   rax
.Lmatch_defer_β_35_12:                                                        jmp   qword ptr [rsp]
                        .size            n26_match_defer_bx, .-n26_match_defer_bx
                        .type            n27_match_lit_bx, @function
n27_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_23_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   .Lmatch_alternate_ω_23_af
                        add              r14d, 1;                             jmp   n28_match_defer_α
n27_match_lit_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_23_af
                        .size            n27_match_lit_bx, .-n27_match_lit_bx
                        .type            n28_match_defer_bx, @function
n28_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_match_defer_α:      sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11904]          # F
                        mov              rdx, qword ptr [r9 + 11912]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_38_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_38_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp3_67:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:102
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp3_66:      mov              r9,  qword ptr [rip + g_rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11912];         jmp   .Lmatch_defer_α_38_10
.Lmatch_defer_α_38_9:   xor              eax, eax
.Lmatch_defer_α_38_10:  test             rax, rax;                            jz    .Lmatch_defer_α_38_0
.Lmatch_defer_α_38_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_38_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_38_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_38_4:
.Lgcsite_.LTp3_65:                                                            jmp   .Lmatch_alternate_γ_23_s0
.Lmatch_defer_α_38_5:
.Lgcsite_.LTp3_64:      cmp              r14d, -2;                            je    n29_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n29_match_abort_β
                        add              rsp, 16;                             jmp   n27_match_lit_β
.Lmatch_defer_α_38_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        lea              rdi, [r9 + 11904]                    # F
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        call             qword ptr [rip + rt_defer_open_cell@GOTPCREL]
.Lgcsite_.LTp3_63:      cmp              rax, -1;                             jne   .Lmatch_defer_vd_38_8
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_.LTp3_62:      mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_38_8:  push             rax
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_38_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_38_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_61:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_38_2:   test             rax, rax;                            je    .Lmatch_defer_α_38_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_38_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_38_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_38_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_38_141
                        lea              rcx, [rip + .Lmatch_defer_α_38_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_38_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_38_42]
                        lea              rdx, [rip + .Lmatch_defer_α_38_43];  jmp   rax
.Lmatch_defer_α_38_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_38_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_38_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_38_44:
.Lgcsite_.LTp3_60:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_38_46
.Lmatch_defer_α_38_45:
.Lgcsite_.LTp3_59:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_38_47
.Lmatch_defer_α_38_42:
.Lgcsite_.LTp3_58:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_38_46
.Lmatch_defer_α_38_43:
.Lgcsite_.LTp3_57:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_38_47
.Lmatch_defer_α_38_141: lea              rcx, [rip + .Lmatch_defer_α_38_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_38_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_38_142]
                        lea              rdx, [rip + .Lmatch_defer_α_38_143]; jmp   rax
.Lmatch_defer_α_38_142:
.Lgcsite_.LTp3_56:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_38_46
.Lmatch_defer_α_38_143:
.Lgcsite_.LTp3_55:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_38_47
.Lmatch_defer_α_38_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp3_54:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_38_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_38_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_53:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_38_2
.Lmatch_defer_α_38_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp3_52:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_38_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_38_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_51:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_38_2
.Lmatch_defer_α_38_61:  sub              rsp, 64
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
                        mov              rcx, qword ptr [rip + Σ@GOTPCREL]
                        mov              r13, qword ptr [rcx + 0]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              r15d, dword ptr [rcx + 0]
                        xor              ecx, ecx
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_38_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_38_62:
.Lgcsite_.LTp3_50:      add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_.LTp3_49:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_38_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_38_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_48:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_38_2
.Lmatch_defer_α_38_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_38_48
.Lmatch_defer_α_38_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp3_47:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_38_7
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp3_46:      mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_38_7:  add              rsp, 144
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
.Lgcsite_.LTp3_45:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_38_49:  cmp              r14d, -2;                            je    n29_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n29_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_38_999
                        add              rsp, 16;                             jmp   n27_match_lit_β
.Lmatch_defer_α_38_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_38_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_23_s0
.Lmatch_defer_α_38_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n27_match_lit_β
n28_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_38_12
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_38_12
                                                                              jmp   rax
.Lmatch_defer_β_38_12:                                                        jmp   qword ptr [rsp]
                        .size            n28_match_defer_bx, .-n28_match_defer_bx
                        .type            n29_match_abort_bx, @function
n29_match_abort_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_match_abort_α:      mov              r14d, -2;                            jmp   .LTp3_ω
n29_match_abort_β:      mov              r14d, -2;                            jmp   .LTp3_ω
                        .size            n29_match_abort_bx, .-n29_match_abort_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp3_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp3_β:
                                                                              jmp   n23_match_alternate_β
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
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_.LTp3:
                        .quad            448023055706
                        .quad            17179869208
                        .quad            0
                        .quad            104
                        .quad            13
                        .quad            8804682956712
                        .quad            8813272891312
                        .quad            8813272891320
                        .quad            8804682956736
                        .quad            8804682956744
                        .quad            8804682956752
                        .quad            8804682956760
                        .quad            17596481011680
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_.LTp3_3:      .quad            68
                        .quad            .Lgcmap_.LTp3
                        .quad            9223389626893336584
                        .quad            .Lgccode_.LTp3_3
                        .quad            .Lgcsite_.LTp3_21-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_20-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_19-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_18-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_17-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_16-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_15-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_14-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_13-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_12-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_11-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_10-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_9-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_8-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_7-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_6-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_5-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_4-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_3-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_2-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_1-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_0-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_44-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_43-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_42-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_41-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_40-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_39-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_38-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_37-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_36-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_35-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_34-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_33-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_32-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_31-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_30-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_29-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_28-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_27-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_26-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_25-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_24-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_23-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_22-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_67-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_66-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_65-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_64-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_63-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_62-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_61-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_60-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_59-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_58-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_57-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_56-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_55-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_54-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_53-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_52-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_51-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_50-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_49-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_48-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_47-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_46-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_45-.Lgccode_.LTp3_3
                        .quad            196609
                        .popsection
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp3:            .quad            .LTp3
                        .long            0, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_.LTp4_4:
.LTp4:
.LTp4_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 136
                        xorps            xmm0, xmm0                           # GCANCHOR .Lgcmap_.LTp4 qword ptr [rbp + -128]
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
                        .type            n40_match_alternate_bx, @function
n40_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_match_alternate_α:  mov              dword ptr [rbp + -120], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_50_21]
                        mov              qword ptr [rbp + -104], rax;         jmp   n45_match_defer_α
.Lmatch_alternate_α_50_21:
                        lea              rax, [rip + .Lmatch_alternate_α_50_22]
                        mov              qword ptr [rbp + -104], rax;         jmp   n42_match_defer_α
.Lmatch_alternate_α_50_22:
                        lea              rax, [rip + .Lmatch_alternate_α_50_19]
                        mov              qword ptr [rbp + -104], rax;         jmp   n41_match_defer_α
.Lmatch_alternate_γ_40_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_50_40]
                        mov              qword ptr [rbp + -112], rax;         jmp   .Lmatch_alternate_γ_40_as
.Lmatch_alternate_γ_40_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_50_41]
                        mov              qword ptr [rbp + -112], rax;         jmp   .Lmatch_alternate_γ_40_as
.Lmatch_alternate_γ_40_s2:
                        lea              rax, [rip + .Lmatch_alternate_α_50_42]
                        mov              qword ptr [rbp + -112], rax;         jmp   .Lmatch_alternate_γ_40_as
.Lmatch_alternate_α_50_40:
                                                                              jmp   n47_match_defer_β
.Lmatch_alternate_α_50_41:
                                                                              jmp   n44_match_defer_β
.Lmatch_alternate_α_50_42:
                                                                              jmp   n41_match_defer_β
.Lmatch_alternate_γ_40_as:
                                                                              jmp   .LTp4_γ
n40_match_alternate_β:  mov              rax, qword ptr [rbp + -112];         jmp   rax
.Lmatch_alternate_γ_40_af:
.Lmatch_alternate_ω_40_af:
                        mov              r14d, dword ptr [rbp + -120]
                        mov              rax, qword ptr [rbp + -104];         jmp   rax
.Lmatch_alternate_α_50_19:
                                                                              jmp   .LTp4_ω
                        .size            n40_match_alternate_bx, .-n40_match_alternate_bx
                        .type            n41_match_defer_bx, @function
n41_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_51_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_51_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_51_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_51_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_51_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_51_18
.Lmatch_defer_α_51_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 2                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp4_21:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_.LTp4_20:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_.LTp4_19:                                                            jmp   .Lmatch_alternate_γ_40_s2
.Lmatch_defer_α_51_5:
.Lgcsite_.LTp4_18:      cmp              r14d, -2;                            je    n48_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n48_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_40_af
.Lmatch_defer_α_51_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp4_17:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_.LTp4_16:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_51_2:   test             rax, rax;                            je    .Lmatch_defer_α_51_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_51_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_51_61
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
.Lgcsite_.LTp4_15:      add              rsp, 48
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
.Lgcsite_.LTp4_14:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_51_47
.Lmatch_defer_α_51_42:
.Lgcsite_.LTp4_13:      add              rsp, 16
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
.Lgcsite_.LTp4_12:      add              rsp, 16
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
.Lgcsite_.LTp4_11:      add              rsp, 0
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
.Lgcsite_.LTp4_10:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_51_47
.Lmatch_defer_α_51_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp4_9:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_.LTp4_8:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_51_2
.Lmatch_defer_α_51_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp4_7:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_.LTp4_6:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_51_2
.Lmatch_defer_α_51_61:  sub              rsp, 64
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
                        mov              rcx, qword ptr [rip + Σ@GOTPCREL]
                        mov              r13, qword ptr [rcx + 0]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              r15d, dword ptr [rcx + 0]
                        xor              ecx, ecx
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_51_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_51_62:
.Lgcsite_.LTp4_5:       add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_.LTp4_4:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_51_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_51_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_3:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_51_2
.Lmatch_defer_α_51_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_51_48
.Lmatch_defer_α_51_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp4_2:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_51_9
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp4_1:       mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_51_9:  add              rsp, 144
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
.Lgcsite_.LTp4_0:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_51_49:  cmp              r14d, -2;                            je    n48_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n48_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_51_999
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_40_af
.Lmatch_defer_α_51_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_51_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_40_s2
.Lmatch_defer_α_51_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_40_af
n41_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_51_12
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_51_12
                                                                              jmp   rax
.Lmatch_defer_β_51_12:                                                        jmp   qword ptr [rsp]
                        .size            n41_match_defer_bx, .-n41_match_defer_bx
                        .type            n42_match_defer_bx, @function
n42_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_52_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_52_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_52_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_52_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_52_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_52_18
.Lmatch_defer_α_52_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 1                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp4_43:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_52_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_52_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_42:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_52_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_52_16:
.Lmatch_defer_α_52_18:  test             rax, rax;                            jz    .Lmatch_defer_α_52_0
.Lmatch_defer_α_52_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_52_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_52_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_52_4:
.Lgcsite_.LTp4_41:                                                            jmp   n43_match_lit_α
.Lmatch_defer_α_52_5:
.Lgcsite_.LTp4_40:      cmp              r14d, -2;                            je    n48_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n48_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_40_af
.Lmatch_defer_α_52_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp4_39:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_52_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_52_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_38:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_52_2:   test             rax, rax;                            je    .Lmatch_defer_α_52_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_52_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_52_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_52_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_52_141
                        lea              rcx, [rip + .Lmatch_defer_α_52_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_52_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_52_42]
                        lea              rdx, [rip + .Lmatch_defer_α_52_43];  jmp   rax
.Lmatch_defer_α_52_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_52_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_52_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_52_44:
.Lgcsite_.LTp4_37:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_52_46
.Lmatch_defer_α_52_45:
.Lgcsite_.LTp4_36:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_52_47
.Lmatch_defer_α_52_42:
.Lgcsite_.LTp4_35:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_52_46
.Lmatch_defer_α_52_43:
.Lgcsite_.LTp4_34:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_52_47
.Lmatch_defer_α_52_141: lea              rcx, [rip + .Lmatch_defer_α_52_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_52_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_52_142]
                        lea              rdx, [rip + .Lmatch_defer_α_52_143]; jmp   rax
.Lmatch_defer_α_52_142:
.Lgcsite_.LTp4_33:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_52_46
.Lmatch_defer_α_52_143:
.Lgcsite_.LTp4_32:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_52_47
.Lmatch_defer_α_52_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp4_31:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_52_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_52_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_30:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_52_2
.Lmatch_defer_α_52_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp4_29:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_52_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_52_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_28:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_52_2
.Lmatch_defer_α_52_61:  sub              rsp, 64
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
                        mov              rcx, qword ptr [rip + Σ@GOTPCREL]
                        mov              r13, qword ptr [rcx + 0]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              r15d, dword ptr [rcx + 0]
                        xor              ecx, ecx
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_52_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_52_62:
.Lgcsite_.LTp4_27:      add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_.LTp4_26:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_52_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_52_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_25:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_52_2
.Lmatch_defer_α_52_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_52_48
.Lmatch_defer_α_52_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp4_24:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_52_10
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp4_23:      mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_52_10: add              rsp, 144
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
.Lgcsite_.LTp4_22:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_52_49:  cmp              r14d, -2;                            je    n48_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n48_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_52_999
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_40_af
.Lmatch_defer_α_52_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_52_6]
                        push             rcx
                        push             rax;                                 jmp   n43_match_lit_α
.Lmatch_defer_α_52_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_40_af
n42_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_52_12
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_52_12
                                                                              jmp   rax
.Lmatch_defer_β_52_12:                                                        jmp   qword ptr [rsp]
                        .size            n42_match_defer_bx, .-n42_match_defer_bx
                        .type            n43_match_lit_bx, @function
n43_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n42_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47;                             jne   n42_match_defer_β
                        add              r14d, 1;                             jmp   n44_match_defer_α
n43_match_lit_β:        sub              r14d, 1;                             jmp   n42_match_defer_β
                        .size            n43_match_lit_bx, .-n43_match_lit_bx
                        .type            n44_match_defer_bx, @function
n44_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_match_defer_α:      sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # T
                        mov              rdx, qword ptr [r9 + 11928]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_55_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_55_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp4_66:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:102
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp4_65:      mov              r9,  qword ptr [rip + g_rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11928];         jmp   .Lmatch_defer_α_55_10
.Lmatch_defer_α_55_9:   xor              eax, eax
.Lmatch_defer_α_55_10:  test             rax, rax;                            jz    .Lmatch_defer_α_55_0
.Lmatch_defer_α_55_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_55_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_55_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_55_4:
.Lgcsite_.LTp4_64:                                                            jmp   .Lmatch_alternate_γ_40_s1
.Lmatch_defer_α_55_5:
.Lgcsite_.LTp4_63:      cmp              r14d, -2;                            je    n48_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n48_match_abort_β
                        add              rsp, 16;                             jmp   n43_match_lit_β
.Lmatch_defer_α_55_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        lea              rdi, [r9 + 11920]                    # T
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        call             qword ptr [rip + rt_defer_open_cell@GOTPCREL]
.Lgcsite_.LTp4_62:      cmp              rax, -1;                             jne   .Lmatch_defer_vd_55_12
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_.LTp4_61:      mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_55_12: push             rax
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_55_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_55_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_60:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_55_2:   test             rax, rax;                            je    .Lmatch_defer_α_55_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_55_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_55_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_55_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_55_141
                        lea              rcx, [rip + .Lmatch_defer_α_55_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_55_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_55_42]
                        lea              rdx, [rip + .Lmatch_defer_α_55_43];  jmp   rax
.Lmatch_defer_α_55_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_55_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_55_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_55_44:
.Lgcsite_.LTp4_59:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_55_46
.Lmatch_defer_α_55_45:
.Lgcsite_.LTp4_58:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_55_47
.Lmatch_defer_α_55_42:
.Lgcsite_.LTp4_57:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_55_46
.Lmatch_defer_α_55_43:
.Lgcsite_.LTp4_56:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_55_47
.Lmatch_defer_α_55_141: lea              rcx, [rip + .Lmatch_defer_α_55_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_55_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_55_142]
                        lea              rdx, [rip + .Lmatch_defer_α_55_143]; jmp   rax
.Lmatch_defer_α_55_142:
.Lgcsite_.LTp4_55:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_55_46
.Lmatch_defer_α_55_143:
.Lgcsite_.LTp4_54:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_55_47
.Lmatch_defer_α_55_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp4_53:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_55_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_55_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_52:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_55_2
.Lmatch_defer_α_55_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp4_51:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_55_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_55_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_50:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_55_2
.Lmatch_defer_α_55_61:  sub              rsp, 64
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
                        mov              rcx, qword ptr [rip + Σ@GOTPCREL]
                        mov              r13, qword ptr [rcx + 0]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              r15d, dword ptr [rcx + 0]
                        xor              ecx, ecx
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_55_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_55_62:
.Lgcsite_.LTp4_49:      add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_.LTp4_48:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_55_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_55_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_47:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_55_2
.Lmatch_defer_α_55_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_55_48
.Lmatch_defer_α_55_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp4_46:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_55_11
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp4_45:      mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_55_11: add              rsp, 144
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
.Lgcsite_.LTp4_44:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_55_49:  cmp              r14d, -2;                            je    n48_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n48_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_55_999
                        add              rsp, 16;                             jmp   n43_match_lit_β
.Lmatch_defer_α_55_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_55_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_40_s1
.Lmatch_defer_α_55_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n43_match_lit_β
n44_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_55_12
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_55_12
                                                                              jmp   rax
.Lmatch_defer_β_55_12:                                                        jmp   qword ptr [rsp]
                        .size            n44_match_defer_bx, .-n44_match_defer_bx
                        .type            n45_match_defer_bx, @function
n45_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_56_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_56_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_56_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_56_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_56_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_56_18
.Lmatch_defer_α_56_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 0                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp4_88:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_.LTp4_87:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_.LTp4_86:                                                            jmp   n46_match_lit_α
.Lmatch_defer_α_56_5:
.Lgcsite_.LTp4_85:      cmp              r14d, -2;                            je    n48_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n48_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_40_af
.Lmatch_defer_α_56_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp4_84:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_.LTp4_83:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_56_2:   test             rax, rax;                            je    .Lmatch_defer_α_56_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_56_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_56_61
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
.Lgcsite_.LTp4_82:      add              rsp, 48
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
.Lgcsite_.LTp4_81:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_56_47
.Lmatch_defer_α_56_42:
.Lgcsite_.LTp4_80:      add              rsp, 16
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
.Lgcsite_.LTp4_79:      add              rsp, 16
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
.Lgcsite_.LTp4_78:      add              rsp, 0
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
.Lgcsite_.LTp4_77:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_56_47
.Lmatch_defer_α_56_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp4_76:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_.LTp4_75:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_56_2
.Lmatch_defer_α_56_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp4_74:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_.LTp4_73:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_56_2
.Lmatch_defer_α_56_61:  sub              rsp, 64
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
                        mov              rcx, qword ptr [rip + Σ@GOTPCREL]
                        mov              r13, qword ptr [rcx + 0]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              r15d, dword ptr [rcx + 0]
                        xor              ecx, ecx
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_56_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_56_62:
.Lgcsite_.LTp4_72:      add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_.LTp4_71:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_56_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_56_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_70:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_56_2
.Lmatch_defer_α_56_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_56_48
.Lmatch_defer_α_56_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp4_69:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_56_13
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp4_68:      mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_56_13: add              rsp, 144
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
.Lgcsite_.LTp4_67:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_56_49:  cmp              r14d, -2;                            je    n48_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n48_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_56_999
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_40_af
.Lmatch_defer_α_56_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_56_6]
                        push             rcx
                        push             rax;                                 jmp   n46_match_lit_α
.Lmatch_defer_α_56_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_40_af
n45_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_56_12
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_56_12
                                                                              jmp   rax
.Lmatch_defer_β_56_12:                                                        jmp   qword ptr [rsp]
                        .size            n45_match_defer_bx, .-n45_match_defer_bx
                        .type            n46_match_lit_bx, @function
n46_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n45_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42;                             jne   n45_match_defer_β
                        add              r14d, 1;                             jmp   n47_match_defer_α
n46_match_lit_β:        sub              r14d, 1;                             jmp   n45_match_defer_β
                        .size            n46_match_lit_bx, .-n46_match_lit_bx
                        .type            n47_match_defer_bx, @function
n47_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_match_defer_α:      sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # T
                        mov              rdx, qword ptr [r9 + 11928]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_59_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_59_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp4_111:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:102
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp4_110:     mov              r9,  qword ptr [rip + g_rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11928];         jmp   .Lmatch_defer_α_59_10
.Lmatch_defer_α_59_9:   xor              eax, eax
.Lmatch_defer_α_59_10:  test             rax, rax;                            jz    .Lmatch_defer_α_59_0
.Lmatch_defer_α_59_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_59_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_59_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_59_4:
.Lgcsite_.LTp4_109:                                                           jmp   .Lmatch_alternate_γ_40_s0
.Lmatch_defer_α_59_5:
.Lgcsite_.LTp4_108:     cmp              r14d, -2;                            je    n48_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n48_match_abort_β
                        add              rsp, 16;                             jmp   n46_match_lit_β
.Lmatch_defer_α_59_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        lea              rdi, [r9 + 11920]                    # T
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        call             qword ptr [rip + rt_defer_open_cell@GOTPCREL]
.Lgcsite_.LTp4_107:     cmp              rax, -1;                             jne   .Lmatch_defer_vd_59_15
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_.LTp4_106:     mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_59_15: push             rax
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_59_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_59_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_105:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_59_2:   test             rax, rax;                            je    .Lmatch_defer_α_59_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_59_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_59_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_59_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_59_141
                        lea              rcx, [rip + .Lmatch_defer_α_59_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_59_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_59_42]
                        lea              rdx, [rip + .Lmatch_defer_α_59_43];  jmp   rax
.Lmatch_defer_α_59_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_59_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_59_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_59_44:
.Lgcsite_.LTp4_104:     add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_59_46
.Lmatch_defer_α_59_45:
.Lgcsite_.LTp4_103:     add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_59_47
.Lmatch_defer_α_59_42:
.Lgcsite_.LTp4_102:     add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_59_46
.Lmatch_defer_α_59_43:
.Lgcsite_.LTp4_101:     add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_59_47
.Lmatch_defer_α_59_141: lea              rcx, [rip + .Lmatch_defer_α_59_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_59_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_59_142]
                        lea              rdx, [rip + .Lmatch_defer_α_59_143]; jmp   rax
.Lmatch_defer_α_59_142:
.Lgcsite_.LTp4_100:     add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_59_46
.Lmatch_defer_α_59_143:
.Lgcsite_.LTp4_99:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_59_47
.Lmatch_defer_α_59_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp4_98:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_59_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_59_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_97:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_59_2
.Lmatch_defer_α_59_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp4_96:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_59_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_59_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_95:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_59_2
.Lmatch_defer_α_59_61:  sub              rsp, 64
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
                        mov              rcx, qword ptr [rip + Σ@GOTPCREL]
                        mov              r13, qword ptr [rcx + 0]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              r15d, dword ptr [rcx + 0]
                        xor              ecx, ecx
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_59_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_59_62:
.Lgcsite_.LTp4_94:      add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_.LTp4_93:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_59_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_59_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_92:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_59_2
.Lmatch_defer_α_59_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_59_48
.Lmatch_defer_α_59_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp4_91:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_59_14
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp4_90:      mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_59_14: add              rsp, 144
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
.Lgcsite_.LTp4_89:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_59_49:  cmp              r14d, -2;                            je    n48_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n48_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_59_999
                        add              rsp, 16;                             jmp   n46_match_lit_β
.Lmatch_defer_α_59_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_59_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_40_s0
.Lmatch_defer_α_59_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n46_match_lit_β
n47_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_59_12
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_59_12
                                                                              jmp   rax
.Lmatch_defer_β_59_12:                                                        jmp   qword ptr [rsp]
                        .size            n47_match_defer_bx, .-n47_match_defer_bx
                        .type            n48_match_abort_bx, @function
n48_match_abort_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_match_abort_α:      mov              r14d, -2;                            jmp   .LTp4_ω
n48_match_abort_β:      mov              r14d, -2;                            jmp   .LTp4_ω
                        .size            n48_match_abort_bx, .-n48_match_abort_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp4_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp4_β:
                                                                              jmp   n40_match_alternate_β
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
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_.LTp4:
                        .quad            585462009178
                        .quad            17179869208
                        .quad            0
                        .quad            136
                        .quad            15
                        .quad            8804682956680
                        .quad            8813272891280
                        .quad            8813272891288
                        .quad            8804682956704
                        .quad            8804682956712
                        .quad            17596481011632
                        .quad            17596481011648
                        .quad            8804682956752
                        .quad            8804682956760
                        .quad            17596481011680
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_.LTp4_4:      .quad            112
                        .quad            .Lgcmap_.LTp4
                        .quad            9223389626893336584
                        .quad            .Lgccode_.LTp4_4
                        .quad            .Lgcsite_.LTp4_21-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_20-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_19-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_18-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_17-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_16-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_15-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_14-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_13-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_12-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_11-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_10-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_9-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_8-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_7-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_6-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_5-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_4-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_3-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_2-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_1-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_0-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_43-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_42-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_41-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_40-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_39-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_38-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_37-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_36-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_35-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_34-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_33-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_32-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_31-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_30-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_29-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_28-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_27-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_26-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_25-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_24-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_23-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_22-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_66-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_65-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_64-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_63-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_62-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_61-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_60-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_59-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_58-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_57-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_56-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_55-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_54-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_53-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_52-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_51-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_50-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_49-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_48-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_47-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_46-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_45-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_44-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_88-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_87-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_86-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_85-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_84-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_83-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_82-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_81-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_80-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_79-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_78-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_77-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_76-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_75-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_74-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_73-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_72-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_71-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_70-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_69-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_68-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_67-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_111-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_110-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_109-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_108-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_107-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_106-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_105-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_104-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_103-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_102-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_101-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_100-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_99-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_98-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_97-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_96-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_95-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_94-.Lgccode_.LTp4_4
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_93-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_92-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_91-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_90-.Lgccode_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_89-.Lgccode_.LTp4_4
                        .quad            196609
                        .popsection
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp4:            .quad            .LTp4
                        .long            0, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_.LTp5_5:
.LTp5:
.LTp5_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 136
                        xorps            xmm0, xmm0                           # GCANCHOR .Lgcmap_.LTp5 qword ptr [rbp + -128]
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
                        .type            n61_match_alternate_bx, @function
n61_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_match_alternate_α:  mov              dword ptr [rbp + -120], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_71_21]
                        mov              qword ptr [rbp + -104], rax;         jmp   n66_match_defer_α
.Lmatch_alternate_α_71_21:
                        lea              rax, [rip + .Lmatch_alternate_α_71_22]
                        mov              qword ptr [rbp + -104], rax;         jmp   n63_match_defer_α
.Lmatch_alternate_α_71_22:
                        lea              rax, [rip + .Lmatch_alternate_α_71_19]
                        mov              qword ptr [rbp + -104], rax;         jmp   n62_match_defer_α
.Lmatch_alternate_γ_61_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_71_40]
                        mov              qword ptr [rbp + -112], rax;         jmp   .Lmatch_alternate_γ_61_as
.Lmatch_alternate_γ_61_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_71_41]
                        mov              qword ptr [rbp + -112], rax;         jmp   .Lmatch_alternate_γ_61_as
.Lmatch_alternate_γ_61_s2:
                        lea              rax, [rip + .Lmatch_alternate_α_71_42]
                        mov              qword ptr [rbp + -112], rax;         jmp   .Lmatch_alternate_γ_61_as
.Lmatch_alternate_α_71_40:
                                                                              jmp   n68_match_defer_β
.Lmatch_alternate_α_71_41:
                                                                              jmp   n65_match_defer_β
.Lmatch_alternate_α_71_42:
                                                                              jmp   n62_match_defer_β
.Lmatch_alternate_γ_61_as:
                                                                              jmp   .LTp5_γ
n61_match_alternate_β:  mov              rax, qword ptr [rbp + -112];         jmp   rax
.Lmatch_alternate_γ_61_af:
.Lmatch_alternate_ω_61_af:
                        mov              r14d, dword ptr [rbp + -120]
                        mov              rax, qword ptr [rbp + -104];         jmp   rax
.Lmatch_alternate_α_71_19:
                                                                              jmp   .LTp5_ω
                        .size            n61_match_alternate_bx, .-n61_match_alternate_bx
                        .type            n62_match_defer_bx, @function
n62_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_72_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_72_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_72_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_72_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_72_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_72_18
.Lmatch_defer_α_72_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 2                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp5_21:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_72_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_72_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_20:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_72_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_72_16:
.Lmatch_defer_α_72_18:  test             rax, rax;                            jz    .Lmatch_defer_α_72_0
.Lmatch_defer_α_72_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_72_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_72_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_72_4:
.Lgcsite_.LTp5_19:                                                            jmp   .Lmatch_alternate_γ_61_s2
.Lmatch_defer_α_72_5:
.Lgcsite_.LTp5_18:      cmp              r14d, -2;                            je    n69_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n69_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_61_af
.Lmatch_defer_α_72_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp5_17:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_72_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_72_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_16:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_72_2:   test             rax, rax;                            je    .Lmatch_defer_α_72_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_72_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_72_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_72_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_72_141
                        lea              rcx, [rip + .Lmatch_defer_α_72_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_72_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_72_42]
                        lea              rdx, [rip + .Lmatch_defer_α_72_43];  jmp   rax
.Lmatch_defer_α_72_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_72_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_72_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_72_44:
.Lgcsite_.LTp5_15:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_72_46
.Lmatch_defer_α_72_45:
.Lgcsite_.LTp5_14:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_72_47
.Lmatch_defer_α_72_42:
.Lgcsite_.LTp5_13:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_72_46
.Lmatch_defer_α_72_43:
.Lgcsite_.LTp5_12:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_72_47
.Lmatch_defer_α_72_141: lea              rcx, [rip + .Lmatch_defer_α_72_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_72_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_72_142]
                        lea              rdx, [rip + .Lmatch_defer_α_72_143]; jmp   rax
.Lmatch_defer_α_72_142:
.Lgcsite_.LTp5_11:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_72_46
.Lmatch_defer_α_72_143:
.Lgcsite_.LTp5_10:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_72_47
.Lmatch_defer_α_72_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp5_9:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_72_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_72_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_8:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_72_2
.Lmatch_defer_α_72_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp5_7:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_72_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_72_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_6:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_72_2
.Lmatch_defer_α_72_61:  sub              rsp, 64
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
                        mov              rcx, qword ptr [rip + Σ@GOTPCREL]
                        mov              r13, qword ptr [rcx + 0]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              r15d, dword ptr [rcx + 0]
                        xor              ecx, ecx
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_72_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_72_62:
.Lgcsite_.LTp5_5:       add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_.LTp5_4:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_72_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_72_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_3:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_72_2
.Lmatch_defer_α_72_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_72_48
.Lmatch_defer_α_72_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp5_2:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_72_16
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp5_1:       mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_72_16: add              rsp, 144
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
.Lgcsite_.LTp5_0:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_72_49:  cmp              r14d, -2;                            je    n69_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n69_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_72_999
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_61_af
.Lmatch_defer_α_72_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_72_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_61_s2
.Lmatch_defer_α_72_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_61_af
n62_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_72_12
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_72_12
                                                                              jmp   rax
.Lmatch_defer_β_72_12:                                                        jmp   qword ptr [rsp]
                        .size            n62_match_defer_bx, .-n62_match_defer_bx
                        .type            n63_match_defer_bx, @function
n63_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_73_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_73_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_73_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_73_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_73_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_73_18
.Lmatch_defer_α_73_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 1                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp5_43:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_73_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_73_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_42:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_73_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_73_16:
.Lmatch_defer_α_73_18:  test             rax, rax;                            jz    .Lmatch_defer_α_73_0
.Lmatch_defer_α_73_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_73_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_73_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_73_4:
.Lgcsite_.LTp5_41:                                                            jmp   n64_match_lit_α
.Lmatch_defer_α_73_5:
.Lgcsite_.LTp5_40:      cmp              r14d, -2;                            je    n69_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n69_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_61_af
.Lmatch_defer_α_73_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp5_39:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_73_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_73_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_38:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_73_2:   test             rax, rax;                            je    .Lmatch_defer_α_73_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_73_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_73_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_73_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_73_141
                        lea              rcx, [rip + .Lmatch_defer_α_73_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_73_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_73_42]
                        lea              rdx, [rip + .Lmatch_defer_α_73_43];  jmp   rax
.Lmatch_defer_α_73_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_73_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_73_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_73_44:
.Lgcsite_.LTp5_37:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_73_46
.Lmatch_defer_α_73_45:
.Lgcsite_.LTp5_36:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_73_47
.Lmatch_defer_α_73_42:
.Lgcsite_.LTp5_35:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_73_46
.Lmatch_defer_α_73_43:
.Lgcsite_.LTp5_34:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_73_47
.Lmatch_defer_α_73_141: lea              rcx, [rip + .Lmatch_defer_α_73_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_73_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_73_142]
                        lea              rdx, [rip + .Lmatch_defer_α_73_143]; jmp   rax
.Lmatch_defer_α_73_142:
.Lgcsite_.LTp5_33:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_73_46
.Lmatch_defer_α_73_143:
.Lgcsite_.LTp5_32:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_73_47
.Lmatch_defer_α_73_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp5_31:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_73_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_73_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_30:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_73_2
.Lmatch_defer_α_73_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp5_29:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_73_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_73_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_28:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_73_2
.Lmatch_defer_α_73_61:  sub              rsp, 64
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
                        mov              rcx, qword ptr [rip + Σ@GOTPCREL]
                        mov              r13, qword ptr [rcx + 0]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              r15d, dword ptr [rcx + 0]
                        xor              ecx, ecx
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_73_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_73_62:
.Lgcsite_.LTp5_27:      add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_.LTp5_26:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_73_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_73_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_25:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_73_2
.Lmatch_defer_α_73_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_73_48
.Lmatch_defer_α_73_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp5_24:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_73_17
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp5_23:      mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_73_17: add              rsp, 144
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
.Lgcsite_.LTp5_22:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_73_49:  cmp              r14d, -2;                            je    n69_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n69_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_73_999
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_61_af
.Lmatch_defer_α_73_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_73_6]
                        push             rcx
                        push             rax;                                 jmp   n64_match_lit_α
.Lmatch_defer_α_73_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_61_af
n63_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_73_12
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_73_12
                                                                              jmp   rax
.Lmatch_defer_β_73_12:                                                        jmp   qword ptr [rsp]
                        .size            n63_match_defer_bx, .-n63_match_defer_bx
                        .type            n64_match_lit_bx, @function
n64_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n63_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n63_match_defer_β
                        add              r14d, 1;                             jmp   n65_match_defer_α
n64_match_lit_β:        sub              r14d, 1;                             jmp   n63_match_defer_β
                        .size            n64_match_lit_bx, .-n64_match_lit_bx
                        .type            n65_match_defer_bx, @function
n65_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_match_defer_α:      sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11936]          # X
                        mov              rdx, qword ptr [r9 + 11944]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_76_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_76_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp5_66:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:102
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp5_65:      mov              r9,  qword ptr [rip + g_rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11944];         jmp   .Lmatch_defer_α_76_10
.Lmatch_defer_α_76_9:   xor              eax, eax
.Lmatch_defer_α_76_10:  test             rax, rax;                            jz    .Lmatch_defer_α_76_0
.Lmatch_defer_α_76_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_76_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_76_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_76_4:
.Lgcsite_.LTp5_64:                                                            jmp   .Lmatch_alternate_γ_61_s1
.Lmatch_defer_α_76_5:
.Lgcsite_.LTp5_63:      cmp              r14d, -2;                            je    n69_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n69_match_abort_β
                        add              rsp, 16;                             jmp   n64_match_lit_β
.Lmatch_defer_α_76_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        lea              rdi, [r9 + 11936]                    # X
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        call             qword ptr [rip + rt_defer_open_cell@GOTPCREL]
.Lgcsite_.LTp5_62:      cmp              rax, -1;                             jne   .Lmatch_defer_vd_76_19
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_.LTp5_61:      mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_76_19: push             rax
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_76_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_76_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_60:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_76_2:   test             rax, rax;                            je    .Lmatch_defer_α_76_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_76_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_76_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_76_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_76_141
                        lea              rcx, [rip + .Lmatch_defer_α_76_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_76_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_76_42]
                        lea              rdx, [rip + .Lmatch_defer_α_76_43];  jmp   rax
.Lmatch_defer_α_76_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_76_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_76_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_76_44:
.Lgcsite_.LTp5_59:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_76_46
.Lmatch_defer_α_76_45:
.Lgcsite_.LTp5_58:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_76_47
.Lmatch_defer_α_76_42:
.Lgcsite_.LTp5_57:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_76_46
.Lmatch_defer_α_76_43:
.Lgcsite_.LTp5_56:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_76_47
.Lmatch_defer_α_76_141: lea              rcx, [rip + .Lmatch_defer_α_76_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_76_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_76_142]
                        lea              rdx, [rip + .Lmatch_defer_α_76_143]; jmp   rax
.Lmatch_defer_α_76_142:
.Lgcsite_.LTp5_55:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_76_46
.Lmatch_defer_α_76_143:
.Lgcsite_.LTp5_54:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_76_47
.Lmatch_defer_α_76_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp5_53:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_76_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_76_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_52:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_76_2
.Lmatch_defer_α_76_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp5_51:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_76_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_76_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_50:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_76_2
.Lmatch_defer_α_76_61:  sub              rsp, 64
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
                        mov              rcx, qword ptr [rip + Σ@GOTPCREL]
                        mov              r13, qword ptr [rcx + 0]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              r15d, dword ptr [rcx + 0]
                        xor              ecx, ecx
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_76_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_76_62:
.Lgcsite_.LTp5_49:      add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_.LTp5_48:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_76_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_76_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_47:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_76_2
.Lmatch_defer_α_76_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_76_48
.Lmatch_defer_α_76_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp5_46:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_76_18
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp5_45:      mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_76_18: add              rsp, 144
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
.Lgcsite_.LTp5_44:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_76_49:  cmp              r14d, -2;                            je    n69_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n69_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_76_999
                        add              rsp, 16;                             jmp   n64_match_lit_β
.Lmatch_defer_α_76_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_76_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_61_s1
.Lmatch_defer_α_76_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n64_match_lit_β
n65_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_76_12
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_76_12
                                                                              jmp   rax
.Lmatch_defer_β_76_12:                                                        jmp   qword ptr [rsp]
                        .size            n65_match_defer_bx, .-n65_match_defer_bx
                        .type            n66_match_defer_bx, @function
n66_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_77_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_77_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_77_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_77_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_77_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_77_18
.Lmatch_defer_α_77_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 0                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp5_88:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_77_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_77_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_87:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_77_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_77_16:
.Lmatch_defer_α_77_18:  test             rax, rax;                            jz    .Lmatch_defer_α_77_0
.Lmatch_defer_α_77_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_77_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_77_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_77_4:
.Lgcsite_.LTp5_86:                                                            jmp   n67_match_lit_α
.Lmatch_defer_α_77_5:
.Lgcsite_.LTp5_85:      cmp              r14d, -2;                            je    n69_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n69_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_61_af
.Lmatch_defer_α_77_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp5_84:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_77_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_77_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_83:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_77_2:   test             rax, rax;                            je    .Lmatch_defer_α_77_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_77_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_77_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_77_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_77_141
                        lea              rcx, [rip + .Lmatch_defer_α_77_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_77_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_77_42]
                        lea              rdx, [rip + .Lmatch_defer_α_77_43];  jmp   rax
.Lmatch_defer_α_77_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_77_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_77_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_77_44:
.Lgcsite_.LTp5_82:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_77_46
.Lmatch_defer_α_77_45:
.Lgcsite_.LTp5_81:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_77_47
.Lmatch_defer_α_77_42:
.Lgcsite_.LTp5_80:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_77_46
.Lmatch_defer_α_77_43:
.Lgcsite_.LTp5_79:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_77_47
.Lmatch_defer_α_77_141: lea              rcx, [rip + .Lmatch_defer_α_77_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_77_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_77_142]
                        lea              rdx, [rip + .Lmatch_defer_α_77_143]; jmp   rax
.Lmatch_defer_α_77_142:
.Lgcsite_.LTp5_78:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_77_46
.Lmatch_defer_α_77_143:
.Lgcsite_.LTp5_77:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_77_47
.Lmatch_defer_α_77_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp5_76:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_77_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_77_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_75:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_77_2
.Lmatch_defer_α_77_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp5_74:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_77_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_77_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_73:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_77_2
.Lmatch_defer_α_77_61:  sub              rsp, 64
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
                        mov              rcx, qword ptr [rip + Σ@GOTPCREL]
                        mov              r13, qword ptr [rcx + 0]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              r15d, dword ptr [rcx + 0]
                        xor              ecx, ecx
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_77_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_77_62:
.Lgcsite_.LTp5_72:      add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_.LTp5_71:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_77_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_77_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_70:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_77_2
.Lmatch_defer_α_77_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_77_48
.Lmatch_defer_α_77_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp5_69:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_77_20
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp5_68:      mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_77_20: add              rsp, 144
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
.Lgcsite_.LTp5_67:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_77_49:  cmp              r14d, -2;                            je    n69_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n69_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_77_999
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_61_af
.Lmatch_defer_α_77_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_77_6]
                        push             rcx
                        push             rax;                                 jmp   n67_match_lit_α
.Lmatch_defer_α_77_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_61_af
n66_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_77_12
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_77_12
                                                                              jmp   rax
.Lmatch_defer_β_77_12:                                                        jmp   qword ptr [rsp]
                        .size            n66_match_defer_bx, .-n66_match_defer_bx
                        .type            n67_match_lit_bx, @function
n67_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n66_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   n66_match_defer_β
                        add              r14d, 1;                             jmp   n68_match_defer_α
n67_match_lit_β:        sub              r14d, 1;                             jmp   n66_match_defer_β
                        .size            n67_match_lit_bx, .-n67_match_lit_bx
                        .type            n68_match_defer_bx, @function
n68_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_match_defer_α:      sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11936]          # X
                        mov              rdx, qword ptr [r9 + 11944]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_80_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_80_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp5_111:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:102
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp5_110:     mov              r9,  qword ptr [rip + g_rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11944];         jmp   .Lmatch_defer_α_80_10
.Lmatch_defer_α_80_9:   xor              eax, eax
.Lmatch_defer_α_80_10:  test             rax, rax;                            jz    .Lmatch_defer_α_80_0
.Lmatch_defer_α_80_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_80_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_80_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_80_4:
.Lgcsite_.LTp5_109:                                                           jmp   .Lmatch_alternate_γ_61_s0
.Lmatch_defer_α_80_5:
.Lgcsite_.LTp5_108:     cmp              r14d, -2;                            je    n69_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n69_match_abort_β
                        add              rsp, 16;                             jmp   n67_match_lit_β
.Lmatch_defer_α_80_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        lea              rdi, [r9 + 11936]                    # X
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        call             qword ptr [rip + rt_defer_open_cell@GOTPCREL]
.Lgcsite_.LTp5_107:     cmp              rax, -1;                             jne   .Lmatch_defer_vd_80_22
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_.LTp5_106:     mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_80_22: push             rax
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_80_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_80_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_105:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_80_2:   test             rax, rax;                            je    .Lmatch_defer_α_80_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_80_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_80_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_80_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_80_141
                        lea              rcx, [rip + .Lmatch_defer_α_80_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_80_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_80_42]
                        lea              rdx, [rip + .Lmatch_defer_α_80_43];  jmp   rax
.Lmatch_defer_α_80_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_80_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_80_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_80_44:
.Lgcsite_.LTp5_104:     add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_80_46
.Lmatch_defer_α_80_45:
.Lgcsite_.LTp5_103:     add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_80_47
.Lmatch_defer_α_80_42:
.Lgcsite_.LTp5_102:     add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_80_46
.Lmatch_defer_α_80_43:
.Lgcsite_.LTp5_101:     add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_80_47
.Lmatch_defer_α_80_141: lea              rcx, [rip + .Lmatch_defer_α_80_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_80_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_80_142]
                        lea              rdx, [rip + .Lmatch_defer_α_80_143]; jmp   rax
.Lmatch_defer_α_80_142:
.Lgcsite_.LTp5_100:     add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_80_46
.Lmatch_defer_α_80_143:
.Lgcsite_.LTp5_99:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_80_47
.Lmatch_defer_α_80_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp5_98:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_80_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_80_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_97:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_80_2
.Lmatch_defer_α_80_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp5_96:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_80_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_80_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_95:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_80_2
.Lmatch_defer_α_80_61:  sub              rsp, 64
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
                        mov              rcx, qword ptr [rip + Σ@GOTPCREL]
                        mov              r13, qword ptr [rcx + 0]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              r15d, dword ptr [rcx + 0]
                        xor              ecx, ecx
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_80_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_80_62:
.Lgcsite_.LTp5_94:      add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_.LTp5_93:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_80_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_80_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_92:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_80_2
.Lmatch_defer_α_80_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_80_48
.Lmatch_defer_α_80_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp5_91:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_80_21
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp5_90:      mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_80_21: add              rsp, 144
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
.Lgcsite_.LTp5_89:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_80_49:  cmp              r14d, -2;                            je    n69_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n69_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_80_999
                        add              rsp, 16;                             jmp   n67_match_lit_β
.Lmatch_defer_α_80_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_80_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_61_s0
.Lmatch_defer_α_80_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n67_match_lit_β
n68_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_80_12
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_80_12
                                                                              jmp   rax
.Lmatch_defer_β_80_12:                                                        jmp   qword ptr [rsp]
                        .size            n68_match_defer_bx, .-n68_match_defer_bx
                        .type            n69_match_abort_bx, @function
n69_match_abort_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_match_abort_α:      mov              r14d, -2;                            jmp   .LTp5_ω
n69_match_abort_β:      mov              r14d, -2;                            jmp   .LTp5_ω
                        .size            n69_match_abort_bx, .-n69_match_abort_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp5_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp5_β:
                                                                              jmp   n61_match_alternate_β
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
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_.LTp5:
                        .quad            585462009178
                        .quad            17179869208
                        .quad            0
                        .quad            136
                        .quad            15
                        .quad            8804682956680
                        .quad            8813272891280
                        .quad            8813272891288
                        .quad            8804682956704
                        .quad            8804682956712
                        .quad            17596481011632
                        .quad            17596481011648
                        .quad            8804682956752
                        .quad            8804682956760
                        .quad            17596481011680
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_.LTp5_5:      .quad            112
                        .quad            .Lgcmap_.LTp5
                        .quad            9223389626893336584
                        .quad            .Lgccode_.LTp5_5
                        .quad            .Lgcsite_.LTp5_21-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_20-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_19-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_18-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_17-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_16-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_15-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_14-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_13-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_12-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_11-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_10-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_9-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_8-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_7-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_6-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_5-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_4-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_3-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_2-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_1-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_0-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_43-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_42-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_41-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_40-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_39-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_38-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_37-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_36-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_35-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_34-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_33-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_32-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_31-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_30-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_29-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_28-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_27-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_26-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_25-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_24-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_23-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_22-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_66-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_65-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_64-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_63-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_62-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_61-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_60-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_59-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_58-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_57-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_56-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_55-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_54-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_53-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_52-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_51-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_50-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_49-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_48-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_47-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_46-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_45-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_44-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_88-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_87-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_86-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_85-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_84-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_83-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_82-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_81-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_80-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_79-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_78-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_77-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_76-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_75-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_74-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_73-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_72-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_71-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_70-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_69-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_68-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_67-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_111-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_110-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_109-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_108-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_107-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_106-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_105-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_104-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_103-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_102-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_101-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_100-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_99-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_98-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_97-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_96-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_95-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_94-.Lgccode_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_93-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_92-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_91-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_90-.Lgccode_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_89-.Lgccode_.LTp5_5
                        .quad            196609
                        .popsection
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp5:            .quad            .LTp5
                        .long            0, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_.LTp6_6:
.LTp6:
.LTp6_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 88
                        xorps            xmm0, xmm0                           # GCANCHOR .Lgcmap_.LTp6 qword ptr [rbp + -80]
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -32], 8
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -40], r12
                        .type            n82_match_pos_bx, @function
n82_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_match_pos_α:        mov              rax, 0
                        cmp              r14d, eax;                           jne   .LTp6_ω
                                                                              jmp   n83_match_arbno_α
n82_match_pos_β:                                                              jmp   .LTp6_ω
                        .size            n82_match_pos_bx, .-n82_match_pos_bx
                        .type            n83_match_arbno_bx, @function
n83_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_match_arbno_α:      sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -64], rsp;          jmp   n84_match_rpos_α
n83_match_arbno_β:      mov              rax, qword ptr [rbp + -64]
                        mov              r12, qword ptr [rax + 8];            jmp   n85_match_defer_α
.Lmatch_arbno_γ_83_as:  mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n86_match_lit_β
                        sub              rsp, 32
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rbp + -64], rsp;          jmp   n84_match_rpos_α
.Lmatch_arbno_γ_83_af:
.Lmatch_arbno_ω_83_af:  mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -64], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_90_3
                        add              rsp, 32;                             jmp   n86_match_lit_β
.Lmatch_arbno_β_90_3:   add              rsp, 32;                             jmp   n82_match_pos_β
                        .size            n83_match_arbno_bx, .-n83_match_arbno_bx
                        .type            n84_match_rpos_bx, @function
n84_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_match_rpos_α:       mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n83_match_arbno_β
                                                                              jmp   .LTp6_γ
n84_match_rpos_β:                                                             jmp   n83_match_arbno_β
                        .size            n84_match_rpos_bx, .-n84_match_rpos_bx
                        .type            n85_match_defer_bx, @function
n85_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_92_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_92_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_92_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_92_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_92_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_92_18
.Lmatch_defer_α_92_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 0                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp6_21:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_92_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_92_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_20:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_92_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_92_16:
.Lmatch_defer_α_92_18:  test             rax, rax;                            jz    .Lmatch_defer_α_92_0
.Lmatch_defer_α_92_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_92_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_92_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_92_4:
.Lgcsite_.LTp6_19:                                                            jmp   n86_match_lit_α
.Lmatch_defer_α_92_5:
.Lgcsite_.LTp6_18:      cmp              r14d, -2;                            je    n87_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n87_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_arbno_ω_83_af
.Lmatch_defer_α_92_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp6_17:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_92_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_92_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_16:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_92_2:   test             rax, rax;                            je    .Lmatch_defer_α_92_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_92_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_92_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_92_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_92_141
                        lea              rcx, [rip + .Lmatch_defer_α_92_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_92_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_92_42]
                        lea              rdx, [rip + .Lmatch_defer_α_92_43];  jmp   rax
.Lmatch_defer_α_92_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_92_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_92_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_92_44:
.Lgcsite_.LTp6_15:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_92_46
.Lmatch_defer_α_92_45:
.Lgcsite_.LTp6_14:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_92_47
.Lmatch_defer_α_92_42:
.Lgcsite_.LTp6_13:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_92_46
.Lmatch_defer_α_92_43:
.Lgcsite_.LTp6_12:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_92_47
.Lmatch_defer_α_92_141: lea              rcx, [rip + .Lmatch_defer_α_92_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_92_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_92_142]
                        lea              rdx, [rip + .Lmatch_defer_α_92_143]; jmp   rax
.Lmatch_defer_α_92_142:
.Lgcsite_.LTp6_11:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_92_46
.Lmatch_defer_α_92_143:
.Lgcsite_.LTp6_10:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_92_47
.Lmatch_defer_α_92_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp6_9:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_92_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_92_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_8:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_92_2
.Lmatch_defer_α_92_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp6_7:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_92_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_92_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_6:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_92_2
.Lmatch_defer_α_92_61:  sub              rsp, 64
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
                        mov              rcx, qword ptr [rip + Σ@GOTPCREL]
                        mov              r13, qword ptr [rcx + 0]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              r15d, dword ptr [rcx + 0]
                        xor              ecx, ecx
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_92_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_92_62:
.Lgcsite_.LTp6_5:       add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_.LTp6_4:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_92_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_92_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_3:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_92_2
.Lmatch_defer_α_92_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_92_48
.Lmatch_defer_α_92_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp6_2:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_92_23
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp6_1:       mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_92_23: add              rsp, 144
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
.Lgcsite_.LTp6_0:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_92_49:  cmp              r14d, -2;                            je    n87_match_abort_β
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n87_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_92_999
                        add              rsp, 16;                             jmp   .Lmatch_arbno_ω_83_af
.Lmatch_defer_α_92_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_92_6]
                        push             rcx
                        push             rax;                                 jmp   n86_match_lit_α
.Lmatch_defer_α_92_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_arbno_ω_83_af
n85_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_92_12
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_92_12
                                                                              jmp   rax
.Lmatch_defer_β_92_12:                                                        jmp   qword ptr [rsp]
                        .size            n85_match_defer_bx, .-n85_match_defer_bx
                        .type            n86_match_lit_bx, @function
n86_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n85_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 10;                             jne   n85_match_defer_β
                        add              r14d, 1;                             jmp   .Lmatch_arbno_γ_83_as
n86_match_lit_β:        sub              r14d, 1;                             jmp   n85_match_defer_β
                        .size            n86_match_lit_bx, .-n86_match_lit_bx
                        .type            n87_match_abort_bx, @function
n87_match_abort_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_match_abort_α:      mov              r14d, -2;                            jmp   .LTp6_ω
n87_match_abort_β:      mov              r14d, -2;                            jmp   .LTp6_ω
                        .size            n87_match_abort_bx, .-n87_match_abort_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp6_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp6_β:
                                                                              jmp   n84_match_rpos_β
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
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_.LTp6:
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
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_.LTp6_6:      .quad            22
                        .quad            .Lgcmap_.LTp6
                        .quad            9223389626893336584
                        .quad            .Lgccode_.LTp6_6
                        .quad            .Lgcsite_.LTp6_21-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_20-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_19-.Lgccode_.LTp6_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_18-.Lgccode_.LTp6_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_17-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_16-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_15-.Lgccode_.LTp6_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_14-.Lgccode_.LTp6_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_13-.Lgccode_.LTp6_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_12-.Lgccode_.LTp6_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_11-.Lgccode_.LTp6_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_10-.Lgccode_.LTp6_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_9-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_8-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_7-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_6-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_5-.Lgccode_.LTp6_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_4-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_3-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_2-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_1-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_0-.Lgccode_.LTp6_6
                        .quad            196609
                        .popsection
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp6:            .quad            .LTp6
                        .long            0, 0
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
                        mov              edi, 760
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 760
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
                        lea              rdi, [rsp - 16]
                        call             rt_program_top_adopt@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rax, [rip + .Llevel_zero_return]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Llevel_zero_return:    call             rt_kw_return_level_zero@PLT
                        ud2
                        .section         .rodata
.Lgvan741:              .string          "I"
.Lgvan742:              .string          "V"
.Lgvan743:              .string          "A"
.Lgvan744:              .string          "F"
.Lgvan745:              .string          "T"
.Lgvan746:              .string          "X"
.Lgvan747:              .string          "C"
.Lgvan748:              .string          "src"
                        .section         .data.rel.ro,"aw",@progbits
                        .align           8
__gva_names:
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
                        .quad            0
                        .quad            .Lgvan741
                        .quad            .Lgvan742
                        .quad            .Lgvan743
                        .quad            .Lgvan744
                        .quad            .Lgvan745
                        .quad            .Lgvan746
                        .quad            .Lgvan747
                        .quad            .Lgvan748
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
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "error"
.Llbln1:                .string          "END"
                        .section         .data.rel.ro,"aw",@progbits
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_main_7:
main_α:
                        mov              eax, 0                               # GCANCHOR .Lgcmap_main qword ptr [rsp$ + 8]
main_α_body:
                        sub              rsp, 0
                        .type            n96_call_direct_bx, @function
n96_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_call_direct_α:      sub              rsp, 16
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        call             rt_fp_model_spitbol@PLT
.Lgcsite_main_0:        mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_1:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_212_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n97_call_direct_α
.Lcall_direct_α_212_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_call_direct_α
n96_call_direct_β:      add              rsp, 16
                        add              rsp, -16;                            jmp   n97_call_direct_α
                        .size            n96_call_direct_bx, .-n96_call_direct_bx
                        .type            n97_call_direct_bx, @function
n97_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_call_direct_α:      sub              rsp, 16
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        call             rt_quit_trap_320@PLT
.Lgcsite_main_2:        mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_3:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_213_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n98_statement_begin_α
.Lcall_direct_α_213_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n98_statement_begin_α
n97_call_direct_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n98_statement_begin_α
                        .size            n97_call_direct_bx, .-n97_call_direct_bx
                        .type            n98_statement_begin_bx, @function
n98_statement_begin_bx:
                        .pushsection     .rodata
.Lstnof1:               .string          "snobol4/calculator/calculator-1-match.sno"
                        .popsection
.Lstatement_begin_α_214_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_214_stno
                        .long            1
                        .long            1
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         &TRIM   =  0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n98_statement_begin_α:                                                        jmp   n99_lit_integer_α
n98_statement_begin_β:                                                        jmp   n102_setexit_test_α
                        .size            n98_statement_begin_bx, .-n98_statement_begin_bx
                        .type            n99_lit_integer_bx, @function
n99_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_216_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n100_kw_assign_snobol4_α
.Llit_integer_α_216_0:  .quad            0
                        .size            n99_lit_integer_bx, .-n99_lit_integer_bx
                        .type            n100_kw_assign_snobol4_bx, @function
n100_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_217_0] # idx
                        mov              rsi, qword ptr [rsp + 16]            # v
                        mov              rdx, qword ptr [rsp + 24]            # v
                        call             rt_kw_write_idx@PLT
.Lgcsite_main_5:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_217_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n98_statement_begin_β
.Lkw_assign_snobol4_α_217_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_keyword_assign_snobol4.cpp:32
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_4:        mov              r9,  qword ptr [rip + g_rtccb+48]
1:                                                                            jmp   n101_statement_end_α
.Lkw_assign_snobol4_α_217_0:
                        .quad            1
                        .size            n100_kw_assign_snobol4_bx, .-n100_kw_assign_snobol4_bx
                        .type            n101_statement_end_bx, @function
n101_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_end_α:   add              rsp, 32;                             jmp   n103_statement_begin_α
                        .size            n101_statement_end_bx, .-n101_statement_end_bx
                        .type            n102_setexit_test_bx, @function
n102_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_setexit_test_α:    mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_220_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_220_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_220_61:
.Lsetexit_test_α_220_1:                                                       jmp   n103_statement_begin_α
                        .size            n102_setexit_test_bx, .-n102_setexit_test_bx
                        .type            n103_statement_begin_bx, @function
n103_statement_begin_bx:
.Lstatement_begin_α_221_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_221_stno
                        .long            2
                        .long            2
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         I       =  SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n103_statement_begin_α:                                                       jmp   n104_lit_string_α
n103_statement_begin_β:                                                       jmp   n108_setexit_test_α
                        .size            n103_statement_begin_bx, .-n103_statement_begin_bx
                        .type            n104_lit_string_bx, @function
n104_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_223_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n105_call_direct_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_223_0: .quad .Lthk_.LTp0; .popsection
                        .size            n104_lit_string_bx, .-n104_lit_string_bx
                        .type            n105_call_direct_bx, @function
n105_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_call_direct_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_6:        mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_7:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_direct_α_224_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n103_statement_begin_β
.Lcall_direct_α_224_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n106_assign_α
n105_call_direct_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n103_statement_begin_β
                        .size            n105_call_direct_bx, .-n105_call_direct_bx
                        .type            n106_assign_bx, @function
n106_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11856], rax          # I
                        mov              qword ptr [r9 + 11864], rdx;         jmp   n107_statement_end_α
                        .size            n106_assign_bx, .-n106_assign_bx
                        .type            n107_statement_end_bx, @function
n107_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_end_α:   add              rsp, 32;                             jmp   n109_statement_begin_α
                        .size            n107_statement_end_bx, .-n107_statement_end_bx
                        .type            n108_setexit_test_bx, @function
n108_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_setexit_test_α:    mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_228_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_228_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_228_61:
.Lsetexit_test_α_228_1:                                                       jmp   n109_statement_begin_α
                        .size            n108_setexit_test_bx, .-n108_setexit_test_bx
                        .type            n109_statement_begin_bx, @function
n109_statement_begin_bx:
.Lstatement_begin_α_229_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_229_stno
                        .long            3
                        .long            3
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         V       =  ANY(&LCASE)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n109_statement_begin_α:                                                       jmp   n110_lit_string_α
n109_statement_begin_β:                                                       jmp   n114_setexit_test_α
                        .size            n109_statement_begin_bx, .-n109_statement_begin_bx
                        .type            n110_lit_string_bx, @function
n110_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_231_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n111_call_direct_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_231_0: .quad .Lthk_.LTp1; .popsection
                        .size            n110_lit_string_bx, .-n110_lit_string_bx
                        .type            n111_call_direct_bx, @function
n111_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_call_direct_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_8:        mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_9:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_direct_α_232_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n109_statement_begin_β
.Lcall_direct_α_232_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_assign_α
n111_call_direct_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n109_statement_begin_β
                        .size            n111_call_direct_bx, .-n111_call_direct_bx
                        .type            n112_assign_bx, @function
n112_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11872], rax          # V
                        mov              qword ptr [r9 + 11880], rdx;         jmp   n113_statement_end_α
                        .size            n112_assign_bx, .-n112_assign_bx
                        .type            n113_statement_end_bx, @function
n113_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:   add              rsp, 32;                             jmp   n115_statement_begin_α
                        .size            n113_statement_end_bx, .-n113_statement_end_bx
                        .type            n114_setexit_test_bx, @function
n114_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_setexit_test_α:    mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_236_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_236_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_236_61:
.Lsetexit_test_α_236_1:                                                       jmp   n115_statement_begin_α
                        .size            n114_setexit_test_bx, .-n114_setexit_test_bx
                        .type            n115_statement_begin_bx, @function
n115_statement_begin_bx:
.Lstatement_begin_α_237_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_237_stno
                        .long            4
                        .long            4
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         A       =  I | V | '(' *X ')'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n115_statement_begin_α:                                                       jmp   n116_lit_string_α
n115_statement_begin_β:                                                       jmp   n126_setexit_test_α
                        .size            n115_statement_begin_bx, .-n115_statement_begin_bx
                        .type            n116_lit_string_bx, @function
n116_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_239_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n117_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_239_0: .quad .Lthk_.LTp2; .popsection
                        .size            n116_lit_string_bx, .-n116_lit_string_bx
                        .type            n117_var_bx, @function
n117_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11856]          # I
                        mov              rdx, qword ptr [r9 + 11864]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_lit_integer_α
n117_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n115_statement_begin_β
                        .size            n117_var_bx, .-n117_var_bx
                        .type            n118_lit_integer_bx, @function
n118_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_241_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n119_call_direct_α
n118_lit_integer_β:     add              rsp, 16;                             jmp   n117_var_β
.Llit_integer_α_241_0:  .quad            6
                        .size            n118_lit_integer_bx, .-n118_lit_integer_bx
                        .type            n119_call_direct_bx, @function
n119_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_call_direct_α:     sub              rsp, 16
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
                        call             rt_sno_patck_d@PLT
.Lgcsite_main_10:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_11:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_242_999
                        add              rsp, 16;                             jmp   n118_lit_integer_β
.Lcall_direct_α_242_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n120_var_α
n119_call_direct_β:     add              rsp, 16;                             jmp   n118_lit_integer_β
                        .size            n119_call_direct_bx, .-n119_call_direct_bx
                        .type            n120_var_bx, @function
n120_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11872]          # V
                        mov              rdx, qword ptr [r9 + 11880]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n121_lit_integer_α
n120_var_β:             add              rsp, 32;                             jmp   n118_lit_integer_β
                        .size            n120_var_bx, .-n120_var_bx
                        .type            n121_lit_integer_bx, @function
n121_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_244_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n122_call_direct_α
n121_lit_integer_β:     add              rsp, 16;                             jmp   n120_var_β
.Llit_integer_α_244_0:  .quad            6
                        .size            n121_lit_integer_bx, .-n121_lit_integer_bx
                        .type            n122_call_direct_bx, @function
n122_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_call_direct_α:     sub              rsp, 16
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
                        call             rt_sno_patck_d@PLT
.Lgcsite_main_12:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_13:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_245_999
                        add              rsp, 16;                             jmp   n121_lit_integer_β
.Lcall_direct_α_245_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n123_call_direct_α
n122_call_direct_β:     add              rsp, 16;                             jmp   n121_lit_integer_β
                        .size            n122_call_direct_bx, .-n122_call_direct_bx
                        .type            n123_call_direct_bx, @function
n123_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_call_direct_α:     sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 3
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_14:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_15:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_direct_α_246_999
                        add              rsp, 32;                             jmp   n121_lit_integer_β
.Lcall_direct_α_246_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_assign_α
n123_call_direct_β:     add              rsp, 32;                             jmp   n121_lit_integer_β
                        .size            n123_call_direct_bx, .-n123_call_direct_bx
                        .type            n124_assign_bx, @function
n124_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11888], rax          # A
                        mov              qword ptr [r9 + 11896], rdx;         jmp   n125_statement_end_α
                        .size            n124_assign_bx, .-n124_assign_bx
                        .type            n125_statement_end_bx, @function
n125_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_end_α:   add              rsp, 128;                            jmp   n127_statement_begin_α
                        .size            n125_statement_end_bx, .-n125_statement_end_bx
                        .type            n126_setexit_test_bx, @function
n126_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_setexit_test_α:    mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_250_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_250_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_250_61:
.Lsetexit_test_α_250_1:                                                       jmp   n127_statement_begin_α
                        .size            n126_setexit_test_bx, .-n126_setexit_test_bx
                        .type            n127_statement_begin_bx, @function
n127_statement_begin_bx:
.Lstatement_begin_α_251_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_251_stno
                        .long            5
                        .long            5
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         F       =  '+' *F | '-' *F | A
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n127_statement_begin_α:                                                       jmp   n128_lit_string_α
n127_statement_begin_β:                                                       jmp   n135_setexit_test_α
                        .size            n127_statement_begin_bx, .-n127_statement_begin_bx
                        .type            n128_lit_string_bx, @function
n128_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_253_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_253_0: .quad .Lthk_.LTp3; .popsection
                        .size            n128_lit_string_bx, .-n128_lit_string_bx
                        .type            n129_var_bx, @function
n129_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11888]          # A
                        mov              rdx, qword ptr [r9 + 11896]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n130_lit_integer_α
n129_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n127_statement_begin_β
                        .size            n129_var_bx, .-n129_var_bx
                        .type            n130_lit_integer_bx, @function
n130_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_255_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n131_call_direct_α
n130_lit_integer_β:     add              rsp, 16;                             jmp   n129_var_β
.Llit_integer_α_255_0:  .quad            5
                        .size            n130_lit_integer_bx, .-n130_lit_integer_bx
                        .type            n131_call_direct_bx, @function
n131_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_call_direct_α:     sub              rsp, 16
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
                        call             rt_sno_patck_d@PLT
.Lgcsite_main_16:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_17:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_256_999
                        add              rsp, 16;                             jmp   n130_lit_integer_β
.Lcall_direct_α_256_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n132_call_direct_α
n131_call_direct_β:     add              rsp, 16;                             jmp   n130_lit_integer_β
                        .size            n131_call_direct_bx, .-n131_call_direct_bx
                        .type            n132_call_direct_bx, @function
n132_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_call_direct_α:     sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_18:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_19:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_257_999
                        add              rsp, 32;                             jmp   n130_lit_integer_β
.Lcall_direct_α_257_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_assign_α
n132_call_direct_β:     add              rsp, 32;                             jmp   n130_lit_integer_β
                        .size            n132_call_direct_bx, .-n132_call_direct_bx
                        .type            n133_assign_bx, @function
n133_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11904], rax          # F
                        mov              qword ptr [r9 + 11912], rdx;         jmp   n134_statement_end_α
                        .size            n133_assign_bx, .-n133_assign_bx
                        .type            n134_statement_end_bx, @function
n134_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_end_α:   add              rsp, 80;                             jmp   n136_statement_begin_α
                        .size            n134_statement_end_bx, .-n134_statement_end_bx
                        .type            n135_setexit_test_bx, @function
n135_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_setexit_test_α:    mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_261_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_261_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_261_61:
.Lsetexit_test_α_261_1:                                                       jmp   n136_statement_begin_α
                        .size            n135_setexit_test_bx, .-n135_setexit_test_bx
                        .type            n136_statement_begin_bx, @function
n136_statement_begin_bx:
.Lstatement_begin_α_262_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_262_stno
                        .long            6
                        .long            6
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         T       =  F '*' *T | F '/' *T | F
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n136_statement_begin_α:                                                       jmp   n137_lit_string_α
n136_statement_begin_β:                                                       jmp   n150_setexit_test_α
                        .size            n136_statement_begin_bx, .-n136_statement_begin_bx
                        .type            n137_lit_string_bx, @function
n137_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_264_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n138_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_264_0: .quad .Lthk_.LTp4; .popsection
                        .size            n137_lit_string_bx, .-n137_lit_string_bx
                        .type            n138_var_bx, @function
n138_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11904]          # F
                        mov              rdx, qword ptr [r9 + 11912]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_lit_integer_α
n138_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n136_statement_begin_β
                        .size            n138_var_bx, .-n138_var_bx
                        .type            n139_lit_integer_bx, @function
n139_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_266_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n140_call_direct_α
n139_lit_integer_β:     add              rsp, 16;                             jmp   n138_var_β
.Llit_integer_α_266_0:  .quad            8
                        .size            n139_lit_integer_bx, .-n139_lit_integer_bx
                        .type            n140_call_direct_bx, @function
n140_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_call_direct_α:     sub              rsp, 16
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
                        call             rt_sno_patck_d@PLT
.Lgcsite_main_20:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_21:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_267_999
                        add              rsp, 16;                             jmp   n139_lit_integer_β
.Lcall_direct_α_267_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_var_α
n140_call_direct_β:     add              rsp, 16;                             jmp   n139_lit_integer_β
                        .size            n140_call_direct_bx, .-n140_call_direct_bx
                        .type            n141_var_bx, @function
n141_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11904]          # F
                        mov              rdx, qword ptr [r9 + 11912]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_lit_integer_α
n141_var_β:             add              rsp, 32;                             jmp   n139_lit_integer_β
                        .size            n141_var_bx, .-n141_var_bx
                        .type            n142_lit_integer_bx, @function
n142_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_269_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n143_call_direct_α
n142_lit_integer_β:     add              rsp, 16;                             jmp   n141_var_β
.Llit_integer_α_269_0:  .quad            8
                        .size            n142_lit_integer_bx, .-n142_lit_integer_bx
                        .type            n143_call_direct_bx, @function
n143_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_call_direct_α:     sub              rsp, 16
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
                        call             rt_sno_patck_d@PLT
.Lgcsite_main_22:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_23:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_270_999
                        add              rsp, 16;                             jmp   n142_lit_integer_β
.Lcall_direct_α_270_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_var_α
n143_call_direct_β:     add              rsp, 16;                             jmp   n142_lit_integer_β
                        .size            n143_call_direct_bx, .-n143_call_direct_bx
                        .type            n144_var_bx, @function
n144_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11904]          # F
                        mov              rdx, qword ptr [r9 + 11912]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n145_lit_integer_α
n144_var_β:             add              rsp, 32;                             jmp   n142_lit_integer_β
                        .size            n144_var_bx, .-n144_var_bx
                        .type            n145_lit_integer_bx, @function
n145_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_272_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_call_direct_α
n145_lit_integer_β:     add              rsp, 16;                             jmp   n144_var_β
.Llit_integer_α_272_0:  .quad            5
                        .size            n145_lit_integer_bx, .-n145_lit_integer_bx
                        .type            n146_call_direct_bx, @function
n146_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_call_direct_α:     sub              rsp, 16
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
                        call             rt_sno_patck_d@PLT
.Lgcsite_main_24:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_25:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_273_999
                        add              rsp, 16;                             jmp   n145_lit_integer_β
.Lcall_direct_α_273_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n147_call_direct_α
n146_call_direct_β:     add              rsp, 16;                             jmp   n145_lit_integer_β
                        .size            n146_call_direct_bx, .-n146_call_direct_bx
                        .type            n147_call_direct_bx, @function
n147_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_call_direct_α:     sub              rsp, 16
                        sub              rsp, 64
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 4
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_26:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_27:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 64
                        cmp              al, 104;                             jne   .Lcall_direct_α_274_999
                        add              rsp, 32;                             jmp   n145_lit_integer_β
.Lcall_direct_α_274_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_assign_α
n147_call_direct_β:     add              rsp, 32;                             jmp   n145_lit_integer_β
                        .size            n147_call_direct_bx, .-n147_call_direct_bx
                        .type            n148_assign_bx, @function
n148_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11920], rax          # T
                        mov              qword ptr [r9 + 11928], rdx;         jmp   n149_statement_end_α
                        .size            n148_assign_bx, .-n148_assign_bx
                        .type            n149_statement_end_bx, @function
n149_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_end_α:   add              rsp, 176;                            jmp   n151_statement_begin_α
                        .size            n149_statement_end_bx, .-n149_statement_end_bx
                        .type            n150_setexit_test_bx, @function
n150_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_setexit_test_α:    mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_278_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_278_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_278_61:
.Lsetexit_test_α_278_1:                                                       jmp   n151_statement_begin_α
                        .size            n150_setexit_test_bx, .-n150_setexit_test_bx
                        .type            n151_statement_begin_bx, @function
n151_statement_begin_bx:
.Lstatement_begin_α_279_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_279_stno
                        .long            7
                        .long            7
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         X       =  T '+' *X | T '-' *X | T
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n151_statement_begin_α:                                                       jmp   n152_lit_string_α
n151_statement_begin_β:                                                       jmp   n165_setexit_test_α
                        .size            n151_statement_begin_bx, .-n151_statement_begin_bx
                        .type            n152_lit_string_bx, @function
n152_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_281_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n153_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_281_0: .quad .Lthk_.LTp5; .popsection
                        .size            n152_lit_string_bx, .-n152_lit_string_bx
                        .type            n153_var_bx, @function
n153_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # T
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_lit_integer_α
n153_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n151_statement_begin_β
                        .size            n153_var_bx, .-n153_var_bx
                        .type            n154_lit_integer_bx, @function
n154_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_283_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n155_call_direct_α
n154_lit_integer_β:     add              rsp, 16;                             jmp   n153_var_β
.Llit_integer_α_283_0:  .quad            8
                        .size            n154_lit_integer_bx, .-n154_lit_integer_bx
                        .type            n155_call_direct_bx, @function
n155_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_call_direct_α:     sub              rsp, 16
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
                        call             rt_sno_patck_d@PLT
.Lgcsite_main_28:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_29:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_284_999
                        add              rsp, 16;                             jmp   n154_lit_integer_β
.Lcall_direct_α_284_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n156_var_α
n155_call_direct_β:     add              rsp, 16;                             jmp   n154_lit_integer_β
                        .size            n155_call_direct_bx, .-n155_call_direct_bx
                        .type            n156_var_bx, @function
n156_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # T
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n157_lit_integer_α
n156_var_β:             add              rsp, 32;                             jmp   n154_lit_integer_β
                        .size            n156_var_bx, .-n156_var_bx
                        .type            n157_lit_integer_bx, @function
n157_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_286_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n158_call_direct_α
n157_lit_integer_β:     add              rsp, 16;                             jmp   n156_var_β
.Llit_integer_α_286_0:  .quad            8
                        .size            n157_lit_integer_bx, .-n157_lit_integer_bx
                        .type            n158_call_direct_bx, @function
n158_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_call_direct_α:     sub              rsp, 16
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
                        call             rt_sno_patck_d@PLT
.Lgcsite_main_30:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_31:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_287_999
                        add              rsp, 16;                             jmp   n157_lit_integer_β
.Lcall_direct_α_287_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_var_α
n158_call_direct_β:     add              rsp, 16;                             jmp   n157_lit_integer_β
                        .size            n158_call_direct_bx, .-n158_call_direct_bx
                        .type            n159_var_bx, @function
n159_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # T
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_lit_integer_α
n159_var_β:             add              rsp, 32;                             jmp   n157_lit_integer_β
                        .size            n159_var_bx, .-n159_var_bx
                        .type            n160_lit_integer_bx, @function
n160_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_289_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n161_call_direct_α
n160_lit_integer_β:     add              rsp, 16;                             jmp   n159_var_β
.Llit_integer_α_289_0:  .quad            5
                        .size            n160_lit_integer_bx, .-n160_lit_integer_bx
                        .type            n161_call_direct_bx, @function
n161_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_call_direct_α:     sub              rsp, 16
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
                        call             rt_sno_patck_d@PLT
.Lgcsite_main_32:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_33:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_290_999
                        add              rsp, 16;                             jmp   n160_lit_integer_β
.Lcall_direct_α_290_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n162_call_direct_α
n161_call_direct_β:     add              rsp, 16;                             jmp   n160_lit_integer_β
                        .size            n161_call_direct_bx, .-n161_call_direct_bx
                        .type            n162_call_direct_bx, @function
n162_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_call_direct_α:     sub              rsp, 16
                        sub              rsp, 64
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 4
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_34:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_35:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 64
                        cmp              al, 104;                             jne   .Lcall_direct_α_291_999
                        add              rsp, 32;                             jmp   n160_lit_integer_β
.Lcall_direct_α_291_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n163_assign_α
n162_call_direct_β:     add              rsp, 32;                             jmp   n160_lit_integer_β
                        .size            n162_call_direct_bx, .-n162_call_direct_bx
                        .type            n163_assign_bx, @function
n163_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11936], rax          # X
                        mov              qword ptr [r9 + 11944], rdx;         jmp   n164_statement_end_α
                        .size            n163_assign_bx, .-n163_assign_bx
                        .type            n164_statement_end_bx, @function
n164_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_end_α:   add              rsp, 176;                            jmp   n166_statement_begin_α
                        .size            n164_statement_end_bx, .-n164_statement_end_bx
                        .type            n165_setexit_test_bx, @function
n165_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_setexit_test_α:    mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_295_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_295_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_295_61:
.Lsetexit_test_α_295_1:                                                       jmp   n166_statement_begin_α
                        .size            n165_setexit_test_bx, .-n165_setexit_test_bx
                        .type            n166_statement_begin_bx, @function
n166_statement_begin_bx:
.Lstatement_begin_α_296_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_296_stno
                        .long            8
                        .long            8
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         C       =  POS(0) ARBNO(X CHAR(10)) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n166_statement_begin_α:                                                       jmp   n167_lit_string_α
n166_statement_begin_β:                                                       jmp   n174_setexit_test_α
                        .size            n166_statement_begin_bx, .-n166_statement_begin_bx
                        .type            n167_lit_string_bx, @function
n167_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_298_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n168_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_298_0: .quad .Lthk_.LTp6; .popsection
                        .size            n167_lit_string_bx, .-n167_lit_string_bx
                        .type            n168_var_bx, @function
n168_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11936]          # X
                        mov              rdx, qword ptr [r9 + 11944]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n169_lit_integer_α
n168_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n166_statement_begin_β
                        .size            n168_var_bx, .-n168_var_bx
                        .type            n169_lit_integer_bx, @function
n169_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_300_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n170_call_direct_α
n169_lit_integer_β:     add              rsp, 16;                             jmp   n168_var_β
.Llit_integer_α_300_0:  .quad            8
                        .size            n169_lit_integer_bx, .-n169_lit_integer_bx
                        .type            n170_call_direct_bx, @function
n170_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_call_direct_α:     sub              rsp, 16
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
                        call             rt_sno_patck_d@PLT
.Lgcsite_main_36:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_37:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_301_999
                        add              rsp, 16;                             jmp   n169_lit_integer_β
.Lcall_direct_α_301_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n171_call_direct_α
n170_call_direct_β:     add              rsp, 16;                             jmp   n169_lit_integer_β
                        .size            n170_call_direct_bx, .-n170_call_direct_bx
                        .type            n171_call_direct_bx, @function
n171_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_call_direct_α:     sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_38:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_39:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_302_999
                        add              rsp, 32;                             jmp   n169_lit_integer_β
.Lcall_direct_α_302_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n172_assign_α
n171_call_direct_β:     add              rsp, 32;                             jmp   n169_lit_integer_β
                        .size            n171_call_direct_bx, .-n171_call_direct_bx
                        .type            n172_assign_bx, @function
n172_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11952], rax          # C
                        mov              qword ptr [r9 + 11960], rdx;         jmp   n173_statement_end_α
                        .size            n172_assign_bx, .-n172_assign_bx
                        .type            n173_statement_end_bx, @function
n173_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_end_α:   add              rsp, 80;                             jmp   n175_statement_begin_α
                        .size            n173_statement_end_bx, .-n173_statement_end_bx
                        .type            n174_setexit_test_bx, @function
n174_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_setexit_test_α:    mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_306_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_306_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_306_61:
.Lsetexit_test_α_306_1:                                                       jmp   n175_statement_begin_α
                        .size            n174_setexit_test_bx, .-n174_setexit_test_bx
                        .type            n175_statement_begin_bx, @function
n175_statement_begin_bx:
.Lstatement_begin_α_307_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_307_stno
                        .long            9
                        .long            9
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n175_statement_begin_α:                                                       jmp   n176_lit_name_α
n175_statement_begin_β:                                                       jmp   n181_setexit_test_α
                        .size            n175_statement_begin_bx, .-n175_statement_begin_bx
                        .type            n176_lit_name_bx, @function
n176_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_name_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_309_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n177_lit_integer_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_name_α_309_0: .quad .Llit_name_α_309_0_s; .popsection
.Llit_name_α_309_0_s:   .string          "INPUT"
                        .size            n176_lit_name_bx, .-n176_lit_name_bx
                        .type            n177_lit_integer_bx, @function
n177_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_310_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n178_lit_string_α
n177_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n175_statement_begin_β
.Llit_integer_α_310_0:  .quad            9
                        .size            n177_lit_integer_bx, .-n177_lit_integer_bx
                        .type            n178_lit_string_bx, @function
n178_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_311_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n179_call_try_α
n178_lit_string_β:      add              rsp, 16;                             jmp   n177_lit_integer_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_311_0: .quad .Llit_string_α_311_0_s; .popsection
.Llit_string_α_311_0_s: .string          "[-f0 -r4194304]"
                        .size            n178_lit_string_bx, .-n178_lit_string_bx
                        .type            n179_call_try_bx, @function
n179_call_try_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_call_try_α:        sub              rsp, 16
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
.Lcall_try_α_bynamefnzd124: .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_try_α_bynamefnzd124]
                        lea              rsi, [rsp + 0]
                        lea              rcx, [rsp + 0]
                        movabs           rdx, 1548112371908611
                        call             rt_call_arr_bl_sn4_try@PLT
.Lgcsite_main_71:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_70:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jz    .Lcall_try_α_312_108
                        cmp              rax, 2;                              jne   .Lcall_try_α_312_109
                        lea              rdi, [rsp + 0]
                        mov              rsi, rdx
                        sub              rsp, 112
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              rdx, rsp                             # pend
                        call             rt_tweak_open@PLT
.Lgcsite_main_69:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:261
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_68:       mov              r9,  qword ptr [rip + g_rtccb+48]
1:                      mov              rcx, qword ptr [rsp + 0]
                        test             rcx, rcx;                            jz    .Lcall_try_α_312_150
                        lea              rdi, [rsp + 0]                       # args
                        mov              esi, 2                               # nargs
                        call             rt_apply_open@PLT
.Lgcsite_main_67:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_66:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jz    .Lcall_try_α_312_151
                        sub              rsp, 16
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 560]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 584]
                        mov              qword ptr [rsp + 8], rcx
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
                        cmp              rcx, 2;                              je    .Lcall_try_α_312_130
                        cmp              rcx, 1;                              je    .Lcall_try_α_312_230
                        lea              rcx, [rip + .Lcall_try_α_312_132]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_312_131]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_312_131]
                        lea              rdx, [rip + .Lcall_try_α_312_132];   jmp   rax
.Lcall_try_α_312_130:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lcall_try_α_312_133]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lcall_try_α_312_134]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lcall_try_α_312_133:
.Lgcsite_main_65:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_312_135
.Lcall_try_α_312_134:
.Lgcsite_main_64:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_312_136
.Lcall_try_α_312_131:
.Lgcsite_main_63:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_312_135
.Lcall_try_α_312_132:
.Lgcsite_main_62:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_312_136
.Lcall_try_α_312_230:   lea              rcx, [rip + .Lcall_try_α_312_232]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_312_231]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_312_231]
                        lea              rdx, [rip + .Lcall_try_α_312_232];   jmp   rax
.Lcall_try_α_312_231:
.Lgcsite_main_61:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_312_135
.Lcall_try_α_312_232:
.Lgcsite_main_60:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_312_136
.Lcall_try_α_312_135:   mov              rcx, rsp
                        call             rt_apply_land_γ@PLT
.Lgcsite_main_59:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_58:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lcall_try_α_312_152
.Lcall_try_α_312_136:   mov              rsi, rsp
                        call             rt_apply_land_ω@PLT
.Lgcsite_main_57:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_56:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lcall_try_α_312_152
.Lcall_try_α_312_151:
.Lcall_try_α_312_152:   lea              rdi, [rsp + 0]                       # pend
                        call             rt_call_pend_close@PLT
.Lgcsite_main_55:       mov              r9,  qword ptr [rip + g_rtccb+48]
.Lcall_try_α_312_150:   add              rsp, 112;                            jmp   .Lcall_try_α_312_108
.Lcall_try_α_312_109:   cmp              rax, 3;                              jne   .Lcall_try_α_312_170
                        mov              rdi, rdx
                        mov              esi, 1
                        sub              rsp, 112
                        mov              rdx, rsp
                        call             rt_eval_open@PLT
.Lgcsite_main_54:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_53:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jz    .Lcall_try_α_312_172
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
                        mov              rcx, qword ptr [rip + Σ@GOTPCREL]
                        mov              r13, qword ptr [rcx + 0]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              r15d, dword ptr [rcx + 0]
                        xor              ecx, ecx
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_312_171]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lcall_try_α_312_171:
.Lgcsite_main_52:       add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        call             rt_eval_land@PLT
.Lgcsite_main_51:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_50:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 112;                            jmp   .Lcall_try_α_312_29
.Lcall_try_α_312_172:   add              rsp, 112;                            jmp   .Lcall_try_α_312_108
.Lcall_try_α_312_170:   sub              rsp, 64
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
                        cmp              rcx, 2;                              je    .Lcall_try_α_312_100
                        cmp              rcx, 1;                              je    .Lcall_try_α_312_200
                        lea              rcx, [rip + .Lcall_try_α_312_102]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_312_101]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_312_101]
                        lea              rdx, [rip + .Lcall_try_α_312_102];   jmp   rax
.Lcall_try_α_312_100:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lcall_try_α_312_103]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lcall_try_α_312_104]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lcall_try_α_312_103:
.Lgcsite_main_49:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_312_105
.Lcall_try_α_312_104:
.Lgcsite_main_48:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_312_106
.Lcall_try_α_312_101:
.Lgcsite_main_47:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_312_105
.Lcall_try_α_312_102:
.Lgcsite_main_46:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_312_106
.Lcall_try_α_312_200:   lea              rcx, [rip + .Lcall_try_α_312_202]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_312_201]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_312_201]
                        lea              rdx, [rip + .Lcall_try_α_312_202];   jmp   rax
.Lcall_try_α_312_201:
.Lgcsite_main_45:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_312_105
.Lcall_try_α_312_202:
.Lgcsite_main_44:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_312_106
.Lcall_try_α_312_105:   call             rt_call_land_γ@PLT
.Lgcsite_main_43:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_42:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_try_α_312_29
.Lcall_try_α_312_106:   call             rt_call_land_ω@PLT
.Lgcsite_main_41:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_40:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_try_α_312_29
.Lcall_try_α_312_108:   mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lcall_try_α_312_29:    push             rax
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
.Lgcsite_main_72:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_try_α_312_999
                        add              rsp, 16;                             jmp   n178_lit_string_β
.Lcall_try_α_312_999:   mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n180_statement_end_α
n179_call_try_β:        add              rsp, 16;                             jmp   n178_lit_string_β
                        .size            n179_call_try_bx, .-n179_call_try_bx
                        .type            n180_statement_end_bx, @function
n180_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_end_α:   add              rsp, 64;                             jmp   n182_statement_begin_α
                        .size            n180_statement_end_bx, .-n180_statement_end_bx
                        .type            n181_setexit_test_bx, @function
n181_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_setexit_test_α:    mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_315_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_315_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_315_61:
.Lsetexit_test_α_315_1:                                                       jmp   n182_statement_begin_α
                        .size            n181_setexit_test_bx, .-n181_setexit_test_bx
                        .type            n182_statement_begin_bx, @function
n182_statement_begin_bx:
.Lstatement_begin_α_316_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_316_stno
                        .long            10
                        .long            10
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         src     =  INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n182_statement_begin_α:                                                       jmp   n183_var_α
n182_statement_begin_β:                                                       jmp   n186_setexit_test_α
                        .size            n182_statement_begin_bx, .-n182_statement_begin_bx
                        .type            n183_var_bx, @function
n183_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lvar_α_318_0] # name
                        call             NV_GET_fn@PLT
.Lgcsite_main_74:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lvar_α_318_999
                        add              rsp, 16;                             jmp   n182_statement_begin_β
.Lvar_α_318_999:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_var_global.cpp:86
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_73:       mov              r9,  qword ptr [rip + g_rtccb+48]
1:                                                                            jmp   n184_assign_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lvar_α_318_0: .quad .Lvar_α_318_0_s; .popsection
.Lvar_α_318_0_s:        .string          "INPUT"
                        .size            n183_var_bx, .-n183_var_bx
                        .type            n184_assign_bx, @function
n184_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11968], rax          # src
                        mov              qword ptr [r9 + 11976], rdx;         jmp   n185_statement_end_α
                        .size            n184_assign_bx, .-n184_assign_bx
                        .type            n185_statement_end_bx, @function
n185_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_end_α:   add              rsp, 16;                             jmp   n187_statement_begin_α
                        .size            n185_statement_end_bx, .-n185_statement_end_bx
                        .type            n186_setexit_test_bx, @function
n186_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_setexit_test_α:    mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_322_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_322_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_322_61:
.Lsetexit_test_α_322_1:                                                       jmp   n206_statement_begin_α
                        .size            n186_setexit_test_bx, .-n186_setexit_test_bx
                        .type            n187_statement_begin_bx, @function
n187_statement_begin_bx:
.Lstatement_begin_α_323_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_323_stno
                        .long            11
                        .long            11
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         src     ?  C  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n187_statement_begin_α:                                                       jmp   n188_var_α
n187_statement_begin_β:                                                       jmp   n197_setexit_test_α
                        .size            n187_statement_begin_bx, .-n187_statement_begin_bx
                        .type            n188_var_bx, @function
n188_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11968]          # src
                        mov              rdx, qword ptr [r9 + 11976]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n189_var_α
                        .size            n188_var_bx, .-n188_var_bx
                        .type            n189_var_bx, @function
n189_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11952]          # C
                        mov              rdx, qword ptr [r9 + 11960]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n190_lit_integer_α
n189_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n197_setexit_test_α
                        .size            n189_var_bx, .-n189_var_bx
                        .type            n190_lit_integer_bx, @function
n190_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_327_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n191_call_direct_α
n190_lit_integer_β:     add              rsp, 16;                             jmp   n189_var_β
.Llit_integer_α_327_0:  .quad            240
                        .size            n190_lit_integer_bx, .-n190_lit_integer_bx
                        .type            n191_call_direct_bx, @function
n191_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_call_direct_α:     sub              rsp, 16
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
                        call             rt_sno_patck_d@PLT
.Lgcsite_main_75:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_76:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_328_999
                        add              rsp, 16;                             jmp   n190_lit_integer_β
.Lcall_direct_α_328_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n192_assign_α
n191_call_direct_β:     add              rsp, 16;                             jmp   n190_lit_integer_β
                        .size            n191_call_direct_bx, .-n191_call_direct_bx
                        .type            n192_assign_bx, @function
n192_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11984], rax
                        mov              qword ptr [r9 + 11992], rdx;         jmp   n193_match_begin_α
n192_assign_β:          add              rsp, 16;                             jmp   n190_lit_integer_β
                        .size            n192_assign_bx, .-n192_assign_bx
                        .type            n193_match_begin_bx, @function
n193_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_match_begin_α:     mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
.Lgcsite_main_81:       push             rbp
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
.Lgcsite_main_80:       cmp              rax, -1;                             jne   .Lmatch_begin_vd_331_24
                        call             c_rt_match_enter@PLT
.Lgcsite_main_79:       mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_begin_vd_331_24:
                        push             rax
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
.Lgcsite_main_78:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0               # cas_mark
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24
                        test             r13, r13;                            jne   .Lmatch_begin_α_331_14
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax;          jmp   .Lmatch_begin_α_331_1
.Lmatch_begin_α_331_14: mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_331_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_331_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n194_match_defer_α
n193_match_begin_β:
.Lmatch_begin_α_331_13: mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_α_331_1
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_α_331_1
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              rax, qword ptr [rcx + 17600]
                        cmp              rax, 0;                              jne   .Lmatch_begin_α_331_1
                                                                              jmp   .Lmatch_begin_α_331_0
.Lmatch_begin_α_331_1:
.Lmatch_begin_γ_193_af:
.Lmatch_begin_ω_193_af: mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL] # mbc_restore
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
.Lgcsite_main_77:       mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              r13, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n192_assign_β
                        .size            n193_match_begin_bx, .-n193_match_begin_bx
                        .type            n194_match_defer_bx, @function
n194_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_match_defer_α:     mov              rax, qword ptr [r9 + 11984]
                        mov              rdx, qword ptr [r9 + 11992]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_332_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_332_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_main_104:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:102
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_103:      mov              r9,  qword ptr [rip + g_rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11992];         jmp   .Lmatch_defer_α_332_10
.Lmatch_defer_α_332_9:  xor              eax, eax
.Lmatch_defer_α_332_10: test             rax, rax;                            jz    .Lmatch_defer_α_332_0
.Lmatch_defer_α_332_48: mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_332_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_332_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_332_4:
.Lgcsite_main_102:                                                            jmp   n195_match_end_α
.Lmatch_defer_α_332_5:
.Lgcsite_main_101:      cmp              r14d, -2;                            je    .Lmatch_begin_ω_193_af
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_193_af
                                                                              jmp   n193_match_begin_β
.Lmatch_defer_α_332_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        lea              rdi, [r9 + 11984]
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        call             qword ptr [rip + rt_defer_open_cell@GOTPCREL]
.Lgcsite_main_100:      cmp              rax, -1;                             jne   .Lmatch_defer_vd_332_26
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_main_99:       mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_332_26:
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_332_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_332_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_98:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_332_2:  test             rax, rax;                            je    .Lmatch_defer_α_332_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_332_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_332_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_332_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_332_141
                        lea              rcx, [rip + .Lmatch_defer_α_332_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_332_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_332_42]
                        lea              rdx, [rip + .Lmatch_defer_α_332_43]; jmp   rax
.Lmatch_defer_α_332_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_332_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_332_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_332_44:
.Lgcsite_main_97:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_332_46
.Lmatch_defer_α_332_45:
.Lgcsite_main_96:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_332_47
.Lmatch_defer_α_332_42:
.Lgcsite_main_95:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_332_46
.Lmatch_defer_α_332_43:
.Lgcsite_main_94:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_332_47
.Lmatch_defer_α_332_141:
                        lea              rcx, [rip + .Lmatch_defer_α_332_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_332_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_332_142]
                        lea              rdx, [rip + .Lmatch_defer_α_332_143]
                                                                              jmp   rax
.Lmatch_defer_α_332_142:
.Lgcsite_main_93:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_332_46
.Lmatch_defer_α_332_143:
.Lgcsite_main_92:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_332_47
.Lmatch_defer_α_332_46: mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_main_91:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_332_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_332_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_90:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_332_2
.Lmatch_defer_α_332_47: mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_main_89:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_332_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_332_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_88:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_332_2
.Lmatch_defer_α_332_61: sub              rsp, 64
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
                        mov              rcx, qword ptr [rip + Σ@GOTPCREL]
                        mov              r13, qword ptr [rcx + 0]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              r15d, dword ptr [rcx + 0]
                        xor              ecx, ecx
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_332_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_332_62:
.Lgcsite_main_87:       add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_main_86:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_332_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_332_63: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_85:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_332_2
.Lmatch_defer_α_332_40: add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_332_48
.Lmatch_defer_α_332_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_main_84:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_332_25
                        call             c_rt_defer_close@PLT
.Lgcsite_main_83:       mov              r9,  qword ptr [rip + g_rtccb+48]
.Lmatch_defer_vd_332_25:
                        add              rsp, 144
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
.Lgcsite_main_82:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_332_49: cmp              r14d, -2;                            je    .Lmatch_begin_ω_193_af
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_193_af
                        test             eax, eax;                            js    n193_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_332_6]
                        push             rcx
                        push             rax;                                 jmp   n195_match_end_α
.Lmatch_defer_α_332_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n193_match_begin_β
n194_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_332_12
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_332_12
                                                                              jmp   rax
.Lmatch_defer_β_332_12:                                                       jmp   qword ptr [rsp]
                        .size            n194_match_defer_bx, .-n194_match_defer_bx
                        .type            n195_match_end_bx, @function
n195_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_match_end_α:       mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_193_af
                        mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 224
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rsi, r12
                        mov              rdx, r13
                        mov              rcx, rsp
                        call             qword ptr [rip + rt_dcap_end_ok_open@GOTPCREL]
.Lgcsite_main_136:      push             rax
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
.Lgcsite_main_135:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:
.Lmatch_end_α_334_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_334_2
                        cmp              rax, 2;                              je    .Lmatch_end_α_334_10
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
                        cmp              rcx, 2;                              je    .Lmatch_end_α_334_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_334_120
                        lea              rcx, [rip + .Lmatch_end_α_334_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_334_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_334_21]
                        lea              rdx, [rip + .Lmatch_end_α_334_22];   jmp   rax
.Lmatch_end_α_334_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_334_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_334_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_334_23:
.Lgcsite_main_134:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_334_8
.Lmatch_end_α_334_24:
.Lgcsite_main_133:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_334_9
.Lmatch_end_α_334_21:
.Lgcsite_main_132:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_334_8
.Lmatch_end_α_334_22:
.Lgcsite_main_131:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_334_9
.Lmatch_end_α_334_120:  lea              rcx, [rip + .Lmatch_end_α_334_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_334_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_334_121]
                        lea              rdx, [rip + .Lmatch_end_α_334_122];  jmp   rax
.Lmatch_end_α_334_121:
.Lgcsite_main_130:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_334_8
.Lmatch_end_α_334_122:
.Lgcsite_main_129:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_334_9
.Lmatch_end_α_334_8:    mov              rdx, rsp
                        call             rt_dcap_land_γ@PLT
.Lgcsite_main_128:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_127:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_334_1
.Lmatch_end_α_334_9:    mov              rdi, rsp
                        call             rt_dcap_land_ω@PLT
.Lgcsite_main_126:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_125:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_334_1
.Lmatch_end_α_334_10:   mov              rcx, qword ptr [rsp + 112]
                        test             rcx, rcx;                            jz    .Lmatch_end_α_334_60
                        lea              rdi, [rsp + 112]                     # args
                        mov              esi, 3                               # nargs
                        call             rt_apply_open@PLT
.Lgcsite_main_124:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_123:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jz    .Lmatch_end_α_334_61
                        sub              rsp, 16
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 560]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 584]
                        mov              qword ptr [rsp + 8], rcx
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
                        cmp              rcx, 2;                              je    .Lmatch_end_α_334_40
                        cmp              rcx, 1;                              je    .Lmatch_end_α_334_140
                        lea              rcx, [rip + .Lmatch_end_α_334_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_334_41]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_334_41]
                        lea              rdx, [rip + .Lmatch_end_α_334_42];   jmp   rax
.Lmatch_end_α_334_40:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_334_43]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_334_44]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_334_43:
.Lgcsite_main_122:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_334_45
.Lmatch_end_α_334_44:
.Lgcsite_main_121:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_334_46
.Lmatch_end_α_334_41:
.Lgcsite_main_120:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_334_45
.Lmatch_end_α_334_42:
.Lgcsite_main_119:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_334_46
.Lmatch_end_α_334_140:  lea              rcx, [rip + .Lmatch_end_α_334_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_334_141]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_334_141]
                        lea              rdx, [rip + .Lmatch_end_α_334_142];  jmp   rax
.Lmatch_end_α_334_141:
.Lgcsite_main_118:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_334_45
.Lmatch_end_α_334_142:
.Lgcsite_main_117:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_334_46
.Lmatch_end_α_334_45:   mov              rcx, rsp
                        call             rt_apply_land_γ@PLT
.Lgcsite_main_116:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_115:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lmatch_end_α_334_62
.Lmatch_end_α_334_46:   mov              rsi, rsp
                        call             rt_apply_land_ω@PLT
.Lgcsite_main_114:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_113:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lmatch_end_α_334_62
.Lmatch_end_α_334_61:   lea              rdi, [rsp + 112]                     # pend
                        call             rt_trace_pend_run@PLT
.Lgcsite_main_112:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:320
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_111:      mov              r9,  qword ptr [rip + g_rtccb+48]
1:
.Lmatch_end_α_334_62:   lea              rdi, [rsp + 112]                     # pend
                        call             rt_trace_pend_close@PLT
.Lgcsite_main_110:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:324
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_109:      mov              r9,  qword ptr [rip + g_rtccb+48]
1:
.Lmatch_end_α_334_60:   mov              rdi, rsp                             # c
                        call             rt_dcap_resume@PLT
.Lgcsite_main_108:      mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_107:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_334_1
.Lmatch_end_α_334_2:    add              rsp, 224
                        mov              qword ptr [rsp + 0], rax
                        mov              rdi, qword ptr [rbp + -16]           # outer_Σ
                        mov              rsi, qword ptr [rbp + -32]           # outer_Δ
                        lea              rdx, [rbp + -88]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
.Lgcsite_main_106:      mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              rax, qword ptr [rsp + 0]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        test             rax, rax;                            je    .Lmatch_end_α_334_13
                                                                              jmp   .Lmatch_begin_ω_193_af
.Lmatch_end_α_334_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp
.Lgcsite_main_105:                                                            jmp   n196_statement_end_α
                        .size            n195_match_end_bx, .-n195_match_end_bx
                        .type            n196_statement_end_bx, @function
n196_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_statement_end_α:   add              rsp, 64;                             jmp   n198_statement_begin_α
                        .size            n196_statement_end_bx, .-n196_statement_end_bx
                        .type            n197_setexit_test_bx, @function
n197_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_setexit_test_α:    mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_337_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_337_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_337_61:
.Lsetexit_test_α_337_1:                                                       jmp   n206_statement_begin_α
                        .size            n197_setexit_test_bx, .-n197_setexit_test_bx
                        .type            n198_statement_begin_bx, @function
n198_statement_begin_bx:
.Lstatement_begin_α_338_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_338_stno
                        .long            12
                        .long            12
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         OUTPUT  =  'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n198_statement_begin_α:                                                       jmp   n199_lit_string_α
n198_statement_begin_β:                                                       jmp   n205_setexit_test_α
                        .size            n198_statement_begin_bx, .-n198_statement_begin_bx
                        .type            n199_lit_string_bx, @function
n199_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_340_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n200_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_340_0: .quad .Llit_string_α_340_0_s; .popsection
.Llit_string_α_340_0_s: .string          "matched bytes="
                        .size            n199_lit_string_bx, .-n199_lit_string_bx
                        .type            n200_var_bx, @function
n200_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11968]          # src
                        mov              rdx, qword ptr [r9 + 11976]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n201_call_byname_α
n200_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n198_statement_begin_β
                        .size            n200_var_bx, .-n200_var_bx
                        .type            n201_call_byname_bx, @function
n201_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd343: .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd343]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
.Lgcsite_main_138:      cmp              al, 255;                             jne   .Lcall_byname_vd_342_27
                        call             c_rt_call_bid_sn4@PLT
.Lgcsite_main_137:      mov              r9,  qword ptr [rip + g_rtccb+48]
.Lcall_byname_vd_342_27:
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
.Lgcsite_main_139:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_342_999
                        add              rsp, 16;                             jmp   n200_var_β
.Lcall_byname_α_342_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_binop_α
n201_call_byname_β:     add              rsp, 16;                             jmp   n200_var_β
                        .size            n201_call_byname_bx, .-n201_call_byname_bx
                        .type            n202_binop_bx, @function
n202_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + sno_concat_d@GOTPCREL]
.Lgcsite_main_142:      cmp              al, 255;                             jne   .Lbinop_vd_344_28
                        call             c_sno_concat_d@PLT
.Lgcsite_main_141:      mov              r9,  qword ptr [rip + g_rtccb+48]
.Lbinop_vd_344_28:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_140:      mov              r9,  qword ptr [rip + g_rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_344_999
                        add              rsp, 32;                             jmp   n200_var_β
.Lbinop_α_344_999:                                                            jmp   n203_assign_α
n202_binop_β:           add              rsp, 32;                             jmp   n200_var_β
                        .size            n202_binop_bx, .-n202_binop_bx
                        .type            n203_assign_bx, @function
n203_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]             # val
                        mov              rsi, rax                             # val
                        mov              rdi, qword ptr [rip + .Lassign_α_345_0] # name
                        call             NV_SET_fn@PLT
.Lgcsite_main_144:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_143:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   n204_statement_end_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lassign_α_345_0: .quad .Lassign_α_345_0_s; .popsection
.Lassign_α_345_0_s:     .string          "OUTPUT"
                        .size            n203_assign_bx, .-n203_assign_bx
                        .type            n204_statement_end_bx, @function
n204_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_statement_end_α:   add              rsp, 64;                             jmp   main_γ
                        .size            n204_statement_end_bx, .-n204_statement_end_bx
                        .type            n205_setexit_test_bx, @function
n205_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_setexit_test_α:    mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_348_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_348_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_348_61:
.Lsetexit_test_α_348_1:                                                       jmp   main_γ
                        .size            n205_setexit_test_bx, .-n205_setexit_test_bx
                        .type            n206_statement_begin_bx, @function
n206_statement_begin_bx:
.Lstatement_begin_α_349_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_349_stno
                        .long            13
                        .long            13
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# error   OUTPUT  =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n206_statement_begin_α:                                                       jmp   n207_lit_string_α
n206_statement_begin_β:                                                       jmp   n210_setexit_test_α
                        .size            n206_statement_begin_bx, .-n206_statement_begin_bx
                        .type            n207_lit_string_bx, @function
n207_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_351_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n208_assign_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_351_0: .quad .Llit_string_α_351_0_s; .popsection
.Llit_string_α_351_0_s: .string          "Pattern match failed"
                        .size            n207_lit_string_bx, .-n207_lit_string_bx
                        .type            n208_assign_bx, @function
n208_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]             # val
                        mov              rsi, rax                             # val
                        mov              rdi, qword ptr [rip + .Lassign_α_352_0] # name
                        call             NV_SET_fn@PLT
.Lgcsite_main_146:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_145:      mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   n209_statement_end_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lassign_α_352_0: .quad .Lassign_α_352_0_s; .popsection
.Lassign_α_352_0_s:     .string          "OUTPUT"
                        .size            n208_assign_bx, .-n208_assign_bx
                        .type            n209_statement_end_bx, @function
n209_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_statement_end_α:   add              rsp, 16;                             jmp   main_γ
                        .size            n209_statement_end_bx, .-n209_statement_end_bx
                        .type            n210_setexit_test_bx, @function
n210_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_setexit_test_α:    mov              rcx, qword ptr [rip + g_rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_355_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_355_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_355_61:
.Lsetexit_test_α_355_1:                                                       jmp   main_γ
                        .size            n210_setexit_test_bx, .-n210_setexit_test_bx
                        .type            n211_goto_bx, @function
n211_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_goto_α:                                                                  jmp   n206_statement_begin_α
n211_goto_β:                                                                  jmp   main_ω
                        .size            n211_goto_bx, .-n211_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        call             sno_setexit_fire_on_end@PLT
.Lgcsite_main_149:      push             rax                                  # gc_poll bb_glue_flat.cpp:56
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_148:      mov              r9,  qword ptr [rip + g_rtccb+48]
1:                      xor              edi, edi
                        call             exit@PLT
.Lgcsite_main_147:
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
.Lgcsite_main_150:
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_main:
                        .quad            70065933658
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            0
                        .quad            0
.Lgcmap_main_s:         .string          "main"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_main_7:       .quad            151
                        .quad            .Lgcmap_main
                        .quad            0
                        .quad            .Lgccode_main_7
                        .quad            .Lgcsite_main_0-.Lgccode_main_7
                        .quad            68719476737
                        .quad            .Lgcsite_main_1-.Lgccode_main_7
                        .quad            206158430209
                        .quad            .Lgcsite_main_2-.Lgccode_main_7
                        .quad            137438953473
                        .quad            .Lgcsite_main_3-.Lgccode_main_7
                        .quad            274877906945
                        .quad            .Lgcsite_main_5-.Lgccode_main_7
                        .quad            137438953473
                        .quad            .Lgcsite_main_4-.Lgccode_main_7
                        .quad            137438953473
                        .quad            .Lgcsite_main_6-.Lgccode_main_7
                        .quad            206158430209
                        .quad            .Lgcsite_main_7-.Lgccode_main_7
                        .quad            343597383681
                        .quad            .Lgcsite_main_8-.Lgccode_main_7
                        .quad            206158430209
                        .quad            .Lgcsite_main_9-.Lgccode_main_7
                        .quad            343597383681
                        .quad            .Lgcsite_main_10-.Lgccode_main_7
                        .quad            412316860417
                        .quad            .Lgcsite_main_11-.Lgccode_main_7
                        .quad            549755813889
                        .quad            .Lgcsite_main_12-.Lgccode_main_7
                        .quad            618475290625
                        .quad            .Lgcsite_main_13-.Lgccode_main_7
                        .quad            755914244097
                        .quad            .Lgcsite_main_14-.Lgccode_main_7
                        .quad            755914244097
                        .quad            .Lgcsite_main_15-.Lgccode_main_7
                        .quad            893353197569
                        .quad            .Lgcsite_main_16-.Lgccode_main_7
                        .quad            412316860417
                        .quad            .Lgcsite_main_17-.Lgccode_main_7
                        .quad            549755813889
                        .quad            .Lgcsite_main_18-.Lgccode_main_7
                        .quad            481036337153
                        .quad            .Lgcsite_main_19-.Lgccode_main_7
                        .quad            618475290625
                        .quad            .Lgcsite_main_20-.Lgccode_main_7
                        .quad            412316860417
                        .quad            .Lgcsite_main_21-.Lgccode_main_7
                        .quad            549755813889
                        .quad            .Lgcsite_main_22-.Lgccode_main_7
                        .quad            618475290625
                        .quad            .Lgcsite_main_23-.Lgccode_main_7
                        .quad            755914244097
                        .quad            .Lgcsite_main_24-.Lgccode_main_7
                        .quad            824633720833
                        .quad            .Lgcsite_main_25-.Lgccode_main_7
                        .quad            962072674305
                        .quad            .Lgcsite_main_26-.Lgccode_main_7
                        .quad            1030792151041
                        .quad            .Lgcsite_main_27-.Lgccode_main_7
                        .quad            1168231104513
                        .quad            .Lgcsite_main_28-.Lgccode_main_7
                        .quad            412316860417
                        .quad            .Lgcsite_main_29-.Lgccode_main_7
                        .quad            549755813889
                        .quad            .Lgcsite_main_30-.Lgccode_main_7
                        .quad            618475290625
                        .quad            .Lgcsite_main_31-.Lgccode_main_7
                        .quad            755914244097
                        .quad            .Lgcsite_main_32-.Lgccode_main_7
                        .quad            824633720833
                        .quad            .Lgcsite_main_33-.Lgccode_main_7
                        .quad            962072674305
                        .quad            .Lgcsite_main_34-.Lgccode_main_7
                        .quad            1030792151041
                        .quad            .Lgcsite_main_35-.Lgccode_main_7
                        .quad            1168231104513
                        .quad            .Lgcsite_main_36-.Lgccode_main_7
                        .quad            412316860417
                        .quad            .Lgcsite_main_37-.Lgccode_main_7
                        .quad            549755813889
                        .quad            .Lgcsite_main_38-.Lgccode_main_7
                        .quad            481036337153
                        .quad            .Lgcsite_main_39-.Lgccode_main_7
                        .quad            618475290625
                        .quad            .Lgcsite_main_71-.Lgccode_main_7
                        .quad            481036337153
                        .quad            .Lgcsite_main_70-.Lgccode_main_7
                        .quad            618475290625
                        .quad            .Lgcsite_main_69-.Lgccode_main_7
                        .quad            962072674305
                        .quad            .Lgcsite_main_68-.Lgccode_main_7
                        .quad            962072674305
                        .quad            .Lgcsite_main_67-.Lgccode_main_7
                        .quad            962072674305
                        .quad            .Lgcsite_main_66-.Lgccode_main_7
                        .quad            1099511627777
                        .quad            .Lgcsite_main_65-.Lgccode_main_7
                        .quad            1511828488194
                        .quad            .Lgcsite_main_64-.Lgccode_main_7
                        .quad            1511828488194
                        .quad            .Lgcsite_main_63-.Lgccode_main_7
                        .quad            1374389534722
                        .quad            .Lgcsite_main_62-.Lgccode_main_7
                        .quad            1374389534722
                        .quad            .Lgcsite_main_61-.Lgccode_main_7
                        .quad            1374389534722
                        .quad            .Lgcsite_main_60-.Lgccode_main_7
                        .quad            1374389534722
                        .quad            .Lgcsite_main_59-.Lgccode_main_7
                        .quad            1030792151041
                        .quad            .Lgcsite_main_58-.Lgccode_main_7
                        .quad            1168231104513
                        .quad            .Lgcsite_main_57-.Lgccode_main_7
                        .quad            1030792151041
                        .quad            .Lgcsite_main_56-.Lgccode_main_7
                        .quad            1168231104513
                        .quad            .Lgcsite_main_55-.Lgccode_main_7
                        .quad            962072674305
                        .quad            .Lgcsite_main_54-.Lgccode_main_7
                        .quad            962072674305
                        .quad            .Lgcsite_main_53-.Lgccode_main_7
                        .quad            1099511627777
                        .quad            .Lgcsite_main_52-.Lgccode_main_7
                        .quad            1305670057986
                        .quad            .Lgcsite_main_51-.Lgccode_main_7
                        .quad            962072674305
                        .quad            .Lgcsite_main_50-.Lgccode_main_7
                        .quad            1099511627777
                        .quad            .Lgcsite_main_49-.Lgccode_main_7
                        .quad            962072674306
                        .quad            .Lgcsite_main_48-.Lgccode_main_7
                        .quad            962072674306
                        .quad            .Lgcsite_main_47-.Lgccode_main_7
                        .quad            824633720834
                        .quad            .Lgcsite_main_46-.Lgccode_main_7
                        .quad            824633720834
                        .quad            .Lgcsite_main_45-.Lgccode_main_7
                        .quad            824633720834
                        .quad            .Lgcsite_main_44-.Lgccode_main_7
                        .quad            824633720834
                        .quad            .Lgcsite_main_43-.Lgccode_main_7
                        .quad            481036337153
                        .quad            .Lgcsite_main_42-.Lgccode_main_7
                        .quad            618475290625
                        .quad            .Lgcsite_main_41-.Lgccode_main_7
                        .quad            481036337153
                        .quad            .Lgcsite_main_40-.Lgccode_main_7
                        .quad            618475290625
                        .quad            .Lgcsite_main_72-.Lgccode_main_7
                        .quad            618475290625
                        .quad            .Lgcsite_main_74-.Lgccode_main_7
                        .quad            68719476737
                        .quad            .Lgcsite_main_73-.Lgccode_main_7
                        .quad            68719476737
                        .quad            .Lgcsite_main_75-.Lgccode_main_7
                        .quad            412316860417
                        .quad            .Lgcsite_main_76-.Lgccode_main_7
                        .quad            549755813889
                        .quad            .Lgcsite_main_81-.Lgccode_main_7
                        .quad            274877906948
                        .quad            .Lgcsite_main_80-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_79-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_78-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_77-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_104-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_103-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_102-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_101-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_100-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_99-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_98-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_97-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_96-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_95-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_94-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_93-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_92-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_91-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_90-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_89-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_88-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_87-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_86-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_85-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_84-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_83-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_82-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_136-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_135-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_134-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_133-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_132-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_131-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_130-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_129-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_128-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_127-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_126-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_125-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_124-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_123-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_122-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_121-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_120-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_119-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_118-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_117-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_116-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_115-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_114-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_113-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_112-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_111-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_110-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_109-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_108-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_107-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_106-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_105-.Lgccode_main_7
                        .quad            274877906949
                        .quad            .Lgcsite_main_138-.Lgccode_main_7
                        .quad            274877906945
                        .quad            .Lgcsite_main_137-.Lgccode_main_7
                        .quad            274877906945
                        .quad            .Lgcsite_main_139-.Lgccode_main_7
                        .quad            412316860417
                        .quad            .Lgcsite_main_142-.Lgccode_main_7
                        .quad            274877906945
                        .quad            .Lgcsite_main_141-.Lgccode_main_7
                        .quad            274877906945
                        .quad            .Lgcsite_main_140-.Lgccode_main_7
                        .quad            274877906945
                        .quad            .Lgcsite_main_144-.Lgccode_main_7
                        .quad            274877906945
                        .quad            .Lgcsite_main_143-.Lgccode_main_7
                        .quad            412316860417
                        .quad            .Lgcsite_main_146-.Lgccode_main_7
                        .quad            68719476737
                        .quad            .Lgcsite_main_145-.Lgccode_main_7
                        .quad            206158430209
                        .quad            .Lgcsite_main_149-.Lgccode_main_7
                        .quad            1
                        .quad            .Lgcsite_main_148-.Lgccode_main_7
                        .quad            1
                        .quad            .Lgcsite_main_147-.Lgccode_main_7
                        .quad            1
                        .quad            .Lgcsite_main_150-.Lgccode_main_7
                        .quad            1
                        .popsection
module_init:
                        sub              rsp, 8
                        add              rsp, 8
                        ret
                        .section         .data.rel.ro,"aw",@progbits
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
.C1:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
                        .text
                        .section         .data
                        .align           8
__alpha_cellp_tab:      .quad            0
                        .section         .rodata
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
