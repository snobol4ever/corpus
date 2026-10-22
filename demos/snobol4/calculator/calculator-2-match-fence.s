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
.Lmatch_span_α_5_1:     cmp              ecx, r14d;                           jg    .Lmatch_span_α_5_999
                        add              rsp, 16;                             jmp   .LTp1_ω
.Lmatch_span_α_5_999:   mov              dword ptr [rsp + 4], r14d
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
                        .long            0, 1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_.LTp2_2:
.LTp2:
.LTp2_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 136
                        xorps            xmm0, xmm0                           # GCANCHOR .Lgcmap_.LTp2 qword ptr [rbp + -128]
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
                        mov              r14d, dword ptr [rbp + -60];         jmp   .LTp2_ω
                        .size            n6_match_fence1_bx, .-n6_match_fence1_bx
                        .type            n7_match_alternate_bx, @function
n7_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_match_alternate_α:   mov              dword ptr [rbp + -112], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_17_21]
                        mov              qword ptr [rbp + -96], rax;          jmp   n12_match_defer_α
.Lmatch_alternate_α_17_21:
                        lea              rax, [rip + .Lmatch_alternate_α_17_22]
                        mov              qword ptr [rbp + -96], rax;          jmp   n11_match_defer_α
.Lmatch_alternate_α_17_22:
                        lea              rax, [rip + .Lmatch_alternate_α_17_19]
                        mov              qword ptr [rbp + -96], rax;          jmp   n8_match_lit_α
.Lmatch_alternate_γ_7_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_17_40]
                        mov              qword ptr [rbp + -104], rax;         jmp   .Lmatch_alternate_γ_7_as
.Lmatch_alternate_γ_7_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_17_41]
                        mov              qword ptr [rbp + -104], rax;         jmp   .Lmatch_alternate_γ_7_as
.Lmatch_alternate_γ_7_s2:
                        lea              rax, [rip + .Lmatch_alternate_α_17_42]
                        mov              qword ptr [rbp + -104], rax;         jmp   .Lmatch_alternate_γ_7_as
.Lmatch_alternate_α_17_40:
                                                                              jmp   n12_match_defer_β
.Lmatch_alternate_α_17_41:
                                                                              jmp   n11_match_defer_β
.Lmatch_alternate_α_17_42:
                                                                              jmp   n10_match_lit_β
.Lmatch_alternate_γ_7_as:
                                                                              jmp   .Lmatch_fence1_γ_6_as
n7_match_alternate_β:   mov              rax, qword ptr [rbp + -104];         jmp   rax
.Lmatch_alternate_γ_7_af:
.Lmatch_alternate_ω_7_af:
                        mov              r14d, dword ptr [rbp + -112]
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
.Lmatch_alternate_α_17_19:
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
n9_match_defer_α:       sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11936]          # X
                        mov              rdx, qword ptr [r9 + 11944]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_20_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_20_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp2_22:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:103
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp2_21:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11944];         jmp   .Lmatch_defer_α_20_10
.Lmatch_defer_α_20_9:   xor              eax, eax
.Lmatch_defer_α_20_10:  test             rax, rax;                            jz    .Lmatch_defer_α_20_0
.Lmatch_defer_α_20_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_20_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_20_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_20_4:
.Lgcsite_.LTp2_20:                                                            jmp   n10_match_lit_α
.Lmatch_defer_α_20_5:
.Lgcsite_.LTp2_19:      cmp              r14d, -2;                            je    n13_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n13_match_abort_β
                        add              rsp, 16;                             jmp   n8_match_lit_β
.Lmatch_defer_α_20_0:   sub              rsp, 32
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
.Lgcsite_.LTp2_18:      cmp              rax, -1;                             jne   .Lmatch_defer_vd_20_1
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_.LTp2_17:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_20_1:  push             rax
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
.Lgcsite_.LTp2_16:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp2_15:      add              rsp, 48
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
.Lgcsite_.LTp2_14:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_20_47
.Lmatch_defer_α_20_42:
.Lgcsite_.LTp2_13:      add              rsp, 16
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
.Lgcsite_.LTp2_12:      add              rsp, 16
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
.Lgcsite_.LTp2_11:      add              rsp, 0
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
.Lgcsite_.LTp2_10:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_20_47
.Lmatch_defer_α_20_46:  mov              rcx, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_20_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_20_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_8:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_20_2
.Lmatch_defer_α_20_47:  mov              rsi, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_20_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_20_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_6:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_20_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_20_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_3:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp2_2:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_20_0
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp2_1:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_20_0:  add              rsp, 144
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
.Lmatch_defer_α_20_49:  cmp              r14d, -2;                            je    n13_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n13_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_20_999
                        add              rsp, 16;                             jmp   n8_match_lit_β
.Lmatch_defer_α_20_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_20_6]
                        push             rcx
                        push             rax;                                 jmp   n10_match_lit_α
.Lmatch_defer_α_20_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n8_match_lit_β
n9_match_defer_β:       cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_20_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_20_12
                                                                              jmp   rax
.Lmatch_defer_β_20_12:                                                        jmp   qword ptr [rsp]
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
n11_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_23_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_23_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_23_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_23_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_23_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_23_18
.Lmatch_defer_α_23_17:  mov              rdi, qword ptr [rbp + -24]           # hv
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
                        test             rax, rax;                            je    .Lmatch_defer_α_23_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_23_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_43:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp2_42:                                                            jmp   .Lmatch_alternate_γ_7_s1
.Lmatch_defer_α_23_5:
.Lgcsite_.LTp2_41:      cmp              r14d, -2;                            je    n13_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n13_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_7_af
.Lmatch_defer_α_23_0:   sub              rsp, 32
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_23_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_23_51:  lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_23_2:   test             rax, rax;                            je    .Lmatch_defer_α_23_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_23_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_23_61
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
.Lgcsite_.LTp2_38:      add              rsp, 48
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
.Lgcsite_.LTp2_37:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_23_47
.Lmatch_defer_α_23_42:
.Lgcsite_.LTp2_36:      add              rsp, 16
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
.Lgcsite_.LTp2_35:      add              rsp, 16
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
.Lgcsite_.LTp2_34:      add              rsp, 0
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
.Lgcsite_.LTp2_33:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_23_47
.Lmatch_defer_α_23_46:  mov              rcx, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_23_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_23_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_31:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_23_2
.Lmatch_defer_α_23_47:  mov              rsi, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_23_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_23_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_29:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_23_2
.Lmatch_defer_α_23_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_23_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_23_62:
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_23_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_23_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_26:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_23_2
.Lmatch_defer_α_23_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_23_48
.Lmatch_defer_α_23_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp2_25:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_23_2
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp2_24:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_23_2:  add              rsp, 144
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
.Lmatch_defer_α_23_49:  cmp              r14d, -2;                            je    n13_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n13_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_23_999
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_7_af
.Lmatch_defer_α_23_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_23_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_7_s1
.Lmatch_defer_α_23_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_7_af
n11_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_23_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_23_12
                                                                              jmp   rax
.Lmatch_defer_β_23_12:                                                        jmp   qword ptr [rsp]
                        .size            n11_match_defer_bx, .-n11_match_defer_bx
                        .type            n12_match_defer_bx, @function
n12_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_24_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_24_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_24_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_24_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_24_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_24_18
.Lmatch_defer_α_24_17:  mov              rdi, qword ptr [rbp + -24]           # hv
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
                        test             rax, rax;                            je    .Lmatch_defer_α_24_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_24_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_65:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_24_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_24_16:
.Lmatch_defer_α_24_18:  test             rax, rax;                            jz    .Lmatch_defer_α_24_0
.Lmatch_defer_α_24_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_24_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_24_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_24_4:
.Lgcsite_.LTp2_64:                                                            jmp   .Lmatch_alternate_γ_7_s0
.Lmatch_defer_α_24_5:
.Lgcsite_.LTp2_63:      cmp              r14d, -2;                            je    n13_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n13_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_7_af
.Lmatch_defer_α_24_0:   sub              rsp, 32
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_24_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_24_51:  lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_24_2:   test             rax, rax;                            je    .Lmatch_defer_α_24_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_24_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_24_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_24_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_24_141
                        lea              rcx, [rip + .Lmatch_defer_α_24_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_24_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_24_42]
                        lea              rdx, [rip + .Lmatch_defer_α_24_43];  jmp   rax
.Lmatch_defer_α_24_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_24_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_24_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_24_44:
.Lgcsite_.LTp2_60:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_24_46
.Lmatch_defer_α_24_45:
.Lgcsite_.LTp2_59:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_24_47
.Lmatch_defer_α_24_42:
.Lgcsite_.LTp2_58:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_24_46
.Lmatch_defer_α_24_43:
.Lgcsite_.LTp2_57:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_24_47
.Lmatch_defer_α_24_141: lea              rcx, [rip + .Lmatch_defer_α_24_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_24_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_24_142]
                        lea              rdx, [rip + .Lmatch_defer_α_24_143]; jmp   rax
.Lmatch_defer_α_24_142:
.Lgcsite_.LTp2_56:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_24_46
.Lmatch_defer_α_24_143:
.Lgcsite_.LTp2_55:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_24_47
.Lmatch_defer_α_24_46:  mov              rcx, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_24_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_24_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_53:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_24_2
.Lmatch_defer_α_24_47:  mov              rsi, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_24_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_24_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_51:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_24_2
.Lmatch_defer_α_24_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_24_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_24_62:
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_24_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_24_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp2_48:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_24_2
.Lmatch_defer_α_24_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_24_48
.Lmatch_defer_α_24_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp2_47:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_24_3
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp2_46:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_24_3:  add              rsp, 144
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
.Lmatch_defer_α_24_49:  cmp              r14d, -2;                            je    n13_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n13_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_24_999
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_7_af
.Lmatch_defer_α_24_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_24_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_7_s0
.Lmatch_defer_α_24_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_7_af
n12_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_24_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_24_12
                                                                              jmp   rax
.Lmatch_defer_β_24_12:                                                        jmp   qword ptr [rsp]
                        .size            n12_match_defer_bx, .-n12_match_defer_bx
                        .type            n13_match_abort_bx, @function
n13_match_abort_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_match_abort_α:      mov              r14d, -2;                            jmp   .LTp2_ω
n13_match_abort_β:      mov              r14d, -2;                            jmp   .LTp2_ω
                        .size            n13_match_abort_bx, .-n13_match_abort_bx
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
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
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
                        sub              rsp, 136
                        xorps            xmm0, xmm0                           # GCANCHOR .Lgcmap_.LTp3 qword ptr [rbp + -128]
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
                        .type            n26_match_fence1_bx, @function
n26_match_fence1_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_match_fence1_α:     mov              qword ptr [rbp + -80], rsp
                        mov              qword ptr [rbp + -72], r12
                        mov              qword ptr [rbp + -64], 0
                        mov              dword ptr [rbp + -60], r14d
                        sub              rsp, 0;                              jmp   n27_match_alternate_α
.Lmatch_fence1_γ_26_as: add              rsp, 0
                        mov              rsp, qword ptr [rbp + -80];          jmp   .LTp3_γ
.Lmatch_fence1_γ_26_af:
.Lmatch_fence1_ω_26_af: add              rsp, 0
n26_match_fence1_β:     mov              r12, qword ptr [rbp + -72]
                        mov              r14d, dword ptr [rbp + -60];         jmp   .LTp3_ω
                        .size            n26_match_fence1_bx, .-n26_match_fence1_bx
                        .type            n27_match_alternate_bx, @function
n27_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_match_alternate_α:  mov              dword ptr [rbp + -112], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_35_21]
                        mov              qword ptr [rbp + -96], rax;          jmp   n30_match_defer_α
.Lmatch_alternate_α_35_21:
                        lea              rax, [rip + .Lmatch_alternate_α_35_19]
                        mov              qword ptr [rbp + -96], rax;          jmp   n28_match_any_α
.Lmatch_alternate_γ_27_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_35_40]
                        mov              qword ptr [rbp + -104], rax;         jmp   .Lmatch_alternate_γ_27_as
.Lmatch_alternate_γ_27_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_35_41]
                        mov              qword ptr [rbp + -104], rax;         jmp   .Lmatch_alternate_γ_27_as
.Lmatch_alternate_α_35_40:
                                                                              jmp   n30_match_defer_β
.Lmatch_alternate_α_35_41:
                                                                              jmp   n29_match_defer_β
.Lmatch_alternate_γ_27_as:
                                                                              jmp   .Lmatch_fence1_γ_26_as
n27_match_alternate_β:  mov              rax, qword ptr [rbp + -104];         jmp   rax
.Lmatch_alternate_γ_27_af:
.Lmatch_alternate_ω_27_af:
                        mov              r14d, dword ptr [rbp + -112]
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
.Lmatch_alternate_α_35_19:
                                                                              jmp   .Lmatch_fence1_ω_26_af
                        .size            n27_match_alternate_bx, .-n27_match_alternate_bx
                        .type            n28_match_any_bx, @function
n28_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_27_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .Lmatch_any_α_37_0
                        cmp              esi, 45;                             je    .Lmatch_any_α_37_0
                                                                              jmp   .Lmatch_alternate_ω_27_af
.Lmatch_any_α_37_0:     add              r14d, 1;                             jmp   n29_match_defer_α
n28_match_any_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_27_af
                        .size            n28_match_any_bx, .-n28_match_any_bx
                        .type            n29_match_defer_bx, @function
n29_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_match_defer_α:      sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11904]          # F
                        mov              rdx, qword ptr [r9 + 11912]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_38_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_38_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp3_22:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:103
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp3_21:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11912];         jmp   .Lmatch_defer_α_38_10
.Lmatch_defer_α_38_9:   xor              eax, eax
.Lmatch_defer_α_38_10:  test             rax, rax;                            jz    .Lmatch_defer_α_38_0
.Lmatch_defer_α_38_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_38_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_38_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_38_4:
.Lgcsite_.LTp3_20:                                                            jmp   .Lmatch_alternate_γ_27_s1
.Lmatch_defer_α_38_5:
.Lgcsite_.LTp3_19:      cmp              r14d, -2;                            je    n31_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n31_match_abort_β
                        add              rsp, 16;                             jmp   n28_match_any_β
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
.Lgcsite_.LTp3_18:      cmp              rax, -1;                             jne   .Lmatch_defer_vd_38_5
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_.LTp3_17:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_38_5:  push             rax
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
.Lgcsite_.LTp3_16:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp3_15:      add              rsp, 48
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
.Lgcsite_.LTp3_14:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_38_47
.Lmatch_defer_α_38_42:
.Lgcsite_.LTp3_13:      add              rsp, 16
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
.Lgcsite_.LTp3_12:      add              rsp, 16
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
.Lgcsite_.LTp3_11:      add              rsp, 0
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
.Lgcsite_.LTp3_10:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_38_47
.Lmatch_defer_α_38_46:  mov              rcx, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_38_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_38_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_8:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_38_2
.Lmatch_defer_α_38_47:  mov              rsi, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_38_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_38_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_6:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_38_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_38_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_3:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp3_2:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_38_4
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp3_1:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_38_4:  add              rsp, 144
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
.Lmatch_defer_α_38_49:  cmp              r14d, -2;                            je    n31_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n31_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_38_999
                        add              rsp, 16;                             jmp   n28_match_any_β
.Lmatch_defer_α_38_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_38_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_27_s1
.Lmatch_defer_α_38_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n28_match_any_β
n29_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_38_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_38_12
                                                                              jmp   rax
.Lmatch_defer_β_38_12:                                                        jmp   qword ptr [rsp]
                        .size            n29_match_defer_bx, .-n29_match_defer_bx
                        .type            n30_match_defer_bx, @function
n30_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_39_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_39_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_39_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_39_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_39_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_39_18
.Lmatch_defer_α_39_17:  mov              rdi, qword ptr [rbp + -24]           # hv
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
                        test             rax, rax;                            je    .Lmatch_defer_α_39_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_39_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_43:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_39_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_39_16:
.Lmatch_defer_α_39_18:  test             rax, rax;                            jz    .Lmatch_defer_α_39_0
.Lmatch_defer_α_39_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_39_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_39_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_39_4:
.Lgcsite_.LTp3_42:                                                            jmp   .Lmatch_alternate_γ_27_s0
.Lmatch_defer_α_39_5:
.Lgcsite_.LTp3_41:      cmp              r14d, -2;                            je    n31_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n31_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_27_af
.Lmatch_defer_α_39_0:   sub              rsp, 32
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_39_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_39_51:  lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_39_2:   test             rax, rax;                            je    .Lmatch_defer_α_39_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_39_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_39_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_39_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_39_141
                        lea              rcx, [rip + .Lmatch_defer_α_39_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_39_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_39_42]
                        lea              rdx, [rip + .Lmatch_defer_α_39_43];  jmp   rax
.Lmatch_defer_α_39_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_39_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_39_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_39_44:
.Lgcsite_.LTp3_38:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_39_46
.Lmatch_defer_α_39_45:
.Lgcsite_.LTp3_37:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_39_47
.Lmatch_defer_α_39_42:
.Lgcsite_.LTp3_36:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_39_46
.Lmatch_defer_α_39_43:
.Lgcsite_.LTp3_35:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_39_47
.Lmatch_defer_α_39_141: lea              rcx, [rip + .Lmatch_defer_α_39_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_39_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_39_142]
                        lea              rdx, [rip + .Lmatch_defer_α_39_143]; jmp   rax
.Lmatch_defer_α_39_142:
.Lgcsite_.LTp3_34:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_39_46
.Lmatch_defer_α_39_143:
.Lgcsite_.LTp3_33:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_39_47
.Lmatch_defer_α_39_46:  mov              rcx, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_39_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_39_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_31:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_39_2
.Lmatch_defer_α_39_47:  mov              rsi, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_39_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_39_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_29:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_39_2
.Lmatch_defer_α_39_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_39_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_39_62:
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_39_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_39_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_26:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_39_2
.Lmatch_defer_α_39_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_39_48
.Lmatch_defer_α_39_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp3_25:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_39_6
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp3_24:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_39_6:  add              rsp, 144
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
.Lmatch_defer_α_39_49:  cmp              r14d, -2;                            je    n31_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n31_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_39_999
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_27_af
.Lmatch_defer_α_39_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_39_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_27_s0
.Lmatch_defer_α_39_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_27_af
n30_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_39_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_39_12
                                                                              jmp   rax
.Lmatch_defer_β_39_12:                                                        jmp   qword ptr [rsp]
                        .size            n30_match_defer_bx, .-n30_match_defer_bx
                        .type            n31_match_abort_bx, @function
n31_match_abort_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_match_abort_α:      mov              r14d, -2;                            jmp   .LTp3_ω
n31_match_abort_β:      mov              r14d, -2;                            jmp   .LTp3_ω
                        .size            n31_match_abort_bx, .-n31_match_abort_bx
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
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
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
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_.LTp3_3:      .quad            45
                        .quad            .Lgcmap_.LTp3
                        .quad            9223389626893336584
                        .quad            .Lgccode_.LTp3_3
                        .quad            .Lgcsite_.LTp3_22-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_21-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_20-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_19-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_18-.Lgccode_.LTp3_3
                        .quad            196609
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
                        .quad            196610
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
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_31-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_30-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_29-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_28-.Lgccode_.LTp3_3
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_27-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_26-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_25-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_24-.Lgccode_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_23-.Lgccode_.LTp3_3
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
                        sub              rsp, 88
                        xorps            xmm0, xmm0                           # GCANCHOR .Lgcmap_.LTp4 qword ptr [rbp + -80]
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
                        test             rdi, rdi;                            je    .Lmatch_defer_α_46_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_46_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_46_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_46_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_46_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_46_18
.Lmatch_defer_α_46_17:  mov              rdi, qword ptr [rbp + -24]           # hv
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
                        test             rax, rax;                            je    .Lmatch_defer_α_46_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_46_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_20:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp4_19:                                                            jmp   n42_match_arbno_α
.Lmatch_defer_α_46_5:
.Lgcsite_.LTp4_18:      cmp              r14d, -2;                            je    n45_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n45_match_abort_β
                        add              rsp, 16;                             jmp   .LTp4_ω
.Lmatch_defer_α_46_0:   sub              rsp, 32
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_46_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_46_51:  lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_46_2:   test             rax, rax;                            je    .Lmatch_defer_α_46_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_46_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_46_61
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
.Lgcsite_.LTp4_15:      add              rsp, 48
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
.Lgcsite_.LTp4_14:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_46_47
.Lmatch_defer_α_46_42:
.Lgcsite_.LTp4_13:      add              rsp, 16
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
.Lgcsite_.LTp4_12:      add              rsp, 16
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
.Lgcsite_.LTp4_11:      add              rsp, 0
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
.Lgcsite_.LTp4_10:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_46_47
.Lmatch_defer_α_46_46:  mov              rcx, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_46_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_46_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_8:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_46_2
.Lmatch_defer_α_46_47:  mov              rsi, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_46_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_46_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_6:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_46_2
.Lmatch_defer_α_46_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_46_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_46_62:
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_46_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_46_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_3:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_46_2
.Lmatch_defer_α_46_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_46_48
.Lmatch_defer_α_46_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp4_2:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_46_7
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp4_1:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_46_7:  add              rsp, 144
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
.Lmatch_defer_α_46_49:  cmp              r14d, -2;                            je    n45_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n45_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_46_999
                        add              rsp, 16;                             jmp   .LTp4_ω
.Lmatch_defer_α_46_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_46_6]
                        push             rcx
                        push             rax;                                 jmp   n42_match_arbno_α
.Lmatch_defer_α_46_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .LTp4_ω
n41_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_46_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_46_12
                                                                              jmp   rax
.Lmatch_defer_β_46_12:                                                        jmp   qword ptr [rsp]
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
                        mov              qword ptr [rbp + -64], rsp;          jmp   .LTp4_γ
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
                        mov              qword ptr [rbp + -64], rsp;          jmp   .LTp4_γ
.Lmatch_arbno_γ_42_af:
.Lmatch_arbno_ω_42_af:  mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -64], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_48_3
                        add              rsp, 32;                             jmp   n44_match_defer_β
.Lmatch_arbno_β_48_3:   add              rsp, 32;                             jmp   n41_match_defer_β
                        .size            n42_match_arbno_bx, .-n42_match_arbno_bx
                        .type            n43_match_any_bx, @function
n43_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_arbno_ω_42_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 42;                             je    .Lmatch_any_α_50_0
                        cmp              esi, 47;                             je    .Lmatch_any_α_50_0
                                                                              jmp   .Lmatch_arbno_ω_42_af
.Lmatch_any_α_50_0:     add              r14d, 1;                             jmp   n44_match_defer_α
n43_match_any_β:        sub              r14d, 1;                             jmp   .Lmatch_arbno_ω_42_af
                        .size            n43_match_any_bx, .-n43_match_any_bx
                        .type            n44_match_defer_bx, @function
n44_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_51_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_51_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_51_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_51_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_51_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_51_18
.Lmatch_defer_α_51_17:  mov              rdi, qword ptr [rbp + -24]           # hv
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
                        test             rax, rax;                            je    .Lmatch_defer_α_51_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_51_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_42:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp4_41:                                                            jmp   .Lmatch_arbno_γ_42_as
.Lmatch_defer_α_51_5:
.Lgcsite_.LTp4_40:      cmp              r14d, -2;                            je    n45_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n45_match_abort_β
                        add              rsp, 16;                             jmp   n43_match_any_β
.Lmatch_defer_α_51_0:   sub              rsp, 32
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_51_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_51_51:  lea              rdi, [rsp + 0]
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
.Lgcsite_.LTp4_37:      add              rsp, 48
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
.Lgcsite_.LTp4_36:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_51_47
.Lmatch_defer_α_51_42:
.Lgcsite_.LTp4_35:      add              rsp, 16
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
.Lgcsite_.LTp4_34:      add              rsp, 16
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
.Lgcsite_.LTp4_33:      add              rsp, 0
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
.Lgcsite_.LTp4_32:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_51_47
.Lmatch_defer_α_51_46:  mov              rcx, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_51_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_51_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_30:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_51_2
.Lmatch_defer_α_51_47:  mov              rsi, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_51_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_51_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_28:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_51_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_51_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_25:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp4_24:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_51_8
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp4_23:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_51_8:  add              rsp, 144
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
.Lmatch_defer_α_51_49:  cmp              r14d, -2;                            je    n45_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n45_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_51_999
                        add              rsp, 16;                             jmp   n43_match_any_β
.Lmatch_defer_α_51_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_51_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_arbno_γ_42_as
.Lmatch_defer_α_51_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n43_match_any_β
n44_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_51_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_51_12
                                                                              jmp   rax
.Lmatch_defer_β_51_12:                                                        jmp   qword ptr [rsp]
                        .size            n44_match_defer_bx, .-n44_match_defer_bx
                        .type            n45_match_abort_bx, @function
n45_match_abort_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_match_abort_α:      mov              r14d, -2;                            jmp   .LTp4_ω
n45_match_abort_β:      mov              r14d, -2;                            jmp   .LTp4_ω
                        .size            n45_match_abort_bx, .-n45_match_abort_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp4_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp4_β:
                                                                              jmp   n42_match_arbno_β
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
                        sub              rsp, 88
                        xorps            xmm0, xmm0                           # GCANCHOR .Lgcmap_.LTp5 qword ptr [rbp + -80]
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -32], 8
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -40], r12
                        .type            n53_match_defer_bx, @function
n53_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_58_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_58_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_58_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_58_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_58_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_58_18
.Lmatch_defer_α_58_17:  mov              rdi, qword ptr [rbp + -24]           # hv
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
                        test             rax, rax;                            je    .Lmatch_defer_α_58_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_58_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_20:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_58_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_58_16:
.Lmatch_defer_α_58_18:  test             rax, rax;                            jz    .Lmatch_defer_α_58_0
.Lmatch_defer_α_58_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_58_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_58_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_58_4:
.Lgcsite_.LTp5_19:                                                            jmp   n54_match_arbno_α
.Lmatch_defer_α_58_5:
.Lgcsite_.LTp5_18:      cmp              r14d, -2;                            je    n57_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n57_match_abort_β
                        add              rsp, 16;                             jmp   .LTp5_ω
.Lmatch_defer_α_58_0:   sub              rsp, 32
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_58_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_58_51:  lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_58_2:   test             rax, rax;                            je    .Lmatch_defer_α_58_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_58_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_58_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_58_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_58_141
                        lea              rcx, [rip + .Lmatch_defer_α_58_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_58_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_58_42]
                        lea              rdx, [rip + .Lmatch_defer_α_58_43];  jmp   rax
.Lmatch_defer_α_58_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_58_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_58_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_58_44:
.Lgcsite_.LTp5_15:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_58_46
.Lmatch_defer_α_58_45:
.Lgcsite_.LTp5_14:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_58_47
.Lmatch_defer_α_58_42:
.Lgcsite_.LTp5_13:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_58_46
.Lmatch_defer_α_58_43:
.Lgcsite_.LTp5_12:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_58_47
.Lmatch_defer_α_58_141: lea              rcx, [rip + .Lmatch_defer_α_58_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_58_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_58_142]
                        lea              rdx, [rip + .Lmatch_defer_α_58_143]; jmp   rax
.Lmatch_defer_α_58_142:
.Lgcsite_.LTp5_11:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_58_46
.Lmatch_defer_α_58_143:
.Lgcsite_.LTp5_10:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_58_47
.Lmatch_defer_α_58_46:  mov              rcx, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_58_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_58_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_8:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_58_2
.Lmatch_defer_α_58_47:  mov              rsi, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_58_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_58_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_6:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_58_2
.Lmatch_defer_α_58_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_58_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_58_62:
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_58_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_58_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_3:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_58_2
.Lmatch_defer_α_58_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_58_48
.Lmatch_defer_α_58_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp5_2:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_58_9
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp5_1:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_58_9:  add              rsp, 144
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
.Lmatch_defer_α_58_49:  cmp              r14d, -2;                            je    n57_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n57_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_58_999
                        add              rsp, 16;                             jmp   .LTp5_ω
.Lmatch_defer_α_58_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_58_6]
                        push             rcx
                        push             rax;                                 jmp   n54_match_arbno_α
.Lmatch_defer_α_58_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .LTp5_ω
n53_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_58_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_58_12
                                                                              jmp   rax
.Lmatch_defer_β_58_12:                                                        jmp   qword ptr [rsp]
                        .size            n53_match_defer_bx, .-n53_match_defer_bx
                        .type            n54_match_arbno_bx, @function
n54_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_match_arbno_α:      sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -64], rsp;          jmp   .LTp5_γ
n54_match_arbno_β:      mov              rax, qword ptr [rbp + -64]
                        mov              r12, qword ptr [rax + 8];            jmp   n55_match_any_α
.Lmatch_arbno_γ_54_as:  mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n56_match_defer_β
                        sub              rsp, 32
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rbp + -64], rsp;          jmp   .LTp5_γ
.Lmatch_arbno_γ_54_af:
.Lmatch_arbno_ω_54_af:  mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -64], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_60_3
                        add              rsp, 32;                             jmp   n56_match_defer_β
.Lmatch_arbno_β_60_3:   add              rsp, 32;                             jmp   n53_match_defer_β
                        .size            n54_match_arbno_bx, .-n54_match_arbno_bx
                        .type            n55_match_any_bx, @function
n55_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_arbno_ω_54_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .Lmatch_any_α_62_0
                        cmp              esi, 45;                             je    .Lmatch_any_α_62_0
                                                                              jmp   .Lmatch_arbno_ω_54_af
.Lmatch_any_α_62_0:     add              r14d, 1;                             jmp   n56_match_defer_α
n55_match_any_β:        sub              r14d, 1;                             jmp   .Lmatch_arbno_ω_54_af
                        .size            n55_match_any_bx, .-n55_match_any_bx
                        .type            n56_match_defer_bx, @function
n56_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_63_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_63_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_63_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_63_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_63_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_63_18
.Lmatch_defer_α_63_17:  mov              rdi, qword ptr [rbp + -24]           # hv
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
                        test             rax, rax;                            je    .Lmatch_defer_α_63_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_63_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_42:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_63_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_63_16:
.Lmatch_defer_α_63_18:  test             rax, rax;                            jz    .Lmatch_defer_α_63_0
.Lmatch_defer_α_63_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_63_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_63_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_63_4:
.Lgcsite_.LTp5_41:                                                            jmp   .Lmatch_arbno_γ_54_as
.Lmatch_defer_α_63_5:
.Lgcsite_.LTp5_40:      cmp              r14d, -2;                            je    n57_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n57_match_abort_β
                        add              rsp, 16;                             jmp   n55_match_any_β
.Lmatch_defer_α_63_0:   sub              rsp, 32
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_63_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_63_51:  lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_63_2:   test             rax, rax;                            je    .Lmatch_defer_α_63_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_63_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_63_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_63_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_63_141
                        lea              rcx, [rip + .Lmatch_defer_α_63_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_63_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_63_42]
                        lea              rdx, [rip + .Lmatch_defer_α_63_43];  jmp   rax
.Lmatch_defer_α_63_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_63_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_63_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_63_44:
.Lgcsite_.LTp5_37:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_63_46
.Lmatch_defer_α_63_45:
.Lgcsite_.LTp5_36:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_63_47
.Lmatch_defer_α_63_42:
.Lgcsite_.LTp5_35:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_63_46
.Lmatch_defer_α_63_43:
.Lgcsite_.LTp5_34:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_63_47
.Lmatch_defer_α_63_141: lea              rcx, [rip + .Lmatch_defer_α_63_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_63_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_63_142]
                        lea              rdx, [rip + .Lmatch_defer_α_63_143]; jmp   rax
.Lmatch_defer_α_63_142:
.Lgcsite_.LTp5_33:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_63_46
.Lmatch_defer_α_63_143:
.Lgcsite_.LTp5_32:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_63_47
.Lmatch_defer_α_63_46:  mov              rcx, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_63_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_63_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_30:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_63_2
.Lmatch_defer_α_63_47:  mov              rsi, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_63_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_63_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_28:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_63_2
.Lmatch_defer_α_63_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_63_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_63_62:
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_63_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_63_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_25:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_63_2
.Lmatch_defer_α_63_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_63_48
.Lmatch_defer_α_63_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp5_24:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_63_10
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp5_23:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_63_10: add              rsp, 144
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
.Lmatch_defer_α_63_49:  cmp              r14d, -2;                            je    n57_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n57_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_63_999
                        add              rsp, 16;                             jmp   n55_match_any_β
.Lmatch_defer_α_63_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_63_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_arbno_γ_54_as
.Lmatch_defer_α_63_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n55_match_any_β
n56_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_63_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_63_12
                                                                              jmp   rax
.Lmatch_defer_β_63_12:                                                        jmp   qword ptr [rsp]
                        .size            n56_match_defer_bx, .-n56_match_defer_bx
                        .type            n57_match_abort_bx, @function
n57_match_abort_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_match_abort_α:      mov              r14d, -2;                            jmp   .LTp5_ω
n57_match_abort_β:      mov              r14d, -2;                            jmp   .LTp5_ω
                        .size            n57_match_abort_bx, .-n57_match_abort_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp5_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp5_β:
                                                                              jmp   n54_match_arbno_β
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
                        .type            n65_match_pos_bx, @function
n65_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_match_pos_α:        mov              rax, 0
                        cmp              r14d, eax;                           jne   .LTp6_ω
                                                                              jmp   n66_match_arbno_α
n65_match_pos_β:                                                              jmp   .LTp6_ω
                        .size            n65_match_pos_bx, .-n65_match_pos_bx
                        .type            n66_match_arbno_bx, @function
n66_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_match_arbno_α:      sub              rsp, 48
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -64], rsp;          jmp   n67_match_rpos_α
n66_match_arbno_β:      mov              rax, qword ptr [rbp + -64]
                        mov              r12, qword ptr [rax + 8];            jmp   n68_match_defer_α
.Lmatch_arbno_γ_66_as:  mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n69_match_defer_β
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
                        mov              qword ptr [rbp + -64], rsp;          jmp   n67_match_rpos_α
.Lmatch_arbno_γ_66_af:
.Lmatch_arbno_ω_66_af:  mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -64], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_73_3
                        mov              rax, qword ptr [rcx + 32]
                        mov              qword ptr [rbp + -80], rax
                        mov              rax, qword ptr [rcx + 40]
                        mov              qword ptr [rbp + -72], rax
                        add              rsp, 48;                             jmp   n69_match_defer_β
.Lmatch_arbno_β_73_3:   add              rsp, 48;                             jmp   n65_match_pos_β
                        .size            n66_match_arbno_bx, .-n66_match_arbno_bx
                        .type            n67_match_rpos_bx, @function
n67_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_match_rpos_α:       mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n66_match_arbno_β
                                                                              jmp   .LTp6_γ
n67_match_rpos_β:                                                             jmp   n66_match_arbno_β
                        .size            n67_match_rpos_bx, .-n67_match_rpos_bx
                        .type            n68_match_defer_bx, @function
n68_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_75_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_75_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_75_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_75_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_75_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_75_18
.Lmatch_defer_α_75_17:  mov              rdi, qword ptr [rbp + -24]           # hv
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
                        test             rax, rax;                            je    .Lmatch_defer_α_75_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_75_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_20:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_75_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_75_16:
.Lmatch_defer_α_75_18:  test             rax, rax;                            jz    .Lmatch_defer_α_75_0
.Lmatch_defer_α_75_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_75_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_75_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_75_4:
.Lgcsite_.LTp6_19:                                                            jmp   n69_match_defer_α
.Lmatch_defer_α_75_5:
.Lgcsite_.LTp6_18:      cmp              r14d, -2;                            je    n70_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n70_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_arbno_ω_66_af
.Lmatch_defer_α_75_0:   sub              rsp, 32
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_75_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_75_51:  lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_75_2:   test             rax, rax;                            je    .Lmatch_defer_α_75_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_75_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_75_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_75_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_75_141
                        lea              rcx, [rip + .Lmatch_defer_α_75_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_75_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_75_42]
                        lea              rdx, [rip + .Lmatch_defer_α_75_43];  jmp   rax
.Lmatch_defer_α_75_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_75_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_75_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_75_44:
.Lgcsite_.LTp6_15:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_75_46
.Lmatch_defer_α_75_45:
.Lgcsite_.LTp6_14:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_75_47
.Lmatch_defer_α_75_42:
.Lgcsite_.LTp6_13:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_75_46
.Lmatch_defer_α_75_43:
.Lgcsite_.LTp6_12:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_75_47
.Lmatch_defer_α_75_141: lea              rcx, [rip + .Lmatch_defer_α_75_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_75_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_75_142]
                        lea              rdx, [rip + .Lmatch_defer_α_75_143]; jmp   rax
.Lmatch_defer_α_75_142:
.Lgcsite_.LTp6_11:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_75_46
.Lmatch_defer_α_75_143:
.Lgcsite_.LTp6_10:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_75_47
.Lmatch_defer_α_75_46:  mov              rcx, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_75_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_75_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_8:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_75_2
.Lmatch_defer_α_75_47:  mov              rsi, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_75_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_75_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_6:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_75_2
.Lmatch_defer_α_75_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_75_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_75_62:
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_75_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_75_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_3:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_75_2
.Lmatch_defer_α_75_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_75_48
.Lmatch_defer_α_75_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp6_2:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_75_11
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp6_1:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_75_11: add              rsp, 144
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
.Lmatch_defer_α_75_49:  cmp              r14d, -2;                            je    n70_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n70_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_75_999
                        add              rsp, 16;                             jmp   .Lmatch_arbno_ω_66_af
.Lmatch_defer_α_75_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_75_6]
                        push             rcx
                        push             rax;                                 jmp   n69_match_defer_α
.Lmatch_defer_α_75_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_arbno_ω_66_af
n68_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_75_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_75_12
                                                                              jmp   rax
.Lmatch_defer_β_75_12:                                                        jmp   qword ptr [rsp]
                        .size            n68_match_defer_bx, .-n68_match_defer_bx
                        .type            n69_match_defer_bx, @function
n69_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_76_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_76_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_76_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_76_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_76_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_76_18
.Lmatch_defer_α_76_17:  mov              rdi, qword ptr [rbp + -24]           # hv
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
                        test             rax, rax;                            je    .Lmatch_defer_α_76_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_76_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_42:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_76_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_76_16:
.Lmatch_defer_α_76_18:  test             rax, rax;                            jz    .Lmatch_defer_α_76_0
.Lmatch_defer_α_76_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_76_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_76_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_76_4:
.Lgcsite_.LTp6_41:                                                            jmp   .Lmatch_arbno_γ_66_as
.Lmatch_defer_α_76_5:
.Lgcsite_.LTp6_40:      cmp              r14d, -2;                            je    n70_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n70_match_abort_β
                        add              rsp, 16;                             jmp   n68_match_defer_β
.Lmatch_defer_α_76_0:   sub              rsp, 32
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_76_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_76_51:  lea              rdi, [rsp + 0]
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
.Lgcsite_.LTp6_37:      add              rsp, 48
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
.Lgcsite_.LTp6_36:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_76_47
.Lmatch_defer_α_76_42:
.Lgcsite_.LTp6_35:      add              rsp, 16
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
.Lgcsite_.LTp6_34:      add              rsp, 16
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
.Lgcsite_.LTp6_33:      add              rsp, 0
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
.Lgcsite_.LTp6_32:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_76_47
.Lmatch_defer_α_76_46:  mov              rcx, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_76_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_76_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_30:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_76_2
.Lmatch_defer_α_76_47:  mov              rsi, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_76_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_76_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_28:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_76_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_76_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_25:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp6_24:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_76_12
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp6_23:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_76_12: add              rsp, 144
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
.Lmatch_defer_α_76_49:  cmp              r14d, -2;                            je    n70_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n70_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_76_999
                        add              rsp, 16;                             jmp   n68_match_defer_β
.Lmatch_defer_α_76_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_76_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_arbno_γ_66_as
.Lmatch_defer_α_76_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n68_match_defer_β
n69_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_76_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_76_12
                                                                              jmp   rax
.Lmatch_defer_β_76_12:                                                        jmp   qword ptr [rsp]
                        .size            n69_match_defer_bx, .-n69_match_defer_bx
                        .type            n70_match_abort_bx, @function
n70_match_abort_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_match_abort_α:      mov              r14d, -2;                            jmp   .LTp6_ω
n70_match_abort_β:      mov              r14d, -2;                            jmp   .LTp6_ω
                        .size            n70_match_abort_bx, .-n70_match_abort_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp6_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp6_β:
                                                                              jmp   n67_match_rpos_β
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
                        .quad            .Lgcsite_.LTp6_43-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_42-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_41-.Lgccode_.LTp6_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_40-.Lgccode_.LTp6_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_39-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_38-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_37-.Lgccode_.LTp6_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_36-.Lgccode_.LTp6_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_35-.Lgccode_.LTp6_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_34-.Lgccode_.LTp6_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_33-.Lgccode_.LTp6_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_32-.Lgccode_.LTp6_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_31-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_30-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_29-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_28-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_27-.Lgccode_.LTp6_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_26-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_25-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_24-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_23-.Lgccode_.LTp6_6
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_22-.Lgccode_.LTp6_6
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
                        mov              eax, 0                               # GCANCHOR .Lgcmap_main qword ptr [rsp$ + 8]
main_α_body:
                        sub              rsp, 0
                        .type            n78_call_direct_bx, @function
n78_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_call_direct_α:      sub              rsp, 16
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
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_197_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n79_call_direct_α
.Lcall_direct_α_197_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_call_direct_α
n78_call_direct_β:      add              rsp, 16
                        add              rsp, -16;                            jmp   n79_call_direct_α
                        .size            n78_call_direct_bx, .-n78_call_direct_bx
                        .type            n79_call_direct_bx, @function
n79_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_call_direct_α:      sub              rsp, 16
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
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_198_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n80_statement_begin_α
.Lcall_direct_α_198_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n80_statement_begin_α
n79_call_direct_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n80_statement_begin_α
                        .size            n79_call_direct_bx, .-n79_call_direct_bx
                        .type            n80_statement_begin_bx, @function
n80_statement_begin_bx:
                        .pushsection     .rodata
.Lstnof1:               .string          "snobol4/calculator/calculator-2-match-fence.sno"
                        .popsection
.Lstatement_begin_α_199_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_199_stno
                        .long            1
                        .long            1
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         V              =  ANY('abcdefghijklmnopqrstuvwxyz')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n80_statement_begin_α:                                                        jmp   n81_lit_string_α
n80_statement_begin_β:                                                        jmp   n85_setexit_test_α
                        .size            n80_statement_begin_bx, .-n80_statement_begin_bx
                        .type            n81_lit_string_bx, @function
n81_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_201_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_call_direct_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_201_0: .quad .Lthk_.LTp0; .popsection
                        .size            n81_lit_string_bx, .-n81_lit_string_bx
                        .type            n82_call_direct_bx, @function
n82_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_call_direct_α:      sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_202_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n80_statement_begin_β
.Lcall_direct_α_202_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n83_assign_α
n82_call_direct_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n80_statement_begin_β
                        .size            n82_call_direct_bx, .-n82_call_direct_bx
                        .type            n83_assign_bx, @function
n83_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11856], rax          # V
                        mov              qword ptr [r9 + 11864], rdx;         jmp   n84_statement_end_α
                        .size            n83_assign_bx, .-n83_assign_bx
                        .type            n84_statement_end_bx, @function
n84_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_end_α:    add              rsp, 32;                             jmp   n86_statement_begin_α
                        .size            n84_statement_end_bx, .-n84_statement_end_bx
                        .type            n85_setexit_test_bx, @function
n85_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_206_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_206_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_206_61:
.Lsetexit_test_α_206_1:                                                       jmp   n86_statement_begin_α
                        .size            n85_setexit_test_bx, .-n85_setexit_test_bx
                        .type            n86_statement_begin_bx, @function
n86_statement_begin_bx:
.Lstatement_begin_α_207_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_207_stno
                        .long            2
                        .long            2
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         I              =  SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n86_statement_begin_α:                                                        jmp   n87_lit_string_α
n86_statement_begin_β:                                                        jmp   n91_setexit_test_α
                        .size            n86_statement_begin_bx, .-n86_statement_begin_bx
                        .type            n87_lit_string_bx, @function
n87_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_209_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n88_call_direct_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_209_0: .quad .Lthk_.LTp1; .popsection
                        .size            n87_lit_string_bx, .-n87_lit_string_bx
                        .type            n88_call_direct_bx, @function
n88_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_call_direct_α:      sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_210_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n86_statement_begin_β
.Lcall_direct_α_210_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_assign_α
n88_call_direct_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n86_statement_begin_β
                        .size            n88_call_direct_bx, .-n88_call_direct_bx
                        .type            n89_assign_bx, @function
n89_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11872], rax          # I
                        mov              qword ptr [r9 + 11880], rdx;         jmp   n90_statement_end_α
                        .size            n89_assign_bx, .-n89_assign_bx
                        .type            n90_statement_end_bx, @function
n90_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_end_α:    add              rsp, 32;                             jmp   n92_statement_begin_α
                        .size            n90_statement_end_bx, .-n90_statement_end_bx
                        .type            n91_setexit_test_bx, @function
n91_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_214_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_214_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_214_61:
.Lsetexit_test_α_214_1:                                                       jmp   n92_statement_begin_α
                        .size            n91_setexit_test_bx, .-n91_setexit_test_bx
                        .type            n92_statement_begin_bx, @function
n92_statement_begin_bx:
.Lstatement_begin_α_215_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_215_stno
                        .long            3
                        .long            3
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         A              =  FENCE(V | I | '(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n92_statement_begin_α:                                                        jmp   n93_lit_string_α
n92_statement_begin_β:                                                        jmp   n103_setexit_test_α
                        .size            n92_statement_begin_bx, .-n92_statement_begin_bx
                        .type            n93_lit_string_bx, @function
n93_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_217_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n94_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_217_0: .quad .Lthk_.LTp2; .popsection
                        .size            n93_lit_string_bx, .-n93_lit_string_bx
                        .type            n94_var_bx, @function
n94_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11856]          # V
                        mov              rdx, qword ptr [r9 + 11864]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n95_lit_integer_α
n94_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n92_statement_begin_β
                        .size            n94_var_bx, .-n94_var_bx
                        .type            n95_lit_integer_bx, @function
n95_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_219_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n96_call_direct_α
n95_lit_integer_β:      add              rsp, 16;                             jmp   n94_var_β
.Llit_integer_α_219_0:  .quad            6
                        .size            n95_lit_integer_bx, .-n95_lit_integer_bx
                        .type            n96_call_direct_bx, @function
n96_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_call_direct_α:      sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_220_999
                        add              rsp, 16;                             jmp   n95_lit_integer_β
.Lcall_direct_α_220_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_var_α
n96_call_direct_β:      add              rsp, 16;                             jmp   n95_lit_integer_β
                        .size            n96_call_direct_bx, .-n96_call_direct_bx
                        .type            n97_var_bx, @function
n97_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11872]          # I
                        mov              rdx, qword ptr [r9 + 11880]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_lit_integer_α
n97_var_β:              add              rsp, 32;                             jmp   n95_lit_integer_β
                        .size            n97_var_bx, .-n97_var_bx
                        .type            n98_lit_integer_bx, @function
n98_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_222_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n99_call_direct_α
n98_lit_integer_β:      add              rsp, 16;                             jmp   n97_var_β
.Llit_integer_α_222_0:  .quad            6
                        .size            n98_lit_integer_bx, .-n98_lit_integer_bx
                        .type            n99_call_direct_bx, @function
n99_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_call_direct_α:      sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_223_999
                        add              rsp, 16;                             jmp   n98_lit_integer_β
.Lcall_direct_α_223_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_call_direct_α
n99_call_direct_β:      add              rsp, 16;                             jmp   n98_lit_integer_β
                        .size            n99_call_direct_bx, .-n99_call_direct_bx
                        .type            n100_call_direct_bx, @function
n100_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_call_direct_α:     sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_224_999
                        add              rsp, 32;                             jmp   n98_lit_integer_β
.Lcall_direct_α_224_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_assign_α
n100_call_direct_β:     add              rsp, 32;                             jmp   n98_lit_integer_β
                        .size            n100_call_direct_bx, .-n100_call_direct_bx
                        .type            n101_assign_bx, @function
n101_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11888], rax          # A
                        mov              qword ptr [r9 + 11896], rdx;         jmp   n102_statement_end_α
                        .size            n101_assign_bx, .-n101_assign_bx
                        .type            n102_statement_end_bx, @function
n102_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:   add              rsp, 128;                            jmp   n104_statement_begin_α
                        .size            n102_statement_end_bx, .-n102_statement_end_bx
                        .type            n103_setexit_test_bx, @function
n103_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_228_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_228_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_228_61:
.Lsetexit_test_α_228_1:                                                       jmp   n104_statement_begin_α
                        .size            n103_setexit_test_bx, .-n103_setexit_test_bx
                        .type            n104_statement_begin_bx, @function
n104_statement_begin_bx:
.Lstatement_begin_α_229_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_229_stno
                        .long            4
                        .long            4
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         F              =  FENCE(A | ANY('+-') *F)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n104_statement_begin_α:                                                       jmp   n105_lit_string_α
n104_statement_begin_β:                                                       jmp   n112_setexit_test_α
                        .size            n104_statement_begin_bx, .-n104_statement_begin_bx
                        .type            n105_lit_string_bx, @function
n105_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_231_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n106_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_231_0: .quad .Lthk_.LTp3; .popsection
                        .size            n105_lit_string_bx, .-n105_lit_string_bx
                        .type            n106_var_bx, @function
n106_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11888]          # A
                        mov              rdx, qword ptr [r9 + 11896]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_lit_integer_α
n106_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n104_statement_begin_β
                        .size            n106_var_bx, .-n106_var_bx
                        .type            n107_lit_integer_bx, @function
n107_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_233_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_call_direct_α
n107_lit_integer_β:     add              rsp, 16;                             jmp   n106_var_β
.Llit_integer_α_233_0:  .quad            6
                        .size            n107_lit_integer_bx, .-n107_lit_integer_bx
                        .type            n108_call_direct_bx, @function
n108_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_call_direct_α:     sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_234_999
                        add              rsp, 16;                             jmp   n107_lit_integer_β
.Lcall_direct_α_234_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_call_direct_α
n108_call_direct_β:     add              rsp, 16;                             jmp   n107_lit_integer_β
                        .size            n108_call_direct_bx, .-n108_call_direct_bx
                        .type            n109_call_direct_bx, @function
n109_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_call_direct_α:     sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_235_999
                        add              rsp, 32;                             jmp   n107_lit_integer_β
.Lcall_direct_α_235_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n110_assign_α
n109_call_direct_β:     add              rsp, 32;                             jmp   n107_lit_integer_β
                        .size            n109_call_direct_bx, .-n109_call_direct_bx
                        .type            n110_assign_bx, @function
n110_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11904], rax          # F
                        mov              qword ptr [r9 + 11912], rdx;         jmp   n111_statement_end_α
                        .size            n110_assign_bx, .-n110_assign_bx
                        .type            n111_statement_end_bx, @function
n111_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_end_α:   add              rsp, 80;                             jmp   n113_statement_begin_α
                        .size            n111_statement_end_bx, .-n111_statement_end_bx
                        .type            n112_setexit_test_bx, @function
n112_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_239_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_239_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_239_61:
.Lsetexit_test_α_239_1:                                                       jmp   n113_statement_begin_α
                        .size            n112_setexit_test_bx, .-n112_setexit_test_bx
                        .type            n113_statement_begin_bx, @function
n113_statement_begin_bx:
.Lstatement_begin_α_240_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_240_stno
                        .long            5
                        .long            5
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         T              =  F ARBNO(ANY('*/') F)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n113_statement_begin_α:                                                       jmp   n114_lit_string_α
n113_statement_begin_β:                                                       jmp   n124_setexit_test_α
                        .size            n113_statement_begin_bx, .-n113_statement_begin_bx
                        .type            n114_lit_string_bx, @function
n114_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_242_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n115_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_242_0: .quad .Lthk_.LTp4; .popsection
                        .size            n114_lit_string_bx, .-n114_lit_string_bx
                        .type            n115_var_bx, @function
n115_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11904]          # F
                        mov              rdx, qword ptr [r9 + 11912]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n116_lit_integer_α
n115_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n113_statement_begin_β
                        .size            n115_var_bx, .-n115_var_bx
                        .type            n116_lit_integer_bx, @function
n116_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_244_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n117_call_direct_α
n116_lit_integer_β:     add              rsp, 16;                             jmp   n115_var_β
.Llit_integer_α_244_0:  .quad            8
                        .size            n116_lit_integer_bx, .-n116_lit_integer_bx
                        .type            n117_call_direct_bx, @function
n117_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_call_direct_α:     sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_245_999
                        add              rsp, 16;                             jmp   n116_lit_integer_β
.Lcall_direct_α_245_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_var_α
n117_call_direct_β:     add              rsp, 16;                             jmp   n116_lit_integer_β
                        .size            n117_call_direct_bx, .-n117_call_direct_bx
                        .type            n118_var_bx, @function
n118_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11904]          # F
                        mov              rdx, qword ptr [r9 + 11912]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_lit_integer_α
n118_var_β:             add              rsp, 32;                             jmp   n116_lit_integer_β
                        .size            n118_var_bx, .-n118_var_bx
                        .type            n119_lit_integer_bx, @function
n119_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_247_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_call_direct_α
n119_lit_integer_β:     add              rsp, 16;                             jmp   n118_var_β
.Llit_integer_α_247_0:  .quad            9
                        .size            n119_lit_integer_bx, .-n119_lit_integer_bx
                        .type            n120_call_direct_bx, @function
n120_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_call_direct_α:     sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_248_999
                        add              rsp, 16;                             jmp   n119_lit_integer_β
.Lcall_direct_α_248_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n121_call_direct_α
n120_call_direct_β:     add              rsp, 16;                             jmp   n119_lit_integer_β
                        .size            n120_call_direct_bx, .-n120_call_direct_bx
                        .type            n121_call_direct_bx, @function
n121_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_call_direct_α:     sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_249_999
                        add              rsp, 32;                             jmp   n119_lit_integer_β
.Lcall_direct_α_249_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_assign_α
n121_call_direct_β:     add              rsp, 32;                             jmp   n119_lit_integer_β
                        .size            n121_call_direct_bx, .-n121_call_direct_bx
                        .type            n122_assign_bx, @function
n122_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11920], rax          # T
                        mov              qword ptr [r9 + 11928], rdx;         jmp   n123_statement_end_α
                        .size            n122_assign_bx, .-n122_assign_bx
                        .type            n123_statement_end_bx, @function
n123_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_end_α:   add              rsp, 128;                            jmp   n125_statement_begin_α
                        .size            n123_statement_end_bx, .-n123_statement_end_bx
                        .type            n124_setexit_test_bx, @function
n124_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_253_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_253_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_253_61:
.Lsetexit_test_α_253_1:                                                       jmp   n125_statement_begin_α
                        .size            n124_setexit_test_bx, .-n124_setexit_test_bx
                        .type            n125_statement_begin_bx, @function
n125_statement_begin_bx:
.Lstatement_begin_α_254_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_254_stno
                        .long            6
                        .long            6
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         X              =  T ARBNO(ANY('+-') T)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n125_statement_begin_α:                                                       jmp   n126_lit_string_α
n125_statement_begin_β:                                                       jmp   n136_setexit_test_α
                        .size            n125_statement_begin_bx, .-n125_statement_begin_bx
                        .type            n126_lit_string_bx, @function
n126_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_256_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_256_0: .quad .Lthk_.LTp5; .popsection
                        .size            n126_lit_string_bx, .-n126_lit_string_bx
                        .type            n127_var_bx, @function
n127_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # T
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n128_lit_integer_α
n127_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n125_statement_begin_β
                        .size            n127_var_bx, .-n127_var_bx
                        .type            n128_lit_integer_bx, @function
n128_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_258_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_call_direct_α
n128_lit_integer_β:     add              rsp, 16;                             jmp   n127_var_β
.Llit_integer_α_258_0:  .quad            8
                        .size            n128_lit_integer_bx, .-n128_lit_integer_bx
                        .type            n129_call_direct_bx, @function
n129_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_call_direct_α:     sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_259_999
                        add              rsp, 16;                             jmp   n128_lit_integer_β
.Lcall_direct_α_259_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n130_var_α
n129_call_direct_β:     add              rsp, 16;                             jmp   n128_lit_integer_β
                        .size            n129_call_direct_bx, .-n129_call_direct_bx
                        .type            n130_var_bx, @function
n130_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # T
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n131_lit_integer_α
n130_var_β:             add              rsp, 32;                             jmp   n128_lit_integer_β
                        .size            n130_var_bx, .-n130_var_bx
                        .type            n131_lit_integer_bx, @function
n131_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_261_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n132_call_direct_α
n131_lit_integer_β:     add              rsp, 16;                             jmp   n130_var_β
.Llit_integer_α_261_0:  .quad            9
                        .size            n131_lit_integer_bx, .-n131_lit_integer_bx
                        .type            n132_call_direct_bx, @function
n132_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_call_direct_α:     sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_262_999
                        add              rsp, 16;                             jmp   n131_lit_integer_β
.Lcall_direct_α_262_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_call_direct_α
n132_call_direct_β:     add              rsp, 16;                             jmp   n131_lit_integer_β
                        .size            n132_call_direct_bx, .-n132_call_direct_bx
                        .type            n133_call_direct_bx, @function
n133_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_call_direct_α:     sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_263_999
                        add              rsp, 32;                             jmp   n131_lit_integer_β
.Lcall_direct_α_263_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n134_assign_α
n133_call_direct_β:     add              rsp, 32;                             jmp   n131_lit_integer_β
                        .size            n133_call_direct_bx, .-n133_call_direct_bx
                        .type            n134_assign_bx, @function
n134_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11936], rax          # X
                        mov              qword ptr [r9 + 11944], rdx;         jmp   n135_statement_end_α
                        .size            n134_assign_bx, .-n134_assign_bx
                        .type            n135_statement_end_bx, @function
n135_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_end_α:   add              rsp, 128;                            jmp   n137_statement_begin_α
                        .size            n135_statement_end_bx, .-n135_statement_end_bx
                        .type            n136_setexit_test_bx, @function
n136_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_267_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_267_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_267_61:
.Lsetexit_test_α_267_1:                                                       jmp   n137_statement_begin_α
                        .size            n136_setexit_test_bx, .-n136_setexit_test_bx
                        .type            n137_statement_begin_bx, @function
n137_statement_begin_bx:
.Lstatement_begin_α_268_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_268_stno
                        .long            7
                        .long            7
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         eol            =  CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n137_statement_begin_α:                                                       jmp   n138_lit_integer_α
n137_statement_begin_β:                                                       jmp   n142_setexit_test_α
                        .size            n137_statement_begin_bx, .-n137_statement_begin_bx
                        .type            n138_lit_integer_bx, @function
n138_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_270_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n139_call_byname_α
.Llit_integer_α_270_0:  .quad            10
                        .size            n138_lit_integer_bx, .-n138_lit_integer_bx
                        .type            n139_call_byname_bx, @function
n139_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_bynamefnzd94: .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_bynamefnzd94]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311296
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
.Lgcsite_main_31:       cmp              al, 255;                             jne   .Lcall_byname_vd_271_13
                        call             c_rt_call_bid_sn4@PLT
.Lgcsite_main_30:       mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_byname_vd_271_13:
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
                        cmp              al, 104;                             jne   .Lcall_byname_α_271_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n137_statement_begin_β
.Lcall_byname_α_271_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_assign_α
n139_call_byname_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n137_statement_begin_β
                        .size            n139_call_byname_bx, .-n139_call_byname_bx
                        .type            n140_assign_bx, @function
n140_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11952], rax          # eol
                        mov              qword ptr [r9 + 11960], rdx;         jmp   n141_statement_end_α
                        .size            n140_assign_bx, .-n140_assign_bx
                        .type            n141_statement_end_bx, @function
n141_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_end_α:   add              rsp, 32;                             jmp   n143_statement_begin_α
                        .size            n141_statement_end_bx, .-n141_statement_end_bx
                        .type            n142_setexit_test_bx, @function
n142_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_275_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_275_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_275_61:
.Lsetexit_test_α_275_1:                                                       jmp   n143_statement_begin_α
                        .size            n142_setexit_test_bx, .-n142_setexit_test_bx
                        .type            n143_statement_begin_bx, @function
n143_statement_begin_bx:
.Lstatement_begin_α_276_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_276_stno
                        .long            8
                        .long            8
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         C              =  POS(0) ARBNO(X eol) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n143_statement_begin_α:                                                       jmp   n144_lit_string_α
n143_statement_begin_β:                                                       jmp   n154_setexit_test_α
                        .size            n143_statement_begin_bx, .-n143_statement_begin_bx
                        .type            n144_lit_string_bx, @function
n144_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_278_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n145_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_278_0: .quad .Lthk_.LTp6; .popsection
                        .size            n144_lit_string_bx, .-n144_lit_string_bx
                        .type            n145_var_bx, @function
n145_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11936]          # X
                        mov              rdx, qword ptr [r9 + 11944]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n146_lit_integer_α
n145_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n143_statement_begin_β
                        .size            n145_var_bx, .-n145_var_bx
                        .type            n146_lit_integer_bx, @function
n146_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_280_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n147_call_direct_α
n146_lit_integer_β:     add              rsp, 16;                             jmp   n145_var_β
.Llit_integer_α_280_0:  .quad            8
                        .size            n146_lit_integer_bx, .-n146_lit_integer_bx
                        .type            n147_call_direct_bx, @function
n147_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_call_direct_α:     sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_281_999
                        add              rsp, 16;                             jmp   n146_lit_integer_β
.Lcall_direct_α_281_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_var_α
n147_call_direct_β:     add              rsp, 16;                             jmp   n146_lit_integer_β
                        .size            n147_call_direct_bx, .-n147_call_direct_bx
                        .type            n148_var_bx, @function
n148_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11952]          # eol
                        mov              rdx, qword ptr [r9 + 11960]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_lit_integer_α
n148_var_β:             add              rsp, 32;                             jmp   n146_lit_integer_β
                        .size            n148_var_bx, .-n148_var_bx
                        .type            n149_lit_integer_bx, @function
n149_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_283_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n150_call_direct_α
n149_lit_integer_β:     add              rsp, 16;                             jmp   n148_var_β
.Llit_integer_α_283_0:  .quad            9
                        .size            n149_lit_integer_bx, .-n149_lit_integer_bx
                        .type            n150_call_direct_bx, @function
n150_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_call_direct_α:     sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_284_999
                        add              rsp, 16;                             jmp   n149_lit_integer_β
.Lcall_direct_α_284_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n151_call_direct_α
n150_call_direct_β:     add              rsp, 16;                             jmp   n149_lit_integer_β
                        .size            n150_call_direct_bx, .-n150_call_direct_bx
                        .type            n151_call_direct_bx, @function
n151_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_call_direct_α:     sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_285_999
                        add              rsp, 32;                             jmp   n149_lit_integer_β
.Lcall_direct_α_285_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n152_assign_α
n151_call_direct_β:     add              rsp, 32;                             jmp   n149_lit_integer_β
                        .size            n151_call_direct_bx, .-n151_call_direct_bx
                        .type            n152_assign_bx, @function
n152_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11968], rax          # C
                        mov              qword ptr [r9 + 11976], rdx;         jmp   n153_statement_end_α
                        .size            n152_assign_bx, .-n152_assign_bx
                        .type            n153_statement_end_bx, @function
n153_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_end_α:   add              rsp, 128;                            jmp   n155_statement_begin_α
                        .size            n153_statement_end_bx, .-n153_statement_end_bx
                        .type            n154_setexit_test_bx, @function
n154_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_289_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_289_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_289_61:
.Lsetexit_test_α_289_1:                                                       jmp   n155_statement_begin_α
                        .size            n154_setexit_test_bx, .-n154_setexit_test_bx
                        .type            n155_statement_begin_bx, @function
n155_statement_begin_bx:
.Lstatement_begin_α_290_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_290_stno
                        .long            9
                        .long            9
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n155_statement_begin_α:                                                       jmp   n156_lit_integer_α
n155_statement_begin_β:                                                       jmp   n159_setexit_test_α
                        .size            n155_statement_begin_bx, .-n155_statement_begin_bx
                        .type            n156_lit_integer_bx, @function
n156_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_292_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_kw_assign_snobol4_α
.Llit_integer_α_292_0:  .quad            0
                        .size            n156_lit_integer_bx, .-n156_lit_integer_bx
                        .type            n157_kw_assign_snobol4_bx, @function
n157_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_293_0] # idx
                        mov              rsi, qword ptr [rsp + 16]            # v
                        mov              rdx, qword ptr [rsp + 24]            # v
                        call             rt_kw_write_idx@PLT
.Lgcsite_main_40:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_293_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n155_statement_begin_β
.Lkw_assign_snobol4_α_293_999:
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
1:                                                                            jmp   n158_statement_end_α
.Lkw_assign_snobol4_α_293_0:
                        .quad            1
                        .size            n157_kw_assign_snobol4_bx, .-n157_kw_assign_snobol4_bx
                        .type            n158_statement_end_bx, @function
n158_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_end_α:   add              rsp, 32;                             jmp   n160_statement_begin_α
                        .size            n158_statement_end_bx, .-n158_statement_end_bx
                        .type            n159_setexit_test_bx, @function
n159_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_296_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_296_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_296_61:
.Lsetexit_test_α_296_1:                                                       jmp   n160_statement_begin_α
                        .size            n159_setexit_test_bx, .-n159_setexit_test_bx
                        .type            n160_statement_begin_bx, @function
n160_statement_begin_bx:
.Lstatement_begin_α_297_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_297_stno
                        .long            10
                        .long            10
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n160_statement_begin_α:                                                       jmp   n161_lit_name_α
n160_statement_begin_β:                                                       jmp   n166_setexit_test_α
                        .size            n160_statement_begin_bx, .-n160_statement_begin_bx
                        .type            n161_lit_name_bx, @function
n161_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_name_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_299_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n162_lit_integer_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_name_α_299_0: .quad .Llit_name_α_299_0_s; .popsection
.Llit_name_α_299_0_s:   .string          "INPUT"
                        .size            n161_lit_name_bx, .-n161_lit_name_bx
                        .type            n162_lit_integer_bx, @function
n162_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_300_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n163_lit_string_α
n162_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n160_statement_begin_β
.Llit_integer_α_300_0:  .quad            9
                        .size            n162_lit_integer_bx, .-n162_lit_integer_bx
                        .type            n163_lit_string_bx, @function
n163_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_301_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n164_call_try_α
n163_lit_string_β:      add              rsp, 16;                             jmp   n162_lit_integer_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_301_0: .quad .Llit_string_α_301_0_s; .popsection
.Llit_string_α_301_0_s: .string          "[-f0 -r4194304]"
                        .size            n163_lit_string_bx, .-n163_lit_string_bx
                        .type            n164_call_try_bx, @function
n164_call_try_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_call_try_α:        sub              rsp, 16
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
.Lcall_try_α_bynamefnzd119: .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_try_α_bynamefnzd119]
                        lea              rsi, [rsp + 0]
                        lea              rcx, [rsp + 0]
                        movabs           rdx, 1548112371908611
                        call             rt_call_arr_bl_sn4_try@PLT
.Lgcsite_main_72:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_71:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jz    .Lcall_try_α_302_108
                        cmp              rax, 2;                              jne   .Lcall_try_α_302_109
                        lea              rdi, [rsp + 0]
                        mov              rsi, rdx
                        sub              rsp, 112
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              rdx, rsp                             # pend
                        call             rt_tweak_open@PLT
.Lgcsite_main_70:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_69:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rcx, qword ptr [rsp + 0]
                        test             rcx, rcx;                            jz    .Lcall_try_α_302_150
                        lea              rdi, [rsp + 0]                       # args
                        mov              esi, 2                               # nargs
                        call             rt_apply_open@PLT
.Lgcsite_main_68:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_67:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jz    .Lcall_try_α_302_151
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
                        cmp              rcx, 2;                              je    .Lcall_try_α_302_130
                        cmp              rcx, 1;                              je    .Lcall_try_α_302_230
                        lea              rcx, [rip + .Lcall_try_α_302_132]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_302_131]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_302_131]
                        lea              rdx, [rip + .Lcall_try_α_302_132];   jmp   rax
.Lcall_try_α_302_130:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lcall_try_α_302_133]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lcall_try_α_302_134]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lcall_try_α_302_133:
.Lgcsite_main_66:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_302_135
.Lcall_try_α_302_134:
.Lgcsite_main_65:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_302_136
.Lcall_try_α_302_131:
.Lgcsite_main_64:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_302_135
.Lcall_try_α_302_132:
.Lgcsite_main_63:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_302_136
.Lcall_try_α_302_230:   lea              rcx, [rip + .Lcall_try_α_302_232]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_302_231]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_302_231]
                        lea              rdx, [rip + .Lcall_try_α_302_232];   jmp   rax
.Lcall_try_α_302_231:
.Lgcsite_main_62:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_302_135
.Lcall_try_α_302_232:
.Lgcsite_main_61:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_302_136
.Lcall_try_α_302_135:   mov              rcx, rsp
                        call             rt_apply_land_γ@PLT
.Lgcsite_main_60:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_59:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lcall_try_α_302_152
.Lcall_try_α_302_136:   mov              rsi, rsp
                        call             rt_apply_land_ω@PLT
.Lgcsite_main_58:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_57:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lcall_try_α_302_152
.Lcall_try_α_302_151:
.Lcall_try_α_302_152:   lea              rdi, [rsp + 0]                       # pend
                        call             rt_call_pend_close@PLT
.Lgcsite_main_56:       mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_try_α_302_150:   add              rsp, 112;                            jmp   .Lcall_try_α_302_108
.Lcall_try_α_302_109:   cmp              rax, 3;                              jne   .Lcall_try_α_302_170
                        mov              rdi, rdx
                        mov              esi, 1
                        sub              rsp, 112
                        mov              rdx, rsp
                        call             rt_eval_open@PLT
.Lgcsite_main_55:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_54:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jz    .Lcall_try_α_302_172
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
                        lea              rcx, [rip + .Lcall_try_α_302_171]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lcall_try_α_302_171:
.Lgcsite_main_53:       add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        call             rt_eval_land@PLT
.Lgcsite_main_52:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_51:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 112;                            jmp   .Lcall_try_α_302_29
.Lcall_try_α_302_172:   add              rsp, 112;                            jmp   .Lcall_try_α_302_108
.Lcall_try_α_302_170:   sub              rsp, 64
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
                        cmp              rcx, 2;                              je    .Lcall_try_α_302_100
                        cmp              rcx, 1;                              je    .Lcall_try_α_302_200
                        lea              rcx, [rip + .Lcall_try_α_302_102]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_302_101]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_302_101]
                        lea              rdx, [rip + .Lcall_try_α_302_102];   jmp   rax
.Lcall_try_α_302_100:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lcall_try_α_302_103]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lcall_try_α_302_104]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lcall_try_α_302_103:
.Lgcsite_main_50:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_302_105
.Lcall_try_α_302_104:
.Lgcsite_main_49:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_302_106
.Lcall_try_α_302_101:
.Lgcsite_main_48:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_302_105
.Lcall_try_α_302_102:
.Lgcsite_main_47:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_302_106
.Lcall_try_α_302_200:   lea              rcx, [rip + .Lcall_try_α_302_202]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_302_201]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_302_201]
                        lea              rdx, [rip + .Lcall_try_α_302_202];   jmp   rax
.Lcall_try_α_302_201:
.Lgcsite_main_46:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_302_105
.Lcall_try_α_302_202:
.Lgcsite_main_45:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_302_106
.Lcall_try_α_302_105:   call             rt_call_land_γ@PLT
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
1:                                                                            jmp   .Lcall_try_α_302_29
.Lcall_try_α_302_106:   call             rt_call_land_ω@PLT
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
1:                                                                            jmp   .Lcall_try_α_302_29
.Lcall_try_α_302_108:   mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lcall_try_α_302_29:    push             rax
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
.Lgcsite_main_73:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_try_α_302_999
                        add              rsp, 16;                             jmp   n163_lit_string_β
.Lcall_try_α_302_999:   mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n165_statement_end_α
n164_call_try_β:        add              rsp, 16;                             jmp   n163_lit_string_β
                        .size            n164_call_try_bx, .-n164_call_try_bx
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
                        test             rax, rax;                            jz    .Lsetexit_test_α_305_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_305_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_305_61:
.Lsetexit_test_α_305_1:                                                       jmp   n167_statement_begin_α
                        .size            n166_setexit_test_bx, .-n166_setexit_test_bx
                        .type            n167_statement_begin_bx, @function
n167_statement_begin_bx:
.Lstatement_begin_α_306_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_306_stno
                        .long            11
                        .long            11
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         src            =  INPUT                          :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n167_statement_begin_α:                                                       jmp   n168_var_α
n167_statement_begin_β:                                                       jmp   n171_setexit_test_α
                        .size            n167_statement_begin_bx, .-n167_statement_begin_bx
                        .type            n168_var_bx, @function
n168_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lvar_α_308_0] # name
                        call             NV_GET_fn@PLT
.Lgcsite_main_75:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lvar_α_308_999
                        add              rsp, 16;                             jmp   n167_statement_begin_β
.Lvar_α_308_999:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_var_global.cpp:85
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_74:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n169_assign_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lvar_α_308_0: .quad .Lvar_α_308_0_s; .popsection
.Lvar_α_308_0_s:        .string          "INPUT"
                        .size            n168_var_bx, .-n168_var_bx
                        .type            n169_assign_bx, @function
n169_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11984], rax          # src
                        mov              qword ptr [r9 + 11992], rdx;         jmp   n170_statement_end_α
                        .size            n169_assign_bx, .-n169_assign_bx
                        .type            n170_statement_end_bx, @function
n170_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   add              rsp, 16;                             jmp   n172_statement_begin_α
                        .size            n170_statement_end_bx, .-n170_statement_end_bx
                        .type            n171_setexit_test_bx, @function
n171_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_312_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_312_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_312_61:
.Lsetexit_test_α_312_1:                                                       jmp   n191_statement_begin_α
                        .size            n171_setexit_test_bx, .-n171_setexit_test_bx
                        .type            n172_statement_begin_bx, @function
n172_statement_begin_bx:
.Lstatement_begin_α_313_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_313_stno
                        .long            12
                        .long            12
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         src            C                                 :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n172_statement_begin_α:                                                       jmp   n173_var_α
n172_statement_begin_β:                                                       jmp   n182_setexit_test_α
                        .size            n172_statement_begin_bx, .-n172_statement_begin_bx
                        .type            n173_var_bx, @function
n173_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11984]          # src
                        mov              rdx, qword ptr [r9 + 11992]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n174_var_α
                        .size            n173_var_bx, .-n173_var_bx
                        .type            n174_var_bx, @function
n174_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11968]          # C
                        mov              rdx, qword ptr [r9 + 11976]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n175_lit_integer_α
n174_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n182_setexit_test_α
                        .size            n174_var_bx, .-n174_var_bx
                        .type            n175_lit_integer_bx, @function
n175_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_317_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n176_call_direct_α
n175_lit_integer_β:     add              rsp, 16;                             jmp   n174_var_β
.Llit_integer_α_317_0:  .quad            240
                        .size            n175_lit_integer_bx, .-n175_lit_integer_bx
                        .type            n176_call_direct_bx, @function
n176_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_call_direct_α:     sub              rsp, 16
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
.Lgcsite_main_76:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_77:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_318_999
                        add              rsp, 16;                             jmp   n175_lit_integer_β
.Lcall_direct_α_318_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n177_assign_α
n176_call_direct_β:     add              rsp, 16;                             jmp   n175_lit_integer_β
                        .size            n176_call_direct_bx, .-n176_call_direct_bx
                        .type            n177_assign_bx, @function
n177_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 12000], rax
                        mov              qword ptr [r9 + 12008], rdx;         jmp   n178_match_begin_α
n177_assign_β:          add              rsp, 16;                             jmp   n175_lit_integer_β
                        .size            n177_assign_bx, .-n177_assign_bx
                        .type            n178_match_begin_bx, @function
n178_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_match_begin_α:     mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
.Lgcsite_main_82:       push             rbp
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
.Lgcsite_main_81:       cmp              rax, -1;                             jne   .Lmatch_begin_vd_321_14
                        call             c_rt_match_enter@PLT
.Lgcsite_main_80:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_begin_vd_321_14:
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
.Lgcsite_main_79:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0               # cas_mark
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24
                        test             r13, r13;                            jne   .Lmatch_begin_α_321_14
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax;          jmp   .Lmatch_begin_α_321_1
.Lmatch_begin_α_321_14: mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_321_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_321_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n179_match_defer_α
n178_match_begin_β:
.Lmatch_begin_α_321_13: mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_α_321_1
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_α_321_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_α_321_1
                                                                              jmp   .Lmatch_begin_α_321_0
.Lmatch_begin_α_321_1:
.Lmatch_begin_γ_178_af:
.Lmatch_begin_ω_178_af: mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
.Lgcsite_main_78:       mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              r13, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n177_assign_β
                        .size            n178_match_begin_bx, .-n178_match_begin_bx
                        .type            n179_match_defer_bx, @function
n179_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_match_defer_α:     mov              rax, qword ptr [r9 + 12000]
                        mov              rdx, qword ptr [r9 + 12008]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_322_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_322_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_main_105:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:103
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_104:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 12008];         jmp   .Lmatch_defer_α_322_10
.Lmatch_defer_α_322_9:  xor              eax, eax
.Lmatch_defer_α_322_10: test             rax, rax;                            jz    .Lmatch_defer_α_322_0
.Lmatch_defer_α_322_48: mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_322_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_322_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_322_4:
.Lgcsite_main_103:                                                            jmp   n180_match_end_α
.Lmatch_defer_α_322_5:
.Lgcsite_main_102:      cmp              r14d, -2;                            je    .Lmatch_begin_ω_178_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_178_af
                                                                              jmp   n178_match_begin_β
.Lmatch_defer_α_322_0:  sub              rsp, 32
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
.Lgcsite_main_101:      cmp              rax, -1;                             jne   .Lmatch_defer_vd_322_16
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_main_100:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_322_16:
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_322_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_322_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_99:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_322_2:  test             rax, rax;                            je    .Lmatch_defer_α_322_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_322_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_322_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_322_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_322_141
                        lea              rcx, [rip + .Lmatch_defer_α_322_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_322_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_322_42]
                        lea              rdx, [rip + .Lmatch_defer_α_322_43]; jmp   rax
.Lmatch_defer_α_322_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_322_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_322_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_322_44:
.Lgcsite_main_98:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_322_46
.Lmatch_defer_α_322_45:
.Lgcsite_main_97:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_322_47
.Lmatch_defer_α_322_42:
.Lgcsite_main_96:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_322_46
.Lmatch_defer_α_322_43:
.Lgcsite_main_95:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_322_47
.Lmatch_defer_α_322_141:
                        lea              rcx, [rip + .Lmatch_defer_α_322_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_322_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_322_142]
                        lea              rdx, [rip + .Lmatch_defer_α_322_143]
                                                                              jmp   rax
.Lmatch_defer_α_322_142:
.Lgcsite_main_94:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_322_46
.Lmatch_defer_α_322_143:
.Lgcsite_main_93:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_322_47
.Lmatch_defer_α_322_46: mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_main_92:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_322_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_322_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_91:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_322_2
.Lmatch_defer_α_322_47: mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_main_90:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_322_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_322_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_89:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_322_2
.Lmatch_defer_α_322_61: sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_322_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_322_62:
.Lgcsite_main_88:       add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_322_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_322_63: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_86:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_322_2
.Lmatch_defer_α_322_40: add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_322_48
.Lmatch_defer_α_322_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_main_85:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_322_15
                        call             c_rt_defer_close@PLT
.Lgcsite_main_84:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_322_15:
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
.Lgcsite_main_83:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_322_49: cmp              r14d, -2;                            je    .Lmatch_begin_ω_178_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_178_af
                        test             eax, eax;                            js    n178_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_322_6]
                        push             rcx
                        push             rax;                                 jmp   n180_match_end_α
.Lmatch_defer_α_322_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n178_match_begin_β
n179_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_322_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_322_12
                                                                              jmp   rax
.Lmatch_defer_β_322_12:                                                       jmp   qword ptr [rsp]
                        .size            n179_match_defer_bx, .-n179_match_defer_bx
                        .type            n180_match_end_bx, @function
n180_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_match_end_α:       mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_178_af
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
.Lgcsite_main_137:      push             rax
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
.Lgcsite_main_136:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:
.Lmatch_end_α_324_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_324_2
                        cmp              rax, 2;                              je    .Lmatch_end_α_324_10
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
                        cmp              rcx, 2;                              je    .Lmatch_end_α_324_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_324_120
                        lea              rcx, [rip + .Lmatch_end_α_324_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_324_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_324_21]
                        lea              rdx, [rip + .Lmatch_end_α_324_22];   jmp   rax
.Lmatch_end_α_324_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_324_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_324_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_324_23:
.Lgcsite_main_135:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_324_8
.Lmatch_end_α_324_24:
.Lgcsite_main_134:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_324_9
.Lmatch_end_α_324_21:
.Lgcsite_main_133:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_324_8
.Lmatch_end_α_324_22:
.Lgcsite_main_132:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_324_9
.Lmatch_end_α_324_120:  lea              rcx, [rip + .Lmatch_end_α_324_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_324_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_324_121]
                        lea              rdx, [rip + .Lmatch_end_α_324_122];  jmp   rax
.Lmatch_end_α_324_121:
.Lgcsite_main_131:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_324_8
.Lmatch_end_α_324_122:
.Lgcsite_main_130:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_324_9
.Lmatch_end_α_324_8:    mov              rdx, rsp
                        call             rt_dcap_land_γ@PLT
.Lgcsite_main_129:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_128:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_324_1
.Lmatch_end_α_324_9:    mov              rdi, rsp
                        call             rt_dcap_land_ω@PLT
.Lgcsite_main_127:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_126:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_324_1
.Lmatch_end_α_324_10:   mov              rcx, qword ptr [rsp + 112]
                        test             rcx, rcx;                            jz    .Lmatch_end_α_324_60
                        lea              rdi, [rsp + 112]                     # args
                        mov              esi, 3                               # nargs
                        call             rt_apply_open@PLT
.Lgcsite_main_125:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_124:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jz    .Lmatch_end_α_324_61
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
                        cmp              rcx, 2;                              je    .Lmatch_end_α_324_40
                        cmp              rcx, 1;                              je    .Lmatch_end_α_324_140
                        lea              rcx, [rip + .Lmatch_end_α_324_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_324_41]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_324_41]
                        lea              rdx, [rip + .Lmatch_end_α_324_42];   jmp   rax
.Lmatch_end_α_324_40:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_324_43]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_324_44]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_324_43:
.Lgcsite_main_123:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_324_45
.Lmatch_end_α_324_44:
.Lgcsite_main_122:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_324_46
.Lmatch_end_α_324_41:
.Lgcsite_main_121:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_324_45
.Lmatch_end_α_324_42:
.Lgcsite_main_120:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_324_46
.Lmatch_end_α_324_140:  lea              rcx, [rip + .Lmatch_end_α_324_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_324_141]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_324_141]
                        lea              rdx, [rip + .Lmatch_end_α_324_142];  jmp   rax
.Lmatch_end_α_324_141:
.Lgcsite_main_119:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_324_45
.Lmatch_end_α_324_142:
.Lgcsite_main_118:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_324_46
.Lmatch_end_α_324_45:   mov              rcx, rsp
                        call             rt_apply_land_γ@PLT
.Lgcsite_main_117:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_116:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lmatch_end_α_324_62
.Lmatch_end_α_324_46:   mov              rsi, rsp
                        call             rt_apply_land_ω@PLT
.Lgcsite_main_115:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_114:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lmatch_end_α_324_62
.Lmatch_end_α_324_61:   lea              rdi, [rsp + 112]                     # pend
                        call             rt_trace_pend_run@PLT
.Lgcsite_main_113:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:321
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_112:      mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lmatch_end_α_324_62:   lea              rdi, [rsp + 112]                     # pend
                        call             rt_trace_pend_close@PLT
.Lgcsite_main_111:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:325
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_110:      mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lmatch_end_α_324_60:   mov              rdi, rsp                             # c
                        call             rt_dcap_resume@PLT
.Lgcsite_main_109:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_108:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_324_1
.Lmatch_end_α_324_2:    add              rsp, 224
                        mov              qword ptr [rsp + 0], rax
                        mov              rdi, qword ptr [rbp + -16]           # outer_Σ
                        mov              rsi, qword ptr [rbp + -32]           # outer_Δ
                        lea              rdx, [rbp + -88]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
.Lgcsite_main_107:      mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              rax, qword ptr [rsp + 0]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        test             rax, rax;                            je    .Lmatch_end_α_324_13
                                                                              jmp   .Lmatch_begin_ω_178_af
.Lmatch_end_α_324_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp
.Lgcsite_main_106:                                                            jmp   n181_statement_end_α
                        .size            n180_match_end_bx, .-n180_match_end_bx
                        .type            n181_statement_end_bx, @function
n181_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_end_α:   add              rsp, 64;                             jmp   n183_statement_begin_α
                        .size            n181_statement_end_bx, .-n181_statement_end_bx
                        .type            n182_setexit_test_bx, @function
n182_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_327_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_327_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_327_61:
.Lsetexit_test_α_327_1:                                                       jmp   n191_statement_begin_α
                        .size            n182_setexit_test_bx, .-n182_setexit_test_bx
                        .type            n183_statement_begin_bx, @function
n183_statement_begin_bx:
.Lstatement_begin_α_328_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_328_stno
                        .long            13
                        .long            13
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         OUTPUT         =  'matched bytes=' SIZE(src)      :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n183_statement_begin_α:                                                       jmp   n184_lit_string_α
n183_statement_begin_β:                                                       jmp   n190_setexit_test_α
                        .size            n183_statement_begin_bx, .-n183_statement_begin_bx
                        .type            n184_lit_string_bx, @function
n184_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_330_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n185_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_330_0: .quad .Llit_string_α_330_0_s; .popsection
.Llit_string_α_330_0_s: .string          "matched bytes="
                        .size            n184_lit_string_bx, .-n184_lit_string_bx
                        .type            n185_var_bx, @function
n185_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11984]          # src
                        mov              rdx, qword ptr [r9 + 11992]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_call_byname_α
n185_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n183_statement_begin_β
                        .size            n185_var_bx, .-n185_var_bx
                        .type            n186_call_byname_bx, @function
n186_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd333: .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd333]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
.Lgcsite_main_139:      cmp              al, 255;                             jne   .Lcall_byname_vd_332_17
                        call             c_rt_call_bid_sn4@PLT
.Lgcsite_main_138:      mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_byname_vd_332_17:
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
.Lgcsite_main_140:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_332_999
                        add              rsp, 16;                             jmp   n185_var_β
.Lcall_byname_α_332_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n187_binop_α
n186_call_byname_β:     add              rsp, 16;                             jmp   n185_var_β
                        .size            n186_call_byname_bx, .-n186_call_byname_bx
                        .type            n187_binop_bx, @function
n187_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + sno_concat_d@GOTPCREL]
.Lgcsite_main_143:      cmp              al, 255;                             jne   .Lbinop_vd_334_18
                        call             c_sno_concat_d@PLT
.Lgcsite_main_142:      mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_334_18:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_141:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_334_999
                        add              rsp, 32;                             jmp   n185_var_β
.Lbinop_α_334_999:                                                            jmp   n188_assign_α
n187_binop_β:           add              rsp, 32;                             jmp   n185_var_β
                        .size            n187_binop_bx, .-n187_binop_bx
                        .type            n188_assign_bx, @function
n188_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]             # val
                        mov              rsi, rax                             # val
                        mov              rdi, qword ptr [rip + .Lassign_α_335_0] # name
                        call             NV_SET_fn@PLT
.Lgcsite_main_145:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_144:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   n189_statement_end_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lassign_α_335_0: .quad .Lassign_α_335_0_s; .popsection
.Lassign_α_335_0_s:     .string          "OUTPUT"
                        .size            n188_assign_bx, .-n188_assign_bx
                        .type            n189_statement_end_bx, @function
n189_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_end_α:   add              rsp, 64;                             jmp   main_γ
                        .size            n189_statement_end_bx, .-n189_statement_end_bx
                        .type            n190_setexit_test_bx, @function
n190_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_338_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_338_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_338_61:
.Lsetexit_test_α_338_1:                                                       jmp   main_γ
                        .size            n190_setexit_test_bx, .-n190_setexit_test_bx
                        .type            n191_statement_begin_bx, @function
n191_statement_begin_bx:
.Lstatement_begin_α_339_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_339_stno
                        .long            14
                        .long            14
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# fail    OUTPUT         =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n191_statement_begin_α:                                                       jmp   n192_lit_string_α
n191_statement_begin_β:                                                       jmp   n195_setexit_test_α
                        .size            n191_statement_begin_bx, .-n191_statement_begin_bx
                        .type            n192_lit_string_bx, @function
n192_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_341_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n193_assign_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_341_0: .quad .Llit_string_α_341_0_s; .popsection
.Llit_string_α_341_0_s: .string          "Pattern match failed"
                        .size            n192_lit_string_bx, .-n192_lit_string_bx
                        .type            n193_assign_bx, @function
n193_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]             # val
                        mov              rsi, rax                             # val
                        mov              rdi, qword ptr [rip + .Lassign_α_342_0] # name
                        call             NV_SET_fn@PLT
.Lgcsite_main_147:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_146:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   n194_statement_end_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lassign_α_342_0: .quad .Lassign_α_342_0_s; .popsection
.Lassign_α_342_0_s:     .string          "OUTPUT"
                        .size            n193_assign_bx, .-n193_assign_bx
                        .type            n194_statement_end_bx, @function
n194_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_end_α:   add              rsp, 16;                             jmp   main_γ
                        .size            n194_statement_end_bx, .-n194_statement_end_bx
                        .type            n195_setexit_test_bx, @function
n195_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_345_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_345_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_345_61:
.Lsetexit_test_α_345_1:                                                       jmp   main_γ
                        .size            n195_setexit_test_bx, .-n195_setexit_test_bx
                        .type            n196_goto_bx, @function
n196_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_goto_α:                                                                  jmp   n191_statement_begin_α
n196_goto_β:                                                                  jmp   main_ω
                        .size            n196_goto_bx, .-n196_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        call             sno_setexit_fire_on_end@PLT
.Lgcsite_main_150:      push             rax                                  # gc_poll bb_glue_flat.cpp:57
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_149:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      xor              edi, edi
                        call             exit@PLT
.Lgcsite_main_148:
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
.Lgcsite_main_151:
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
.Lgcsites_main_7:       .quad            152
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
                        .quad            .Lgcsite_main_4-.Lgccode_main_7
                        .quad            206158430209
                        .quad            .Lgcsite_main_5-.Lgccode_main_7
                        .quad            343597383681
                        .quad            .Lgcsite_main_6-.Lgccode_main_7
                        .quad            206158430209
                        .quad            .Lgcsite_main_7-.Lgccode_main_7
                        .quad            343597383681
                        .quad            .Lgcsite_main_8-.Lgccode_main_7
                        .quad            412316860417
                        .quad            .Lgcsite_main_9-.Lgccode_main_7
                        .quad            549755813889
                        .quad            .Lgcsite_main_10-.Lgccode_main_7
                        .quad            618475290625
                        .quad            .Lgcsite_main_11-.Lgccode_main_7
                        .quad            755914244097
                        .quad            .Lgcsite_main_12-.Lgccode_main_7
                        .quad            755914244097
                        .quad            .Lgcsite_main_13-.Lgccode_main_7
                        .quad            893353197569
                        .quad            .Lgcsite_main_14-.Lgccode_main_7
                        .quad            412316860417
                        .quad            .Lgcsite_main_15-.Lgccode_main_7
                        .quad            549755813889
                        .quad            .Lgcsite_main_16-.Lgccode_main_7
                        .quad            481036337153
                        .quad            .Lgcsite_main_17-.Lgccode_main_7
                        .quad            618475290625
                        .quad            .Lgcsite_main_18-.Lgccode_main_7
                        .quad            412316860417
                        .quad            .Lgcsite_main_19-.Lgccode_main_7
                        .quad            549755813889
                        .quad            .Lgcsite_main_20-.Lgccode_main_7
                        .quad            618475290625
                        .quad            .Lgcsite_main_21-.Lgccode_main_7
                        .quad            755914244097
                        .quad            .Lgcsite_main_22-.Lgccode_main_7
                        .quad            755914244097
                        .quad            .Lgcsite_main_23-.Lgccode_main_7
                        .quad            893353197569
                        .quad            .Lgcsite_main_24-.Lgccode_main_7
                        .quad            412316860417
                        .quad            .Lgcsite_main_25-.Lgccode_main_7
                        .quad            549755813889
                        .quad            .Lgcsite_main_26-.Lgccode_main_7
                        .quad            618475290625
                        .quad            .Lgcsite_main_27-.Lgccode_main_7
                        .quad            755914244097
                        .quad            .Lgcsite_main_28-.Lgccode_main_7
                        .quad            755914244097
                        .quad            .Lgcsite_main_29-.Lgccode_main_7
                        .quad            893353197569
                        .quad            .Lgcsite_main_31-.Lgccode_main_7
                        .quad            206158430209
                        .quad            .Lgcsite_main_30-.Lgccode_main_7
                        .quad            206158430209
                        .quad            .Lgcsite_main_32-.Lgccode_main_7
                        .quad            343597383681
                        .quad            .Lgcsite_main_33-.Lgccode_main_7
                        .quad            412316860417
                        .quad            .Lgcsite_main_34-.Lgccode_main_7
                        .quad            549755813889
                        .quad            .Lgcsite_main_35-.Lgccode_main_7
                        .quad            618475290625
                        .quad            .Lgcsite_main_36-.Lgccode_main_7
                        .quad            755914244097
                        .quad            .Lgcsite_main_37-.Lgccode_main_7
                        .quad            755914244097
                        .quad            .Lgcsite_main_38-.Lgccode_main_7
                        .quad            893353197569
                        .quad            .Lgcsite_main_40-.Lgccode_main_7
                        .quad            137438953473
                        .quad            .Lgcsite_main_39-.Lgccode_main_7
                        .quad            137438953473
                        .quad            .Lgcsite_main_72-.Lgccode_main_7
                        .quad            481036337153
                        .quad            .Lgcsite_main_71-.Lgccode_main_7
                        .quad            618475290625
                        .quad            .Lgcsite_main_70-.Lgccode_main_7
                        .quad            962072674305
                        .quad            .Lgcsite_main_69-.Lgccode_main_7
                        .quad            962072674305
                        .quad            .Lgcsite_main_68-.Lgccode_main_7
                        .quad            962072674305
                        .quad            .Lgcsite_main_67-.Lgccode_main_7
                        .quad            1099511627777
                        .quad            .Lgcsite_main_66-.Lgccode_main_7
                        .quad            1511828488194
                        .quad            .Lgcsite_main_65-.Lgccode_main_7
                        .quad            1511828488194
                        .quad            .Lgcsite_main_64-.Lgccode_main_7
                        .quad            1374389534722
                        .quad            .Lgcsite_main_63-.Lgccode_main_7
                        .quad            1374389534722
                        .quad            .Lgcsite_main_62-.Lgccode_main_7
                        .quad            1374389534722
                        .quad            .Lgcsite_main_61-.Lgccode_main_7
                        .quad            1374389534722
                        .quad            .Lgcsite_main_60-.Lgccode_main_7
                        .quad            1030792151041
                        .quad            .Lgcsite_main_59-.Lgccode_main_7
                        .quad            1168231104513
                        .quad            .Lgcsite_main_58-.Lgccode_main_7
                        .quad            1030792151041
                        .quad            .Lgcsite_main_57-.Lgccode_main_7
                        .quad            1168231104513
                        .quad            .Lgcsite_main_56-.Lgccode_main_7
                        .quad            962072674305
                        .quad            .Lgcsite_main_55-.Lgccode_main_7
                        .quad            962072674305
                        .quad            .Lgcsite_main_54-.Lgccode_main_7
                        .quad            1099511627777
                        .quad            .Lgcsite_main_53-.Lgccode_main_7
                        .quad            1305670057986
                        .quad            .Lgcsite_main_52-.Lgccode_main_7
                        .quad            962072674305
                        .quad            .Lgcsite_main_51-.Lgccode_main_7
                        .quad            1099511627777
                        .quad            .Lgcsite_main_50-.Lgccode_main_7
                        .quad            962072674306
                        .quad            .Lgcsite_main_49-.Lgccode_main_7
                        .quad            962072674306
                        .quad            .Lgcsite_main_48-.Lgccode_main_7
                        .quad            824633720834
                        .quad            .Lgcsite_main_47-.Lgccode_main_7
                        .quad            824633720834
                        .quad            .Lgcsite_main_46-.Lgccode_main_7
                        .quad            824633720834
                        .quad            .Lgcsite_main_45-.Lgccode_main_7
                        .quad            824633720834
                        .quad            .Lgcsite_main_44-.Lgccode_main_7
                        .quad            481036337153
                        .quad            .Lgcsite_main_43-.Lgccode_main_7
                        .quad            618475290625
                        .quad            .Lgcsite_main_42-.Lgccode_main_7
                        .quad            481036337153
                        .quad            .Lgcsite_main_41-.Lgccode_main_7
                        .quad            618475290625
                        .quad            .Lgcsite_main_73-.Lgccode_main_7
                        .quad            618475290625
                        .quad            .Lgcsite_main_75-.Lgccode_main_7
                        .quad            68719476737
                        .quad            .Lgcsite_main_74-.Lgccode_main_7
                        .quad            68719476737
                        .quad            .Lgcsite_main_76-.Lgccode_main_7
                        .quad            412316860417
                        .quad            .Lgcsite_main_77-.Lgccode_main_7
                        .quad            549755813889
                        .quad            .Lgcsite_main_82-.Lgccode_main_7
                        .quad            274877906948
                        .quad            .Lgcsite_main_81-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_80-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_79-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_78-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_105-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_104-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_103-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_102-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_101-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_100-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_99-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_98-.Lgccode_main_7
                        .quad            274878300418
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
                        .quad            274878300417
                        .quad            .Lgcsite_main_91-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_90-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_89-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_88-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_87-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_86-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_85-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_84-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_83-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_137-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_136-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_135-.Lgccode_main_7
                        .quad            274878300418
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
                        .quad            274878300417
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
                        .quad            274878300418
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
                        .quad            274878300417
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
                        .quad            274877906949
                        .quad            .Lgcsite_main_139-.Lgccode_main_7
                        .quad            274877906945
                        .quad            .Lgcsite_main_138-.Lgccode_main_7
                        .quad            274877906945
                        .quad            .Lgcsite_main_140-.Lgccode_main_7
                        .quad            412316860417
                        .quad            .Lgcsite_main_143-.Lgccode_main_7
                        .quad            274877906945
                        .quad            .Lgcsite_main_142-.Lgccode_main_7
                        .quad            274877906945
                        .quad            .Lgcsite_main_141-.Lgccode_main_7
                        .quad            274877906945
                        .quad            .Lgcsite_main_145-.Lgccode_main_7
                        .quad            274877906945
                        .quad            .Lgcsite_main_144-.Lgccode_main_7
                        .quad            412316860417
                        .quad            .Lgcsite_main_147-.Lgccode_main_7
                        .quad            68719476737
                        .quad            .Lgcsite_main_146-.Lgccode_main_7
                        .quad            206158430209
                        .quad            .Lgcsite_main_150-.Lgccode_main_7
                        .quad            1
                        .quad            .Lgcsite_main_149-.Lgccode_main_7
                        .quad            1
                        .quad            .Lgcsite_main_148-.Lgccode_main_7
                        .quad            1
                        .quad            .Lgcsite_main_151-.Lgccode_main_7
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
