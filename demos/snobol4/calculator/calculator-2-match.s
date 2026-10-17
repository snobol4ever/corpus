                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/calculator/calculator-2-match.sno"
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
                        lea              rax, [rip + .Lmatch_alternate_α_13_21]
                        mov              qword ptr [rbp + -72], rax;          jmp   n11_match_defer_α
.Lmatch_alternate_α_13_21:
                        lea              rax, [rip + .Lmatch_alternate_α_13_22]
                        mov              qword ptr [rbp + -72], rax;          jmp   n10_match_defer_α
.Lmatch_alternate_α_13_22:
                        lea              rax, [rip + .Lmatch_alternate_α_13_19]
                        mov              qword ptr [rbp + -72], rax;          jmp   n7_match_lit_α
.Lmatch_alternate_γ_6_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_13_40]
                        mov              qword ptr [rbp + -80], rax;          jmp   .Lmatch_alternate_γ_6_as
.Lmatch_alternate_γ_6_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_13_41]
                        mov              qword ptr [rbp + -80], rax;          jmp   .Lmatch_alternate_γ_6_as
.Lmatch_alternate_γ_6_s2:
                        lea              rax, [rip + .Lmatch_alternate_α_13_42]
                        mov              qword ptr [rbp + -80], rax;          jmp   .Lmatch_alternate_γ_6_as
.Lmatch_alternate_α_13_40:
                                                                              jmp   n11_match_defer_β
.Lmatch_alternate_α_13_41:
                                                                              jmp   n10_match_defer_β
.Lmatch_alternate_α_13_42:
                                                                              jmp   n9_match_lit_β
.Lmatch_alternate_γ_6_as:
                                                                              jmp   .LTp2_γ
n6_match_alternate_β:   mov              rax, qword ptr [rbp + -80];          jmp   rax
.Lmatch_alternate_γ_6_af:
.Lmatch_alternate_ω_6_af:
                        mov              r14d, dword ptr [rbp + -88]
                        mov              rax, qword ptr [rbp + -72];          jmp   rax
.Lmatch_alternate_α_13_19:
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
n8_match_defer_α:       mov              rax, qword ptr [r9 + 11936]          # X
                        mov              rdx, qword ptr [r9 + 11944]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_16_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_16_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp2_22:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:107
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp2_21:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11944];         jmp   .Lmatch_defer_α_16_10
.Lmatch_defer_α_16_9:   xor              eax, eax
.Lmatch_defer_α_16_10:  test             rax, rax;                            jz    .Lmatch_defer_α_16_0
.Lmatch_defer_α_16_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_16_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_16_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_16_4:
.Lgcsite_.LTp2_20:                                                            jmp   n9_match_lit_α
.Lmatch_defer_α_16_5:
.Lgcsite_.LTp2_19:                                                            jmp   n7_match_lit_β
.Lmatch_defer_α_16_0:   sub              rsp, 32
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
.Lgcsite_.LTp2_18:      cmp              rax, -1;                             jne   .Lmatch_defer_vd_16_1
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_.LTp2_17:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_16_1:  push             rax
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_16:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_16_2:   test             rax, rax;                            je    .Lmatch_defer_α_16_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_16_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_16_61
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
.Lgcsite_.LTp2_15:      add              rsp, 48
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
.Lgcsite_.LTp2_14:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_16_47
.Lmatch_defer_α_16_42:
.Lgcsite_.LTp2_13:      add              rsp, 16
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
.Lgcsite_.LTp2_12:      add              rsp, 16
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
.Lgcsite_.LTp2_11:      add              rsp, 0
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
.Lgcsite_.LTp2_10:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_16_47
.Lmatch_defer_α_16_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp2_9:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_8:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_16_2
.Lmatch_defer_α_16_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp2_7:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_6:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_16_2
.Lmatch_defer_α_16_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_16_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_16_62:
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
.Lgcsite_.LTp2_4:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_16_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_16_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_3:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_16_2
.Lmatch_defer_α_16_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_16_48
.Lmatch_defer_α_16_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp2_2:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_16_0
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp2_1:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_16_0:  add              rsp, 144
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
.Lmatch_defer_α_19_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 1                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp2_44:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_43:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lmatch_defer_α_19_4:
.Lgcsite_.LTp2_42:                                                            jmp   .Lmatch_alternate_γ_6_s1
.Lmatch_defer_α_19_5:
.Lgcsite_.LTp2_41:                                                            jmp   .Lmatch_alternate_ω_6_af
.Lmatch_defer_α_19_0:   sub              rsp, 32
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
.Lgcsite_.LTp2_40:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp2_39:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_19_2:   test             rax, rax;                            je    .Lmatch_defer_α_19_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_19_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_19_61
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
.Lgcsite_.LTp2_38:      add              rsp, 48
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
.Lgcsite_.LTp2_37:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_19_47
.Lmatch_defer_α_19_42:
.Lgcsite_.LTp2_36:      add              rsp, 16
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
.Lgcsite_.LTp2_35:      add              rsp, 16
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
.Lgcsite_.LTp2_34:      add              rsp, 0
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
.Lgcsite_.LTp2_33:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_19_47
.Lmatch_defer_α_19_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp2_32:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp2_31:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_19_2
.Lmatch_defer_α_19_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp2_30:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp2_29:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_19_2
.Lmatch_defer_α_19_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_19_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_19_62:
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
.Lgcsite_.LTp2_27:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_19_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_19_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_26:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_19_2
.Lmatch_defer_α_19_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_19_48
.Lmatch_defer_α_19_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp2_25:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_19_2
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp2_24:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_19_2:  add              rsp, 144
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
.Lgcsite_.LTp2_23:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lmatch_defer_α_20_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 0                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp2_66:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp2_65:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp2_64:                                                            jmp   .Lmatch_alternate_γ_6_s0
.Lmatch_defer_α_20_5:
.Lgcsite_.LTp2_63:                                                            jmp   .Lmatch_alternate_ω_6_af
.Lmatch_defer_α_20_0:   sub              rsp, 32
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
.Lgcsite_.LTp2_62:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp2_61:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp2_60:      add              rsp, 48
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
.Lgcsite_.LTp2_59:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_20_47
.Lmatch_defer_α_20_42:
.Lgcsite_.LTp2_58:      add              rsp, 16
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
.Lgcsite_.LTp2_57:      add              rsp, 16
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
.Lgcsite_.LTp2_56:      add              rsp, 0
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
.Lgcsite_.LTp2_55:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_20_47
.Lmatch_defer_α_20_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp2_54:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp2_53:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_20_2
.Lmatch_defer_α_20_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp2_52:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp2_51:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_20_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_20_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_48:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp2_47:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_20_3
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp2_46:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_20_3:  add              rsp, 144
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
.Lgcsite_.LTp2_45:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        .quad            .Lgcsite_.LTp2_22
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_21
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_20
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_19
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_18
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_17
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_16
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_15
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_14
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_13
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_12
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_11
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_10
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_9
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_8
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_7
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_1
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_0
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_44
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_43
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_42
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_41
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_40
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_39
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_38
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_37
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_36
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_35
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_34
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_33
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_32
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_31
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_30
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_29
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_28
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_27
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_26
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_25
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_24
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_23
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_66
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_65
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_64
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_63
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_62
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_61
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_60
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_59
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_58
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_57
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_56
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_55
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_54
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_53
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_52
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_51
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_50
                        .quad            196610
                        .quad            .Lgcsite_.LTp2_49
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_48
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_47
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_46
                        .quad            196609
                        .quad            .Lgcsite_.LTp2_45
                        .quad            196609
                        .popsection
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp2:            .quad            .LTp2
                        .long            112, 0
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
                        .type            n21_match_alternate_bx, @function
n21_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_match_alternate_α:  mov              dword ptr [rbp + -88], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_26_21]
                        mov              qword ptr [rbp + -72], rax;          jmp   n24_match_defer_α
.Lmatch_alternate_α_26_21:
                        lea              rax, [rip + .Lmatch_alternate_α_26_19]
                        mov              qword ptr [rbp + -72], rax;          jmp   n22_match_any_α
.Lmatch_alternate_γ_21_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_26_40]
                        mov              qword ptr [rbp + -80], rax;          jmp   .Lmatch_alternate_γ_21_as
.Lmatch_alternate_γ_21_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_26_41]
                        mov              qword ptr [rbp + -80], rax;          jmp   .Lmatch_alternate_γ_21_as
.Lmatch_alternate_α_26_40:
                                                                              jmp   n24_match_defer_β
.Lmatch_alternate_α_26_41:
                                                                              jmp   n23_match_defer_β
.Lmatch_alternate_γ_21_as:
                                                                              jmp   .LTp3_γ
n21_match_alternate_β:  mov              rax, qword ptr [rbp + -80];          jmp   rax
.Lmatch_alternate_γ_21_af:
.Lmatch_alternate_ω_21_af:
                        mov              r14d, dword ptr [rbp + -88]
                        mov              rax, qword ptr [rbp + -72];          jmp   rax
.Lmatch_alternate_α_26_19:
                                                                              jmp   .LTp3_ω
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
n23_match_defer_α:      mov              rax, qword ptr [r9 + 11904]          # F
                        mov              rdx, qword ptr [r9 + 11912]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_29_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_29_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp3_22:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:107
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp3_21:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11912];         jmp   .Lmatch_defer_α_29_10
.Lmatch_defer_α_29_9:   xor              eax, eax
.Lmatch_defer_α_29_10:  test             rax, rax;                            jz    .Lmatch_defer_α_29_0
.Lmatch_defer_α_29_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_29_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_29_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_29_4:
.Lgcsite_.LTp3_20:                                                            jmp   .Lmatch_alternate_γ_21_s1
.Lmatch_defer_α_29_5:
.Lgcsite_.LTp3_19:                                                            jmp   n22_match_any_β
.Lmatch_defer_α_29_0:   sub              rsp, 32
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
.Lgcsite_.LTp3_18:      cmp              rax, -1;                             jne   .Lmatch_defer_vd_29_5
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_.LTp3_17:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_29_5:  push             rax
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_16:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_29_2:   test             rax, rax;                            je    .Lmatch_defer_α_29_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_29_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_29_61
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
.Lgcsite_.LTp3_15:      add              rsp, 48
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
.Lgcsite_.LTp3_14:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_29_47
.Lmatch_defer_α_29_42:
.Lgcsite_.LTp3_13:      add              rsp, 16
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
.Lgcsite_.LTp3_12:      add              rsp, 16
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
.Lgcsite_.LTp3_11:      add              rsp, 0
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
.Lgcsite_.LTp3_10:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_29_47
.Lmatch_defer_α_29_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp3_9:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_8:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_29_2
.Lmatch_defer_α_29_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp3_7:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_6:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_29_2
.Lmatch_defer_α_29_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_29_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_29_62:
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
.Lgcsite_.LTp3_4:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_29_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_29_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_3:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_29_2
.Lmatch_defer_α_29_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_29_48
.Lmatch_defer_α_29_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp3_2:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_29_4
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp3_1:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_29_4:  add              rsp, 144
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
.Lmatch_defer_α_30_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 0                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp3_44:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_43:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lmatch_defer_α_30_4:
.Lgcsite_.LTp3_42:                                                            jmp   .Lmatch_alternate_γ_21_s0
.Lmatch_defer_α_30_5:
.Lgcsite_.LTp3_41:                                                            jmp   .Lmatch_alternate_ω_21_af
.Lmatch_defer_α_30_0:   sub              rsp, 32
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
.Lgcsite_.LTp3_40:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_39:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_30_2:   test             rax, rax;                            je    .Lmatch_defer_α_30_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_30_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_30_61
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
.Lgcsite_.LTp3_38:      add              rsp, 48
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
.Lgcsite_.LTp3_37:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_30_47
.Lmatch_defer_α_30_42:
.Lgcsite_.LTp3_36:      add              rsp, 16
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
.Lgcsite_.LTp3_35:      add              rsp, 16
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
.Lgcsite_.LTp3_34:      add              rsp, 0
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
.Lgcsite_.LTp3_33:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_30_47
.Lmatch_defer_α_30_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp3_32:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_31:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_30_2
.Lmatch_defer_α_30_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp3_30:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_29:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_30_2
.Lmatch_defer_α_30_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_30_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_30_62:
.Lgcsite_.LTp3_28:      add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_.LTp3_27:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_30_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_30_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_26:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_30_2
.Lmatch_defer_α_30_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_30_48
.Lmatch_defer_α_30_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp3_25:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_30_6
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp3_24:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_30_6:  add              rsp, 144
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
.Lgcsite_.LTp3_23:      mov              r9,  qword ptr [rip + rtccb+48]
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
.LTp3_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp3_β:
                                                                              jmp   n21_match_alternate_β
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
.Lgcsites_.LTp3_3:      .quad            45
                        .quad            .Lgcmap_.LTp3
                        .quad            9223389626893336584
                        .quad            .Lgccode_.LTp3_3
                        .quad            .Lgcsite_.LTp3_22
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_21
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_20
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_19
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_18
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_17
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_16
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_15
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_14
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_13
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_12
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_11
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_10
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_9
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_8
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_7
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_1
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_0
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_44
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_43
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_42
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_41
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_40
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_39
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_38
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_37
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_36
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_35
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_34
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_33
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_32
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_31
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_30
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_29
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_28
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_27
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_26
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_25
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_24
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_23
                        .quad            196609
                        .popsection
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp3:            .quad            .LTp3
                        .long            112, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_.LTp4_4:
.LTp4:
.LTp4_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 88
                        xorps            xmm0, xmm0                           # GCANCHOR .Lgcmap_.LTp4 qword ptr [rbp + -80]
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -32], 8
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -40], r12
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
.Lmatch_defer_α_35_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 0                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp4_21:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_20:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lmatch_defer_α_35_4:
.Lgcsite_.LTp4_19:                                                            jmp   n32_match_arbno_α
.Lmatch_defer_α_35_5:
.Lgcsite_.LTp4_18:      add              rsp, 16;                             jmp   .LTp4_ω
.Lmatch_defer_α_35_0:   sub              rsp, 32
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
.Lgcsite_.LTp4_17:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp4_16:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp4_15:      add              rsp, 48
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
.Lgcsite_.LTp4_14:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_35_47
.Lmatch_defer_α_35_42:
.Lgcsite_.LTp4_13:      add              rsp, 16
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
.Lgcsite_.LTp4_12:      add              rsp, 16
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
.Lgcsite_.LTp4_11:      add              rsp, 0
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
.Lgcsite_.LTp4_10:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_35_47
.Lmatch_defer_α_35_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp4_9:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp4_8:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_35_2
.Lmatch_defer_α_35_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp4_7:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp4_6:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp4_4:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp4_3:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp4_2:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_35_7
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp4_1:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_35_7:  add              rsp, 144
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
.Lmatch_defer_α_35_49:  test             eax, eax;                            jns   .Lmatch_defer_α_35_240
                        add              rsp, 16;                             jmp   .LTp4_ω
.Lmatch_defer_α_35_240: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_35_6]
                        push             rcx
                        push             rax;                                 jmp   n32_match_arbno_α
.Lmatch_defer_α_35_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .LTp4_ω
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
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -64], rsp;          jmp   .LTp4_γ
n32_match_arbno_β:      mov              rax, qword ptr [rbp + -64]
                        mov              r12, qword ptr [rax + 8];            jmp   n33_match_any_α
.Lmatch_arbno_γ_32_as:  mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n34_match_defer_β
                        sub              rsp, 32
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rbp + -64], rsp;          jmp   .LTp4_γ
.Lmatch_arbno_γ_32_af:
.Lmatch_arbno_ω_32_af:  mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -64], rdx
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
.Lmatch_defer_α_40_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 1                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp4_43:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_42:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lmatch_defer_α_40_4:
.Lgcsite_.LTp4_41:                                                            jmp   .Lmatch_arbno_γ_32_as
.Lmatch_defer_α_40_5:
.Lgcsite_.LTp4_40:                                                            jmp   n33_match_any_β
.Lmatch_defer_α_40_0:   sub              rsp, 32
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
.Lgcsite_.LTp4_39:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_38:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_40_2:   test             rax, rax;                            je    .Lmatch_defer_α_40_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_40_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_40_61
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
.Lgcsite_.LTp4_37:      add              rsp, 48
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
.Lgcsite_.LTp4_36:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_40_47
.Lmatch_defer_α_40_42:
.Lgcsite_.LTp4_35:      add              rsp, 16
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
.Lgcsite_.LTp4_34:      add              rsp, 16
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
.Lgcsite_.LTp4_33:      add              rsp, 0
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
.Lgcsite_.LTp4_32:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_40_47
.Lmatch_defer_α_40_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_40_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_40_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_30:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_40_2
.Lmatch_defer_α_40_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp4_29:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_28:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_40_2
.Lmatch_defer_α_40_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_40_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_40_62:
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
.Lgcsite_.LTp4_26:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_40_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_40_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_25:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_40_2
.Lmatch_defer_α_40_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_40_48
.Lmatch_defer_α_40_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp4_24:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_40_8
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp4_23:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_40_8:  add              rsp, 144
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
.Lgcsite_.LTp4_22:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_40_49:  test             eax, eax;                            js    n33_match_any_β
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
.LTp4_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp4_β:
                                                                              jmp   n32_match_arbno_β
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
.Lgcsites_.LTp4_4:      .quad            44
                        .quad            .Lgcmap_.LTp4
                        .quad            9223389626893336584
                        .quad            .Lgccode_.LTp4_4
                        .quad            .Lgcsite_.LTp4_21
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_20
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_19
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_18
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_17
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_16
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_15
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_14
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_13
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_12
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_11
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_10
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_9
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_8
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_7
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_1
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_0
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_43
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_42
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_41
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_40
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_39
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_38
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_37
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_36
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_35
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_34
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_33
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_32
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_31
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_30
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_29
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_28
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_27
                        .quad            196610
                        .quad            .Lgcsite_.LTp4_26
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_25
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_24
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_23
                        .quad            196609
                        .quad            .Lgcsite_.LTp4_22
                        .quad            196609
                        .popsection
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp4:            .quad            .LTp4
                        .long            160, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_.LTp5_5:
.LTp5:
.LTp5_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 88
                        xorps            xmm0, xmm0                           # GCANCHOR .Lgcmap_.LTp5 qword ptr [rbp + -80]
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -32], 8
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -40], r12
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
.Lmatch_defer_α_45_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 0                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp5_21:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_20:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lmatch_defer_α_45_4:
.Lgcsite_.LTp5_19:                                                            jmp   n42_match_arbno_α
.Lmatch_defer_α_45_5:
.Lgcsite_.LTp5_18:      add              rsp, 16;                             jmp   .LTp5_ω
.Lmatch_defer_α_45_0:   sub              rsp, 32
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
.Lgcsite_.LTp5_17:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_16:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_45_2:   test             rax, rax;                            je    .Lmatch_defer_α_45_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_45_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_45_61
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
.Lgcsite_.LTp5_15:      add              rsp, 48
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
.Lgcsite_.LTp5_14:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_45_47
.Lmatch_defer_α_45_42:
.Lgcsite_.LTp5_13:      add              rsp, 16
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
.Lgcsite_.LTp5_12:      add              rsp, 16
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
.Lgcsite_.LTp5_11:      add              rsp, 0
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
.Lgcsite_.LTp5_10:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_45_47
.Lmatch_defer_α_45_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp5_9:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_8:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_45_2
.Lmatch_defer_α_45_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp5_7:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_6:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_45_2
.Lmatch_defer_α_45_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_45_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_45_62:
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
.Lgcsite_.LTp5_4:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_45_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_45_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_3:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_45_2
.Lmatch_defer_α_45_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_45_48
.Lmatch_defer_α_45_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp5_2:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_45_9
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp5_1:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_45_9:  add              rsp, 144
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
.Lmatch_defer_α_45_49:  test             eax, eax;                            jns   .Lmatch_defer_α_45_240
                        add              rsp, 16;                             jmp   .LTp5_ω
.Lmatch_defer_α_45_240: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_45_6]
                        push             rcx
                        push             rax;                                 jmp   n42_match_arbno_α
.Lmatch_defer_α_45_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .LTp5_ω
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
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -64], rsp;          jmp   .LTp5_γ
n42_match_arbno_β:      mov              rax, qword ptr [rbp + -64]
                        mov              r12, qword ptr [rax + 8];            jmp   n43_match_any_α
.Lmatch_arbno_γ_42_as:  mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n44_match_defer_β
                        sub              rsp, 32
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rbp + -64], rsp;          jmp   .LTp5_γ
.Lmatch_arbno_γ_42_af:
.Lmatch_arbno_ω_42_af:  mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -64], rdx
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
.Lmatch_defer_α_50_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 1                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp5_43:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_42:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lmatch_defer_α_50_4:
.Lgcsite_.LTp5_41:                                                            jmp   .Lmatch_arbno_γ_42_as
.Lmatch_defer_α_50_5:
.Lgcsite_.LTp5_40:                                                            jmp   n43_match_any_β
.Lmatch_defer_α_50_0:   sub              rsp, 32
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
.Lgcsite_.LTp5_39:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_38:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_50_2:   test             rax, rax;                            je    .Lmatch_defer_α_50_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_50_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_50_61
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
.Lgcsite_.LTp5_37:      add              rsp, 48
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
.Lgcsite_.LTp5_36:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_50_47
.Lmatch_defer_α_50_42:
.Lgcsite_.LTp5_35:      add              rsp, 16
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
.Lgcsite_.LTp5_34:      add              rsp, 16
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
.Lgcsite_.LTp5_33:      add              rsp, 0
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
.Lgcsite_.LTp5_32:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_50_47
.Lmatch_defer_α_50_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_50_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_50_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_30:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_50_2
.Lmatch_defer_α_50_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp5_29:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_28:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_50_2
.Lmatch_defer_α_50_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_50_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_50_62:
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
.Lgcsite_.LTp5_26:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_50_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_50_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_25:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_50_2
.Lmatch_defer_α_50_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_50_48
.Lmatch_defer_α_50_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp5_24:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_50_10
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp5_23:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_50_10: add              rsp, 144
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
.Lgcsite_.LTp5_22:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_50_49:  test             eax, eax;                            js    n43_match_any_β
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
.LTp5_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp5_β:
                                                                              jmp   n42_match_arbno_β
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
.Lgcsites_.LTp5_5:      .quad            44
                        .quad            .Lgcmap_.LTp5
                        .quad            9223389626893336584
                        .quad            .Lgccode_.LTp5_5
                        .quad            .Lgcsite_.LTp5_21
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_20
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_19
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_18
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_17
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_16
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_15
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_14
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_13
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_12
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_11
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_10
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_9
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_8
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_7
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_1
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_0
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_43
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_42
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_41
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_40
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_39
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_38
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_37
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_36
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_35
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_34
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_33
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_32
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_31
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_30
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_29
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_28
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_27
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_26
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_25
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_24
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_23
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_22
                        .quad            196609
                        .popsection
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp5:            .quad            .LTp5
                        .long            160, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_.LTp6_6:
.LTp6:
.LTp6_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 104
                        xorps            xmm0, xmm0                           # GCANCHOR .Lgcmap_.LTp6 qword ptr [rbp + -96]
                        movups           xmmword ptr [rbp + -88], xmm0
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -32], 8
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -40], r12
                        .type            n51_match_pos_bx, @function
n51_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_match_pos_α:        mov              rax, 0
                        cmp              r14d, eax;                           jne   .LTp6_ω
                                                                              jmp   n52_match_arbno_α
n51_match_pos_β:                                                              jmp   .LTp6_ω
                        .size            n51_match_pos_bx, .-n51_match_pos_bx
                        .type            n52_match_arbno_bx, @function
n52_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_match_arbno_α:      sub              rsp, 48
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -64], rsp;          jmp   n53_match_rpos_α
n52_match_arbno_β:      mov              rax, qword ptr [rbp + -64]
                        mov              r12, qword ptr [rax + 8];            jmp   n54_match_defer_α
.Lmatch_arbno_γ_52_as:  mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n55_match_defer_β
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
                        mov              qword ptr [rbp + -64], rsp;          jmp   n53_match_rpos_α
.Lmatch_arbno_γ_52_af:
.Lmatch_arbno_ω_52_af:  mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -64], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_58_3
                        mov              rax, qword ptr [rcx + 32]
                        mov              qword ptr [rbp + -80], rax
                        mov              rax, qword ptr [rcx + 40]
                        mov              qword ptr [rbp + -72], rax
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
                                                                              jmp   .LTp6_γ
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
.Lmatch_defer_α_60_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 0                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp6_21:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_20:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lmatch_defer_α_60_4:
.Lgcsite_.LTp6_19:                                                            jmp   n55_match_defer_α
.Lmatch_defer_α_60_5:
.Lgcsite_.LTp6_18:                                                            jmp   .Lmatch_arbno_ω_52_af
.Lmatch_defer_α_60_0:   sub              rsp, 32
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
.Lgcsite_.LTp6_17:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_16:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_60_2:   test             rax, rax;                            je    .Lmatch_defer_α_60_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_60_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_60_61
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
.Lgcsite_.LTp6_15:      add              rsp, 48
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
.Lgcsite_.LTp6_14:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_60_47
.Lmatch_defer_α_60_42:
.Lgcsite_.LTp6_13:      add              rsp, 16
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
.Lgcsite_.LTp6_12:      add              rsp, 16
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
.Lgcsite_.LTp6_11:      add              rsp, 0
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
.Lgcsite_.LTp6_10:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_60_47
.Lmatch_defer_α_60_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp6_9:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_8:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_60_2
.Lmatch_defer_α_60_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp6_7:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_6:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_60_2
.Lmatch_defer_α_60_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_60_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_60_62:
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
.Lgcsite_.LTp6_4:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_60_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_60_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_3:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_60_2
.Lmatch_defer_α_60_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_60_48
.Lmatch_defer_α_60_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp6_2:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_60_11
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp6_1:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_60_11: add              rsp, 144
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
.Lmatch_defer_α_60_49:  test             eax, eax;                            js    .Lmatch_arbno_ω_52_af
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
.Lmatch_defer_α_61_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 1                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp6_43:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_42:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lmatch_defer_α_61_4:
.Lgcsite_.LTp6_41:                                                            jmp   .Lmatch_arbno_γ_52_as
.Lmatch_defer_α_61_5:
.Lgcsite_.LTp6_40:                                                            jmp   n54_match_defer_β
.Lmatch_defer_α_61_0:   sub              rsp, 32
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
.Lgcsite_.LTp6_39:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_38:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_61_2:   test             rax, rax;                            je    .Lmatch_defer_α_61_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_61_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_61_61
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
.Lgcsite_.LTp6_37:      add              rsp, 48
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
.Lgcsite_.LTp6_36:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_61_47
.Lmatch_defer_α_61_42:
.Lgcsite_.LTp6_35:      add              rsp, 16
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
.Lgcsite_.LTp6_34:      add              rsp, 16
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
.Lgcsite_.LTp6_33:      add              rsp, 0
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
.Lgcsite_.LTp6_32:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_61_47
.Lmatch_defer_α_61_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_61_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_61_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_30:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_61_2
.Lmatch_defer_α_61_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp6_29:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_28:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_61_2
.Lmatch_defer_α_61_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_61_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_61_62:
.Lgcsite_.LTp6_27:      add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_.LTp6_26:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_61_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_61_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_25:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_61_2
.Lmatch_defer_α_61_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_61_48
.Lmatch_defer_α_61_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp6_24:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_61_12
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp6_23:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_61_12: add              rsp, 144
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
.Lgcsite_.LTp6_22:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_61_49:  test             eax, eax;                            js    n54_match_defer_β
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
.LTp6_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp6_β:
                                                                              jmp   n53_match_rpos_β
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
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_.LTp6_6:      .quad            44
                        .quad            .Lgcmap_.LTp6
                        .quad            9223389626893336584
                        .quad            .Lgccode_.LTp6_6
                        .quad            .Lgcsite_.LTp6_21
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_20
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_19
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_18
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_17
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_16
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_15
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_14
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_13
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_12
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_11
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_10
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_9
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_8
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_7
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_5
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_1
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_0
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_43
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_42
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_41
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_40
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_39
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_38
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_37
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_36
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_35
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_34
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_33
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_32
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_31
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_30
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_29
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_28
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_27
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_26
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_25
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_24
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_23
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_22
                        .quad            196609
                        .popsection
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
.Lgvan741:              .string          "V"
.Lgvan742:              .string          "I"
.Lgvan743:              .string          "A"
.Lgvan744:              .string          "F"
.Lgvan745:              .string          "T"
.Lgvan746:              .string          "X"
.Lgvan747:              .string          "eol"
.Lgvan748:              .string          "C"
.Lgvan749:              .string          "src"
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
                        .quad            .Lgvan749
                        .quad            0
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
                        mov              eax, 0                               # GCANCHOR .Lgcmap_main qword ptr [rsp$ + 1768]
main_α_body:
                        sub              rsp, 0
                        .type            n62_call_direct_bx, @function
n62_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_call_direct_α:      sub              rsp, 16
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
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_181_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n63_call_direct_α
.Lcall_direct_α_181_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n63_call_direct_α
n62_call_direct_β:      add              rsp, 16
                        add              rsp, -16;                            jmp   n63_call_direct_α
                        .size            n62_call_direct_bx, .-n62_call_direct_bx
                        .type            n63_call_direct_bx, @function
n63_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_call_direct_α:      sub              rsp, 16
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
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_182_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n64_statement_begin_α
.Lcall_direct_α_182_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n64_statement_begin_α
n63_call_direct_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n64_statement_begin_α
                        .size            n63_call_direct_bx, .-n63_call_direct_bx
                        .type            n64_statement_begin_bx, @function
n64_statement_begin_bx:
                        .pushsection     .rodata
.Lstnof1:               .string          "snobol4/calculator/calculator-2-match.sno"
                        .popsection
.Lstatement_begin_α_183_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_183_stno
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
                        mov              rax, qword ptr [rip + .Llit_string_α_185_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n66_call_direct_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_185_0: .quad .Lthk_.LTp0; .popsection
                        .size            n65_lit_string_bx, .-n65_lit_string_bx
                        .type            n66_call_direct_bx, @function
n66_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_call_direct_α:      sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_186_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n64_statement_begin_β
.Lcall_direct_α_186_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_assign_α
n66_call_direct_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n64_statement_begin_β
                        .size            n66_call_direct_bx, .-n66_call_direct_bx
                        .type            n67_assign_bx, @function
n67_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11856], rax          # V
                        mov              qword ptr [r9 + 11864], rdx;         jmp   n68_statement_end_α
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
                        test             rax, rax;                            jz    .Lsetexit_test_α_190_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_190_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_190_61:
.Lsetexit_test_α_190_1:                                                       jmp   n70_statement_begin_α
                        .size            n69_setexit_test_bx, .-n69_setexit_test_bx
                        .type            n70_statement_begin_bx, @function
n70_statement_begin_bx:
.Lstatement_begin_α_191_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_191_stno
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
                        mov              rax, qword ptr [rip + .Llit_string_α_193_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_call_direct_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_193_0: .quad .Lthk_.LTp1; .popsection
                        .size            n71_lit_string_bx, .-n71_lit_string_bx
                        .type            n72_call_direct_bx, @function
n72_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_call_direct_α:      sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_194_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n70_statement_begin_β
.Lcall_direct_α_194_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_assign_α
n72_call_direct_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n70_statement_begin_β
                        .size            n72_call_direct_bx, .-n72_call_direct_bx
                        .type            n73_assign_bx, @function
n73_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11872], rax          # I
                        mov              qword ptr [r9 + 11880], rdx;         jmp   n74_statement_end_α
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
                        test             rax, rax;                            jz    .Lsetexit_test_α_198_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_198_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_198_61:
.Lsetexit_test_α_198_1:                                                       jmp   n76_statement_begin_α
                        .size            n75_setexit_test_bx, .-n75_setexit_test_bx
                        .type            n76_statement_begin_bx, @function
n76_statement_begin_bx:
.Lstatement_begin_α_199_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_199_stno
                        .long            3
                        .long            23
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         A              =  V | I | '(' *X ')'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 23 0
n76_statement_begin_α:                                                        jmp   n77_lit_string_α
n76_statement_begin_β:                                                        jmp   n87_setexit_test_α
                        .size            n76_statement_begin_bx, .-n76_statement_begin_bx
                        .type            n77_lit_string_bx, @function
n77_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_201_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_201_0: .quad .Lthk_.LTp2; .popsection
                        .size            n77_lit_string_bx, .-n77_lit_string_bx
                        .type            n78_var_bx, @function
n78_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11856]          # V
                        mov              rdx, qword ptr [r9 + 11864]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_lit_integer_α
n78_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n76_statement_begin_β
                        .size            n78_var_bx, .-n78_var_bx
                        .type            n79_lit_integer_bx, @function
n79_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_203_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n80_call_direct_α
n79_lit_integer_β:      add              rsp, 16;                             jmp   n78_var_β
.Llit_integer_α_203_0:  .quad            6
                        .size            n79_lit_integer_bx, .-n79_lit_integer_bx
                        .type            n80_call_direct_bx, @function
n80_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_call_direct_α:      sub              rsp, 16
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
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_204_240
                        add              rsp, 16;                             jmp   n79_lit_integer_β
.Lcall_direct_α_204_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n81_var_α
n80_call_direct_β:      add              rsp, 16;                             jmp   n79_lit_integer_β
                        .size            n80_call_direct_bx, .-n80_call_direct_bx
                        .type            n81_var_bx, @function
n81_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11872]          # I
                        mov              rdx, qword ptr [r9 + 11880]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n82_lit_integer_α
n81_var_β:              add              rsp, 32;                             jmp   n79_lit_integer_β
                        .size            n81_var_bx, .-n81_var_bx
                        .type            n82_lit_integer_bx, @function
n82_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_206_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_call_direct_α
n82_lit_integer_β:      add              rsp, 16;                             jmp   n81_var_β
.Llit_integer_α_206_0:  .quad            6
                        .size            n82_lit_integer_bx, .-n82_lit_integer_bx
                        .type            n83_call_direct_bx, @function
n83_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_call_direct_α:      sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_207_240
                        add              rsp, 16;                             jmp   n82_lit_integer_β
.Lcall_direct_α_207_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n84_call_direct_α
n83_call_direct_β:      add              rsp, 16;                             jmp   n82_lit_integer_β
                        .size            n83_call_direct_bx, .-n83_call_direct_bx
                        .type            n84_call_direct_bx, @function
n84_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_call_direct_α:      sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_208_240
                        add              rsp, 32;                             jmp   n82_lit_integer_β
.Lcall_direct_α_208_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n85_assign_α
n84_call_direct_β:      add              rsp, 32;                             jmp   n82_lit_integer_β
                        .size            n84_call_direct_bx, .-n84_call_direct_bx
                        .type            n85_assign_bx, @function
n85_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11888], rax          # A
                        mov              qword ptr [r9 + 11896], rdx;         jmp   n86_statement_end_α
                        .size            n85_assign_bx, .-n85_assign_bx
                        .type            n86_statement_end_bx, @function
n86_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    add              rsp, 128;                            jmp   n88_statement_begin_α
                        .size            n86_statement_end_bx, .-n86_statement_end_bx
                        .type            n87_setexit_test_bx, @function
n87_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_212_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_212_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_212_61:
.Lsetexit_test_α_212_1:                                                       jmp   n88_statement_begin_α
                        .size            n87_setexit_test_bx, .-n87_setexit_test_bx
                        .type            n88_statement_begin_bx, @function
n88_statement_begin_bx:
.Lstatement_begin_α_213_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_213_stno
                        .long            4
                        .long            24
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         F              =  A | ANY('+-') *F
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n88_statement_begin_α:                                                        jmp   n89_lit_string_α
n88_statement_begin_β:                                                        jmp   n96_setexit_test_α
                        .size            n88_statement_begin_bx, .-n88_statement_begin_bx
                        .type            n89_lit_string_bx, @function
n89_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_215_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_215_0: .quad .Lthk_.LTp3; .popsection
                        .size            n89_lit_string_bx, .-n89_lit_string_bx
                        .type            n90_var_bx, @function
n90_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11888]          # A
                        mov              rdx, qword ptr [r9 + 11896]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n91_lit_integer_α
n90_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n88_statement_begin_β
                        .size            n90_var_bx, .-n90_var_bx
                        .type            n91_lit_integer_bx, @function
n91_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_217_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_call_direct_α
n91_lit_integer_β:      add              rsp, 16;                             jmp   n90_var_β
.Llit_integer_α_217_0:  .quad            6
                        .size            n91_lit_integer_bx, .-n91_lit_integer_bx
                        .type            n92_call_direct_bx, @function
n92_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_call_direct_α:      sub              rsp, 16
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
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_218_240
                        add              rsp, 16;                             jmp   n91_lit_integer_β
.Lcall_direct_α_218_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n93_call_direct_α
n92_call_direct_β:      add              rsp, 16;                             jmp   n91_lit_integer_β
                        .size            n92_call_direct_bx, .-n92_call_direct_bx
                        .type            n93_call_direct_bx, @function
n93_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_call_direct_α:      sub              rsp, 16
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
.Lgcsite_main_16:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_17:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_219_240
                        add              rsp, 32;                             jmp   n91_lit_integer_β
.Lcall_direct_α_219_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n94_assign_α
n93_call_direct_β:      add              rsp, 32;                             jmp   n91_lit_integer_β
                        .size            n93_call_direct_bx, .-n93_call_direct_bx
                        .type            n94_assign_bx, @function
n94_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11904], rax          # F
                        mov              qword ptr [r9 + 11912], rdx;         jmp   n95_statement_end_α
                        .size            n94_assign_bx, .-n94_assign_bx
                        .type            n95_statement_end_bx, @function
n95_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:    add              rsp, 80;                             jmp   n97_statement_begin_α
                        .size            n95_statement_end_bx, .-n95_statement_end_bx
                        .type            n96_setexit_test_bx, @function
n96_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_223_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_223_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_223_61:
.Lsetexit_test_α_223_1:                                                       jmp   n97_statement_begin_α
                        .size            n96_setexit_test_bx, .-n96_setexit_test_bx
                        .type            n97_statement_begin_bx, @function
n97_statement_begin_bx:
.Lstatement_begin_α_224_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_224_stno
                        .long            5
                        .long            25
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         T              =  F ARBNO(ANY('*/') F)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n97_statement_begin_α:                                                        jmp   n98_lit_string_α
n97_statement_begin_β:                                                        jmp   n108_setexit_test_α
                        .size            n97_statement_begin_bx, .-n97_statement_begin_bx
                        .type            n98_lit_string_bx, @function
n98_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_226_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n99_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_226_0: .quad .Lthk_.LTp4; .popsection
                        .size            n98_lit_string_bx, .-n98_lit_string_bx
                        .type            n99_var_bx, @function
n99_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11904]          # F
                        mov              rdx, qword ptr [r9 + 11912]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_lit_integer_α
n99_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n97_statement_begin_β
                        .size            n99_var_bx, .-n99_var_bx
                        .type            n100_lit_integer_bx, @function
n100_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_228_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n101_call_direct_α
n100_lit_integer_β:     add              rsp, 16;                             jmp   n99_var_β
.Llit_integer_α_228_0:  .quad            8
                        .size            n100_lit_integer_bx, .-n100_lit_integer_bx
                        .type            n101_call_direct_bx, @function
n101_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_call_direct_α:     sub              rsp, 16
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
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_229_240
                        add              rsp, 16;                             jmp   n100_lit_integer_β
.Lcall_direct_α_229_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_var_α
n101_call_direct_β:     add              rsp, 16;                             jmp   n100_lit_integer_β
                        .size            n101_call_direct_bx, .-n101_call_direct_bx
                        .type            n102_var_bx, @function
n102_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11904]          # F
                        mov              rdx, qword ptr [r9 + 11912]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_lit_integer_α
n102_var_β:             add              rsp, 32;                             jmp   n100_lit_integer_β
                        .size            n102_var_bx, .-n102_var_bx
                        .type            n103_lit_integer_bx, @function
n103_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_231_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n104_call_direct_α
n103_lit_integer_β:     add              rsp, 16;                             jmp   n102_var_β
.Llit_integer_α_231_0:  .quad            9
                        .size            n103_lit_integer_bx, .-n103_lit_integer_bx
                        .type            n104_call_direct_bx, @function
n104_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_call_direct_α:     sub              rsp, 16
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
.Lgcsite_main_20:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_21:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_232_240
                        add              rsp, 16;                             jmp   n103_lit_integer_β
.Lcall_direct_α_232_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n105_call_direct_α
n104_call_direct_β:     add              rsp, 16;                             jmp   n103_lit_integer_β
                        .size            n104_call_direct_bx, .-n104_call_direct_bx
                        .type            n105_call_direct_bx, @function
n105_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_call_direct_α:     sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_233_240
                        add              rsp, 32;                             jmp   n103_lit_integer_β
.Lcall_direct_α_233_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n106_assign_α
n105_call_direct_β:     add              rsp, 32;                             jmp   n103_lit_integer_β
                        .size            n105_call_direct_bx, .-n105_call_direct_bx
                        .type            n106_assign_bx, @function
n106_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11920], rax          # T
                        mov              qword ptr [r9 + 11928], rdx;         jmp   n107_statement_end_α
                        .size            n106_assign_bx, .-n106_assign_bx
                        .type            n107_statement_end_bx, @function
n107_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_end_α:   add              rsp, 128;                            jmp   n109_statement_begin_α
                        .size            n107_statement_end_bx, .-n107_statement_end_bx
                        .type            n108_setexit_test_bx, @function
n108_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_237_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_237_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_237_61:
.Lsetexit_test_α_237_1:                                                       jmp   n109_statement_begin_α
                        .size            n108_setexit_test_bx, .-n108_setexit_test_bx
                        .type            n109_statement_begin_bx, @function
n109_statement_begin_bx:
.Lstatement_begin_α_238_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_238_stno
                        .long            6
                        .long            26
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         X              =  T ARBNO(ANY('+-') T)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n109_statement_begin_α:                                                       jmp   n110_lit_string_α
n109_statement_begin_β:                                                       jmp   n120_setexit_test_α
                        .size            n109_statement_begin_bx, .-n109_statement_begin_bx
                        .type            n110_lit_string_bx, @function
n110_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_240_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n111_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_240_0: .quad .Lthk_.LTp5; .popsection
                        .size            n110_lit_string_bx, .-n110_lit_string_bx
                        .type            n111_var_bx, @function
n111_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # T
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_lit_integer_α
n111_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n109_statement_begin_β
                        .size            n111_var_bx, .-n111_var_bx
                        .type            n112_lit_integer_bx, @function
n112_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_242_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n113_call_direct_α
n112_lit_integer_β:     add              rsp, 16;                             jmp   n111_var_β
.Llit_integer_α_242_0:  .quad            8
                        .size            n112_lit_integer_bx, .-n112_lit_integer_bx
                        .type            n113_call_direct_bx, @function
n113_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_call_direct_α:     sub              rsp, 16
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
.Lgcsite_main_24:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_25:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_243_240
                        add              rsp, 16;                             jmp   n112_lit_integer_β
.Lcall_direct_α_243_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n114_var_α
n113_call_direct_β:     add              rsp, 16;                             jmp   n112_lit_integer_β
                        .size            n113_call_direct_bx, .-n113_call_direct_bx
                        .type            n114_var_bx, @function
n114_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # T
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_lit_integer_α
n114_var_β:             add              rsp, 32;                             jmp   n112_lit_integer_β
                        .size            n114_var_bx, .-n114_var_bx
                        .type            n115_lit_integer_bx, @function
n115_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_245_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n116_call_direct_α
n115_lit_integer_β:     add              rsp, 16;                             jmp   n114_var_β
.Llit_integer_α_245_0:  .quad            9
                        .size            n115_lit_integer_bx, .-n115_lit_integer_bx
                        .type            n116_call_direct_bx, @function
n116_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_call_direct_α:     sub              rsp, 16
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
.Lgcsite_main_26:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_27:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_246_240
                        add              rsp, 16;                             jmp   n115_lit_integer_β
.Lcall_direct_α_246_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_call_direct_α
n116_call_direct_β:     add              rsp, 16;                             jmp   n115_lit_integer_β
                        .size            n116_call_direct_bx, .-n116_call_direct_bx
                        .type            n117_call_direct_bx, @function
n117_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_call_direct_α:     sub              rsp, 16
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
.Lgcsite_main_28:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_29:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_direct_α_247_240
                        add              rsp, 32;                             jmp   n115_lit_integer_β
.Lcall_direct_α_247_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_assign_α
n117_call_direct_β:     add              rsp, 32;                             jmp   n115_lit_integer_β
                        .size            n117_call_direct_bx, .-n117_call_direct_bx
                        .type            n118_assign_bx, @function
n118_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11936], rax          # X
                        mov              qword ptr [r9 + 11944], rdx;         jmp   n119_statement_end_α
                        .size            n118_assign_bx, .-n118_assign_bx
                        .type            n119_statement_end_bx, @function
n119_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_statement_end_α:   add              rsp, 128;                            jmp   n121_statement_begin_α
                        .size            n119_statement_end_bx, .-n119_statement_end_bx
                        .type            n120_setexit_test_bx, @function
n120_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_251_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_251_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_251_61:
.Lsetexit_test_α_251_1:                                                       jmp   n121_statement_begin_α
                        .size            n120_setexit_test_bx, .-n120_setexit_test_bx
                        .type            n121_statement_begin_bx, @function
n121_statement_begin_bx:
.Lstatement_begin_α_252_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_252_stno
                        .long            7
                        .long            27
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         eol            =  CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n121_statement_begin_α:                                                       jmp   n122_lit_integer_α
n121_statement_begin_β:                                                       jmp   n126_setexit_test_α
                        .size            n121_statement_begin_bx, .-n121_statement_begin_bx
                        .type            n122_lit_integer_bx, @function
n122_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_254_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n123_call_byname_α
.Llit_integer_α_254_0:  .quad            10
                        .size            n122_lit_integer_bx, .-n122_lit_integer_bx
                        .type            n123_call_byname_bx, @function
n123_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_bynamefnzd87: .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_bynamefnzd87]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311296
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
.Lgcsite_main_31:       cmp              al, 255;                             jne   .Lcall_byname_vd_255_13
                        call             c_rt_call_bid_sn4@PLT
.Lgcsite_main_30:       mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_byname_vd_255_13:
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
.Lgcsite_main_32:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_255_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n121_statement_begin_β
.Lcall_byname_α_255_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_assign_α
n123_call_byname_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n121_statement_begin_β
                        .size            n123_call_byname_bx, .-n123_call_byname_bx
                        .type            n124_assign_bx, @function
n124_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11952], rax          # eol
                        mov              qword ptr [r9 + 11960], rdx;         jmp   n125_statement_end_α
                        .size            n124_assign_bx, .-n124_assign_bx
                        .type            n125_statement_end_bx, @function
n125_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_end_α:   add              rsp, 32;                             jmp   n127_statement_begin_α
                        .size            n125_statement_end_bx, .-n125_statement_end_bx
                        .type            n126_setexit_test_bx, @function
n126_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_259_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_259_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_259_61:
.Lsetexit_test_α_259_1:                                                       jmp   n127_statement_begin_α
                        .size            n126_setexit_test_bx, .-n126_setexit_test_bx
                        .type            n127_statement_begin_bx, @function
n127_statement_begin_bx:
.Lstatement_begin_α_260_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_260_stno
                        .long            8
                        .long            28
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         C              =  POS(0) ARBNO(X eol) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n127_statement_begin_α:                                                       jmp   n128_lit_string_α
n127_statement_begin_β:                                                       jmp   n138_setexit_test_α
                        .size            n127_statement_begin_bx, .-n127_statement_begin_bx
                        .type            n128_lit_string_bx, @function
n128_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_262_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_262_0: .quad .Lthk_.LTp6; .popsection
                        .size            n128_lit_string_bx, .-n128_lit_string_bx
                        .type            n129_var_bx, @function
n129_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11936]          # X
                        mov              rdx, qword ptr [r9 + 11944]
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_264_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n131_call_direct_α
n130_lit_integer_β:     add              rsp, 16;                             jmp   n129_var_β
.Llit_integer_α_264_0:  .quad            8
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
.Lgcsite_main_33:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_34:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_265_240
                        add              rsp, 16;                             jmp   n130_lit_integer_β
.Lcall_direct_α_265_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n132_var_α
n131_call_direct_β:     add              rsp, 16;                             jmp   n130_lit_integer_β
                        .size            n131_call_direct_bx, .-n131_call_direct_bx
                        .type            n132_var_bx, @function
n132_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11952]          # eol
                        mov              rdx, qword ptr [r9 + 11960]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_lit_integer_α
n132_var_β:             add              rsp, 32;                             jmp   n130_lit_integer_β
                        .size            n132_var_bx, .-n132_var_bx
                        .type            n133_lit_integer_bx, @function
n133_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_267_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n134_call_direct_α
n133_lit_integer_β:     add              rsp, 16;                             jmp   n132_var_β
.Llit_integer_α_267_0:  .quad            9
                        .size            n133_lit_integer_bx, .-n133_lit_integer_bx
                        .type            n134_call_direct_bx, @function
n134_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_call_direct_α:     sub              rsp, 16
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
.Lgcsite_main_35:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_36:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_268_240
                        add              rsp, 16;                             jmp   n133_lit_integer_β
.Lcall_direct_α_268_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_call_direct_α
n134_call_direct_β:     add              rsp, 16;                             jmp   n133_lit_integer_β
                        .size            n134_call_direct_bx, .-n134_call_direct_bx
                        .type            n135_call_direct_bx, @function
n135_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_call_direct_α:     sub              rsp, 16
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
.Lgcsite_main_37:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_38:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_direct_α_269_240
                        add              rsp, 32;                             jmp   n133_lit_integer_β
.Lcall_direct_α_269_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n136_assign_α
n135_call_direct_β:     add              rsp, 32;                             jmp   n133_lit_integer_β
                        .size            n135_call_direct_bx, .-n135_call_direct_bx
                        .type            n136_assign_bx, @function
n136_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11968], rax          # C
                        mov              qword ptr [r9 + 11976], rdx;         jmp   n137_statement_end_α
                        .size            n136_assign_bx, .-n136_assign_bx
                        .type            n137_statement_end_bx, @function
n137_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_end_α:   add              rsp, 128;                            jmp   n139_statement_begin_α
                        .size            n137_statement_end_bx, .-n137_statement_end_bx
                        .type            n138_setexit_test_bx, @function
n138_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_273_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_273_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_273_61:
.Lsetexit_test_α_273_1:                                                       jmp   n139_statement_begin_α
                        .size            n138_setexit_test_bx, .-n138_setexit_test_bx
                        .type            n139_statement_begin_bx, @function
n139_statement_begin_bx:
.Lstatement_begin_α_274_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_274_stno
                        .long            9
                        .long            30
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n139_statement_begin_α:                                                       jmp   n140_lit_integer_α
n139_statement_begin_β:                                                       jmp   n143_setexit_test_α
                        .size            n139_statement_begin_bx, .-n139_statement_begin_bx
                        .type            n140_lit_integer_bx, @function
n140_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_276_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n141_kw_assign_snobol4_α
.Llit_integer_α_276_0:  .quad            0
                        .size            n140_lit_integer_bx, .-n140_lit_integer_bx
                        .type            n141_kw_assign_snobol4_bx, @function
n141_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_277_0] # idx
                        mov              rsi, qword ptr [rsp + 16]            # v
                        mov              rdx, qword ptr [rsp + 24]            # v
                        call             rt_kw_write_idx@PLT
.Lgcsite_main_40:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_277_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n139_statement_begin_β
.Lkw_assign_snobol4_α_277_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_keyword_assign_snobol4.cpp:32
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_39:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n142_statement_end_α
.Lkw_assign_snobol4_α_277_0:
                        .quad            1
                        .size            n141_kw_assign_snobol4_bx, .-n141_kw_assign_snobol4_bx
                        .type            n142_statement_end_bx, @function
n142_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_end_α:   add              rsp, 32;                             jmp   n144_statement_begin_α
                        .size            n142_statement_end_bx, .-n142_statement_end_bx
                        .type            n143_setexit_test_bx, @function
n143_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_280_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_280_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_280_61:
.Lsetexit_test_α_280_1:                                                       jmp   n144_statement_begin_α
                        .size            n143_setexit_test_bx, .-n143_setexit_test_bx
                        .type            n144_statement_begin_bx, @function
n144_statement_begin_bx:
.Lstatement_begin_α_281_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_281_stno
                        .long            10
                        .long            34
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n144_statement_begin_α:                                                       jmp   n145_lit_name_α
n144_statement_begin_β:                                                       jmp   n150_setexit_test_α
                        .size            n144_statement_begin_bx, .-n144_statement_begin_bx
                        .type            n145_lit_name_bx, @function
n145_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_name_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_283_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_lit_integer_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_name_α_283_0: .quad .Llit_name_α_283_0_s; .popsection
.Llit_name_α_283_0_s:   .string          "INPUT"
                        .size            n145_lit_name_bx, .-n145_lit_name_bx
                        .type            n146_lit_integer_bx, @function
n146_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_284_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n147_lit_string_α
n146_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n144_statement_begin_β
.Llit_integer_α_284_0:  .quad            9
                        .size            n146_lit_integer_bx, .-n146_lit_integer_bx
                        .type            n147_lit_string_bx, @function
n147_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_285_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n148_call_try_α
n147_lit_string_β:      add              rsp, 16;                             jmp   n146_lit_integer_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_285_0: .quad .Llit_string_α_285_0_s; .popsection
.Llit_string_α_285_0_s: .string          "[-f0 -r4194304]"
                        .size            n147_lit_string_bx, .-n147_lit_string_bx
                        .type            n148_call_try_bx, @function
n148_call_try_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_call_try_α:        sub              rsp, 16
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
.Lcall_try_α_bynamefnzd112: .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_try_α_bynamefnzd112]
                        lea              rsi, [rsp + 0]
                        lea              rcx, [rsp + 0]
                        movabs           rdx, 1548112371908611
                        call             rt_call_arr_bl_sn4_try@PLT
.Lgcsite_main_67:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_66:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jz    .Lcall_try_α_286_108
                        cmp              rax, 2;                              jne   .Lcall_try_α_286_109
                        lea              rdi, [rsp + 0]
                        mov              rsi, rdx
                        sub              rsp, 112
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              rdx, rsp                             # pend
                        call             rt_tweak_open@PLT
.Lgcsite_main_65:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:234
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_64:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rcx, qword ptr [rsp + 0]
                        test             rcx, rcx;                            jz    .Lcall_try_α_286_150
                        lea              rdi, [rsp + 0]                       # args
                        mov              esi, 2                               # nargs
                        call             rt_apply_open@PLT
.Lgcsite_main_63:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_62:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jz    .Lcall_try_α_286_151
                        sub              rsp, 16
                        mov              rcx, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
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
                        cmp              rcx, 2;                              je    .Lcall_try_α_286_130
                        cmp              rcx, 1;                              je    .Lcall_try_α_286_230
                        lea              rcx, [rip + .Lcall_try_α_286_132]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_286_131]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_286_131]
                        lea              rdx, [rip + .Lcall_try_α_286_132];   jmp   rax
.Lcall_try_α_286_130:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lcall_try_α_286_133]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lcall_try_α_286_134]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lcall_try_α_286_133:
.Lgcsite_main_61:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_286_135
.Lcall_try_α_286_134:
.Lgcsite_main_60:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_286_136
.Lcall_try_α_286_131:
.Lgcsite_main_59:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_286_135
.Lcall_try_α_286_132:
.Lgcsite_main_58:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_286_136
.Lcall_try_α_286_230:   lea              rcx, [rip + .Lcall_try_α_286_232]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_286_231]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_286_231]
                        lea              rdx, [rip + .Lcall_try_α_286_232];   jmp   rax
.Lcall_try_α_286_231:
.Lgcsite_main_57:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_286_135
.Lcall_try_α_286_232:
.Lgcsite_main_56:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_286_136
.Lcall_try_α_286_135:   mov              rcx, rsp
                        call             rt_apply_land_γ@PLT
.Lgcsite_main_55:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_54:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lcall_try_α_286_152
.Lcall_try_α_286_136:   mov              rsi, rsp
                        call             rt_apply_land_ω@PLT
.Lgcsite_main_53:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_52:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lcall_try_α_286_152
.Lcall_try_α_286_151:
.Lcall_try_α_286_152:   lea              rdi, [rsp + 0]                       # pend
                        call             rt_call_pend_close@PLT
.Lgcsite_main_51:       mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_try_α_286_150:   add              rsp, 112;                            jmp   .Lcall_try_α_286_108
.Lcall_try_α_286_109:   sub              rsp, 64
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
                        cmp              rcx, 2;                              je    .Lcall_try_α_286_100
                        cmp              rcx, 1;                              je    .Lcall_try_α_286_200
                        lea              rcx, [rip + .Lcall_try_α_286_102]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_286_101]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_286_101]
                        lea              rdx, [rip + .Lcall_try_α_286_102];   jmp   rax
.Lcall_try_α_286_100:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lcall_try_α_286_103]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lcall_try_α_286_104]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lcall_try_α_286_103:
.Lgcsite_main_50:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_286_105
.Lcall_try_α_286_104:
.Lgcsite_main_49:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_286_106
.Lcall_try_α_286_101:
.Lgcsite_main_48:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_286_105
.Lcall_try_α_286_102:
.Lgcsite_main_47:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_286_106
.Lcall_try_α_286_200:   lea              rcx, [rip + .Lcall_try_α_286_202]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_286_201]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_286_201]
                        lea              rdx, [rip + .Lcall_try_α_286_202];   jmp   rax
.Lcall_try_α_286_201:
.Lgcsite_main_46:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_286_105
.Lcall_try_α_286_202:
.Lgcsite_main_45:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_286_106
.Lcall_try_α_286_105:   call             rt_call_land_γ@PLT
.Lgcsite_main_44:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_43:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_try_α_286_29
.Lcall_try_α_286_106:   call             rt_call_land_ω@PLT
.Lgcsite_main_42:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_41:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_try_α_286_29
.Lcall_try_α_286_108:   mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lcall_try_α_286_29:    push             rax
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
.Lgcsite_main_68:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_try_α_286_240
                        add              rsp, 16;                             jmp   n147_lit_string_β
.Lcall_try_α_286_240:   mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_statement_end_α
n148_call_try_β:        add              rsp, 16;                             jmp   n147_lit_string_β
                        .size            n148_call_try_bx, .-n148_call_try_bx
                        .type            n149_statement_end_bx, @function
n149_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_end_α:   add              rsp, 64;                             jmp   n151_statement_begin_α
                        .size            n149_statement_end_bx, .-n149_statement_end_bx
                        .type            n150_setexit_test_bx, @function
n150_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_289_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_289_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_289_61:
.Lsetexit_test_α_289_1:                                                       jmp   n151_statement_begin_α
                        .size            n150_setexit_test_bx, .-n150_setexit_test_bx
                        .type            n151_statement_begin_bx, @function
n151_statement_begin_bx:
.Lstatement_begin_α_290_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_290_stno
                        .long            11
                        .long            35
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         src            =  INPUT                          :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n151_statement_begin_α:                                                       jmp   n152_var_α
n151_statement_begin_β:                                                       jmp   n155_setexit_test_α
                        .size            n151_statement_begin_bx, .-n151_statement_begin_bx
                        .type            n152_var_bx, @function
n152_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lvar_α_292_0] # name
                        call             NV_GET_fn@PLT
.Lgcsite_main_70:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lvar_α_292_240
                        add              rsp, 16;                             jmp   n151_statement_begin_β
.Lvar_α_292_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_var_global.cpp:85
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_69:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n153_assign_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lvar_α_292_0: .quad .Lvar_α_292_0_s; .popsection
.Lvar_α_292_0_s:        .string          "INPUT"
                        .size            n152_var_bx, .-n152_var_bx
                        .type            n153_assign_bx, @function
n153_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11984], rax          # src
                        mov              qword ptr [r9 + 11992], rdx;         jmp   n154_statement_end_α
                        .size            n153_assign_bx, .-n153_assign_bx
                        .type            n154_statement_end_bx, @function
n154_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_end_α:   add              rsp, 16;                             jmp   n156_statement_begin_α
                        .size            n154_statement_end_bx, .-n154_statement_end_bx
                        .type            n155_setexit_test_bx, @function
n155_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_296_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_296_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_296_61:
.Lsetexit_test_α_296_1:                                                       jmp   n175_statement_begin_α
                        .size            n155_setexit_test_bx, .-n155_setexit_test_bx
                        .type            n156_statement_begin_bx, @function
n156_statement_begin_bx:
.Lstatement_begin_α_297_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_297_stno
                        .long            12
                        .long            36
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         src            C                                 :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 36 0
n156_statement_begin_α:                                                       jmp   n157_var_α
n156_statement_begin_β:                                                       jmp   n166_setexit_test_α
                        .size            n156_statement_begin_bx, .-n156_statement_begin_bx
                        .type            n157_var_bx, @function
n157_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11984]          # src
                        mov              rdx, qword ptr [r9 + 11992]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n158_var_α
                        .size            n157_var_bx, .-n157_var_bx
                        .type            n158_var_bx, @function
n158_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11968]          # C
                        mov              rdx, qword ptr [r9 + 11976]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_lit_integer_α
n158_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n166_setexit_test_α
                        .size            n158_var_bx, .-n158_var_bx
                        .type            n159_lit_integer_bx, @function
n159_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_301_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n160_call_direct_α
n159_lit_integer_β:     add              rsp, 16;                             jmp   n158_var_β
.Llit_integer_α_301_0:  .quad            240
                        .size            n159_lit_integer_bx, .-n159_lit_integer_bx
                        .type            n160_call_direct_bx, @function
n160_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_call_direct_α:     sub              rsp, 16
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
.Lgcsite_main_71:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_72:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_302_240
                        add              rsp, 16;                             jmp   n159_lit_integer_β
.Lcall_direct_α_302_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n161_assign_α
n160_call_direct_β:     add              rsp, 16;                             jmp   n159_lit_integer_β
                        .size            n160_call_direct_bx, .-n160_call_direct_bx
                        .type            n161_assign_bx, @function
n161_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 12000], rax
                        mov              qword ptr [r9 + 12008], rdx;         jmp   n162_match_begin_α
n161_assign_β:          add              rsp, 16;                             jmp   n159_lit_integer_β
                        .size            n161_assign_bx, .-n161_assign_bx
                        .type            n162_match_begin_bx, @function
n162_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_match_begin_α:     mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
.Lgcsite_main_77:       push             rbp
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
.Lgcsite_main_76:       cmp              rax, -1;                             jne   .Lmatch_begin_vd_305_14
                        call             c_rt_match_enter@PLT
.Lgcsite_main_75:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_begin_vd_305_14:
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
.Lgcsite_main_74:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0               # cas_mark
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24
                        test             r13, r13;                            jne   .Lmatch_begin_α_305_14
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax;          jmp   .Lmatch_begin_α_305_1
.Lmatch_begin_α_305_14: mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_305_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_305_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n163_match_defer_α
n162_match_begin_β:
.Lmatch_begin_α_305_13: lea              rsp, [rbp + -88]                     # retry_whack
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_α_305_1
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_α_305_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_α_305_1
                                                                              jmp   .Lmatch_begin_α_305_0
.Lmatch_begin_α_305_1:
.Lmatch_begin_γ_162_af:
.Lmatch_begin_ω_162_af: mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
.Lgcsite_main_73:       mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              r13, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n161_assign_β
                        .size            n162_match_begin_bx, .-n162_match_begin_bx
                        .type            n163_match_defer_bx, @function
n163_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_match_defer_α:     mov              rax, qword ptr [r9 + 12000]
                        mov              rdx, qword ptr [r9 + 12008]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_306_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_306_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_main_100:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:107
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_99:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 12008];         jmp   .Lmatch_defer_α_306_10
.Lmatch_defer_α_306_9:  xor              eax, eax
.Lmatch_defer_α_306_10: test             rax, rax;                            jz    .Lmatch_defer_α_306_0
.Lmatch_defer_α_306_48: mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_306_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_306_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_306_4:
.Lgcsite_main_98:                                                             jmp   n164_match_end_α
.Lmatch_defer_α_306_5:
.Lgcsite_main_97:       cmp              r14d, -2;                            je    .Lmatch_begin_ω_162_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_162_af
                                                                              jmp   n162_match_begin_β
.Lmatch_defer_α_306_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        lea              rdi, [r9 + 12000]
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        call             qword ptr [rip + rt_defer_open_cell@GOTPCREL]
.Lgcsite_main_96:       cmp              rax, -1;                             jne   .Lmatch_defer_vd_306_16
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_main_95:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_306_16:
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_306_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_306_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_94:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_306_2:  test             rax, rax;                            je    .Lmatch_defer_α_306_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_306_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_306_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_306_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_306_141
                        lea              rcx, [rip + .Lmatch_defer_α_306_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_306_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_306_42]
                        lea              rdx, [rip + .Lmatch_defer_α_306_43]; jmp   rax
.Lmatch_defer_α_306_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_306_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_306_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_306_44:
.Lgcsite_main_93:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_306_46
.Lmatch_defer_α_306_45:
.Lgcsite_main_92:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_306_47
.Lmatch_defer_α_306_42:
.Lgcsite_main_91:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_306_46
.Lmatch_defer_α_306_43:
.Lgcsite_main_90:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_306_47
.Lmatch_defer_α_306_141:
                        lea              rcx, [rip + .Lmatch_defer_α_306_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_306_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_306_142]
                        lea              rdx, [rip + .Lmatch_defer_α_306_143]
                                                                              jmp   rax
.Lmatch_defer_α_306_142:
.Lgcsite_main_89:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_306_46
.Lmatch_defer_α_306_143:
.Lgcsite_main_88:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_306_47
.Lmatch_defer_α_306_46: mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_main_87:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_306_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_306_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_86:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_306_2
.Lmatch_defer_α_306_47: mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_main_85:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_306_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_306_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_84:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_306_2
.Lmatch_defer_α_306_61: sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_306_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_306_62:
.Lgcsite_main_83:       add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_main_82:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_306_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_306_63: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_81:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_306_2
.Lmatch_defer_α_306_40: add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_306_48
.Lmatch_defer_α_306_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_main_80:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_306_15
                        call             c_rt_defer_close@PLT
.Lgcsite_main_79:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_306_15:
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
.Lgcsite_main_78:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_306_49: cmp              r14d, -2;                            je    .Lmatch_begin_ω_162_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_162_af
                        test             eax, eax;                            js    n162_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_306_6]
                        push             rcx
                        push             rax;                                 jmp   n164_match_end_α
.Lmatch_defer_α_306_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n162_match_begin_β
n163_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_306_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_306_12
                                                                              jmp   rax
.Lmatch_defer_β_306_12:                                                       jmp   qword ptr [rsp]
                        .size            n163_match_defer_bx, .-n163_match_defer_bx
                        .type            n164_match_end_bx, @function
n164_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_match_end_α:       mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_162_af
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
                        sub              rsp, 224
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rsi, r12
                        mov              rdx, r13
                        mov              rcx, rsp
                        call             qword ptr [rip + rt_dcap_end_ok_open@GOTPCREL]
.Lgcsite_main_132:      push             rax
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
.Lgcsite_main_131:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:
.Lmatch_end_α_308_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_308_2
                        cmp              rax, 2;                              je    .Lmatch_end_α_308_10
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
                        cmp              rcx, 2;                              je    .Lmatch_end_α_308_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_308_120
                        lea              rcx, [rip + .Lmatch_end_α_308_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_308_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_308_21]
                        lea              rdx, [rip + .Lmatch_end_α_308_22];   jmp   rax
.Lmatch_end_α_308_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_308_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_308_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_308_23:
.Lgcsite_main_130:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_308_8
.Lmatch_end_α_308_24:
.Lgcsite_main_129:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_308_9
.Lmatch_end_α_308_21:
.Lgcsite_main_128:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_308_8
.Lmatch_end_α_308_22:
.Lgcsite_main_127:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_308_9
.Lmatch_end_α_308_120:  lea              rcx, [rip + .Lmatch_end_α_308_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_308_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_308_121]
                        lea              rdx, [rip + .Lmatch_end_α_308_122];  jmp   rax
.Lmatch_end_α_308_121:
.Lgcsite_main_126:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_308_8
.Lmatch_end_α_308_122:
.Lgcsite_main_125:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_308_9
.Lmatch_end_α_308_8:    mov              rdx, rsp
                        call             rt_dcap_land_γ@PLT
.Lgcsite_main_124:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_123:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_308_1
.Lmatch_end_α_308_9:    mov              rdi, rsp
                        call             rt_dcap_land_ω@PLT
.Lgcsite_main_122:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_121:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_308_1
.Lmatch_end_α_308_10:   mov              rcx, qword ptr [rsp + 112]
                        test             rcx, rcx;                            jz    .Lmatch_end_α_308_60
                        lea              rdi, [rsp + 112]                     # args
                        mov              esi, 3                               # nargs
                        call             rt_apply_open@PLT
.Lgcsite_main_120:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_119:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jz    .Lmatch_end_α_308_61
                        sub              rsp, 16
                        mov              rcx, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
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
                        cmp              rcx, 2;                              je    .Lmatch_end_α_308_40
                        cmp              rcx, 1;                              je    .Lmatch_end_α_308_140
                        lea              rcx, [rip + .Lmatch_end_α_308_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_308_41]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_308_41]
                        lea              rdx, [rip + .Lmatch_end_α_308_42];   jmp   rax
.Lmatch_end_α_308_40:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_308_43]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_308_44]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_308_43:
.Lgcsite_main_118:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_308_45
.Lmatch_end_α_308_44:
.Lgcsite_main_117:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_308_46
.Lmatch_end_α_308_41:
.Lgcsite_main_116:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_308_45
.Lmatch_end_α_308_42:
.Lgcsite_main_115:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_308_46
.Lmatch_end_α_308_140:  lea              rcx, [rip + .Lmatch_end_α_308_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_308_141]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_308_141]
                        lea              rdx, [rip + .Lmatch_end_α_308_142];  jmp   rax
.Lmatch_end_α_308_141:
.Lgcsite_main_114:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_308_45
.Lmatch_end_α_308_142:
.Lgcsite_main_113:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_308_46
.Lmatch_end_α_308_45:   mov              rcx, rsp
                        call             rt_apply_land_γ@PLT
.Lgcsite_main_112:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_111:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lmatch_end_α_308_62
.Lmatch_end_α_308_46:   mov              rsi, rsp
                        call             rt_apply_land_ω@PLT
.Lgcsite_main_110:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_109:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lmatch_end_α_308_62
.Lmatch_end_α_308_61:   lea              rdi, [rsp + 112]                     # pend
                        call             rt_trace_pend_run@PLT
.Lgcsite_main_108:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:292
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_107:      mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lmatch_end_α_308_62:   lea              rdi, [rsp + 112]                     # pend
                        call             rt_trace_pend_close@PLT
.Lgcsite_main_106:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:296
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_105:      mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lmatch_end_α_308_60:   mov              rdi, rsp                             # c
                        call             rt_dcap_resume@PLT
.Lgcsite_main_104:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_103:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_308_1
.Lmatch_end_α_308_2:    add              rsp, 224
                        mov              qword ptr [rsp + 0], rax
                        mov              rdi, qword ptr [rbp + -16]           # outer_Σ
                        mov              rsi, qword ptr [rbp + -32]           # outer_Δ
                        lea              rdx, [rbp + -88]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
.Lgcsite_main_102:      mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              rax, qword ptr [rsp + 0]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        test             rax, rax;                            je    .Lmatch_end_α_308_13
                                                                              jmp   .Lmatch_begin_ω_162_af
.Lmatch_end_α_308_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp
.Lgcsite_main_101:                                                            jmp   n165_statement_end_α
                        .size            n164_match_end_bx, .-n164_match_end_bx
                        .type            n165_statement_end_bx, @function
n165_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_end_α:   add              rsp, 64;                             jmp   n167_statement_begin_α
                        .size            n165_statement_end_bx, .-n165_statement_end_bx
                        .type            n166_setexit_test_bx, @function
n166_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_311_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_311_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_311_61:
.Lsetexit_test_α_311_1:                                                       jmp   n175_statement_begin_α
                        .size            n166_setexit_test_bx, .-n166_setexit_test_bx
                        .type            n167_statement_begin_bx, @function
n167_statement_begin_bx:
.Lstatement_begin_α_312_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_312_stno
                        .long            13
                        .long            37
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         OUTPUT         =  'matched bytes=' SIZE(src)      :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n167_statement_begin_α:                                                       jmp   n168_lit_string_α
n167_statement_begin_β:                                                       jmp   n174_setexit_test_α
                        .size            n167_statement_begin_bx, .-n167_statement_begin_bx
                        .type            n168_lit_string_bx, @function
n168_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_314_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n169_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_314_0: .quad .Llit_string_α_314_0_s; .popsection
.Llit_string_α_314_0_s: .string          "matched bytes="
                        .size            n168_lit_string_bx, .-n168_lit_string_bx
                        .type            n169_var_bx, @function
n169_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11984]          # src
                        mov              rdx, qword ptr [r9 + 11992]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n170_call_byname_α
n169_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n167_statement_begin_β
                        .size            n169_var_bx, .-n169_var_bx
                        .type            n170_call_byname_bx, @function
n170_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd317: .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd317]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
.Lgcsite_main_134:      cmp              al, 255;                             jne   .Lcall_byname_vd_316_17
                        call             c_rt_call_bid_sn4@PLT
.Lgcsite_main_133:      mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_byname_vd_316_17:
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
.Lgcsite_main_135:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_316_240
                        add              rsp, 16;                             jmp   n169_var_β
.Lcall_byname_α_316_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n171_binop_α
n170_call_byname_β:     add              rsp, 16;                             jmp   n169_var_β
                        .size            n170_call_byname_bx, .-n170_call_byname_bx
                        .type            n171_binop_bx, @function
n171_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + sno_concat_d@GOTPCREL]
.Lgcsite_main_138:      cmp              al, 255;                             jne   .Lbinop_vd_318_18
                        call             c_sno_concat_d@PLT
.Lgcsite_main_137:      mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_318_18:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_136:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_318_240
                        add              rsp, 32;                             jmp   n169_var_β
.Lbinop_α_318_240:                                                            jmp   n172_assign_α
n171_binop_β:           add              rsp, 32;                             jmp   n169_var_β
                        .size            n171_binop_bx, .-n171_binop_bx
                        .type            n172_assign_bx, @function
n172_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]             # val
                        mov              rsi, rax                             # val
                        mov              rdi, qword ptr [rip + .Lassign_α_319_0] # name
                        call             NV_SET_fn@PLT
.Lgcsite_main_140:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_139:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   n173_statement_end_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lassign_α_319_0: .quad .Lassign_α_319_0_s; .popsection
.Lassign_α_319_0_s:     .string          "OUTPUT"
                        .size            n172_assign_bx, .-n172_assign_bx
                        .type            n173_statement_end_bx, @function
n173_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_end_α:   add              rsp, 64;                             jmp   main_γ
                        .size            n173_statement_end_bx, .-n173_statement_end_bx
                        .type            n174_setexit_test_bx, @function
n174_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_322_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_322_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_322_61:
.Lsetexit_test_α_322_1:                                                       jmp   main_γ
                        .size            n174_setexit_test_bx, .-n174_setexit_test_bx
                        .type            n175_statement_begin_bx, @function
n175_statement_begin_bx:
.Lstatement_begin_α_323_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_323_stno
                        .long            14
                        .long            38
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# fail    OUTPUT         =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 38 0
n175_statement_begin_α:                                                       jmp   n176_lit_string_α
n175_statement_begin_β:                                                       jmp   n179_setexit_test_α
                        .size            n175_statement_begin_bx, .-n175_statement_begin_bx
                        .type            n176_lit_string_bx, @function
n176_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_325_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n177_assign_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_325_0: .quad .Llit_string_α_325_0_s; .popsection
.Llit_string_α_325_0_s: .string          "Pattern match failed"
                        .size            n176_lit_string_bx, .-n176_lit_string_bx
                        .type            n177_assign_bx, @function
n177_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]             # val
                        mov              rsi, rax                             # val
                        mov              rdi, qword ptr [rip + .Lassign_α_326_0] # name
                        call             NV_SET_fn@PLT
.Lgcsite_main_142:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_141:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   n178_statement_end_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lassign_α_326_0: .quad .Lassign_α_326_0_s; .popsection
.Lassign_α_326_0_s:     .string          "OUTPUT"
                        .size            n177_assign_bx, .-n177_assign_bx
                        .type            n178_statement_end_bx, @function
n178_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_end_α:   add              rsp, 16;                             jmp   main_γ
                        .size            n178_statement_end_bx, .-n178_statement_end_bx
                        .type            n179_setexit_test_bx, @function
n179_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_329_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_329_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_329_61:
.Lsetexit_test_α_329_1:                                                       jmp   main_γ
                        .size            n179_setexit_test_bx, .-n179_setexit_test_bx
                        .type            n180_goto_bx, @function
n180_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_goto_α:                                                                  jmp   n175_statement_begin_α
n180_goto_β:                                                                  jmp   main_ω
                        .size            n180_goto_bx, .-n180_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        call             sno_setexit_fire_on_end@PLT
.Lgcsite_main_145:      push             rax                                  # gc_poll bb_glue_flat.cpp:51
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_144:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      xor              edi, edi
                        call             exit@PLT
.Lgcsite_main_143:
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
.Lgcsite_main_146:
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_main:
                        .quad            7629208374618
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            1760
                        .quad            5
                        .quad            1583296743997440
                        .quad            8800387990944
                        .quad            17600775980456
                        .quad            79169132168632
                        .quad            246290604623360
.Lgcmap_main_s:         .string          "main"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_main_7:       .quad            147
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
                        .quad            412316860417
                        .quad            .Lgcsite_main_9
                        .quad            549755813889
                        .quad            .Lgcsite_main_10
                        .quad            618475290625
                        .quad            .Lgcsite_main_11
                        .quad            755914244097
                        .quad            .Lgcsite_main_12
                        .quad            755914244097
                        .quad            .Lgcsite_main_13
                        .quad            893353197569
                        .quad            .Lgcsite_main_14
                        .quad            412316860417
                        .quad            .Lgcsite_main_15
                        .quad            549755813889
                        .quad            .Lgcsite_main_16
                        .quad            481036337153
                        .quad            .Lgcsite_main_17
                        .quad            618475290625
                        .quad            .Lgcsite_main_18
                        .quad            412316860417
                        .quad            .Lgcsite_main_19
                        .quad            549755813889
                        .quad            .Lgcsite_main_20
                        .quad            618475290625
                        .quad            .Lgcsite_main_21
                        .quad            755914244097
                        .quad            .Lgcsite_main_22
                        .quad            755914244097
                        .quad            .Lgcsite_main_23
                        .quad            893353197569
                        .quad            .Lgcsite_main_24
                        .quad            412316860417
                        .quad            .Lgcsite_main_25
                        .quad            549755813889
                        .quad            .Lgcsite_main_26
                        .quad            618475290625
                        .quad            .Lgcsite_main_27
                        .quad            755914244097
                        .quad            .Lgcsite_main_28
                        .quad            755914244097
                        .quad            .Lgcsite_main_29
                        .quad            893353197569
                        .quad            .Lgcsite_main_31
                        .quad            206158430209
                        .quad            .Lgcsite_main_30
                        .quad            206158430209
                        .quad            .Lgcsite_main_32
                        .quad            343597383681
                        .quad            .Lgcsite_main_33
                        .quad            412316860417
                        .quad            .Lgcsite_main_34
                        .quad            549755813889
                        .quad            .Lgcsite_main_35
                        .quad            618475290625
                        .quad            .Lgcsite_main_36
                        .quad            755914244097
                        .quad            .Lgcsite_main_37
                        .quad            755914244097
                        .quad            .Lgcsite_main_38
                        .quad            893353197569
                        .quad            .Lgcsite_main_40
                        .quad            137438953473
                        .quad            .Lgcsite_main_39
                        .quad            137438953473
                        .quad            .Lgcsite_main_67
                        .quad            481036337153
                        .quad            .Lgcsite_main_66
                        .quad            618475290625
                        .quad            .Lgcsite_main_65
                        .quad            962072674305
                        .quad            .Lgcsite_main_64
                        .quad            962072674305
                        .quad            .Lgcsite_main_63
                        .quad            962072674305
                        .quad            .Lgcsite_main_62
                        .quad            1099511627777
                        .quad            .Lgcsite_main_61
                        .quad            1511828488194
                        .quad            .Lgcsite_main_60
                        .quad            1511828488194
                        .quad            .Lgcsite_main_59
                        .quad            1374389534722
                        .quad            .Lgcsite_main_58
                        .quad            1374389534722
                        .quad            .Lgcsite_main_57
                        .quad            1374389534722
                        .quad            .Lgcsite_main_56
                        .quad            1374389534722
                        .quad            .Lgcsite_main_55
                        .quad            1030792151041
                        .quad            .Lgcsite_main_54
                        .quad            1168231104513
                        .quad            .Lgcsite_main_53
                        .quad            1030792151041
                        .quad            .Lgcsite_main_52
                        .quad            1168231104513
                        .quad            .Lgcsite_main_51
                        .quad            962072674305
                        .quad            .Lgcsite_main_50
                        .quad            962072674306
                        .quad            .Lgcsite_main_49
                        .quad            962072674306
                        .quad            .Lgcsite_main_48
                        .quad            824633720834
                        .quad            .Lgcsite_main_47
                        .quad            824633720834
                        .quad            .Lgcsite_main_46
                        .quad            824633720834
                        .quad            .Lgcsite_main_45
                        .quad            824633720834
                        .quad            .Lgcsite_main_44
                        .quad            481036337153
                        .quad            .Lgcsite_main_43
                        .quad            618475290625
                        .quad            .Lgcsite_main_42
                        .quad            481036337153
                        .quad            .Lgcsite_main_41
                        .quad            618475290625
                        .quad            .Lgcsite_main_68
                        .quad            618475290625
                        .quad            .Lgcsite_main_70
                        .quad            68719476737
                        .quad            .Lgcsite_main_69
                        .quad            68719476737
                        .quad            .Lgcsite_main_71
                        .quad            412316860417
                        .quad            .Lgcsite_main_72
                        .quad            549755813889
                        .quad            .Lgcsite_main_77
                        .quad            274877906948
                        .quad            .Lgcsite_main_76
                        .quad            274878300417
                        .quad            .Lgcsite_main_75
                        .quad            274878300417
                        .quad            .Lgcsite_main_74
                        .quad            274878300417
                        .quad            .Lgcsite_main_73
                        .quad            274878300417
                        .quad            .Lgcsite_main_100
                        .quad            274878300417
                        .quad            .Lgcsite_main_99
                        .quad            274878300417
                        .quad            .Lgcsite_main_98
                        .quad            274878300418
                        .quad            .Lgcsite_main_97
                        .quad            274878300418
                        .quad            .Lgcsite_main_96
                        .quad            274878300417
                        .quad            .Lgcsite_main_95
                        .quad            274878300417
                        .quad            .Lgcsite_main_94
                        .quad            274878300417
                        .quad            .Lgcsite_main_93
                        .quad            274878300418
                        .quad            .Lgcsite_main_92
                        .quad            274878300418
                        .quad            .Lgcsite_main_91
                        .quad            274878300418
                        .quad            .Lgcsite_main_90
                        .quad            274878300418
                        .quad            .Lgcsite_main_89
                        .quad            274878300418
                        .quad            .Lgcsite_main_88
                        .quad            274878300418
                        .quad            .Lgcsite_main_87
                        .quad            274878300417
                        .quad            .Lgcsite_main_86
                        .quad            274878300417
                        .quad            .Lgcsite_main_85
                        .quad            274878300417
                        .quad            .Lgcsite_main_84
                        .quad            274878300417
                        .quad            .Lgcsite_main_83
                        .quad            274878300418
                        .quad            .Lgcsite_main_82
                        .quad            274878300417
                        .quad            .Lgcsite_main_81
                        .quad            274878300417
                        .quad            .Lgcsite_main_80
                        .quad            274878300417
                        .quad            .Lgcsite_main_79
                        .quad            274878300417
                        .quad            .Lgcsite_main_78
                        .quad            274878300417
                        .quad            .Lgcsite_main_132
                        .quad            274878300417
                        .quad            .Lgcsite_main_131
                        .quad            274878300417
                        .quad            .Lgcsite_main_130
                        .quad            274878300418
                        .quad            .Lgcsite_main_129
                        .quad            274878300418
                        .quad            .Lgcsite_main_128
                        .quad            274878300418
                        .quad            .Lgcsite_main_127
                        .quad            274878300418
                        .quad            .Lgcsite_main_126
                        .quad            274878300418
                        .quad            .Lgcsite_main_125
                        .quad            274878300418
                        .quad            .Lgcsite_main_124
                        .quad            274878300417
                        .quad            .Lgcsite_main_123
                        .quad            274878300417
                        .quad            .Lgcsite_main_122
                        .quad            274878300417
                        .quad            .Lgcsite_main_121
                        .quad            274878300417
                        .quad            .Lgcsite_main_120
                        .quad            274878300417
                        .quad            .Lgcsite_main_119
                        .quad            274878300417
                        .quad            .Lgcsite_main_118
                        .quad            274878300418
                        .quad            .Lgcsite_main_117
                        .quad            274878300418
                        .quad            .Lgcsite_main_116
                        .quad            274878300418
                        .quad            .Lgcsite_main_115
                        .quad            274878300418
                        .quad            .Lgcsite_main_114
                        .quad            274878300418
                        .quad            .Lgcsite_main_113
                        .quad            274878300418
                        .quad            .Lgcsite_main_112
                        .quad            274878300417
                        .quad            .Lgcsite_main_111
                        .quad            274878300417
                        .quad            .Lgcsite_main_110
                        .quad            274878300417
                        .quad            .Lgcsite_main_109
                        .quad            274878300417
                        .quad            .Lgcsite_main_108
                        .quad            274878300417
                        .quad            .Lgcsite_main_107
                        .quad            274878300417
                        .quad            .Lgcsite_main_106
                        .quad            274878300417
                        .quad            .Lgcsite_main_105
                        .quad            274878300417
                        .quad            .Lgcsite_main_104
                        .quad            274878300417
                        .quad            .Lgcsite_main_103
                        .quad            274878300417
                        .quad            .Lgcsite_main_102
                        .quad            274878300417
                        .quad            .Lgcsite_main_101
                        .quad            274877906949
                        .quad            .Lgcsite_main_134
                        .quad            274877906945
                        .quad            .Lgcsite_main_133
                        .quad            274877906945
                        .quad            .Lgcsite_main_135
                        .quad            412316860417
                        .quad            .Lgcsite_main_138
                        .quad            274877906945
                        .quad            .Lgcsite_main_137
                        .quad            274877906945
                        .quad            .Lgcsite_main_136
                        .quad            274877906945
                        .quad            .Lgcsite_main_140
                        .quad            274877906945
                        .quad            .Lgcsite_main_139
                        .quad            412316860417
                        .quad            .Lgcsite_main_142
                        .quad            68719476737
                        .quad            .Lgcsite_main_141
                        .quad            206158430209
                        .quad            .Lgcsite_main_145
                        .quad            1
                        .quad            .Lgcsite_main_144
                        .quad            1
                        .quad            .Lgcsite_main_143
                        .quad            1
                        .quad            .Lgcsite_main_146
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
